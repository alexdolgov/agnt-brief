# Agentic Audit Brief: Stout

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Stout (`stout`)
- Website: [https://stout.fi/](https://stout.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: sonic
- Contract surface: 149 unique implementations (213 raw deployments)
- Coverage basis: 0/29 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,097,839.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Stout. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across sonic. Structural roles: 15 supporting, 14 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: supporting (15), core (14), unclassified (1)
- Contract kinds: contract (30)
- Detected standards: ownable (21), chainlinkaggregator (5), erc20 (4), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (23)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 28 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BaseContracts (`0x5ce899aed04c656776148fc3b1adbe59e5f13d5c`, chain 146)
- DUSX (`0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854`, chain 146)
- DynamicInterestRate (`0x252ddc63f883cb276b4862304045f0b035993ff7`, chain 146)
- FeesDistributor (`0xfa925d48cce408c38872d9e5a907e936661aaa83`, chain 146)
- FeesWithdrawer (`0x1efd8d6b72843a70fe194f29de94fc3c5b5f9e97`, chain 146)
- Floor (`0xb8c30cf1aa46b4e8ee8d008a0f2f763b3d5bac0e`, chain 146)
- Lender (`0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48`, chain 146)
- LenderOwner (`0xec7fa6ae97bcab9236696b24be8d55879f39a6a7`, chain 146)
- LiquidationHelper (`0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75`, chain 146)
- MarketLens (`0x56f0b188fea4cd50ec91faa15982df9d9017db48`, chain 146)
- Minter (`0x5ed2e91d451dcb4639d2057613cc542c2264b28e`, chain 146)
- MiscHelper (`0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a`, chain 146)
- OracleApi3Reader (`0x25456cff86e96fe4b9b3d70aec13199297042264`, chain 146)
- OracleApi3Reader (`0x6d515498ff34fd8c0abfb74ff5a64d50f7c10f82`, chain 146)
- OracleApi3Reader (`0x863a1d4f12fdb634c605e68635af320e7f4aa60c`, chain 146)
- OracleApi3Reader (`0x943697f4d59d2847d38ccf8b75d50a8c42fbd7bf`, chain 146)
- OracleApi3Reader (`0xfc73f48939ee51929190b3697ae913de135f76a9`, chain 146)
- OracleChainlink (`0x2a7d5d7d71332bbea18fb72ba335eaf4857a1b45`, chain 146)
- PegStabilityModule (`0x24e2a86176f209cce828714c48f804fd7444a89a`, chain 146)
- PegStabilityModule (`0xb969195db5d756ac7a7ea78a69f20fe1f172a494`, chain 146)
- RepayHelper (`0x6524278eb519553f1d8c03e08b840de4d2dbb121`, chain 146)
- StableOwner (`0x002c4c18f15c4e5ed51b845b2c87459ed630fa86`, chain 146)
- StakedDUSX (`0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d`, chain 146)
- StoutTimelock (`0xd3a6b1a9026485bbd39a75a352e968711e21744b`, chain 146)
- StoutVault (`0x88d6d8547bcbd5366538cedccf424776f3f7cabf`, chain 146)
- STTX (`0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea`, chain 146)
- SupplyHangingCalculator (`0x322544d87a7501aa48ea84183ee082366ae76e13`, chain 146)
- VoteEscrowedSTTX (`0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 30; live-surface rows included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/29 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 119 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 30 of 149 unique; 119 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/63
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 149
- Raw deployments: 213
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

### ⚠️ Verified + Unaudited (63)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseContracts | unknown | project_anchor | own_supporting | 0 | sonic | unit-400538 | `0x5ce899aed04c656776148fc3b1adbe59e5f13d5c` | ⚠️ Unaudited |
| BaseContracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xad1a7ca3784b80d242101253f68c0bfb0265ccb1`; sonic `0xc2235d329ef6a9d6123a36ad634bff270fbe5874` | ⚠️ Unaudited |
| DUSX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3341bae76206a44413e94e859926086640d4d661`; sonic `0x48076321ea241fa2c7dffe352502f23a0bad64af` | ⚠️ Unaudited |
| DUSX | unknown | project_anchor | own_supporting | 0 | sonic | unit-400552 | `0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854` | ⚠️ Unaudited |
| DUSXProvider | unknown | project_anchor | own_supporting | 0 | sonic | unit-400528 | `0x0893131746962b4b5afb573351ba7f4094d81aad` | ⚠️ Unaudited |
| DynamicInterestRate | unknown | project_anchor | own_supporting | 0 | sonic | unit-400532 | `0x252ddc63f883cb276b4862304045f0b035993ff7` | ⚠️ Unaudited |
| EGGS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf26ff70573ddc8a90bd7865af8d7d70b8ff019bc` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x91f2dd4370759161b19e5299cace0b135f2d6f58` | ⚠️ Unaudited |
| FeeFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xec44aa4fd30f0860f8f39ef4b7a2400785da0e8b` | ⚠️ Unaudited |
| FeesDistributor | unknown | project_anchor | own_supporting | 0 | sonic | unit-400555 | `0xfa925d48cce408c38872d9e5a907e936661aaa83` | ⚠️ Unaudited |
| FeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b425c1c51c1eb4b4b537d1ce5b2915e4845e855` | ⚠️ Unaudited |
| FeesWithdrawer | unknown | project_anchor | own_supporting | 0 | sonic | unit-400530 | `0x1efd8d6b72843a70fe194f29de94fc3c5b5f9e97` | ⚠️ Unaudited |
| FixedRateDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5b72992e9cde8c07ce7c8217eb014ec7fd281f03`; sonic `0xc5685a88569dca11f343db4db50c8e0a7ddad992` | ⚠️ Unaudited |
| FixedRateDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x681ac7c974f6b3ca67bb7f68e0cdade9c90e6542` | ⚠️ Unaudited |
| FixOwnerEggs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb8e178b8b606da5de7417f476472c695a52695a` | ⚠️ Unaudited |
| Floor | unknown | project_anchor | own_supporting | 0 | sonic | unit-400549 | `0xb8c30cf1aa46b4e8ee8d008a0f2f763b3d5bac0e` | ⚠️ Unaudited |
| Lender | unknown | project_anchor | own_supporting | 0 | sonic | unit-400536 | `0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48` | ⚠️ Unaudited |
| Lender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: sonic `0x57c02e4ef1e025ca0a0835d623cffbbaa95f2709`; sonic `0x669fd3ca283ac0981fa0bd9ac2deca352b1dd198`; sonic `0x711de8e2fb625c523e0954f9948d090b8f584a62`; sonic `0x94395fcc29945afaae414229c0799889438ed3f2`; sonic `0x9c1b02c401d33431708b116765a8bd41b90e10e1`; sonic `0xbf7104e48b477ff1de21b5592604b89da745de13`; sonic `0xf49e97cc12be4337ad6e9fabb619ece15ea48b7a`; sonic `0xf55e1e569da5f02998bf98ed6bebdcda661c1a91` | ⚠️ Unaudited |
| LenderOwner | unknown | project_anchor | own_supporting | 0 | sonic | unit-400553 | `0xec7fa6ae97bcab9236696b24be8d55879f39a6a7` | ⚠️ Unaudited |
| LiquidationHelper | periphery | project_anchor | own_supporting | 0 | sonic | unit-400554 | `0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75` | ⚠️ Unaudited |
| MarketLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-400537 | `0x56f0b188fea4cd50ec91faa15982df9d9017db48` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-400539 | `0x5ed2e91d451dcb4639d2057613cc542c2264b28e` | ⚠️ Unaudited |
| MiscHelper | periphery | project_anchor | own_supporting | 0 | sonic | unit-400548 | `0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400533 | `0x25456cff86e96fe4b9b3d70aec13199297042264` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x5df1ef6495119a77cf4327921aa488cc65b8fae5`; sonic `0x761c59410012cf4b3d62a267dbd765c6288199b7` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400541 | `0x6d515498ff34fd8c0abfb74ff5a64d50f7c10f82` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400543 | `0x863a1d4f12fdb634c605e68635af320e7f4aa60c` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400545 | `0x943697f4d59d2847d38ccf8b75d50a8c42fbd7bf` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400556 | `0xfc73f48939ee51929190b3697ae913de135f76a9` | ⚠️ Unaudited |
| OracleChainlink | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-400534 | `0x2a7d5d7d71332bbea18fb72ba335eaf4857a1b45` | ⚠️ Unaudited |
| OracleFloorPrice | unknown | project_anchor | own_supporting | 0 | sonic | unit-400529 | `0x19b3a42bfbd4452e6a2b92b2e898916b68cb713f` | ⚠️ Unaudited |
| OraclePythStSUSDReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xca1ecc8ae30d810b4cd2fa0a270b79bf097f8fea` | ⚠️ Unaudited |
| OraclePythWSTKSCETHReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8caed8d28737c3a62a4baa25428eef28363d1e50` | ⚠️ Unaudited |
| OraclePythWSTKSCUSDReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe3b141caff92bf076443101bedf2020cd66ef2b6` | ⚠️ Unaudited |
| OSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x1705268cb99b7aa67e0f1f0c71004b83065857c6`; sonic `0x67895dd02c149e0d50c7f399bf31824f84751fdf`; sonic `0x8fb9a0b88cfc93d648b52d0b97a027f464502add`; sonic `0xb75137a0651e6d6cae9aa49b449e017799c9951d`; sonic `0xdb1604784debb80395fc8707bf8f06ed792a1076` | ⚠️ Unaudited |
| OSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xb1e25689d55734fd3fffc939c4c3eb52dff8a794` | ⚠️ Unaudited |
| OSonicDripperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb570a2d463886c059c94daf779a7bbd84d3182ba` | ⚠️ Unaudited |
| OSonicOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe68e0c66950a7e02335fc9f44daa05d115c4e88b` | ⚠️ Unaudited |
| OSonicVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x1a44f4e2ccd75999cb7fd1d25b0828c4399ec59f`; sonic `0x2c3141a7926799df0e483f110791f51f6874fed0`; sonic `0x3c11066a5da62569485620169c0af576a80b71f0`; sonic `0x4bc73050916e6d1738286d8863f8fdcffaa879f8`; sonic `0x5217ffe502e937842bda3caec6853b31988c5583`; sonic `0xf611cc500eee7e4e4763a05fe623e2363c86d2af` | ⚠️ Unaudited |
| OSonicVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x087a3e2b1342ddc7c4c8af6d7d3e5c8ea78dcbd9`; sonic `0x48bb737b62140a5cc2568bae1223ebe1a30fe277`; sonic `0x48e48363a799856b2a135d145305a49023409ebd`; sonic `0x4a83ce24e7a1a010e91329975e9d5a31b34e994c`; sonic `0xb3d6e885f0c0f5355c7029af328fe923ebf9906c`; sonic `0xb5c4cd4092792de91846063e087497ad4c37ac16`; sonic `0xd66afaa7fe071162d055b3cc703cc1eaed836cf3` | ⚠️ Unaudited |
| OSonicVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 12 deployments: sonic `0x062225ff81afd93b21c93a30d46f020a8c13f3d2`; sonic `0x33015e913494705978f1324e9877cfccbb37df3d`; sonic `0x3e07dc143248840f512f1cdd9f2ca3e45d7776a2`; sonic `0x57e4073fb2c8cd6adfc00119908b2e25724f3721`; sonic `0x83e4bc6102d334a858e3764a9a20269c4960ea95`; sonic `0x8a83787c222dbc207612a41eb0e9730ba3a9a958`; sonic `0xb08442bab7ae5b12db276e4f0cd74f7d7c227dae`; sonic `0xbb3b88210cc56b85ec53af5f5cb3cf00e5e1b1a8`; sonic `0xd95345c0a5312e24c39523a785d863f825aa7345`; sonic `0xe0967673a89e22c921ab3c5d8c9ce9429dd55fb2`; sonic `0xeab26fc635e2f910204761e4efb9ffaf92fc358b`; sonic `0xf85a68d7262c16be322b5e77bbbd4562249d2358` | ⚠️ Unaudited |
| OSonicZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x8bb67820e8ac1a775da25e50391718c1457d07ac`; sonic `0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21` | ⚠️ Unaudited |
| OSVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186` | ⚠️ Unaudited |
| PegStabilityModule | unknown | project_anchor | own_supporting | 0 | sonic | unit-400531 | `0x24e2a86176f209cce828714c48f804fd7444a89a` | ⚠️ Unaudited |
| PegStabilityModule | unknown | project_anchor | own_supporting | 0 | sonic | unit-400550 | `0xb969195db5d756ac7a7ea78a69f20fe1f172a494` | ⚠️ Unaudited |
| PoolBoostCentralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x246594d0276ffaeb0442c3edcdfb026e6924b3b3`; sonic `0x6f9468c6808fee8f16b8f946297235f6e982bfdc`; sonic `0x7399a8bda2897bcd70ca5b58620da4a309ae6be8`; sonic `0xe1ee1442bf47adbb2ece7f892485d02d149d4aa1` | ⚠️ Unaudited |
| PoolBoostCentralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x4f3b656aa5fb5e708bf7b63d6ff71623eb4a218a` | ⚠️ Unaudited |
| PoolBoostCentralRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x7c5cb7db176b188af729d8b3b00ef222dd4ca4a7`; sonic `0xa63e47420775a26af0aab0cfc60d28d491d17dc5`; sonic `0xc10f529f231f1670f22687eb576113b8f6145d81` | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x27281ce00322ee8b7c078788fb624d051f5f7689`; sonic `0x840081c97256d553a8f234d469d797b9535a3b49`; sonic `0xb2e9d0d8cadb30bb66929996121cbd8bf4c3ffe7`; sonic `0xf43f0f8b2a8f13d8e16e489d75e317691e28674f` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: sonic `0x11e1c786875287a5b2bb2ff84b317b79cc14204f`; sonic `0x1310ea784fe561e1d099b6a4e49793b21251382a`; sonic `0x2c945a444dd20d88a3808cbc2d6093dc10f597b8`; sonic `0x8599841b1d6e64665704ba7f6a26345637d85fe9`; sonic `0x963fd46b7ed3b95d3a1a3c4e3cde4631e7dd19dc`; sonic `0x9cce36ae6728d6e8db5f888fda65e3e6686cd1e1`; sonic `0xcae456f3b6a6dc239eadbbfa47bca4f3da07ee60`; sonic `0xcb32493aed1510c584736a13fbbe42d3f5139953` | ⚠️ Unaudited |
| RepayHelper | periphery | project_anchor | own_supporting | 0 | sonic | unit-400540 | `0x6524278eb519553f1d8c03e08b840de4d2dbb121` | ⚠️ Unaudited |
| StableOwner | unknown | project_anchor | own_supporting | 0 | sonic | unit-400527 | `0x002c4c18f15c4e5ed51b845b2c87459ed630fa86` | ⚠️ Unaudited |
| StakedDUSX | token | project_anchor | own_supporting | 0 | sonic | unit-400547 | `0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d` | ⚠️ Unaudited |
| StoutTimelock | governance | project_anchor | own_supporting | 0 | sonic | unit-400551 | `0xd3a6b1a9026485bbd39a75a352e968711e21744b` | ⚠️ Unaudited |
| StoutVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-400544 | `0x88d6d8547bcbd5366538cedccf424776f3f7cabf` | ⚠️ Unaudited |
| STTX | unknown | project_anchor | own_supporting | 0 | sonic | unit-400546 | `0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea` | ⚠️ Unaudited |
| SupplyHangingCalculator | unknown | project_anchor | own_supporting | 0 | sonic | unit-400535 | `0x322544d87a7501aa48ea84183ee082366ae76e13` | ⚠️ Unaudited |
| SupplyHangingCalculatorOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcaf8e906ec654ea83dd5f2b4387183cddeeff99f` | ⚠️ Unaudited |
| VaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x06f172e6852085eca886b7f9fd8f7b21db3d2c40` | ⚠️ Unaudited |
| VoteEscrowedSTTX | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-400542 | `0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e` | ⚠️ Unaudited |
| WOSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1ccb48fb244fe1f6eb0d1c5fbd839db78c6c5805`; sonic `0x9f0df7799f6fdad409300080cff680f5a23df4b1` | ⚠️ Unaudited |
| WOSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x563045e7981be87a5c5c598440f3ae9f79e55d0b`; sonic `0x574cb89c0475487f9dbda19f8f426d5f30b58983`; sonic `0x8cb72f11780e3ec765f91f00678545c3075558f8`; sonic `0xa369fa399d58d7007e5e0f32c5b4c83d8c9657ef`; sonic `0xa8e00f3b166dd5ccea13e73d89d8e79c1b569cbe`; sonic `0xba77859dc57e5a924176d4f892d70c13dd3bd2d7` | ⚠️ Unaudited |
| WOSonicProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x52a10d701c878c5aa3df2731b89bf9b2e7de8342`; sonic `0xbd57cfa27e0eba08a6eb526e5736e92073240841`; sonic `0xc29a44717de87910aa65860be0f57388bd7e4506`; sonic `0xda0d34016a49bfa15391532db53eda32e8236479`; sonic `0xe1b612b654891e0b311069b2aa0ac0e2a48be4a2`; sonic `0xfb6985a816821b21847ed93316a34aca52821836` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x006bce3ea7405387f36388222a17b9888c88699f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x03372565db135c0413b9502c714a9989e1d36e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0957b387be8e993e5b154ddb6513d03e0471cefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x121383458071600f52ecc1a5c3694f1bd8b221f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x18e6246dd6082cd360a66b1963e2debf7fc5234e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a436a1663f6d31a96ce3849d7c00da034c8f901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ea4733cfc451eb85923df949312cbb238f70b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f1d3b0e4fe00b1076220ca84c3f1bb57d858a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x204329eb60d07ee92e91eef70590e2421efe8e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x25c43620603c1040f50720babab2170445bc7777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2776f29ef9ad1a2c84503e470f2aa3113254151f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x29200339f8ae018ecef0e857c87934ace9729105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d88f89c0c4f0c6d5cc2d7fd253977a542a51db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2eff965bad1c13827d6888fb13c4aa173477285b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3a9b663f7381c9570affd5cfe2da60c5e060b063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3f80f349731ed7d8a5374513117dbff5929a18e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x425a625de374ff3f6a64c1157fd89a481b4ed56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x46c06f7c2b123e2d7987c510e30f6dde3529d6ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4bf2389f3e79cf61dbe275b30cc3f0ddf3888315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4f1aef16b1c5246a7562046bf675e02d9db836d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50a68cf27c6cb264d1d9657435da5a75bab7739a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5220ffe4afecdd24684e16b090eac60fc48ea29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54527e18b2c186f6fc1dc0a99636797aae3d40bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55fefae7553d7e4894f8746b589f71c286a44153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5847b1834e2842e9363da23927da03f6cd3193da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x58cc8b56bd559454a44d5f25b3fa576698ba0a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5979827b9295b801fa637d03b3d5c40d0442bb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5c9ad1ecd22e5d30a8af8dddde57410633c49db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x608a61d31177ed558b137b1e4a19bbe2739867d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6276d483fa8856a280e19b198aaf09f4c46bf4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63b173d52f4065adb01db22579f8ebebe616a79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63cde3525fd246f7ef9b867fa07c075fae5ce654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x657af63abc3d42a18f4cb85844309f83fbd58720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x66f2dffb2d4436b483319528220a68319f63f590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67d57096d4521cdf79313433ba21a8dc99c437cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b26d42371de167abde8c54bd89272271a80a0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x748ee7b58d872e30042c13a704aaaa89f605a4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x74f54fc8ced2329fd041634e43529f0ae61b55ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x77dd3b78c899aab57fc4c703378d0e1968c3da28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8000638a4dfb97d70604010c6b5efc61f543d68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x81a14017bc28ba35d0f7a183f699c7356717567a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83c117f9ce3cc640aeb64812b768f03e315a33e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x842c9121ee835b5147753a865766d695b6899238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x846fb33a3ba477eb4094b516e614d1938cac813a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8cce209ca1f289cb33bfc90e648a516018e28a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d0ea3fc76ce91db4c949acdb38b4a9b1d0aa322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8e06874cb7bc31cf28fb56025221e2b97e8a77f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8fde1fd8fc952d53b52f5c8c874f41c01fe0cd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94cbd262a34103a6990ca4fa80b27f4f89c10599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x951881874374d41c1caa951024f9b446370858a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9ddb17cc319164562532d350f521368e631e7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9e3143c171e6baf5132a653dd59129789bc174b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9e88952079ce1d4d0025606fbf6688f56e7ad43d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5e1b0e69d4c9f583300a0f7e5aca388b07e381e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa6c53aede0001a818b0340266fa4b3563f02e0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa97db14f4584ba3815b935887c28e3b2f3023da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xac3c72bab476ecf3fc5d17345501ea82ad210eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xae3dcffd56d2442682ae9a349fa69b414ce864a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb275f115e0174aaf582a6331b63f9259b7af8d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb6424648df6aa069cf3ceaf85a634c05cd4f6a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba09a5de005e3496aa40e8c006c4605a56613e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3ca8fad52911edfb3c2f499044b16d4bab5c8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc4c7324559ad3c3da7ea8f9e089fe5d703baba48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc82bd70ed3bbb470e9501c08df1ea2dae558fc69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9ec89e5dc92eb42c1f50b40dbadab7835a1675e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcd3d2d6b15149a9a5b69de7b9949cf47929f062a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcdcf8e4703dc9c72a599a9195916ee4019600846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcf89906a45055399c216d522c8f89d1b55536b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcfce49ebd2bad4a1d93d269806a753f33f9637c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd0cc28bc8f4666286f3211e465ecf1fe5c72ac8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd1a9c3a30708fe1fe42bd46b7d6fcd646e3cee21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd3001a166db1b347e1851d8bd3d429f18d8c5121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd4cceaa6caa829dbf54bea9d942235ed348b7ce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd5909a743c9b168b8fa9f3c71ccfd3fee0bb4040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd9efb02c55c758e8a1e58d8b9f29dcc74a4cbb66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdae5a33e75081f7882033eec82550d0ea64d8775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdb564bc6865b84e1270fad3473d64b6400c9f06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe3717f9a2c2f04041c87958fe56140ebd6e7d230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe504b2f4dee931c800243eb44374c193311577e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe64d5d19237b53f63fae3d18c37e019155e242e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6a16237d3f5ded27fc823ea996888cb883a3450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe9f739d47df07561809f43eb37f9df1e5b1fc51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xed6bb8e862b656120a5ff4635c34af0918cabcfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf22f2808ee09c9f00d055413a1f415dbc84b13cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2625c69797b4237e0e193e1063c3e17686306e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf8fcbbf814c5edacac747b17cce16f0db2e81104` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 172
- Live contracts: 17
- Unknown liveness contracts: 155
- Source-verified contracts: 100
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=2, contamination review=9, exact address book overlap=15, source verified unclassified=74, unverified unclassified=72

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | FeeFix<br>`0xec44aa4fd30f0860f8f39ef4b7a2400785da0e8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x23c54e2ef640e8ad8711d1a587e17557e7f6a50d` |
| candidate review | FixOwnerEggs<br>`0xfb8e178b8b606da5de7417f476472c695a52695a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x23c54e2ef640e8ad8711d1a587e17557e7f6a50d` |
| contamination review | DUSXProvider<br>`0x0893131746962b4b5afb573351ba7f4094d81aad` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| contamination review | OracleFloorPrice<br>`0x19b3a42bfbd4452e6a2b92b2e898916b68cb713f` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| contamination review | OSonicOracleRouter<br>`0xe68e0c66950a7e02335fc9f44daa05d115c4e88b` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| contamination review | OSonicVaultAdmin<br>`0x1a44f4e2ccd75999cb7fd1d25b0828c4399ec59f` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| contamination review | OSonicZapper<br>`0x8bb67820e8ac1a775da25e50391718c1457d07ac` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| contamination review | PoolBoostCentralRegistry<br>`0x246594d0276ffaeb0442c3edcdfb026e6924b3b3` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| contamination review | PoolBoosterFactorySwapxDouble<br>`0x27281ce00322ee8b7c078788fb624d051f5f7689` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| contamination review | PythAggregatorV3<br>`0x11e1c786875287a5b2bb2ff84b317b79cc14204f` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| contamination review | VaultValueChecker<br>`0x06f172e6852085eca886b7f9fd8f7b21db3d2c40` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| exact address book overlap | BaseContracts<br>`0x5ce899aed04c656776148fc3b1adbe59e5f13d5c` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | DynamicInterestRate<br>`0x252ddc63f883cb276b4862304045f0b035993ff7` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | FeesDistributor<br>`0xfa925d48cce408c38872d9e5a907e936661aaa83` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | FeesWithdrawer<br>`0x1efd8d6b72843a70fe194f29de94fc3c5b5f9e97` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | Floor<br>`0xb8c30cf1aa46b4e8ee8d008a0f2f763b3d5bac0e` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | MarketLens<br>`0x56f0b188fea4cd50ec91faa15982df9d9017db48` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | OracleApi3Reader<br>`0x25456cff86e96fe4b9b3d70aec13199297042264` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | OracleApi3Reader<br>`0x6d515498ff34fd8c0abfb74ff5a64d50f7c10f82` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | OracleApi3Reader<br>`0x863a1d4f12fdb634c605e68635af320e7f4aa60c` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | OracleApi3Reader<br>`0x943697f4d59d2847d38ccf8b75d50a8c42fbd7bf` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | OracleApi3Reader<br>`0xfc73f48939ee51929190b3697ae913de135f76a9` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | PegStabilityModule<br>`0x24e2a86176f209cce828714c48f804fd7444a89a` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | PegStabilityModule<br>`0xb969195db5d756ac7a7ea78a69f20fe1f172a494` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | StableOwner<br>`0x002c4c18f15c4e5ed51b845b2c87459ed630fa86` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| exact address book overlap | SupplyHangingCalculator<br>`0x322544d87a7501aa48ea84183ee082366ae76e13` | project_anchor | unknown | live | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | BaseContracts<br>`0xad1a7ca3784b80d242101253f68c0bfb0265ccb1` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | BaseContracts<br>`0xc2235d329ef6a9d6123a36ad634bff270fbe5874` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | DUSX<br>`0x3341bae76206a44413e94e859926086640d4d661` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | DUSX<br>`0x48076321ea241fa2c7dffe352502f23a0bad64af` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | FeeDistributor<br>`0x91f2dd4370759161b19e5299cace0b135f2d6f58` | non_address_book | unknown | unknown | verified | n/a | `0x23c54e2ef640e8ad8711d1a587e17557e7f6a50d` |
| source verified unclassified | FeesWithdrawer<br>`0x1b425c1c51c1eb4b4b537d1ce5b2915e4845e855` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | FixedRateDripper<br>`0x681ac7c974f6b3ca67bb7f68e0cdade9c90e6542` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | FixedRateDripper<br>`0xc5685a88569dca11f343db4db50c8e0a7ddad992` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OracleApi3Reader<br>`0x5df1ef6495119a77cf4327921aa488cc65b8fae5` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | OracleApi3Reader<br>`0x761c59410012cf4b3d62a267dbd765c6288199b7` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | OraclePythStSUSDReader<br>`0xca1ecc8ae30d810b4cd2fa0a270b79bf097f8fea` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | OraclePythWSTKSCETHReader<br>`0x8caed8d28737c3a62a4baa25428eef28363d1e50` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | OraclePythWSTKSCUSDReader<br>`0xe3b141caff92bf076443101bedf2020cd66ef2b6` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | OSonic<br>`0x1705268cb99b7aa67e0f1f0c71004b83065857c6` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonic<br>`0x67895dd02c149e0d50c7f399bf31824f84751fdf` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonic<br>`0x8fb9a0b88cfc93d648b52d0b97a027f464502add` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonic<br>`0xb75137a0651e6d6cae9aa49b449e017799c9951d` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonic<br>`0xdb1604784debb80395fc8707bf8f06ed792a1076` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicDripperProxy<br>`0x5b72992e9cde8c07ce7c8217eb014ec7fd281f03` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicDripperProxy<br>`0xb570a2d463886c059c94daf779a7bbd84d3182ba` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultAdmin<br>`0x2c3141a7926799df0e483f110791f51f6874fed0` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultAdmin<br>`0x3c11066a5da62569485620169c0af576a80b71f0` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultAdmin<br>`0x4bc73050916e6d1738286d8863f8fdcffaa879f8` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultAdmin<br>`0x5217ffe502e937842bda3caec6853b31988c5583` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultAdmin<br>`0xf611cc500eee7e4e4763a05fe623e2363c86d2af` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultCore<br>`0x087a3e2b1342ddc7c4c8af6d7d3e5c8ea78dcbd9` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultCore<br>`0x48bb737b62140a5cc2568bae1223ebe1a30fe277` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultCore<br>`0x48e48363a799856b2a135d145305a49023409ebd` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultCore<br>`0x4a83ce24e7a1a010e91329975e9d5a31b34e994c` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultCore<br>`0xb3d6e885f0c0f5355c7029af328fe923ebf9906c` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultCore<br>`0xb5c4cd4092792de91846063e087497ad4c37ac16` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0x062225ff81afd93b21c93a30d46f020a8c13f3d2` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0x33015e913494705978f1324e9877cfccbb37df3d` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0x3e07dc143248840f512f1cdd9f2ca3e45d7776a2` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0x57e4073fb2c8cd6adfc00119908b2e25724f3721` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0x83e4bc6102d334a858e3764a9a20269c4960ea95` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0x8a83787c222dbc207612a41eb0e9730ba3a9a958` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0xb08442bab7ae5b12db276e4f0cd74f7d7c227dae` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0xbb3b88210cc56b85ec53af5f5cb3cf00e5e1b1a8` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0xd95345c0a5312e24c39523a785d863f825aa7345` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0xe0967673a89e22c921ab3c5d8c9ce9429dd55fb2` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0xeab26fc635e2f910204761e4efb9ffaf92fc358b` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | OSonicVaultProxy<br>`0xf85a68d7262c16be322b5e77bbbd4562249d2358` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PoolBoostCentralRegistry<br>`0x6f9468c6808fee8f16b8f946297235f6e982bfdc` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PoolBoostCentralRegistry<br>`0x7399a8bda2897bcd70ca5b58620da4a309ae6be8` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PoolBoostCentralRegistry<br>`0xe1ee1442bf47adbb2ece7f892485d02d149d4aa1` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PoolBoostCentralRegistryProxy<br>`0x4f3b656aa5fb5e708bf7b63d6ff71623eb4a218a` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PoolBoostCentralRegistryProxy<br>`0x7c5cb7db176b188af729d8b3b00ef222dd4ca4a7` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PoolBoostCentralRegistryProxy<br>`0xa63e47420775a26af0aab0cfc60d28d491d17dc5` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PoolBoostCentralRegistryProxy<br>`0xc10f529f231f1670f22687eb576113b8f6145d81` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PoolBoosterFactorySwapxDouble<br>`0xb2e9d0d8cadb30bb66929996121cbd8bf4c3ffe7` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PoolBoosterFactorySwapxDouble<br>`0xf43f0f8b2a8f13d8e16e489d75e317691e28674f` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | PythAggregatorV3<br>`0x1310ea784fe561e1d099b6a4e49793b21251382a` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | PythAggregatorV3<br>`0x2c945a444dd20d88a3808cbc2d6093dc10f597b8` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | PythAggregatorV3<br>`0x8599841b1d6e64665704ba7f6a26345637d85fe9` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | PythAggregatorV3<br>`0x963fd46b7ed3b95d3a1a3c4e3cde4631e7dd19dc` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | PythAggregatorV3<br>`0x9cce36ae6728d6e8db5f888fda65e3e6686cd1e1` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | PythAggregatorV3<br>`0xcae456f3b6a6dc239eadbbfa47bca4f3da07ee60` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | PythAggregatorV3<br>`0xcb32493aed1510c584736a13fbbe42d3f5139953` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | SupplyHangingCalculatorOwner<br>`0xcaf8e906ec654ea83dd5f2b4387183cddeeff99f` | non_address_book | unknown | unknown | verified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| source verified unclassified | WOSonic<br>`0x1ccb48fb244fe1f6eb0d1c5fbd839db78c6c5805` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonic<br>`0x563045e7981be87a5c5c598440f3ae9f79e55d0b` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonic<br>`0x574cb89c0475487f9dbda19f8f426d5f30b58983` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonic<br>`0x8cb72f11780e3ec765f91f00678545c3075558f8` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonic<br>`0xa369fa399d58d7007e5e0f32c5b4c83d8c9657ef` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonic<br>`0xa8e00f3b166dd5ccea13e73d89d8e79c1b569cbe` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonic<br>`0xba77859dc57e5a924176d4f892d70c13dd3bd2d7` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonicProxy<br>`0x52a10d701c878c5aa3df2731b89bf9b2e7de8342` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonicProxy<br>`0x9f0df7799f6fdad409300080cff680f5a23df4b1` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonicProxy<br>`0xbd57cfa27e0eba08a6eb526e5736e92073240841` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonicProxy<br>`0xc29a44717de87910aa65860be0f57388bd7e4506` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonicProxy<br>`0xda0d34016a49bfa15391532db53eda32e8236479` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonicProxy<br>`0xe1b612b654891e0b311069b2aa0ac0e2a48be4a2` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| source verified unclassified | WOSonicProxy<br>`0xfb6985a816821b21847ed93316a34aca52821836` | non_address_book | unknown | unknown | verified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| unverified unclassified | UnnamedContract<br>`0x006bce3ea7405387f36388222a17b9888c88699f` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x03372565db135c0413b9502c714a9989e1d36e16` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x0957b387be8e993e5b154ddb6513d03e0471cefa` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x121383458071600f52ecc1a5c3694f1bd8b221f5` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x18e6246dd6082cd360a66b1963e2debf7fc5234e` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x1ea4733cfc451eb85923df949312cbb238f70b79` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x204329eb60d07ee92e91eef70590e2421efe8e08` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x25c43620603c1040f50720babab2170445bc7777` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x2776f29ef9ad1a2c84503e470f2aa3113254151f` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x29200339f8ae018ecef0e857c87934ace9729105` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x2d88f89c0c4f0c6d5cc2d7fd253977a542a51db4` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x2eff965bad1c13827d6888fb13c4aa173477285b` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x3a9b663f7381c9570affd5cfe2da60c5e060b063` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x3f80f349731ed7d8a5374513117dbff5929a18e0` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x425a625de374ff3f6a64c1157fd89a481b4ed56a` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x46c06f7c2b123e2d7987c510e30f6dde3529d6ec` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x4bf2389f3e79cf61dbe275b30cc3f0ddf3888315` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x4f1aef16b1c5246a7562046bf675e02d9db836d4` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x54527e18b2c186f6fc1dc0a99636797aae3d40bf` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x5847b1834e2842e9363da23927da03f6cd3193da` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x58cc8b56bd559454a44d5f25b3fa576698ba0a80` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x5979827b9295b801fa637d03b3d5c40d0442bb10` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x608a61d31177ed558b137b1e4a19bbe2739867d3` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x6276d483fa8856a280e19b198aaf09f4c46bf4bf` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x63b173d52f4065adb01db22579f8ebebe616a79d` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x63cde3525fd246f7ef9b867fa07c075fae5ce654` | non_address_book | unknown | unknown | unverified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| unverified unclassified | UnnamedContract<br>`0x657af63abc3d42a18f4cb85844309f83fbd58720` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x66f2dffb2d4436b483319528220a68319f63f590` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x67d57096d4521cdf79313433ba21a8dc99c437cc` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x6b26d42371de167abde8c54bd89272271a80a0dd` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x74f54fc8ced2329fd041634e43529f0ae61b55ee` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x77dd3b78c899aab57fc4c703378d0e1968c3da28` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x8000638a4dfb97d70604010c6b5efc61f543d68b` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x81a14017bc28ba35d0f7a183f699c7356717567a` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x83c117f9ce3cc640aeb64812b768f03e315a33e0` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x842c9121ee835b5147753a865766d695b6899238` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x846fb33a3ba477eb4094b516e614d1938cac813a` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x8cce209ca1f289cb33bfc90e648a516018e28a96` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x8d0ea3fc76ce91db4c949acdb38b4a9b1d0aa322` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x8e06874cb7bc31cf28fb56025221e2b97e8a77f3` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x8fde1fd8fc952d53b52f5c8c874f41c01fe0cd63` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x94cbd262a34103a6990ca4fa80b27f4f89c10599` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x9ddb17cc319164562532d350f521368e631e7287` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x9e3143c171e6baf5132a653dd59129789bc174b6` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0x9e88952079ce1d4d0025606fbf6688f56e7ad43d` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xa5e1b0e69d4c9f583300a0f7e5aca388b07e381e` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xa6c53aede0001a818b0340266fa4b3563f02e0a6` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xaa97db14f4584ba3815b935887c28e3b2f3023da` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xac3c72bab476ecf3fc5d17345501ea82ad210eb2` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xae3dcffd56d2442682ae9a349fa69b414ce864a6` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xb275f115e0174aaf582a6331b63f9259b7af8d4d` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xb6424648df6aa069cf3ceaf85a634c05cd4f6a2b` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xba09a5de005e3496aa40e8c006c4605a56613e12` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xc3ca8fad52911edfb3c2f499044b16d4bab5c8bb` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xc82bd70ed3bbb470e9501c08df1ea2dae558fc69` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xcd3d2d6b15149a9a5b69de7b9949cf47929f062a` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xcf89906a45055399c216d522c8f89d1b55536b14` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xcfce49ebd2bad4a1d93d269806a753f33f9637c1` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xd0cc28bc8f4666286f3211e465ecf1fe5c72ac8b` | non_address_book | unknown | unknown | unverified | n/a | `0xfd9e6005187f448957a0972a7d0c0a6da2911236` |
| unverified unclassified | UnnamedContract<br>`0xd4cceaa6caa829dbf54bea9d942235ed348b7ce1` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xd5909a743c9b168b8fa9f3c71ccfd3fee0bb4040` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xd9efb02c55c758e8a1e58d8b9f29dcc74a4cbb66` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xdae5a33e75081f7882033eec82550d0ea64d8775` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xdb564bc6865b84e1270fad3473d64b6400c9f06b` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xe3717f9a2c2f04041c87958fe56140ebd6e7d230` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xe504b2f4dee931c800243eb44374c193311577e7` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xe64d5d19237b53f63fae3d18c37e019155e242e0` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xe6a16237d3f5ded27fc823ea996888cb883a3450` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xe9f739d47df07561809f43eb37f9df1e5b1fc51c` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xed6bb8e862b656120a5ff4635c34af0918cabcfa` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xf2625c69797b4237e0e193e1063c3e17686306e1` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |
| unverified unclassified | UnnamedContract<br>`0xf8fcbbf814c5edacac747b17cce16f0db2e81104` | non_address_book | unknown | unknown | unverified | n/a | `0x8fe51e349d47e58ca5c94fc6bdd474480ea3f24a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x5ce899aed04c656776148fc3b1adbe59e5f13d5c` | BaseContracts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854` | DUSX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0893131746962b4b5afb573351ba7f4094d81aad` | DUSXProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x252ddc63f883cb276b4862304045f0b035993ff7` | DynamicInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xfa925d48cce408c38872d9e5a907e936661aaa83` | FeesDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1efd8d6b72843a70fe194f29de94fc3c5b5f9e97` | FeesWithdrawer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb8c30cf1aa46b4e8ee8d008a0f2f763b3d5bac0e` | Floor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48` | Lender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xec7fa6ae97bcab9236696b24be8d55879f39a6a7` | LenderOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75` | LiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x56f0b188fea4cd50ec91faa15982df9d9017db48` | MarketLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5ed2e91d451dcb4639d2057613cc542c2264b28e` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a` | MiscHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x25456cff86e96fe4b9b3d70aec13199297042264` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6d515498ff34fd8c0abfb74ff5a64d50f7c10f82` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x863a1d4f12fdb634c605e68635af320e7f4aa60c` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x943697f4d59d2847d38ccf8b75d50a8c42fbd7bf` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xfc73f48939ee51929190b3697ae913de135f76a9` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x19b3a42bfbd4452e6a2b92b2e898916b68cb713f` | OracleFloorPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x24e2a86176f209cce828714c48f804fd7444a89a` | PegStabilityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb969195db5d756ac7a7ea78a69f20fe1f172a494` | PegStabilityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6524278eb519553f1d8c03e08b840de4d2dbb121` | RepayHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x002c4c18f15c4e5ed51b845b2c87459ed630fa86` | StableOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d` | StakedDUSX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xd3a6b1a9026485bbd39a75a352e968711e21744b` | StoutTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x88d6d8547bcbd5366538cedccf424776f3f7cabf` | StoutVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea` | STTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x322544d87a7501aa48ea84183ee082366ae76e13` | SupplyHangingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e` | VoteEscrowedSTTX | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 87 |

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
