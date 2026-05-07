# Agentic Brief: Yearn Curating

## Project Overview

- **Project:** Yearn Curating (yearn)
- **Website:** yearn.fi
- **Category:** Risk Curators
- **Chains (topography):** 1, 10, 137, 250, 8453, 42161
- **Chains (DeFiLlama):** 1, 8453, 42161
- **TVL:** $168,214,238 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2026-02-12
- **Audit history:** 83 audits; most recent 2026-04-30 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Yearn Curating has 596 deployed contract rows in current topography. This brief renders the 495 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2026-02-12 (81 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 495 contracts across 6 chains. 29 have TP audit coverage (5.9%); 466 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AbiDecoder | core | core | unmatched | [0x626271...c74d](https://etherscan.io/address/0x62627154d5ef4c3a2aa7fd1cadbd4425596ac74d) |
| Accountant | core | core | unmatched | [0x1f3998...7c8a](https://etherscan.io/address/0x1f399808fe52d0e960cab84b6b54d5707ab27c8a) |
| Accountant | core | core | unmatched | [0x5a74cb...de69](https://etherscan.io/address/0x5a74cb32d36f2f517db6f7b0a0591e09b22cde69) |
| AddressesGenerator_VAULT_V2 | vault_pool | vault_pool | likely in scope | [0x437758...75f0](https://etherscan.io/address/0x437758d475f70249e03eda6be23684ad1fc375f0) |
| AddressesGeneratorEarn | core | core | unmatched | [0xf53639...9344](https://etherscan.io/address/0xf536399c04683d7ab0bcb1308c245b4bbb539344) |
| AddressesGeneratorIronBank | core | core | unmatched | [0xa0b576...9d46](https://etherscan.io/address/0xa0b57619a980dfefd50f24f310ee1b55a40a9d46) |
| AddressesGeneratorV1Vaults | vault_pool | vault_pool | likely in scope | [0xce29d3...c041](https://etherscan.io/address/0xce29d34c8e88a2e1edde10ad4eee4f3e379fc041) |
| AddressesProvider | core | core | unmatched | [0x7a6e1f...5ebe](https://etherscan.io/address/0x7a6e1fdfccf1a3eb73c3fc090d596211963b5ebe) |
| AddressesProvider | core | core | unmatched | [0x7bd817...8bfc](https://etherscan.io/address/0x7bd817f29fb2bc1cb98975527c366b9e94948bfc) |
| AddressesProvider | core | core | unmatched | [0x9be19e...db93](https://etherscan.io/address/0x9be19ee7bc4099d62737a7255f5c227fbcd6db93) |
| AddressGeneratorFactoryVaults | factory | factory | likely in scope | [0xa654be...d5be](https://etherscan.io/address/0xa654be30cb4a1e25d18da0629e48b13fb970d5be) |
| AddressMergeHelper | peripheral | peripheral | unmatched | [0x957e3a...26e4](https://etherscan.io/address/0x957e3ae7983155a9f9e08da555b8084448be26e4) |
| AggregationRouterV4Helper | router | router | likely in scope | [0x9f945f...a986](https://etherscan.io/address/0x9f945ff1b29344b6ece4340a7bbedd587f1da986) |
| Algebra | core | core | unmatched | [0x7bcfd5...0dea](https://etherscan.io/address/0x7bcfd53c826ff16ece034deb10ea60a04e050dea) |
| AllowancesHelper | peripheral | peripheral | unmatched | [0x4218e2...20ab](https://etherscan.io/address/0x4218e20db87023049fc582aaa4bd47a3611a20ab) |
| AllowancesHelper | peripheral | peripheral | unmatched | [0xed3933...2eb0](https://etherscan.io/address/0xed393375b5d2ba92384a885ef907f2947fb42eb0) |
| Allowlist | core | core | unmatched | [0xc4ed8d...cf04](https://etherscan.io/address/0xc4ed8de23884db99f3c04c1869a1e3380f2dcf04) |
| AllowlistFactory | factory | factory | likely in scope | [0xef01bc...3440](https://etherscan.io/address/0xef01bc08cf155098bda7a2efbc7ccef632d03440) |
| AllowlistImplementationPartnerTracker | core | core | unmatched | [0xd2367b...9b05](https://etherscan.io/address/0xd2367b534c1eb09867bfabe13cb72d2bbe5c9b05) |
| AllowlistImplementationVeYFI | core | core | unmatched | [0x526bc5...4e8e](https://etherscan.io/address/0x526bc546fa5c32bdeaa0f2da1f5ab707e26e4e8e) |
| Arbitrager | core | core | unmatched | [0x8edce0...277c](https://etherscan.io/address/0x8edce0d5fec233b30edd1aff5a85afd3665f277c) |
| BalancerMathLib | peripheral | peripheral | unmatched | [0xfad59e...5534](https://etherscan.io/address/0xfad59edb20d1ffe60bb3fed124a4aaae1d225534) |
| BalancesHelper | peripheral | peripheral | unmatched | [0x855ffe...c402](https://etherscan.io/address/0x855ffe28019106d089bc018df18838f8d241c402) |
| Basefee | core | core | unmatched | [0xe0514d...37c3](https://etherscan.io/address/0xe0514dd71cfdc30147e76f65c30bdf60bfd437c3) |
| BaseFeeOracle | oracle | oracle | likely in scope | [0x1e7efa...868b](https://etherscan.io/address/0x1e7efabf282614aa2543edaa50517ef5a23c868b) |
| BaseFeeOracle | oracle | oracle | likely in scope | [0xfeca68...6da7](https://etherscan.io/address/0xfeca6895dcf50d6350ad0b5a8232cf657c316da7) |
| Bits | core | core | unmatched | [0x8558c4...b73b](https://etherscan.io/address/0x8558c4815625ffce94ec6e3eff97dbe6e1b7b73b) |
| BoostCalculator | core | core | unmatched | [0x2ac44b...0ebc](https://etherscan.io/address/0x2ac44b31782a8c5ba896c29b3c2c0df1399c0ebc) |
| BoostDelegationV3 | core | core | unmatched | [0x3da9be...bb78](https://etherscan.io/address/0x3da9be10ab98512a96fc858595ad6dc21defbb78) |
| BoostDelegationV3 | core | core | unmatched | [0x5260dc...1d65](https://etherscan.io/address/0x5260dc834480ce3db1703b91893352b8d8801d65) |
| BoostDelegationV3 | core | core | unmatched | [0x78edd3...dc19](https://etherscan.io/address/0x78edd3fcb7ca798d572260e59dd972379e80dc19) |
| BoostDelegationV3 | core | core | unmatched | [0xd37a6a...23cd](https://etherscan.io/address/0xd37a6aa3d8460bd2b6536d608103d880695a23cd) |
| BountyHelper | peripheral | peripheral | unmatched | [0x5ced8b...c1ed](https://etherscan.io/address/0x5ced8bbc7fca2fd370e50578786c3418848dc1ed) |
| BountyHelper | peripheral | peripheral | unmatched | [0xad9771...08c0](https://etherscan.io/address/0xad9771a3a411928cd524d72551f03df2020508c0) |
| BountyHelper | peripheral | peripheral | unmatched | [0xd0108d...bee0](https://etherscan.io/address/0xd0108d6bc206ecfe38e496f0ed95fd9e9f96bee0) |
| Burner | core | core | unmatched | [0xcac873...7f40](https://etherscan.io/address/0xcac873e93cfe5c79325e73c22975b665c6177f40) |
| BytesLib | peripheral | peripheral | unmatched | [0x7a432a...2802](https://etherscan.io/address/0x7a432a6b19944e9e021b6cdca5e047ada5d72802) |
| CalculationsBalancer | core | core | unmatched | [0x4aa83d...2463](https://etherscan.io/address/0x4aa83d1b7ae044063912f52a6f6be96671272463) |
| CalculationsChainlink | oracle | oracle | unmatched | [0x356d2d...311b](https://etherscan.io/address/0x356d2d7f79d91688db6152c58377dc29985a311b) |
| CalculationsChainlink | oracle | oracle | unmatched | [0xc8d60d...ba10](https://etherscan.io/address/0xc8d60d8273e69e63eafc4ea342f96ad593a4ba10) |
| CalculationsChainlink | oracle | oracle | unmatched | [0xf7dde3...f328](https://etherscan.io/address/0xf7dde39c30438dce2515cd7dfa1ad6374d35f328) |
| CalculationsCurve | core | core | unmatched | [0x25bf7b...f655](https://etherscan.io/address/0x25bf7b72815476dd515044f9650bf79bad0df655) |
| CalculationsCurve | core | core | unmatched | [0xb8d20b...e2f3](https://etherscan.io/address/0xb8d20b517b6047bade6d25a437c83c77423ae2f3) |
| CalculationsCurve | core | core | unmatched | [0xe37806...a4b1](https://etherscan.io/address/0xe37806d4c33630a8d7c0d204bb67d0e574aaa4b1) |
| CalculationsCurve | core | core | unmatched | [0xe9cff1...2207](https://etherscan.io/address/0xe9cff16bdac9729f18cbac451ecca6c50b372207) |
| CalculationsCurve | core | core | unmatched | [0xfc7141...7bf3](https://etherscan.io/address/0xfc714174e5c8bd056a45a5337e7b402cc4af7bf3) |
| CalculationsFixedForex | core | core | unmatched | [0x9956ca...b1fd](https://etherscan.io/address/0x9956ca141c344e177829671ec0f1a9d4ab3cb1fd) |
| CalculationsIronBank | core | core | unmatched | [0x55e9b1...8ea4](https://etherscan.io/address/0x55e9b18fefff7e00548d54480373fc8843de8ea4) |
| CalculationsIronBank | core | core | unmatched | [0xc31e8c...9940](https://etherscan.io/address/0xc31e8c238287448f0d0ccf65df40424eef429940) |
| CalculationsOverrides | core | core | unmatched | [0x2c8282...c648](https://etherscan.io/address/0x2c8282a17d0d20f0b3658a5eea952b2054d5c648) |
| CalculationsSushiswap | router | router | likely in scope | [0x88de7d...f334](https://etherscan.io/address/0x88de7d7f7b9597c86b8cd195374fbf602934f334) |
| CalculationsSushiswap | router | router | likely in scope | [0xab8be4...2154](https://etherscan.io/address/0xab8be4f563f77fae19af22f4465340675e1d2154) |
| CalculationsSushiswap | router | router | likely in scope | [0xda31e2...07c4](https://etherscan.io/address/0xda31e2a2c9665ad09d06fc54d2d047e10d8f07c4) |
| CalculationsSynth | core | core | unmatched | [0x5a0474...151a](https://etherscan.io/address/0x5a04749532195d5d16268da74775defcc843151a) |
| CalculationsYearnVaults | vault_pool | vault_pool | likely in scope | [0x38477f...aa3c](https://etherscan.io/address/0x38477f2159638956d33e18951d98238a53b9aa3c) |
| CalculationsZeroPrice | oracle | oracle | likely in scope | [0xa8b5ff...d8d7](https://etherscan.io/address/0xa8b5ff097a10a264c30ec302023730fe51b7d8d7) |
| CommonHealthCheck | core | core | unmatched | [0xddcea7...f012](https://etherscan.io/address/0xddcea799ff1699e98edf118e0629a974df7df012) |
| CurveAddressesHelper | peripheral | peripheral | unmatched | [0xf30bd1...c286](https://etherscan.io/address/0xf30bd1716c5615d17caf244bd68220a1819ac286) |
| CurveClaimableTokensHelper | token | token | likely in scope | [0xead8d6...92bd](https://etherscan.io/address/0xead8d69df1e75c81ef63855a94309cc5374192bd) |
| CurveGlobal | core | core | unmatched | [0x21b1fc...a17a](https://etherscan.io/address/0x21b1fc8a52f179757bf555346130bf27c0c2a17a) |
| CustomPriceFeed | oracle | oracle | likely in scope | [0xa0ecd3...31a0](https://etherscan.io/address/0xa0ecd3893890829a4ce5b7a0cc7ae25517b531a0) |
| DebtAllocator | core | core | unmatched | [0x1e9eb0...8671](https://etherscan.io/address/0x1e9eb053228b1156831759401de0e115356b8671) |
| DelegatedBalanceMapping | core | core | unmatched | [0xc01a52...b142](https://etherscan.io/address/0xc01a529c01f9399c928a4afc50e25f12d1e5b142) |
| DelegatedStakedYFI | staking | staking | unmatched | [0x9c4246...9d79](https://etherscan.io/address/0x9c42461aa8422926e3aef7b1c6e3743597149d79) |
| DelegatedStakingRewardDistributor | rewards | rewards | likely in scope | [0x952b31...3d6e](https://etherscan.io/address/0x952b31960c97e76362ac340d07d183ada15e3d6e) |
| Dumper | core | core | unmatched | [0x590dd9...c4cf](https://etherscan.io/address/0x590dd9399bb53f1085097399c3265c7137c1c4cf) |
| dYFI | core | core | unmatched | [0x41252e...a275](https://etherscan.io/address/0x41252e8691e964f7de35156b68493bab6797a275) |
| dYFIRewardPool | vault_pool | vault_pool | likely in scope | [0x2391fc...894e](https://etherscan.io/address/0x2391fc8f5e417526338f5aa3968b1851c16d894e) |
| EarnRegistry | registry | registry | unmatched | [0x62a4e0...b04b](https://etherscan.io/address/0x62a4e0e7574e5407656a65cc8dbdf70f3c6eb04b) |
| EmissionSchedule | rewards | rewards | unmatched | [0xa97889...3dc8](https://etherscan.io/address/0xa978891e9d8fe36838891ba9e2ae77727ee63dc8) |
| EmissionSchedule | rewards | rewards | unmatched | [0xd3a5e2...0770](https://etherscan.io/address/0xd3a5e243a1f23accf3677881037d86b1c6ef0770) |
| EnsAddressResolver | registry | registry | unmatched | [0x8e89f5...f925](https://etherscan.io/address/0x8e89f5b28411d7cdf3efa24b056ecafca4f7f925) |
| EnsHelper | registry | registry | unmatched | [0x7d3311...64e1](https://etherscan.io/address/0x7d33110619e8f95f12a750f21a08b8c7cfb864e1) |
| Executor | core | core | unmatched | [0x71258e...2bf1](https://etherscan.io/address/0x71258ee726644f1d52d6a9f5e11c21d1e38c2bf1) |
| FactoryVaultsAdapter | factory | factory | likely in scope | [0x7fe950...b773](https://etherscan.io/address/0x7fe9501b4b4ba5a259f5fece1d10257839acb773) |
| FactoryVaultsAdapter | factory | factory | likely in scope | [0x984550...2762](https://etherscan.io/address/0x984550ce9e58a8f76184e1b41dd08fbf7b6d2762) |
| FeeBurner | core | core | unmatched | [0xb911fc...1ee8](https://etherscan.io/address/0xb911fcce8d5afcec73e072653107260bb23c1ee8) |
| FlashSeller | core | core | unmatched | [0x002060...deee](https://etherscan.io/address/0x0020609046710676cafc8eb5ce95fc110ccedeee) |
| FlashSeller | core | core | unmatched | [0xacc147...14df](https://etherscan.io/address/0xacc1478ad5e051791aa51f7e2ca2d34aa71014df) |
| Gas | core | core | unmatched | [0x0791d0...bf0e](https://etherscan.io/address/0x0791d07689b4ba39a4c44cd25717981be1f2bf0e) |
| GasPoolReimburser | vault_pool | vault_pool | likely in scope | [0x4165ef...1c38](https://etherscan.io/address/0x4165ef806ec952bad7ba1d5db81aef2bdebc1c38) |
| GasPoolReimburser | vault_pool | vault_pool | likely in scope | [0xa897e7...b991](https://etherscan.io/address/0xa897e7f856878ae0a16823d5feffd4d6c41cb991) |
| Gauge | staking | staking | unmatched | [0x107717...a27c](https://etherscan.io/address/0x107717c98c8125a94d3d2cc82b86a1b705f3a27c) |
| Gauge | staking | staking | unmatched | [0x28da6d...b4dc](https://etherscan.io/address/0x28da6de3e804bddf0ad237cfa6048f2930d0b4dc) |
| Gauge | staking | staking | unmatched | [0x6130e6...4998](https://etherscan.io/address/0x6130e6cd924a40b24703407f246966d7435d4998) |
| Gauge | staking | staking | unmatched | [0x7fd8af...56a3](https://etherscan.io/address/0x7fd8af959b54a677a1d8f92265bd0714274c56a3) |
| Gauge | staking | staking | unmatched | [0x81d935...4e59](https://etherscan.io/address/0x81d93531720d86f0491dee7d03f30b3b5ac24e59) |
| Gaugecontroller | controller | controller | unmatched | [0x46b385...8d5b](https://etherscan.io/address/0x46b38522422d597ddbaa2d6e98d6c9b397028d5b) |
| Gaugefactory | factory | factory | likely in scope | [0x43cfc6...0b91](https://etherscan.io/address/0x43cfc64f00b4e45619cfbc7964d982fa022e0b91) |
| Gaugeregistry | registry | registry | unmatched | [0x1d0fdc...6f8b](https://etherscan.io/address/0x1d0fdcb628b2f8c0e22354d45b3b2d4ce9936f8b) |
| GaugeV2 | staking | staking | unmatched | [0x128e72...dfc9](https://etherscan.io/address/0x128e72dfd8b00cbf9d12cb75e846ac87b83ddfc9) |
| GaugeV2 | staking | staking | unmatched | [0x38e3d8...8bf4](https://etherscan.io/address/0x38e3d865e34f7367a69f096c80a4fc329db38bf4) |
| GaugeV2 | staking | staking | unmatched | [0x49651b...1be6](https://etherscan.io/address/0x49651bd58bbbb145b90891c33ea240fff29b1be6) |
| GaugeV2 | staking | staking | unmatched | [0x5943f7...ce4d](https://etherscan.io/address/0x5943f7090282eb66575662eadf7c60a717a7ce4d) |
| GaugeV2 | staking | staking | unmatched | [0x622fa4...fee3](https://etherscan.io/address/0x622fa41799406b120f9a40da843d358b7b2cfee3) |
| GaugeV2 | staking | staking | unmatched | [0x71c322...9f3b](https://etherscan.io/address/0x71c3223d6f836f84caa7ab5a68aab6ece21a9f3b) |
| GaugeV2 | staking | staking | unmatched | [0x8e2485...9859](https://etherscan.io/address/0x8e2485942b399ea41f3c910c1bb8567128f79859) |
| GaugeV2 | staking | staking | unmatched | [0xb61f8f...f660](https://etherscan.io/address/0xb61f8fff8dd8c438e0d61c07b5536ce3d728f660) |
| GaugeV2 | staking | staking | unmatched | [0xd57aea...7b15](https://etherscan.io/address/0xd57aea3686d623da2dcebc87010a4f2f38ac7b15) |
| GaugeV2 | staking | staking | unmatched | [0xf719b2...fa11](https://etherscan.io/address/0xf719b2d3925cc445d2bb67fa12963265e224fa11) |
| GaugeValidator | staking | staking | unmatched | [0x1c662c...9524](https://etherscan.io/address/0x1c662cac382140bfc148f3003fd14b0d58dc9524) |
| GaugeValidator | staking | staking | unmatched | [0x4ac195...9e7c](https://etherscan.io/address/0x4ac195fcc985e084e05dd84a4534bfa708a29e7c) |
| GaugeValidator | staking | staking | unmatched | [0x602728...4c44](https://etherscan.io/address/0x60272833edd3f340f6436a8aaa83290c61524c44) |
| Genericgovernor | governance | governance | unmatched | [0xb7a528...5ba5](https://etherscan.io/address/0xb7a528cf6d36f736fa678a629b98a427d43e5ba5) |
| Getter | core | core | unmatched | [0x016aaf...ab39](https://etherscan.io/address/0x016aaf67c352ee493d1e17177de0eabc3d76ab39) |
| GnosisSafeL2 | governance | governance | unmatched | [0xfb1bff...91ea](https://etherscan.io/address/0xfb1bffc9d739b8d520daf37df666da4c687191ea) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x333333...97ae](https://etherscan.io/address/0x33333333d5efb92f19a5f94a43456b3cec2797ae) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xbbbbbb...784d](https://etherscan.io/address/0xbbbbbbbb6b942883ead4976882c99201108c784d) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xdc775e...8efa](https://etherscan.io/address/0xdc775e813cdb38a4f02c4bad3942319088018efa) |
| Helper | peripheral | peripheral | unmatched | [0x5aacd0...4a6f](https://etherscan.io/address/0x5aacd0d03096039ac4381cd814637e9fb7c34a6f) |
| Introspection | core | core | unmatched | [0x3cce08...c802](https://etherscan.io/address/0x3cce081280060811889b63b98bf3d607029cc802) |
| Introspection | core | core | unmatched | [0xb7d378...93e5](https://etherscan.io/address/0xb7d3788ca676975b3ccd21acd243115736c493e5) |
| JointProvider | core | core | unmatched | [0x36ac85...7907](https://etherscan.io/address/0x36ac8523a1f75ad0c2d9451efe0b75d0f6cc7907) |
| JointProvider | core | core | unmatched | [0x4050eb...f9cb](https://etherscan.io/address/0x4050eb90c15f27aa75b5cfcb934a26fde60cf9cb) |
| KeeperDaoFlashloaner | strategy | strategy | unmatched | [0x5d0610...274f](https://etherscan.io/address/0x5d0610512ab3c1304954207afcde71b6df16274f) |
| Liquid Locker Depositor | core | core | unmatched | [0x3d4ced...bc8f](https://etherscan.io/address/0x3d4ced97adb0ae3a53da95a47ffc749aad26bc8f) |
| Liquid Locker Depositor | core | core | unmatched | [0x52aa16...35c9](https://etherscan.io/address/0x52aa16860e0d42b6a7b6ecc15688472eb20135c9) |
| Liquid Locker Reward Distributor | rewards | rewards | unmatched | [0x7efc39...a000](https://etherscan.io/address/0x7efc3953bed2fc20b9f825ebffab1cc8b072a000) |
| LiquidLockerDepositor | core | core | unmatched | [0xa16f6f...143b](https://etherscan.io/address/0xa16f6fc7380300525c812ea2733ad62dda58143b) |
| LiquidLockerRedemption | core | core | unmatched | [0xba18d0...681d](https://etherscan.io/address/0xba18d0df75a3ff58ef40a8fc0d3e4db74a0e681d) |
| LockedyvUSD | core | core | unmatched | [0xaaafea...9040](https://etherscan.io/address/0xaaafea48472f77563961cdb53291dedfb46f9040) |
| LockerZapper | core | core | unmatched | [0x7ba61c...2bba](https://etherscan.io/address/0x7ba61c8e19414dcb8fe769a7be63b508c8062bba) |
| ManagementList | core | core | unmatched | [0xf64e58...5674](https://etherscan.io/address/0xf64e58ee8c7badc741a7ea98fb65488084385674) |
| Memory | core | core | unmatched | [0x9db355...16b2](https://etherscan.io/address/0x9db355769b637249d8d5f8df2378dc77eff216b2) |
| Minter | core | core | unmatched | [0xc65ac8...8bf5](https://etherscan.io/address/0xc65ac814056fd097ca28850c8466ece7bb3a8bf5) |
| MultiDelegatecall | core | core | unmatched | [0x57dec8...8579](https://etherscan.io/address/0x57dec808f94a537211c6165558581837c3138579) |
| Null Minter | core | core | unmatched | [0x9f146c...0fd3](https://etherscan.io/address/0x9f146c25e7dd462119b497f27309227bba160fd3) |
| NullMinter | core | core | unmatched | [0x1025cf...7214](https://etherscan.io/address/0x1025cf97b8a91cbd8e6d2cbf972437a54d017214) |
| Oracle | oracle | oracle | likely in scope | [0x83d95e...b030](https://etherscan.io/address/0x83d95e0d5f402511db06817aff3f9ea88224b030) |
| Ownershipproxy | proxy | proxy | unmatched | [0x56af9c...fafd](https://etherscan.io/address/0x56af9c2780e0323810acfdaeab3f58ef6e76fafd) |
| OYfi | core | core | unmatched | [0xdc1ba2...9c22](https://etherscan.io/address/0xdc1ba2a504430131c7a291b7d114b11e7baf9c22) |
| PairsHelper | peripheral | peripheral | unmatched | [0x1153f2...26da](https://etherscan.io/address/0x1153f280e7ec1182fc9ae7f35daa41f21ece26da) |
| PairsHelper | peripheral | peripheral | unmatched | [0x60d95f...bec3](https://etherscan.io/address/0x60d95f4e3917eb88e1bbfa2bbc6f2407a55dbec3) |
| PermastakerOperator | staking | staking | unmatched | [0x3419b3...55bf](https://etherscan.io/address/0x3419b3fff84b5fbf6eec061ba3f9b72809c955bf) |
| PermastakerOperator | staking | staking | unmatched | [0x5492ab...77d2](https://etherscan.io/address/0x5492ab97826edd9794356bf502a11ce2c7be77d2) |
| PricesHelper | oracle | oracle | likely in scope | [0x5d63a8...c99b](https://etherscan.io/address/0x5d63a8584d91ebc5033d022afd6c5a7c7fddc99b) |
| PricesHelper | oracle | oracle | likely in scope | [0xd73f0c...dc46](https://etherscan.io/address/0xd73f0ce21be7eb1834f91e68c55ce149b2e8dc46) |
| PrismaClaimOperator | core | core | unmatched | [0x8e2e98...80ab](https://etherscan.io/address/0x8e2e98e1ea79c31c9ab957e465c5529fc81880ab) |
| PrismaPSM | core | core | unmatched | [0x15b434...ff61](https://etherscan.io/address/0x15b434fa5eb482b5aeb56f07df7a29bf261fff61) |
| PrismaPSM | core | core | unmatched | [0x1a58f0...5a65](https://etherscan.io/address/0x1a58f071902cd01d05e359582f57b72e00ca5a65) |
| PrismaPSM | core | core | unmatched | [0x39b56a...a193](https://etherscan.io/address/0x39b56ac65fe9f20a31efa47b4e5a638a75dea193) |
| PrismaPSM | core | core | unmatched | [0x867751...d8bf](https://etherscan.io/address/0x867751f184c467b4d156f36b1858b2af1687d8bf) |
| PrismaToken | token | token | likely in scope | [0xda4786...d71c](https://etherscan.io/address/0xda47862a83dac0c112ba89c6abc2159b95afd71c) |
| PropertiesAggregator | router | router | unmatched | [0x3f870c...e995](https://etherscan.io/address/0x3f870c0ee9ed1662b42d2d91781f1958f355e995) |
| ProposalGuardian | core | core | unmatched | [0xc813f6...2e76](https://etherscan.io/address/0xc813f688ca38d37e35845fb2eb180efbc5002e76) |
| Proxy | proxy | proxy | unmatched | [0x163884...0ff7](https://etherscan.io/address/0x16388463d60ffe0661cf7f1f31a7d658ac790ff7) |
| Proxy | proxy | proxy | unmatched | [0x846e21...1cc9](https://etherscan.io/address/0x846e211e8ba920b353fb717631c015cf04061cc9) |
| Proxy | proxy | proxy | audited (TP) | [0xfeb4ac...ff52](https://etherscan.io/address/0xfeb4acf3df3cdea7399794d0869ef76a6efaff52) |
| Rebalancer | core | core | unmatched | [0x0fe57c...7ead](https://etherscan.io/address/0x0fe57cad46b70eb9df8d8915b3e9e00195ad7ead) |
| Rebalancer | core | core | unmatched | [0xc0685e...eead](https://etherscan.io/address/0xc0685ed3acf4ff688298240825128425287feead) |
| Rebalancer | core | core | unmatched | [0xd0a3d8...0abd](https://etherscan.io/address/0xd0a3d8ec180531c8b702d952a1801fb732550abd) |
| Rebalancer | core | core | unmatched | [0xd950de...78f3](https://etherscan.io/address/0xd950ded4abc40412c896439bd6c2f38b17ee78f3) |
| Rebalancer | core | core | unmatched | [0xeef7fe...51a5](https://etherscan.io/address/0xeef7feea5e73cc4012cfd5a80cc76b0434e551a5) |
| Rebalancer | core | core | unmatched | [0xff3aea...cca3](https://etherscan.io/address/0xff3aea00d3d58ba1a3672c766cc5060ffcb8cca3) |
| Receiver | core | core | unmatched | [0x642a16...dc2c](https://etherscan.io/address/0x642a16a7885d7a8b9353e2a4b68834f31389dc2c) |
| RegisteryAdapterV2Vault | vault_pool | vault_pool | likely in scope | [0x071b84...7186](https://etherscan.io/address/0x071b848b34586d0dc0009a3c0e6240b123c57186) |
| RegisteryAdapterV2Vault | vault_pool | vault_pool | likely in scope | [0xe75e51...c954](https://etherscan.io/address/0xe75e51566c5761896528b4698a88c92a54b3c954) |
| RegisteryAdapterV2Vaults | vault_pool | vault_pool | likely in scope | [0x240315...1271](https://etherscan.io/address/0x240315db938d44bb124ae619f5fd0269a02d1271) |
| RegisteryAdapterV2Vaults | vault_pool | vault_pool | likely in scope | [0xe830d4...6adf](https://etherscan.io/address/0xe830d48028ec4cdb771ce4261fa528b88f6a6adf) |
| Registry | registry | registry | audited (TP) | [0xff31a1...a3af](https://etherscan.io/address/0xff31a1b020c868f6ea3f61eb953344920eeca3af) |
| RegistryAdapterIronBank | registry | registry | unmatched | [0x21670d...cc62](https://etherscan.io/address/0x21670ddb429b6d80b5be4e65532576bb14b7cc62) |
| RegistryAdapterIronBank | registry | registry | unmatched | [0xff0bd2...793d](https://etherscan.io/address/0xff0bd2d0c7e9424ccb149ed3757155eef41a793d) |
| ReleaseRegistry | registry | registry | unmatched | [0x7cb5ab...f1e2](https://etherscan.io/address/0x7cb5abeb0de8f6f46a27329b9ef54ce10e47f1e2) |
| ResupplyPair | core | core | unmatched | [0xd210bc...e42b](https://etherscan.io/address/0xd210bc75b822795a80672413e189312598e1e42b) |
| RewardClaimer | rewards | rewards | unmatched | [0xa82454...5e50](https://etherscan.io/address/0xa82454009e01ae697012a73cb232d85e61b05e50) |
| RewardDepositor | rewards | rewards | unmatched | [0x922cf0...1096](https://etherscan.io/address/0x922cf0e43f8c8dc02399a10fcf25f3f17c6c1096) |
| RewardDistributor | rewards | rewards | unmatched | [0xd31911...5934](https://etherscan.io/address/0xd31911a33a5577be233dc096f6f5a7e496ff5934) |
| RoleManager | controller | controller | unmatched | [0x467139...7417](https://etherscan.io/address/0x4671394a28ff147cfcbc9c2b1aab9d3883597417) |
| sdToken | token | token | likely in scope | [0x979832...2e37](https://etherscan.io/address/0x97983236be88107cc8998733ef73d8d969c52e37) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0x1f3fc2...3f1c](https://etherscan.io/address/0x1f3fc2efa279d8505c6a75a87171486baf893f1c) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0x569fe0...145b](https://etherscan.io/address/0x569fe0a4001daaf94723278afed29b33fb10145b) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0x5d0386...49f1](https://etherscan.io/address/0x5d0386e11c0a30e18b9e059dddc8f5878c2d49f1) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0x6de1b5...c2a4](https://etherscan.io/address/0x6de1b557fa9caa952a086aa05182ed362dc6c2a4) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0x6e0452...f3ac](https://etherscan.io/address/0x6e0452b14a6d08394c2eeab127e2006395aff3ac) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0xaa47c5...e908](https://etherscan.io/address/0xaa47c599a1af4a36f599e50332c649b5dd82e908) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0xabdbde...12bf](https://etherscan.io/address/0xabdbde914d576123359d08624cf809d5e3ba12bf) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0xc16091...6bf2](https://etherscan.io/address/0xc1609154069ba030b1b4bddf50fab573f1ed6bf2) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0xdefef2...c334](https://etherscan.io/address/0xdefef280e83303191394d34248a728915761c334) |
| SeasolverHelper | peripheral | peripheral | unmatched | [0xfc7b37...e00a](https://etherscan.io/address/0xfc7b377d9393627f26519507fc2c9ab63a98e00a) |
| SharerV3 | core | core | unmatched | [0x2c641e...2f7d](https://etherscan.io/address/0x2c641e14afecb16b4aa6601a40ee60c3cc792f7d) |
| SimpleRedeem | core | core | unmatched | [0x276d33...3465](https://etherscan.io/address/0x276d33825a217019b6afe5b317bef302db353465) |
| SimpleVaultMigrator | vault_pool | vault_pool | likely in scope | [0x056b0f...fe7b](https://etherscan.io/address/0x056b0fe9bcbf55fb89ceed0081b2d52f3cbefe7b) |
| SimpleVaultMigrator | vault_pool | vault_pool | likely in scope | [0x086763...da03](https://etherscan.io/address/0x086763018a5feae99195af3b5eee54443fabda03) |
| SimpleVaultMigrator | vault_pool | vault_pool | likely in scope | [0x3bbe4b...4632](https://etherscan.io/address/0x3bbe4b1a01a59b559ca06b2a9fd1323e00df4632) |
| SimpleVaultMigrator | vault_pool | vault_pool | likely in scope | [0x6f7f54...7299](https://etherscan.io/address/0x6f7f54b395d468b89896e7073186130226ea7299) |
| SimpleVaultMigrator | vault_pool | vault_pool | likely in scope | [0x9327e2...503c](https://etherscan.io/address/0x9327e2fdc57c7d70782f29ab46f6385afaf4503c) |
| SingleTokenRewardDistributor | token | token | likely in scope | [0x1d02f6...d746](https://etherscan.io/address/0x1d02f6a86ed5650f93e40fcd62fa5727c32ad746) |
| SingleTokenRewardDistributor | token | token | likely in scope | [0xb226c5...6d3d](https://etherscan.io/address/0xb226c52eb411326cdb54824a88abafdaaff16d3d) |
| SingleTokenRewardDistributor | token | token | likely in scope | [0xc480b4...8edd](https://etherscan.io/address/0xc480b481dd194eac469ec9c4484d23d54b868edd) |
| Snapshot measure | core | core | unmatched | [0x0d8ab0...915f](https://etherscan.io/address/0x0d8ab04f46323ca50941495ac15a49ddacba915f) |
| StakedYFI | staking | staking | unmatched | [0x42b252...c016](https://etherscan.io/address/0x42b25284e8ae427d79da78b65dffc232aaecc016) |
| Staking | staking | staking | audited (TP) | [0xcb7dce...77ee](https://etherscan.io/address/0xcb7dce63abe175ca354dcca9cc10554d255777ee) |
| StakingMiddleware | staking | staking | likely in scope | [0xc32bd1...c020](https://etherscan.io/address/0xc32bd1a70e831c43956ff2f5f23f2ee45a04c020) |
| StakingRewardDistributor | rewards | rewards | likely in scope | [0x95547e...6113](https://etherscan.io/address/0x95547ede56cf74b73dd78a37f547127dffda6113) |
| StakingRewards | rewards | rewards | likely in scope | [0x6806d6...f246](https://etherscan.io/address/0x6806d62aadf2ee97cd4bce46bf5fcd89766ef246) |
| StakingRewards | rewards | rewards | likely in scope | [0x774a55...4d0f](https://etherscan.io/address/0x774a55c3eeb79929fd445ae97191228ab39c4d0f) |
| StakingRewards | rewards | rewards | likely in scope | [0x84c94d...28a5](https://etherscan.io/address/0x84c94d739e075b3c7431bdb1a005f0412df828a5) |
| StakingRewards | rewards | rewards | likely in scope | [0x932831...8428](https://etherscan.io/address/0x93283184650f4d3b4253abd00978176732118428) |
| StakingRewards | rewards | rewards | likely in scope | [0xe3ee39...b5fc](https://etherscan.io/address/0xe3ee395c9067dd15c492ca950b101a7d6c85b5fc) |
| StaticCallProxy | proxy | proxy | unmatched | [0x3d7ec4...6cb0](https://etherscan.io/address/0x3d7ec4a09cd4330f5c2c4341621a8249001a6cb0) |
| StaticCallProxy | proxy | proxy | unmatched | [0x3f4772...2706](https://etherscan.io/address/0x3f4772cd3ccb505cc958ceee4664447184712706) |
| StaticCallProxy | proxy | proxy | unmatched | [0x5503de...5564](https://etherscan.io/address/0x5503de0679c6d363c80dc45082986d51380e5564) |
| StaticCallProxy | proxy | proxy | unmatched | [0x55d816...8341](https://etherscan.io/address/0x55d81605de630fd586baece635237f9776978341) |
| StaticCallProxy | proxy | proxy | unmatched | [0x6951af...2f7a](https://etherscan.io/address/0x6951af6f7415f15f8ad479669c5800546c0c2f7a) |
| StaticCallProxy | proxy | proxy | unmatched | [0xa1d2f8...3ffd](https://etherscan.io/address/0xa1d2f8570e5ce7c16de8577f27ac407cbd183ffd) |
| StaticCallProxy | proxy | proxy | unmatched | [0xbe146d...3de9](https://etherscan.io/address/0xbe146d6667a9591016f50695f7f4728e49e43de9) |
| StaticCallProxy | proxy | proxy | unmatched | [0xc9dca5...65d2](https://etherscan.io/address/0xc9dca59ec6e6871a9ef730e2ca9a02e469a765d2) |
| StaticCallProxy | proxy | proxy | unmatched | [0xd56100...7aad](https://etherscan.io/address/0xd5610010800b59038c7c54f906e5f14a32037aad) |
| StaticCallProxy | proxy | proxy | unmatched | [0xef8e44...807c](https://etherscan.io/address/0xef8e447bd63fd3c1eec349cf4d1dce19be7a807c) |
| StrategiesHelper | peripheral | peripheral | unmatched | [0x11bba9...dd91](https://etherscan.io/address/0x11bba9df4541c8e40288428d91b19ac64b22dd91) |
| StrategiesHelper | peripheral | peripheral | unmatched | [0x2114d9...f0a0](https://etherscan.io/address/0x2114d9a16da30fa5b59795e4f8c9ead19e40f0a0) |
| StrategiesHelper | peripheral | peripheral | unmatched | [0x4eca12...19d8](https://etherscan.io/address/0x4eca120f0e61b7eea65cfc6b77b092c2d20719d8) |
| StrategiesHelper | peripheral | peripheral | unmatched | [0x5b4f3b...3b4a](https://etherscan.io/address/0x5b4f3be554a88bd0f8d8769b9260be865ba03b4a) |
| StrategiesHelper | peripheral | peripheral | unmatched | [0xae8138...b789](https://etherscan.io/address/0xae813841436fe29b95a14ac701afb1502c4cb789) |
| StrategiesHelper | peripheral | peripheral | unmatched | [0xe36e93...cf0c](https://etherscan.io/address/0xe36e93d10d96eb529800a9fbb75ad05d690fcf0c) |
| Strategy | strategy | strategy | audited (TP) | [0x3b7c81...234d](https://etherscan.io/address/0x3b7c81daa0f7c897b3e09352e1ca2fbe93ac234d) |
| Strategy | strategy | strategy | audited (TP) | [0x3ef6ec...92eb](https://etherscan.io/address/0x3ef6ec70d4d8fe69365c92086d470bb7d5fc92eb) |
| Strategy | strategy | strategy | audited (TP) | [0x480082...6986](https://etherscan.io/address/0x480082616815f9cc82600d6e6d1c3e41f3cb6986) |
| Strategy | strategy | strategy | audited (TP) | [0x50b550...8ea6](https://etherscan.io/address/0x50b5501a4a1b1f89504db0a75def5f1060a98ea6) |
| Strategy | strategy | strategy | audited (TP) | [0x520bf0...7b85](https://etherscan.io/address/0x520bf095fa58cb3f68c18d01746041733a1f7b85) |
| Strategy | strategy | strategy | audited (TP) | [0x7a32aa...9a47](https://etherscan.io/address/0x7a32aa9a16a59cb335ffdee3dc94024b7f8a9a47) |
| Strategy | strategy | strategy | audited (TP) | [0x7c1612...e9d0](https://etherscan.io/address/0x7c1612476d235c8054253c83b98f7ca6f7f2e9d0) |
| Strategy | strategy | strategy | audited (TP) | [0x9cff05...a7ec](https://etherscan.io/address/0x9cff0533972da48ac05a00a375cc1a65e87da7ec) |
| Strategy | strategy | strategy | audited (TP) | [0xba794f...6de0](https://etherscan.io/address/0xba794fb8f64caedba76f592468bdfae5147a6de0) |
| Strategy | strategy | strategy | audited (TP) | [0xbdf157...c5dc](https://etherscan.io/address/0xbdf157c3bad2164ce6f9dc607fd115374010c5dc) |
| Strategy | strategy | strategy | audited (TP) | [0xc31763...4f2e](https://etherscan.io/address/0xc31763c0c3025b9df3fb7cb7f4ac041866f64f2e) |
| Strategy | strategy | strategy | audited (TP) | [0xe3974e...a119](https://etherscan.io/address/0xe3974e44bc08f435da2c6db7d01e1758496da119) |
| StrategyConvex2BTCClonable | strategy | strategy | likely in scope | [0xf8126e...d2aa](https://etherscan.io/address/0xf8126ef025651e1b313a6893fcf4034f4f4bd2aa) |
| StrategyConvex3CrvRewardsClonable | strategy | strategy | likely in scope | [0x9fff11...5c16](https://etherscan.io/address/0x9fff118bfc4f3d1bde3dec2e7f40bf2823c95c16) |
| StrategyConvex3Crypto | strategy | strategy | likely in scope | [0xe35fec...ffe0](https://etherscan.io/address/0xe35fec3895dcecc7d2a91e8ae4ff3c0d43ebffe0) |
| StrategyConvex3pool | strategy | strategy | likely in scope | [0x5f5322...7104](https://etherscan.io/address/0x5f53229cbaaa037cfb9ef85d2aaea5383f9a7104) |
| StrategyConvexCompound | strategy | strategy | likely in scope | [0xf66932...af8e](https://etherscan.io/address/0xf66932f225ca48856b7f97b6f060f4c0d244af8e) |
| StrategyConvexCrvCvxPairsClonable | strategy | strategy | likely in scope | [0x5ae194...f6f9](https://etherscan.io/address/0x5ae1942249ec9ff39711801cded1226b8e40f6f9) |
| StrategyConvexcvxCRV | strategy | strategy | likely in scope | [0xbec29b...e1f1](https://etherscan.io/address/0xbec29b45033fc6e98abf3dd7ad20b8255978e1f1) |
| StrategyConvexcvxCRV | strategy | strategy | likely in scope | [0xd58fe0...965b](https://etherscan.io/address/0xd58fe05e7a9327cf48377a780cdce0a17df6965b) |
| StrategyConvexEthPoolsClonable | strategy | strategy | likely in scope | [0x073afd...ca7e](https://etherscan.io/address/0x073afd725da2454d180aeb5e933da2ae79b4ca7e) |
| StrategyConvexEURSClonable | strategy | strategy | likely in scope | [0x6c2889...7034](https://etherscan.io/address/0x6c28899a71ecdcf1f94f2fcaa8845735460f7034) |
| StrategyConvexFactoryClonable | factory | factory | audited (TP) | [0x8bbf21...1917](https://etherscan.io/address/0x8bbf215c4a8bef276292f8e276782dfe9cf01917) |
| StrategyConvexFraxBpRewardsClonable | strategy | strategy | likely in scope | [0x57505a...72c7](https://etherscan.io/address/0x57505ac8dac3ce916a48b115e4003dc5587372c7) |
| StrategyConvexFraxFactoryClonable | factory | factory | likely in scope | [0x78883a...1aaf](https://etherscan.io/address/0x78883a75c058557cc74b773c6e96150db4b01aaf) |
| StrategyConvexLINK | strategy | strategy | likely in scope | [0x94c818...c456](https://etherscan.io/address/0x94c818e3e024493808692e2ae782f3ce7fadc456) |
| StrategyConvexOldPoolsClonable | strategy | strategy | likely in scope | [0x7bf45e...6e40](https://etherscan.io/address/0x7bf45e3658c80878ef48404817f71cad70546e40) |
| StrategyConvexOriginal4Pools | strategy | strategy | likely in scope | [0xb2c04c...876b](https://etherscan.io/address/0xb2c04c55979b6ca7eb10e666933de5ed84e6876b) |
| StrategyConvexsAave | strategy | strategy | likely in scope | [0xb939ba...45de](https://etherscan.io/address/0xb939babbce109de047e43e5a8fddf254e8e545de) |
| StrategyConvexsBTC | strategy | strategy | likely in scope | [0xec93ed...0c03](https://etherscan.io/address/0xec93ed9f40792b201e91b7682b51724609e10c03) |
| StrategyConvexsBTCMetapoolsOldClonable | strategy | strategy | likely in scope | [0xc34229...931a](https://etherscan.io/address/0xc34229096524feb4834c0cef82774010fe0a931a) |
| StrategyConvexstETH | strategy | strategy | likely in scope | [0x9d67c8...c20f](https://etherscan.io/address/0x9d67c8a2742575482521a2432a34cc78f6d4c20f) |
| StrategyConvexUnderlying3Clonable | strategy | strategy | likely in scope | [0x887d9a...2533](https://etherscan.io/address/0x887d9a19eb8116d94924ddef57bd91049fd92533) |
| StrategyConvexUsdcPairsClonable | strategy | strategy | likely in scope | [0x5fd381...5b4d](https://etherscan.io/address/0x5fd3815dcb668200a662114fbc9af13ac0a55b4d) |
| StrategyCurveBoostedFactoryClonable | factory | factory | likely in scope | [0x1bc5d9...0dcc](https://etherscan.io/address/0x1bc5d99b94763d3658d7d26a762ba5da8ccf0dcc) |
| StrategyCurveBoostedFactoryClonable | factory | factory | likely in scope | [0x9b4b3d...b526](https://etherscan.io/address/0x9b4b3dbce6a2c7d65bfe3679ba2512fca39bb526) |
| StrategyCurvecvxCRV | strategy | strategy | likely in scope | [0xf81ad3...65ff](https://etherscan.io/address/0xf81ad33a29c7a85cd9fbe4f3e96dfde50c7565ff) |
| StrategyFactory | factory | factory | likely in scope | [0x6dad72...ec76](https://etherscan.io/address/0x6dad7295ed08c1b639197022b329bc2bce0bec76) |
| StrategyFactory | factory | factory | likely in scope | [0x7666e0...9400](https://etherscan.io/address/0x7666e0820d3914024ae23922287ab06ce6869400) |
| StrategyFactory | factory | factory | likely in scope | [0xc87083...e2d7](https://etherscan.io/address/0xc8708308667ecb28f3ecadc76fc281d615c1e2d7) |
| StrategyProxy | strategy | strategy | audited (TP) | [0x78edcb...fc34](https://etherscan.io/address/0x78edcb307ac1d1f8f5fd070b377a6e69c8dcfc34) |
| String | core | core | unmatched | [0x2808f1...0a2f](https://etherscan.io/address/0x2808f16b4dc5c36cc298b5dc5025db1920720a2f) |
| String | core | core | unmatched | [0x473097...1cae](https://etherscan.io/address/0x4730976d4bdad790502752cac4f58edd70321cae) |
| String | core | core | unmatched | [0x4862e0...0cf9](https://etherscan.io/address/0x4862e0b5ee92f34f061cc63395e83b7b0b3d0cf9) |
| Strings | core | core | unmatched | [0x45f80a...4a93](https://etherscan.io/address/0x45f80a180acb435aa0a52f1a260f3cc2703c4a93) |
| Strings | core | core | unmatched | [0xdbedc4...a483](https://etherscan.io/address/0xdbedc4ee481be454dc3ecd2f9b00e9315467a483) |
| StringSplit | core | core | unmatched | [0x1c0eee...52ff](https://etherscan.io/address/0x1c0eeef670d82498f7547062aac7ee2143ec52ff) |
| Swapper | router | router | audited (TP) | [0x2c73f6...695d](https://etherscan.io/address/0x2c73f6a362ef32b30585326ba57b5432c0d4695d) |
| Swapper | router | router | audited (TP) | [0x98cd45...2876](https://etherscan.io/address/0x98cd4588b97899fdecf6bf69e83811cb5da62876) |
| SwapperV3 | router | router | audited (TP) | [0x4e6ae7...f694](https://etherscan.io/address/0x4e6ae791cc33120d72392f2449dbb91dec6bf694) |
| SwapperV4 | router | router | audited (TP) | [0x0e1b2d...f853](https://etherscan.io/address/0x0e1b2d617834994a74c14f255b56ef0b1100f853) |
| SwapperV4 | router | router | audited (TP) | [0x476c56...471f](https://etherscan.io/address/0x476c56cbbc3643d675cf656fe24349d47af0471f) |
| Test | core | core | unmatched | [0x643a69...1e26](https://etherscan.io/address/0x643a6970460e336a526e7b185f7b3e6ff6901e26) |
| Trigonometry | core | core | unmatched | [0x23e258...dae2](https://etherscan.io/address/0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2) |
| Trigonometry | core | core | unmatched | [0x2d59a5...15ba](https://etherscan.io/address/0x2d59a5875916e94490289856cc893bf9b44b15ba) |
| Trigonometry | core | core | unmatched | [0x6e98fb...0c56](https://etherscan.io/address/0x6e98fb2bb7fb4c923c2484b9d0e627a535120c56) |
| Trigonometry | core | core | unmatched | [0xe19d02...5bbc](https://etherscan.io/address/0xe19d025358494abf5dda53e71915ff1e747f5bbc) |
| Trigonometry | core | core | unmatched | [0xe5b9ab...bbe8](https://etherscan.io/address/0xe5b9ab98af19e92c4912663b849fa9e392c3bbe8) |
| TroveManagerGetters | controller | controller | unmatched | [0x4404ff...ae7a](https://etherscan.io/address/0x4404ff820dad76afc4f931079eb13fd418c9ae7a) |
| TvlAdapter_VAULT_V2 | vault_pool | vault_pool | likely in scope | [0x5e4c80...47dc](https://etherscan.io/address/0x5e4c808d762b969290b2d5fa89ed13c6b40c47dc) |
| TvlAdapterEarn | adapter | adapter | unmatched | [0x1007ed...8691](https://etherscan.io/address/0x1007ed6fdfac72bbea9c719cf1fa9c355d248691) |
| TvlAdapterIronBank | adapter | adapter | unmatched | [0xec7ac8...7f24](https://etherscan.io/address/0xec7ac8ac897f5082b2c3d4e8d2173f992a097f24) |
| TvlAdapterV1Vaults | vault_pool | vault_pool | likely in scope | [0xf4fb89...6c78](https://etherscan.io/address/0xf4fb8903a41fc78686b26de55502cde42a4c6c78) |
| TvlAdapterV2Vaults | vault_pool | vault_pool | likely in scope | [0x14d6e0...8785](https://etherscan.io/address/0x14d6e0908bae40a2487352b2a9cb1a6232da8785) |
| TvlAdapterVeCrv | adapter | adapter | unmatched | [0x560144...50e5](https://etherscan.io/address/0x560144c25e53149ac410e5d33bdb131e49a850e5) |
| UniqueAddresses | core | core | unmatched | [0x07da86...fabe](https://etherscan.io/address/0x07da8603916ee59a921eb4f1eb89daef71ecfabe) |
| UniqueAddresses | core | core | unmatched | [0x272aa8...c489](https://etherscan.io/address/0x272aa89cf2dd4f3eb3c2db8889fe8163d2b4c489) |
| UniqueAddresses | core | core | unmatched | [0xf861ce...bcdf](https://etherscan.io/address/0xf861cee4a13bb2c20849490a49399f858b39bcdf) |
| UniqueAddressesHelper | peripheral | peripheral | unmatched | [0xc3a0be...467c](https://etherscan.io/address/0xc3a0bef4a47ba579cbba510ae2c59d9b9bf9467c) |
| VaultRegistry | vault_pool | vault_pool | audited (TP) | [0xaf1f5e...3319](https://etherscan.io/address/0xaf1f5e1c19cb68b30aad73846effdf78a5863319) |
| Vesting Staker (1UP) | staking | staking | unmatched | [0x298bc0...304f](https://etherscan.io/address/0x298bc0153998bc43003ca8b27768228791e6304f) |
| Vesting Staker (1UP) | staking | staking | unmatched | [0xa7c724...24b4](https://etherscan.io/address/0xa7c724db7c53af7bc0580932b2da4c605b0d24b4) |
| Vesting Staker (1UP) | staking | staking | unmatched | [0xf8c8d9...8ed1](https://etherscan.io/address/0xf8c8d9332f441e6d4f3e2731829717265c3e8ed1) |
| Vesting Staker (Cove) | staking | staking | unmatched | [0xc198fc...a691](https://etherscan.io/address/0xc198fcb71e5a2cf29f7bcafaa462f3b0238fa691) |
| Vesting Staker (StakeDAO) | staking | staking | unmatched | [0x3e3734...3a1d](https://etherscan.io/address/0x3e37347bcdf609139f74dcaeac553343cb123a1d) |
| VotingEscrowRewardDistributor | governance | governance | likely in scope | [0x2548bf...e884](https://etherscan.io/address/0x2548bf65916fdabb5a5673fc4225011ff29ee884) |
| Vyper_contract | core | core | unmatched | [0x01d7f3...a6b9](https://etherscan.io/address/0x01d7f32b6e463c96c00575fa97b8224326c6a6b9) |
| Vyper_contract | core | core | unmatched | [0x0844c2...6c2d](https://etherscan.io/address/0x0844c227b892be5d7c837000c096f64bfc316c2d) |
| Vyper_contract | core | core | unmatched | [0x27b573...349d](https://etherscan.io/address/0x27b5739e22ad9033bcbf192059122d163b60349d) |
| Vyper_contract | core | core | unmatched | [0x2fba20...0224](https://etherscan.io/address/0x2fba208e1b2106d40daa472cb7ae0c6c7efc0224) |
| Vyper_contract | core | core | unmatched | [0x3ebeac...2fd4](https://etherscan.io/address/0x3ebeaca272ce4f60e800f6c5ee678f50d2882fd4) |
| Vyper_contract | core | core | unmatched | [0x453d92...83a4](https://etherscan.io/address/0x453d92c7d4263201c69aacfaf589ed14202d83a4) |
| Vyper_contract | core | core | unmatched | [0x4707c8...3b6e](https://etherscan.io/address/0x4707c855323545223fa2ba4150a83950f6f53b6e) |
| Vyper_contract | core | core | unmatched | [0x50c1a2...3804](https://etherscan.io/address/0x50c1a2ea0a861a967d9d0ffe2ae4012c2e053804) |
| Vyper_contract | core | core | unmatched | [0x6e9455...60f3](https://etherscan.io/address/0x6e9455d109202b426169f0d8f01a3332dae160f3) |
| Vyper_contract | core | core | unmatched | [0x7dc3a7...f60a](https://etherscan.io/address/0x7dc3a74f0684fc026f9163c6d5c3c99fda2cf60a) |
| Vyper_contract | core | core | unmatched | [0x910e6e...5294](https://etherscan.io/address/0x910e6e8c29e1e02602863535295a531249965294) |
| Vyper_contract | core | core | unmatched | [0xa927df...9c52](https://etherscan.io/address/0xa927df41756770f334a879e0f18e42d6bae99c52) |
| Vyper_contract | core | core | unmatched | [0xbb1988...e48b](https://etherscan.io/address/0xbb1988ab99d4839af8b6c94853b890307770e48b) |
| Vyper_contract | core | core | unmatched | [0xc97232...037e](https://etherscan.io/address/0xc97232527b62efb0d8ed38cf3ea103a6cca4037e) |
| Vyper_contract | core | core | unmatched | [0xfa6ebb...386a](https://etherscan.io/address/0xfa6ebb3a62dde486f87661d238b53bf6557d386a) |
| Vyper_contract | core | core | unmatched | [0xfcc5c4...f65b](https://etherscan.io/address/0xfcc5c47be19d06bf83eb04298b026f81069ff65b) |
| Wallet | core | core | unmatched | [0x77d851...3d7f](https://etherscan.io/address/0x77d851a9f62a4c76481cda94d40772642b353d7f) |
| YBSFactory | factory | factory | likely in scope | [0x3ea136...ac4f](https://etherscan.io/address/0x3ea13660e4b4319a1418c5a5e9fe98263e65ac4f) |
| YBSRegistry | registry | registry | unmatched | [0x262be1...f738](https://etherscan.io/address/0x262be1d31d0754399d8d5dc63b99c22146e9f738) |
| YBSRewardFactory | factory | factory | likely in scope | [0xdbbf7d...0bd5](https://etherscan.io/address/0xdbbf7d6d71397b33675ad16c31bd3505c6af0bd5) |
| YBSRewardFactory | factory | factory | likely in scope | [0xf9d78c...b5f0](https://etherscan.io/address/0xf9d78c24979aeaabe750e720da75c7f5921bb5f0) |
| YBSUtilities | peripheral | peripheral | unmatched | [0x265c8d...9569](https://etherscan.io/address/0x265c8d21a322b04804524b857089de2fef619569) |
| YBSUtilities | peripheral | peripheral | unmatched | [0x499099...05c3](https://etherscan.io/address/0x499099832153c7d3cd88f9b8b5d6ca59fac505c3) |
| YBSUtilities | peripheral | peripheral | unmatched | [0x870fd7...d8cd](https://etherscan.io/address/0x870fd735604011c1186509179b57a6b5e295d8cd) |
| YBSUtilities | peripheral | peripheral | unmatched | [0xb70e1c...ad55](https://etherscan.io/address/0xb70e1cbff4dff345b3aa832cc1c03ca26766ad55) |
| YBSUtilities | peripheral | peripheral | unmatched | [0xf04037...e5b8](https://etherscan.io/address/0xf04037d102b64e365ef6eb81937bdf59b31fe5b8) |
| YBSUtilsFactory | factory | factory | likely in scope | [0x210e69...c6f0](https://etherscan.io/address/0x210e690ed371d69c7ea42ba716d8ab782041c6f0) |
| YBSUtilsFactory | factory | factory | likely in scope | [0x3324fb...d664](https://etherscan.io/address/0x3324fb5348fc003e92af664295358a3d2de5d664) |
| YBSUtilsFactory | factory | factory | likely in scope | [0x40a7c4...1d63](https://etherscan.io/address/0x40a7c4fde347e092a4f3a8385276834d98c71d63) |
| YCRVSplitter | core | core | unmatched | [0x05fc81...e401](https://etherscan.io/address/0x05fc8174050f0a41deb7e562187911d45cd5e401) |
| YCRVZapv4 | core | core | unmatched | [0x4ec30e...3839](https://etherscan.io/address/0x4ec30e8f98dcf08b29b02f46082ed05f88b23839) |
| YCRVZapv4 | core | core | unmatched | [0x78ada3...9e3c](https://etherscan.io/address/0x78ada385b15d89a9b845d2cac0698663f0c69e3c) |
| YCurveFeeReceiver | core | core | unmatched | [0x584bff...9c2b](https://etherscan.io/address/0x584bffc5f51ccae39ad69f1c399743620e619c2b) |
| YCurveFeeReceiver | core | core | unmatched | [0xa54809...d66b](https://etherscan.io/address/0xa54809b8149dcb55554e36e2c2bda56635afd66b) |
| Yearn V3 Vault | vault_pool | vault_pool | likely in scope | [0x1f6f16...b648](https://etherscan.io/address/0x1f6f16945e395593d8050d6cc33e4328a515b648) |
| Yearn V3 Vault | vault_pool | vault_pool | likely in scope | [0x696d02...6987](https://etherscan.io/address/0x696d02db93291651ed510704c9b286841d506987) |
| Yearn V3 Vault | vault_pool | vault_pool | likely in scope | [0xa5dab3...3896](https://etherscan.io/address/0xa5dab32dbe68e6fa784e1e50e4f620a0477d3896) |
| Yearn V3 Vault | vault_pool | vault_pool | likely in scope | [0xbe53a1...6204](https://etherscan.io/address/0xbe53a109b494e5c9f97b9cd39fe969be68bf6204) |
| Yearn V3 Vault | vault_pool | vault_pool | likely in scope | [0xbf319d...805f](https://etherscan.io/address/0xbf319ddc2edc1eb6fdf9910e39b37be221c8805f) |
| Yearn V3 Vault | vault_pool | vault_pool | likely in scope | [0xe1ac97...544a](https://etherscan.io/address/0xe1ac97e2616ad80f69f705ff007a4bbb3655544a) |
| Yearn V3 Vault | vault_pool | vault_pool | likely in scope | [0xf470eb...014d](https://etherscan.io/address/0xf470eb50b4a60c9b069f7fd6032532b8f5cc014d) |
| Yearn4626Router | router | router | audited (TP) | [0x1112db...d8de](https://etherscan.io/address/0x1112dbcf805682e828606f74ab717abf4b4fd8de) |
| YearnBoostedStaker | staking | staking | unmatched | [0x5d2ea3...ad91](https://etherscan.io/address/0x5d2ea33449a60a70e8fcdc5251fdd86a030fad91) |
| YearnBoostedStaker | staking | staking | unmatched | [0xe9a115...873f](https://etherscan.io/address/0xe9a115b77a1057c918f997c32663fdce24fb873f) |
| YearnBoostedStaker | staking | staking | unmatched | [0xf4c6e0...1975](https://etherscan.io/address/0xf4c6e0e006f164535508787873d86b84fe901975) |
| YearnFamily2021 | core | core | unmatched | [0x9d45da...18e8](https://etherscan.io/address/0x9d45dab69f1309f1f55a7280b1f6a2699ec918e8) |
| YearnV3Vault | vault_pool | vault_pool | likely in scope | [0x04aebe...dd13](https://etherscan.io/address/0x04aebe2e4301cdf5e9c57b01ebdfe4ac4b48dd13) |
| yPRISMA | core | core | unmatched | [0xe36688...3882](https://etherscan.io/address/0xe3668873d944e4a949da05fc8bde419eff543882) |
| yPRISMA | core | core | unmatched | [0xfd3735...0f4e](https://etherscan.io/address/0xfd37356c1a62288b32fa58188c77ab0d694a0f4e) |
| YPrismaFeeDistributor | oracle | oracle | likely in scope | [0x5aa86e...46df](https://etherscan.io/address/0x5aa86e9558f7701a90f343d90e0bc55aeb0046df) |
| YPrismaFeeReceiver | core | core | unmatched | [0x76df88...ecdc](https://etherscan.io/address/0x76df88aa8711822472cb40ed8c972a461a20ecdc) |
| YPrismaForwarderCallbackMinterV2 | core | core | unmatched | [0x5e0c38...0bcd](https://etherscan.io/address/0x5e0c38f5d10ac99d31d0b8badf8a7977da4d0bcd) |
| YRegistry | registry | registry | unmatched | [0x3ee41c...63a0](https://etherscan.io/address/0x3ee41c098f9666ed2ea246f4d2558010e59d63a0) |
| YToken | token | token | likely in scope | [0x222222...79d6](https://etherscan.io/address/0x22222222aea0076fca927a3f44dc0b4fdf9479d6) |
| unnamed | unknown | unknown | unmatched | [0x10537d...ae95](https://etherscan.io/address/0x10537d7bd661c9c34f547b38ec662d6fd482ae95) |
| unnamed | unknown | unknown | unmatched | [0x157320...45af](https://etherscan.io/address/0x157320da263cd14750b6915afa2a24926ba145af) |
| unnamed | unknown | unknown | unmatched | [0x1b768a...1650](https://etherscan.io/address/0x1b768a0bbafa5df5b5eca8af0fa6951d01271650) |
| unnamed | unknown | unknown | unmatched | [0x2df12e...a6d5](https://etherscan.io/address/0x2df12e6badfd7f64715c886d47b394e7596da6d5) |
| unnamed | unknown | unknown | unmatched | [0x38cdfc...c1e5](https://etherscan.io/address/0x38cdfc06b606ed7525344f87cd4d2897ecb3c1e5) |
| unnamed | unknown | unknown | unmatched | [0x41fbad...a179](https://etherscan.io/address/0x41fbad7d627fcf6ff8dd7af72884ce7fcbada179) |
| unnamed | unknown | unknown | unmatched | [0x458e62...da9f](https://etherscan.io/address/0x458e62d7aa9de3dbec10605ffe21e9c1c5e0da9f) |
| unnamed | unknown | unknown | unmatched | [0x4c3cd8...e821](https://etherscan.io/address/0x4c3cd8d1830054d3f2a1d9ca345ad4199d5de821) |
| unnamed | unknown | unknown | unmatched | [0x50b75d...a8fa](https://etherscan.io/address/0x50b75d586929ab2f75dc15f07e1b921b7c4ba8fa) |
| unnamed | unknown | unknown | unmatched | [0x5c89a2...6e89](https://etherscan.io/address/0x5c89a2502fe265e23449beb86c28817555a76e89) |
| unnamed | unknown | unknown | unmatched | [0x611453...f4a9](https://etherscan.io/address/0x6114539f82009bc203f51869046fa7db24eef4a9) |
| unnamed | unknown | unknown | unmatched | [0x66e4d1...0976](https://etherscan.io/address/0x66e4d1b1456f5c96bc51d96ca9fe2b4577630976) |
| unnamed | unknown | unknown | unmatched | [0x678dce...bd5b](https://etherscan.io/address/0x678dce2a5020ebaf5bda91c7ed33e9d30f2cbd5b) |
| unnamed | unknown | unknown | unmatched | [0x67a4a2...9a22](https://etherscan.io/address/0x67a4a25ef0ab55f7344845473c263d5128ba9a22) |
| unnamed | unknown | unknown | unmatched | [0x6d74f5...30c2](https://etherscan.io/address/0x6d74f589254e83dc12a11b4fa0e9fa9ec43f30c2) |
| unnamed | unknown | unknown | unmatched | [0x75a125...780d](https://etherscan.io/address/0x75a1253432356f90611546a487b5350cef08780d) |
| unnamed | unknown | unknown | unmatched | [0x77570c...ea2f](https://etherscan.io/address/0x77570cfecf83bc6bb08e2cd9e8537aea9f97ea2f) |
| unnamed | unknown | unknown | unmatched | [0x7ae064...49ef](https://etherscan.io/address/0x7ae064bf304b010f8e5a9c8e4cf6f3cde35849ef) |
| unnamed | unknown | unknown | unmatched | [0x7eb3ad...fd96](https://etherscan.io/address/0x7eb3ad9d680e0bcd6b0ab7e94a33b8208f5ffd96) |
| unnamed | unknown | unknown | unmatched | [0x7ec260...fb9c](https://etherscan.io/address/0x7ec260d3a12598cf6fb1cd4e7321a9cf6ca3fb9c) |
| unnamed | unknown | unknown | unmatched | [0x815faa...0bce](https://etherscan.io/address/0x815faa0278dfa01c160ba26771cb2991ca580bce) |
| unnamed | unknown | unknown | unmatched | [0x90561d...1e07](https://etherscan.io/address/0x90561de0d218385d3211373479a0439f32911e07) |
| unnamed | unknown | unknown | unmatched | [0x992122...cc88](https://etherscan.io/address/0x992122bc6f7fed14edc4a564d57039452c63cc88) |
| unnamed | unknown | unknown | unmatched | [0xa0020b...7aa3](https://etherscan.io/address/0xa0020bfeb72867a8ea96a4c3f62aff5a57e47aa3) |
| unnamed | unknown | unknown | unmatched | [0xb7326b...2204](https://etherscan.io/address/0xb7326bb9a7e7073725c3d8245ca931ad8b1a2204) |
| unnamed | unknown | unknown | unmatched | [0xbe7c7e...7ae6](https://etherscan.io/address/0xbe7c7efc1ef3245d37e3157f76a512108d6d7ae6) |
| unnamed | unknown | unknown | unmatched | [0xbf2096...bf56](https://etherscan.io/address/0xbf209691a16f81314354cfdfc79906e5be64bf56) |
| unnamed | unknown | unknown | unmatched | [0xc4d001...ef39](https://etherscan.io/address/0xc4d0012098589d297e7edf881fe5a64deccdef39) |
| unnamed | unknown | unknown | unmatched | [0xd01ba1...2004](https://etherscan.io/address/0xd01ba134d6dbf9d2d6b6753e6137eef574882004) |
| unnamed | unknown | unknown | unmatched | [0xd1badf...4781](https://etherscan.io/address/0xd1badf89032a540bfec355a927049d5577ce4781) |
| unnamed | unknown | unknown | unmatched | [0xdb658a...7b43](https://etherscan.io/address/0xdb658a120ff7c7b8b1d4135d6d5672d746d17b43) |
| unnamed | unknown | unknown | unmatched | [0xe6ad5a...7162](https://etherscan.io/address/0xe6ad5a88f5da0f276c903d9ac2647a937c917162) |
| unnamed | unknown | unknown | unmatched | [0xe9a412...d445](https://etherscan.io/address/0xe9a4129b2f144bd195b8843002cf3434cda8d445) |
| unnamed | unknown | unknown | unmatched | [0xf38561...8275](https://etherscan.io/address/0xf38561fd7ec2a7edd743d08902c06bbab3618275) |
| unnamed | unknown | unknown | unmatched | [0xfbd0e3...483e](https://etherscan.io/address/0xfbd0e30662d46f0c344df715c8203a5246e0483e) |
| unnamed | unknown | unknown | unmatched | [0xfc5f89...c12b](https://etherscan.io/address/0xfc5f89d29ccaa86e5410a7ad9d9d280d4455c12b) |
| unnamed | unknown | unknown | unmatched | [0xff7555...bc7d](https://etherscan.io/address/0xff7555ef9b20b9bc6242dc74449903065bd7bc7d) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AddressesGeneratorV2Vaults | vault_pool | vault_pool | audited (TP) | [0xd63ab0...e032](https://optimistic.etherscan.io/address/0xd63ab09ac2048a7ecac92f0ffad5f104edd0e032) |
| AddressesProvider | core | core | unmatched | [0x827321...6fa2](https://optimistic.etherscan.io/address/0x8273217252254ad7353f227aaecd2b1c4a326fa2) |
| AddressMergeHelper | peripheral | peripheral | unmatched | [0x156bab...2529](https://optimistic.etherscan.io/address/0x156bab355e81b498072c9ce3cf655e9844a12529) |
| AllowancesHelper | peripheral | peripheral | unmatched | [0x94141d...8f18](https://optimistic.etherscan.io/address/0x94141d7bff3d04d61ce65b917bdd37b655e08f18) |
| BalancesHelper | peripheral | peripheral | unmatched | [0x167aa4...5186](https://optimistic.etherscan.io/address/0x167aa4ba31b8285707d1489ad705cb24cf4e5186) |
| CalculationsChainlinkRegistry | oracle | oracle | unmatched | [0x5fd381...5b4d](https://optimistic.etherscan.io/address/0x5fd3815dcb668200a662114fbc9af13ac0a55b4d) |
| CalculationsCurve | core | core | unmatched | [0x0ffe84...7227](https://optimistic.etherscan.io/address/0x0ffe8434eae67c9838b12c3cd11ac4005daa7227) |
| CommonHealthCheck | core | core | unmatched | [0x3d8f58...5296](https://optimistic.etherscan.io/address/0x3d8f58774611676fd196d26149c71a9142c45296) |
| GnosisSafeL2 | governance | governance | unmatched | [0xfb1bff...91ea](https://optimistic.etherscan.io/address/0xfb1bffc9d739b8d520daf37df666da4c687191ea) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xea3a15...8b26](https://optimistic.etherscan.io/address/0xea3a15df68fcdbe44fdb0db675b2b3a14a148b26) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xf5d9d6...b3a7](https://optimistic.etherscan.io/address/0xf5d9d6133b698ce29567a90ab35cfb874204b3a7) |
| Helper | peripheral | peripheral | unmatched | [0x776c1e...c602](https://optimistic.etherscan.io/address/0x776c1e69b858f1b9622085052fb7b64a196ac602) |
| ManagementList | core | core | unmatched | [0x7e9756...d619](https://optimistic.etherscan.io/address/0x7e9756e1427b3c38f001f9d272d8d62bef63d619) |
| OptimismMintableERC20 | token | token | unmatched | [0x9046d3...107b](https://optimistic.etherscan.io/address/0x9046d36440290ffde54fe0dd84db8b1cfee9107b) |
| Oracle | oracle | oracle | likely in scope | [0xb082d9...bf65](https://optimistic.etherscan.io/address/0xb082d9f4734c535d9d80536f7e87a6f4f471bf65) |
| RegistryAdapterV2Vault | vault_pool | vault_pool | likely in scope | [0xbcfca7...7690](https://optimistic.etherscan.io/address/0xbcfca75ff12e2c1bb404c2c216dbf901be047690) |
| ReleaseRegistry | registry | registry | unmatched | [0x81291c...05bf](https://optimistic.etherscan.io/address/0x81291ceb9bb265185a9d07b91b5b50df94f005bf) |
| StrategiesHelper | peripheral | peripheral | unmatched | [0xd3a93c...0074](https://optimistic.etherscan.io/address/0xd3a93c794ee2798d8f7906493cd3c2a835aa0074) |
| TimelockController | governance | governance | unmatched | [0x88ba03...bf73](https://optimistic.etherscan.io/address/0x88ba032be87d5ef1fbe87336b7090767f367bf73) |
| TimelockExecutor | governance | governance | unmatched | [0xf8f60b...779b](https://optimistic.etherscan.io/address/0xf8f60bf9456a6e0141149db2dd6f02c60da5779b) |
| Treasury | treasury | treasury | unmatched | [0x84654e...f954](https://optimistic.etherscan.io/address/0x84654e35e504452769757aae5a8c7c6599cbf954) |
| VaultRegistry | vault_pool | vault_pool | audited (TP) | [0x79286d...c128](https://optimistic.etherscan.io/address/0x79286dd38c9017e5423073bac11f53357fc5c128) |
| VelodromeGlobal | core | core | unmatched | [0x8eb53a...ff86](https://optimistic.etherscan.io/address/0x8eb53a4fd9d2727a49e9e68a32108c18049bff86) |
| Vyper_contract | core | core | unmatched | [0x000000...4383](https://optimistic.etherscan.io/address/0x0000000022d53366457f9d5e68ec105046fc4383) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BankrWrapper | core | core | unmatched | [0x5bfd56...b439](https://polygonscan.com/address/0x5bfd56f9bcbdb2be985c64c620eca7f02fa7b439) |
| Basefee | core | core | unmatched | [0x4b4d71...c8e8](https://polygonscan.com/address/0x4b4d71d376cd06d7fe2ae68a1b3647cbb7c2c8e8) |
| BasicTradeFactory | factory | factory | likely in scope | [0xbf0379...7ddd](https://polygonscan.com/address/0xbf03793aa6942a12287af9ac2c7efaeb7af67ddd) |
| DebtOptimizerApplicator | core | core | unmatched | [0x521132...9b40](https://polygonscan.com/address/0x521132dab250ce9944232afd645781c19c1f9b40) |
| DebtOptimizerApplicator | core | core | unmatched | [0xf47c6f...996e](https://polygonscan.com/address/0xf47c6f64dca4359f021904b550708dbd5bdd996e) |
| FluidAprOraclePolygon | oracle | oracle | likely in scope | [0x0cff9c...ed4d](https://polygonscan.com/address/0x0cff9cc047ddcbb5562012e6f6a301e8dbb1ed4d) |
| FluidAprOraclePolygon | oracle | oracle | likely in scope | [0x4483f1...f581](https://polygonscan.com/address/0x4483f1a5e1c086bb102a922dba597d712001f581) |
| FluidLenderFactoryPolygon | factory | factory | likely in scope | [0xf42212...bf26](https://polygonscan.com/address/0xf4221238052f023f2b27e402dc86da2d60a1bf26) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x163880...5bc1](https://polygonscan.com/address/0x16388000546eded4d476bd2a4a374b5a16125bc1) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xc4ad00...b626](https://polygonscan.com/address/0xc4ad0000e223e398dc329235e6c497db5470b626) |
| RoleManager | controller | controller | unmatched | [0x9bcd66...61e2](https://polygonscan.com/address/0x9bcd66bf09ebe5dd35a868307b7638fd281061e2) |
| StrategyConvexStakerHero | strategy | strategy | likely in scope | [0xfe14d8...dd9e](https://polygonscan.com/address/0xfe14d8d9ac1cb2758a0732a637361f1732d2dd9e) |

### fantom (chain_id 250)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| CalculationsCurve | core | core | unmatched | [0x0b53e9...7128](https://ftmscan.com/address/0x0b53e9df372e72d8fdcdbedfbb56059957a37128) |
| unnamed | unknown | unknown | unmatched | [0x001d0a...4518](https://ftmscan.com/address/0x001d0a58b336f60ee050cb11ee455fd7eb984518) |
| unnamed | unknown | unknown | unmatched | [0x116458...4986](https://ftmscan.com/address/0x1164587b49ff7ace303962cc7a7e0841c1b34986) |
| unnamed | unknown | unknown | unmatched | [0x14785e...3914](https://ftmscan.com/address/0x14785e5e3650f0603ee17401c9890de380713914) |
| unnamed | unknown | unknown | unmatched | [0x29b0da...ec69](https://ftmscan.com/address/0x29b0da86e484e1c0029b56e817912d778ac0ec69) |
| unnamed | unknown | unknown | unmatched | [0x44536d...9ee4](https://ftmscan.com/address/0x44536de2220987d098d1d29d3aafc7f7348e9ee4) |
| unnamed | unknown | unknown | unmatched | [0x560144...50e5](https://ftmscan.com/address/0x560144c25e53149ac410e5d33bdb131e49a850e5) |
| unnamed | unknown | unknown | unmatched | [0x57aa88...c46a](https://ftmscan.com/address/0x57aa88a0810dfe3f9b71a9b179dd8bf5f956c46a) |
| unnamed | unknown | unknown | unmatched | [0x5ea7e5...dd25](https://ftmscan.com/address/0x5ea7e501c9a23f4a76dc7d33a11d995b13a1dd25) |
| unnamed | unknown | unknown | unmatched | [0x6b8de0...7f0e](https://ftmscan.com/address/0x6b8de08d2520c955554e837ae72022cd46ba7f0e) |
| unnamed | unknown | unknown | unmatched | [0x727fe1...9b04](https://ftmscan.com/address/0x727fe1759430df13655ddb0731de0d0fde929b04) |
| unnamed | unknown | unknown | unmatched | [0x72a34a...4a16](https://ftmscan.com/address/0x72a34abafab09b15e7191822a679f28e067c4a16) |
| unnamed | unknown | unknown | unmatched | [0x7f462b...7d73](https://ftmscan.com/address/0x7f462b92f92114a2d57a03e5ae2db5da28b77d73) |
| unnamed | unknown | unknown | unmatched | [0x89716a...b12a](https://ftmscan.com/address/0x89716ad7edc3be3b35695789c475f3e7a3deb12a) |
| unnamed | unknown | unknown | unmatched | [0x8cc45f...ccc1](https://ftmscan.com/address/0x8cc45f739104b3bdb98bfffaf2423cc0f817ccc1) |
| unnamed | unknown | unknown | unmatched | [0x97d0be...6938](https://ftmscan.com/address/0x97d0be2a72fc4db90ed9dbc2ea7f03b4968f6938) |
| unnamed | unknown | unknown | unmatched | [0xac5a9e...2b61](https://ftmscan.com/address/0xac5a9e4135a3a26497f3890bfb602b06ee592b61) |
| unnamed | unknown | unknown | unmatched | [0xc0e283...6767](https://ftmscan.com/address/0xc0e2830724c946a6748ddfe09753613cd38f6767) |
| unnamed | unknown | unknown | unmatched | [0xe55dd5...7d74](https://ftmscan.com/address/0xe55dd55b3355c261a048b3f310706c7478657d74) |
| unnamed | unknown | unknown | unmatched | [0xebaa0b...d9ba](https://ftmscan.com/address/0xebaa0b431618bcd9ea67d39c232625c20880d9ba) |
| unnamed | unknown | unknown | unmatched | [0xf13cd6...7fe0](https://ftmscan.com/address/0xf13cd6887c62b5bec145e30c38c4938c5e627fe0) |
| unnamed | unknown | unknown | unmatched | [0xf628fb...3cd1](https://ftmscan.com/address/0xf628fb7436ffc382e2af8e63dd7ccbaa142e3cd1) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Accountant | core | core | unmatched | [0x1f3998...7c8a](https://basescan.org/address/0x1f399808fe52d0e960cab84b6b54d5707ab27c8a) |
| CommonHealthCheck | core | core | unmatched | [0x827321...6fa2](https://basescan.org/address/0x8273217252254ad7353f227aaecd2b1c4a326fa2) |
| GnosisSafeL2 | governance | governance | unmatched | [0xfb1bff...91ea](https://basescan.org/address/0xfb1bffc9d739b8d520daf37df666da4c687191ea) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x01fe33...8e93](https://basescan.org/address/0x01fe3347316b2223961b20689c65eaea71348e93) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xbfaaba...b02e](https://basescan.org/address/0xbfaaba9f56a39b814281d68d2ad949e88d06b02e) |
| OptimismMintableERC20 | token | token | unmatched | [0x9eaf8c...b239](https://basescan.org/address/0x9eaf8c1e34f05a589eda6bafdf391cf6ad3cb239) |
| ReleaseRegistry | registry | registry | unmatched | [0x697bc6...ccd3](https://basescan.org/address/0x697bc6bd64677be63240262869dd5f2a3eeaccd3) |
| RoleManager | controller | controller | unmatched | [0xea3481...d456](https://basescan.org/address/0xea3481244024e2321cc13acaa80df1050f1fd456) |
| TimelockController | governance | governance | unmatched | [0x88ba03...bf73](https://basescan.org/address/0x88ba032be87d5ef1fbe87336b7090767f367bf73) |
| TimelockExecutor | governance | governance | unmatched | [0xf8f60b...779b](https://basescan.org/address/0xf8f60bf9456a6e0141149db2dd6f02c60da5779b) |
| Treasury | treasury | treasury | unmatched | [0x02ff74...3480](https://basescan.org/address/0x02ff746d8cb62709aeec611cec9b17d7dd1d3480) |
| VaultRegistry | vault_pool | vault_pool | audited (TP) | [0xf3885e...8ec5](https://basescan.org/address/0xf3885ede00171997bfadaa98e01e167b53a78ec5) |
| VelodromeGlobal | core | core | unmatched | [0x2d12ca...dff1](https://basescan.org/address/0x2d12caffa46ab3b6c5ceb224620de8b4de3cdff1) |
| unnamed | unknown | unknown | unmatched | [0x50b75d...a8fa](https://basescan.org/address/0x50b75d586929ab2f75dc15f07e1b921b7c4ba8fa) |
| unnamed | unknown | unknown | unmatched | [0x518c21...0149](https://basescan.org/address/0x518c21dc88d9780c0a1be566433c571461a70149) |
| unnamed | unknown | unknown | unmatched | [0x75a125...780d](https://basescan.org/address/0x75a1253432356f90611546a487b5350cef08780d) |
| unnamed | unknown | unknown | unmatched | [0xfc5f89...c12b](https://basescan.org/address/0xfc5f89d29ccaa86e5410a7ad9d9d280d4455c12b) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AddressesGeneratorIronBank | core | core | unmatched | [0x941f72...1763](https://arbiscan.io/address/0x941f727f267913e76e3f03a25d3bc7c07e891763) |
| AddressesGeneratorV2Vaults | vault_pool | vault_pool | audited (TP) | [0x3a8efa...f094](https://arbiscan.io/address/0x3a8efa2d87d60c0289f19b44a0928f4269c0f094) |
| AddressesProvider | core | core | unmatched | [0xcad100...8e9f](https://arbiscan.io/address/0xcad10033c86b0c1ed6bfccaa2ff6779938558e9f) |
| AddressMergeHelper | peripheral | peripheral | unmatched | [0x2a139a...9449](https://arbiscan.io/address/0x2a139a2812f1424f0c88e3d73854b16fb04e9449) |
| AllowancesHelper | peripheral | peripheral | unmatched | [0xf5875d...f44d](https://arbiscan.io/address/0xf5875d60241c8f6448649206a6f485b812acf44d) |
| BalancesHelper | peripheral | peripheral | unmatched | [0x94734b...efd7](https://arbiscan.io/address/0x94734ba0f9f8c2464d963a402743fd79b402efd7) |
| Basefee | core | core | unmatched | [0x02ff74...3480](https://arbiscan.io/address/0x02ff746d8cb62709aeec611cec9b17d7dd1d3480) |
| Basefee | core | core | unmatched | [0x1ba4eb...dfe0](https://arbiscan.io/address/0x1ba4eb0f44ab82541e56669e18972b0d6037dfe0) |
| BaseFeeOracle | oracle | oracle | likely in scope | [0x50d5d1...0f33](https://arbiscan.io/address/0x50d5d1e53c62eb7e642748ef32231f88a1680f33) |
| BaseFeeOracle | oracle | oracle | likely in scope | [0x827321...6fa2](https://arbiscan.io/address/0x8273217252254ad7353f227aaecd2b1c4a326fa2) |
| BaseFeeOracle | oracle | oracle | likely in scope | [0xdf4326...5ccd](https://arbiscan.io/address/0xdf43263dfec19117f2fe79d1d9842a10c7495ccd) |
| CalculationsChainlinkRegistry | oracle | oracle | unmatched | [0x9d0327...8219](https://arbiscan.io/address/0x9d032763693d4ef989b630de2eca8750bde88219) |
| CalculationsCurve | core | core | unmatched | [0x26f698...0c75](https://arbiscan.io/address/0x26f698491daf32771217abc1356dae48c7230c75) |
| CalculationsCurve | core | core | unmatched | [0x3268c3...78d2](https://arbiscan.io/address/0x3268c3bda100ef0ff3c2d044f23eab62c80d78d2) |
| CalculationsSushiswap | router | router | likely in scope | [0x5ea7e5...dd25](https://arbiscan.io/address/0x5ea7e501c9a23f4a76dc7d33a11d995b13a1dd25) |
| CommonHealthCheck | core | core | unmatched | [0x32059c...70bc](https://arbiscan.io/address/0x32059cce723b4dd15dd5cb2a5187f814e6c470bc) |
| CurveRegistryOverrides | registry | registry | unmatched | [0x3d197c...feed](https://arbiscan.io/address/0x3d197c5b6ea199e04ed4c9002e8435bb371efeed) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x634628...5c0d](https://arbiscan.io/address/0x6346282db8323a54e840c6c772b4399c9c655c0d) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xb6bc03...56ad](https://arbiscan.io/address/0xb6bc033d34733329971b938fef32fad7e98e56ad) |
| Helper | peripheral | peripheral | unmatched | [0xe55dd5...7d74](https://arbiscan.io/address/0xe55dd55b3355c261a048b3f310706c7478657d74) |
| ManagementList | core | core | unmatched | [0x8a5f08...53bc](https://arbiscan.io/address/0x8a5f0876b217ee61d101e022bb00d032e6d353bc) |
| OneInchSwapper | router | router | likely in scope | [0x06a53f...f89d](https://arbiscan.io/address/0x06a53f5e51ae9fec9cc10fef3278cd969ddbf89d) |
| Oracle | oracle | oracle | likely in scope | [0x043518...e9b9](https://arbiscan.io/address/0x043518ab266485dc085a1db095b8d9c2fc78e9b9) |
| RegisteryAdapterV2Vault | vault_pool | vault_pool | likely in scope | [0x57aa88...c46a](https://arbiscan.io/address/0x57aa88a0810dfe3f9b71a9b179dd8bf5f956c46a) |
| RegistryAdapterIronBank | registry | registry | unmatched | [0x7aad41...d25b](https://arbiscan.io/address/0x7aad416eb4e16a27b85e7076dd56742a44e9d25b) |
| RegistryAdapterIronBank | registry | registry | unmatched | [0xf900ea...8f40](https://arbiscan.io/address/0xf900ea42c55d165ca5d5f50883cddd352ae48f40) |
| ReleaseRegistry | registry | registry | unmatched | [0x697bc6...ccd3](https://arbiscan.io/address/0x697bc6bd64677be63240262869dd5f2a3eeaccd3) |
| StrategiesHelper | peripheral | peripheral | unmatched | [0x66a1a2...5e0f](https://arbiscan.io/address/0x66a1a27f4b22dcaa24e427dcffbf0cddd9d35e0f) |
| StrategyCurveSpell | strategy | strategy | likely in scope | [0xf1c304...6a7b](https://arbiscan.io/address/0xf1c3047c6310806de1d25535bc50748815066a7b) |
| String | core | core | unmatched | [0xaf6a3d...d830](https://arbiscan.io/address/0xaf6a3dae16915a281295725a9db06b1146f8d830) |
| Treasury | treasury | treasury | unmatched | [0x1deb47...08c1](https://arbiscan.io/address/0x1deb47dcc9a35ad454bf7f0fcdb03c09792c08c1) |
| VaultRegistry | vault_pool | vault_pool | audited (TP) | [0x84654e...f954](https://arbiscan.io/address/0x84654e35e504452769757aae5a8c7c6599cbf954) |
| Vyper_contract | core | core | unmatched | [0x3d8f58...5296](https://arbiscan.io/address/0x3d8f58774611676fd196d26149c71a9142c45296) |
| Vyper_contract | core | core | unmatched | [0xdb8bbf...01f8](https://arbiscan.io/address/0xdb8bbf2b0e28721f9bac603e687e39bcf52201f8) |
| unnamed | unknown | unknown | unmatched | [0x14785e...3914](https://arbiscan.io/address/0x14785e5e3650f0603ee17401c9890de380713914) |
| unnamed | unknown | unknown | unmatched | [0x50b75d...a8fa](https://arbiscan.io/address/0x50b75d586929ab2f75dc15f07e1b921b7c4ba8fa) |
| unnamed | unknown | unknown | unmatched | [0x75a125...780d](https://arbiscan.io/address/0x75a1253432356f90611546a487b5350cef08780d) |
| unnamed | unknown | unknown | unmatched | [0xfc5f89...c12b](https://arbiscan.io/address/0xfc5f89d29ccaa86e5410a7ad9d9d280d4455c12b) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 22 proxies on 1, 10, 137, 8453, 42161. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 12 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 14 distinct deployer addresses: 0x05f9e0...d9c8, 0x19636b...db41, 0x197939...1074, 0x1b5f15...d271, 0x1c277b...fc69. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 495 | 29 | 466 | 5.9% |
| **Total** | 495 | 29 | 466 | 5.9% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2023-08-29 | ChainSecurity | unspecified | unspecified | direct | [report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YearnERC4626Router_Audit.pdf) |
| 2023-07-11 | MixBytes | The audit covered the following files: Bootstrap.vy, MerkleIncentives.vy, POL.vy, Token.vy, CurveLP. | unspecified | direct | [report](https://github.com/mixbytes/audits_public/blob/master/Yearn%20Finance/yETH-bootstrap/Yearn%20Finance%20yETH-bootstrap%20Security%20Audit%20Report.pdf) |
| 2021-12-23 | MixBytes | Yearn Strategy SSB Security Audit Report | unspecified | direct | [report](https://github.com/mixbytes/audits_public/blob/master/Yearn%20Finance/Yearn%20Strategy%20SSB/Yearn%20Strategy%20SSB%20Security%20Audit%20Report.pdf) |
| unknown | ChainSecurity | ChainSecurity Yearn Serpentor audit | unspecified | direct | not available |
| unknown | ChainSecurity | ChainSecurity Yearn Yearn yETH audit | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | github.com/yearn/yearn-security/blob/master/disclosures/2020-10-10.md | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | github.com/yearn/yearn-security/blob/master/disclosures/2023-12-11.md | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | github.com/yearn/yearn-security/blob/master/disclosures/2025-05-08.md | unspecified | direct | not available |
| unknown | MixBytes | MixBytes Yearn Vault v.3 Wrapper Smart Contracts Audit Report | unspecified | direct | not available |
| unknown | MixBytes | Mixbytes Yearn Yswaps Security Audit Report | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | Optimum Gen lev lending Strategy Security Assessment | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | StrategyCurveYCRV.sol%20 %20HackMD | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | yAcademy Yearn BalancerLpFactory review | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | yAcademy yearn veyfi review | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

201 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/trailofbits/publications/blob/master/reviews/YearnV2Vaults.pdf](https://github.com/trailofbits/publications/blob/master/reviews/YearnV2Vaults.pdf) - audit_report_link
- [https://github.com/yearn/ydaemon/blob/main/data/meta/vaults/_schema.md](https://github.com/yearn/ydaemon/blob/main/data/meta/vaults/_schema.md) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/CryptoManiacs%20%20-%20Audit%20of%20iearn.finance%20by%20CryptoManiacs%20-%20HackMD.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/CryptoManiacs%20%20-%20Audit%20of%20iearn.finance%20by%20CryptoManiacs%20-%20HackMD.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/StrategyCurveYCRV.sol%20-%20HackMD.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/StrategyCurveYCRV.sol%20-%20HackMD.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/YearnV2_%20our%20gotcha%20notes%20-%20HackMD.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/YearnV2_%20our%20gotcha%20notes%20-%20HackMD.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202002_Certik_itoken/Certik%20-%20itoken-finance-audit-report-1.1.0.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202002_Certik_itoken/Certik%20-%20itoken-finance-audit-report-1.1.0.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202007_Quantstamp_yearn-finance/Quantstamp%20-%20Yearn.Finance%20Security%20Review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202007_Quantstamp_yearn-finance/Quantstamp%20-%20Yearn.Finance%20Security%20Review.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_timeloans-finance/MixBytes%20-%20Timeloans.Finance%20Smart%20Contract%20Security%20Audit%20Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_timeloans-finance/MixBytes%20-%20Timeloans.Finance%20Smart%20Contract%20Security%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_vaultsv1/MixBytes%20-%20Yearn.Finance%20protocol%20v.1%20Smart%20Contracts%20Audit%20Security%20Audit%20Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_vaultsv1/MixBytes%20-%20Yearn.Finance%20protocol%20v.1%20Smart%20Contracts%20Audit%20Security%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yoracle-link/MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yoracle-link/MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202101_Peckshield_yearn-strategies/PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202101_Peckshield_yearn-strategies/PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_coverv2/Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_coverv2/Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_sushiswap-bentobox/202102_MixBytes_sushiswap-bentobox.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_sushiswap-bentobox/202102_MixBytes_sushiswap-bentobox.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_yearn-generic-lender/MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_yearn-generic-lender/MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202102_Peckshield_cover-forge/PeckShield_Audit_Report_CoverForge_v1.0.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_Peckshield_cover-forge/PeckShield_Audit_Report_CoverForge_v1.0.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-v3-wrapper/MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-v3-wrapper/MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-yvboost/MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-yvboost/MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20210423_MixBytes_yearn_curve_voter_proxy/MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210423_MixBytes_yearn_curve_voter_proxy/MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20210428_MixBytes_yearn_generic_lender_aave/MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210428_MixBytes_yearn_generic_lender_aave/MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20210526_MixBytes_yearn_strategies_snx/MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210526_MixBytes_yearn_strategies_snx/MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20210616_MixBytes_yearn_liquity_stabily_pool/MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210616_MixBytes_yearn_liquity_stabily_pool/MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20210719_ToB_yearn_vaultsv2/ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210719_ToB_yearn_vaultsv2/ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20211019_MixBytes_yearn_maker_dai_delegate/MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20211019_MixBytes_yearn_maker_dai_delegate/MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20220123_ChainSecurity_yearn_partner_tracker/ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220123_ChainSecurity_yearn_partner_tracker/ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20220123_Mixbytes_yearn_strategy_ssb/Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220123_Mixbytes_yearn_strategy_ssb/Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202202_Optimum_Tokemak/Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202202_Optimum_Tokemak/Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Angle/Dedaub_-_Angle.md](https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Angle/Dedaub_-_Angle.md) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Stargate/Dedaub_-_Stargate.md](https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Stargate/Dedaub_-_Stargate.md) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Joint_Strategy/Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Joint_Strategy/Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Yswaps/Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Yswaps/Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20220409_Optimum_Notional_Finance_Strategy/Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Optimum_Notional_Finance_Strategy/Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20220511_Optimum_Gen_lev_lending_Strategy/Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220511_Optimum_Gen_lev_lending_Strategy/Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Stargate_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Stargate_Strategy_Security_Assessment.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202206_Decurity_yearn_nohedge_joint/Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202206_Decurity_yearn_nohedge_joint/Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202206_Optimum_Notional_LP/Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202206_Optimum_Notional_LP/Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202207_Optimum_Angle/Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202207_Optimum_Angle/Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202207_Statemind_yearn-veyfi/Statemind_-_Yearn_veyfi_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202207_Statemind_yearn-veyfi/Statemind_-_Yearn_veyfi_Audit.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202208_Statemind_Tarot_Impermax/202208_Statemind_Tarot_Impermax.md](https://github.com/yearn/yearn-security/blob/master/audits/202208_Statemind_Tarot_Impermax/202208_Statemind_Tarot_Impermax.md) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_joint_strategy_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_joint_strategy_review.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_LevGeist_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_LevGeist_review.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_Yearn_BalancerLpFactory_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_Yearn_BalancerLpFactory_review.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_yearn-veyfi/yAcademy_-_yearn_veyfi_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_yearn-veyfi/yAcademy_-_yearn_veyfi_review.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-serpentor/ChainSecurity_Yearn_Serpentor_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-serpentor/ChainSecurity_Yearn_Serpentor_audit.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-yCRV-and-ZapYCRV/ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-yCRV-and-ZapYCRV/ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf) - audit_report_link
- [https://github.com/yearn/yearn-security/blob/master/audits/202211_ChainSecurity_yearn-veYFI_and_RewardPool/ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202211_ChainSecurity_yearn-veYFI_and_RewardPool/ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf) - audit_report_link

### Audit Reports (full list)

- 2023-08-29 - ChainSecurity - unspecified - https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YearnERC4626Router_Audit.pdf
- 2023-07-11 - MixBytes - The audit covered the following files: Bootstrap.vy, MerkleIncentives.vy, POL.vy, Token.vy, CurveLP.vy, Shutdown.vy, Stake.vy - https://github.com/mixbytes/audits_public/blob/master/Yearn%20Finance/yETH-bootstrap/Yearn%20Finance%20yETH-bootstrap%20Security%20Audit%20Report.pdf
- 2021-12-23 - MixBytes - Yearn Strategy SSB Security Audit Report - https://github.com/mixbytes/audits_public/blob/master/Yearn%20Finance/Yearn%20Strategy%20SSB/Yearn%20Strategy%20SSB%20Security%20Audit%20Report.pdf
- unknown - ChainSecurity - ChainSecurity Yearn Serpentor audit
- unknown - ChainSecurity - ChainSecurity Yearn Yearn yETH audit
- unknown - discovery-ingest-placeholder - github.com/yearn/yearn-security/blob/master/disclosures/2020-10-10.md
- unknown - discovery-ingest-placeholder - github.com/yearn/yearn-security/blob/master/disclosures/2023-12-11.md
- unknown - discovery-ingest-placeholder - github.com/yearn/yearn-security/blob/master/disclosures/2025-05-08.md
- unknown - MixBytes - MixBytes Yearn Vault v.3 Wrapper Smart Contracts Audit Report
- unknown - MixBytes - Mixbytes Yearn Yswaps Security Audit Report
- unknown - discovery-ingest-placeholder - Optimum Gen lev lending Strategy Security Assessment
- unknown - discovery-ingest-placeholder - StrategyCurveYCRV.sol%20 %20HackMD
- unknown - discovery-ingest-placeholder - yAcademy Yearn BalancerLpFactory review
- unknown - discovery-ingest-placeholder - yAcademy yearn veyfi review

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/yearn.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** not run for this project.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $4,350,633,661,070,976,000.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:37:00.291Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $4,350,633,661,070,976,000.
