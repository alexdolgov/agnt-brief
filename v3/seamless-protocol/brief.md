# Agentic Audit Brief: Seamless Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Seamless Protocol (`seamless-protocol`)
- Website: [https://www.seamlessprotocol.com](https://www.seamlessprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 194 unique implementations (327 raw deployments)
- Coverage basis: 5/45 confirmed own live verified implementations (11.1%); conservative 11.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $15,656,122.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Seamless Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across base, ethereum. Structural roles: 30 unclassified, 18 supporting, 13 core. 27 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: unclassified (30), supporting (18), core (13)
- Contract kinds: contract (56), abstract (5)
- Detected standards: erc20 (5), erc20permit (5), ownable (5), erc1967proxy (4), erc165 (3), erc4626 (3), multicall (3), ownable2step (3), accesscontrol (2)
- Frameworks: openzeppelin-upgradeable (25), openzeppelin (3), aave (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 27

## Fork Analysis

0 of 55 contracts are derived from known codebases. 55 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x42fc033435f4640affed1d5cf6f3bbe240d081af`, chain 1)
- UnnamedContract (`0x5e6b01ca7a604f0c7b5a97b7de6d2d46d9c30110`, chain 1)
- UnnamedContract (`0x604d37747f3382fa51519e7542d54f1e730b97a3`, chain 1)
- UnnamedContract (`0x6426811ff283fa7c78f0bc5d71858c2f79c0fc3d`, chain 1)
- UnnamedContract (`0x821deda361e924569ef35f049618a2d1c9615bd7`, chain 1)
- UnnamedContract (`0x98c4e43e3bde7b649e5aa2f88de1658e8d3ed1bf`, chain 1)
- UnnamedContract (`0xc73ce54dbc4a02d7110f69adf123b3dbe5b3033f`, chain 1)
- UnnamedContract (`0xf7356ee83b5e31f1afed5cc0d327ed39f3d6a69f`, chain 1)
- UnnamedContract (`0x585cc1c8af5c8ad79c64ac66d264590a3ff65c51`, chain 8453)
- UnnamedContract (`0xa2fceeae99d2caeee978da27be2d95b0381dbb8c`, chain 8453)
- UnnamedContract (`0xdd33419f0c01879a23051edbcda997a0f9e68e61`, chain 8453)
- BeaconProxyFactory (`0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82`, chain 1)
- BeaconProxyFactory (`0xe0b2e40edeb53b96c923381509a25a615c1abe57`, chain 8453)
- ERC20TransferStrategy (`0xd90eac90f5f067283954b96bbc3d28e34ebe55bb`, chain 8453)
- EscrowSeam (`0x78423bfc5053102a3087daa978c2117a6809fbb1`, chain 8453)
- FeeKeeper (`0x21033e28be63a4f0ea7b1c7339733f511fb8d65b`, chain 8453)
- GnosisSafeProxy (`0xa1b5f2cc9b407177cd8a4acf1699fa0b99955a22`, chain 8453)
- InitializableAdminUpgradeabilityProxy (`0x2c6dc2ce7747e726a590082adb3d7d08f52adb93`, chain 8453)
- InitializableAdminUpgradeabilityProxy (`0x982f3a0e3183896f9970b8a9ea6b69cd53af1089`, chain 8453)
- LeverageManager (`0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e`, chain 1)
- LeverageManager (`0xeb0221bf6cdaa74c94129771d5b0c9a994bb2b7c`, chain 8453)
- LeverageManager (`0xfe9101349354e278970489f935a54905de2e1856`, chain 8453)
- LeverageRouter (`0xb0764de7eef0ac69855c431334b7bc51a96e6dba`, chain 1)
- LeverageRouter (`0x00c66934ebca0f2a845812bc368b230f6da11a5c`, chain 8453)
- LeverageRouter (`0xdba92fc3dc10a17b96b6e807a908155c389a887c`, chain 8453)
- LeverageToken (`0xfe9101349354e278970489f935a54905de2e1856`, chain 1)
- LeverageToken (`0x057a2a1cc13a9af430976af912a27a05de537673`, chain 8453)
- LeverageToken (`0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82`, chain 8453)
- MetaMorphoV1_1 (`0x27d8c7273fd3fcc6956a0b370ce5fd4a7fc65c18`, chain 8453)
- MetaMorphoV1_1 (`0x5a47c803488fe2bb0a0eaaf346b420e4df22f3c7`, chain 8453)
- MetaMorphoV1_1 (`0x616a4e1db48e22028f6bbf20444cd3b8e3273738`, chain 8453)
- MorphoLendingAdapter (`0x00c66934ebca0f2a845812bc368b230f6da11a5c`, chain 1)
- MorphoLendingAdapter (`0xb224f589297a5a207e6069de5dafd4b120129817`, chain 1)
- MorphoLendingAdapter (`0xcb1effb6f6e531137ccc1508a8d4982e873aee58`, chain 1)
- MorphoLendingAdapter (`0xe33eaf6ee64f4b9353ff2ce3748fa05eeb9bd809`, chain 1)
- MorphoLendingAdapter (`0xe9a32ae2d53459ac490f1dbe0cfd0786fb298f1f`, chain 1)
- MorphoLendingAdapter (`0x9558b339bb03246c44c57fcee184645dbfab253f`, chain 8453)
- MorphoLendingAdapterFactory (`0xce05fbed9260810bdded179adfdaf737be7ded71`, chain 1)
- MulticallExecutor (`0x16d02ebd89988cad1ce945807b963ab7a9fd22e1`, chain 1)
- MulticallExecutor (`0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e`, chain 8453)
- PricingAdapter (`0x44ccebea0dac17105e91a59e182f65f8d176c88f`, chain 1)
- PricingAdapter (`0xce05fbed9260810bdded179adfdaf737be7ded71`, chain 8453)
- RewardsController (`0x3dc44066356feb430f281811c281802bc335409d`, chain 8453)
- Seam (`0x57b4b7f830244fc854cd1123ff14afd4c1aefd3f`, chain 8453)
- SeamAirdrop (`0xb7a6531665c5e2b2d5b9aa04636847c8f45c702b`, chain 8453)
- SeamEmissionManager (`0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa`, chain 8453)
- SeamEmissionManager (`0x1fdfc3872a70a7af5a818f27bb14fbea4ee38f9c`, chain 8453)
- SeamGovernorV2 (`0xc3a36d72be57866ec4751d709b5bef67efa9baef`, chain 8453)
- SeamL1 (`0x6b66ccd1340c479b07b390d326eadcbb84e726ba`, chain 1)
- SeamTimelockController (`0x13f5b49217f330167d6350530f6185a75ab35e6f`, chain 8453)
- SeamTimelockController (`0xbe170d7d3cda6e9db39e012d0fe25ab83fff790d`, chain 8453)
- StakedToken (`0xc45f949292d6b69b092f0deb28e223177e8773de`, chain 8453)
- SwapAdapter (`0xfdf71e2c2b34cd1f8bb852e7c55e8b926fe38942`, chain 8453)
- VeloraAdapter (`0xc4e5812976279cbcec943a6a148c95eaac7db6ba`, chain 1)
- VeloraAdapter (`0x5c37eb148d4a261acd101e2b997a0f163fb3e351`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 56/60 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/45 (11.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 56 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 138 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 83
- Confirmed-live implementations: 56 of 194 unique; 138 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/174
- Verified + Unaudited implementations: 169
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 194
- Raw deployments: 327
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 11.1% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 5 | 2.9% | 2025-05 |
| Spearbit | Tier 1 | 5 | 2.9% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LeverageRouter | adapter | project_anchor | own_supporting | 0 | base | unit-392475 | `0xdba92fc3dc10a17b96b6e807a908155c389a887c` | ✅ Audited |
| LeverageToken | unknown | project_anchor | own_supporting | 1 | base | unit-392487 | 2 deployments: base `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82`; base `0xe0b2e40edeb53b96c923381509a25a615c1abe57` | ✅ Audited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392469 | `0x9558b339bb03246c44c57fcee184645dbfab253f` | ✅ Audited |
| MorphoLendingAdapterFactory | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392454 | `0xce05fbed9260810bdded179adfdaf737be7ded71` | ✅ Audited |
| SwapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392478 | `0xfdf71e2c2b34cd1f8bb852e7c55e8b926fe38942` | ✅ Audited |

### ⚠️ Verified + Unaudited (169)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | project_anchor | own_supporting | 1 | base | unit-392492 | `0x982f3a0e3183896f9970b8a9ea6b69cd53af1089` | ⚠️ Unaudited |
| AaveOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdd4e83890bccd1fbf9b10d71a5cc0a738753b01` | ⚠️ Unaudited |
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x003c2aa63fec8118297535350a66e7a53be3d0b5`; base `0x38f5c07a734a722e488c2863308e3a422fdfc184` | ⚠️ Unaudited |
| AerodromeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cfc78c96f87e522ebfdf86995609414cfb1dcb2` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27076a995387458da63b23d9afe3df851727a8db` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xa409495a6fb69b06b82f7a68766266357743d6fb`; base `0xac0b0dd4086df59b966ec4d71235f249def3f70a` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1d9eca99a4b4ab73fa1181f617107c66e1d44551`; base `0x76402a68a7d851fa990ceca747841cc451c42f18` | ⚠️ Unaudited |
| CalldataLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2182b918f29ee7d621128dde8dc07efaa5fe8d2e` | ⚠️ Unaudited |
| CapsPlusRiskSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x789aaef4d2cb94e22cc1ad8e8714858029bad568` | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5c855237bcedf7265a9fb1e48d1bc14806bc76a4`; base `0xd815218fa8c9bd605c2b048f26cd374a752caa76` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d6fcde71293286ccd4418bbba444f2d67f17895` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x0d147db81e43e7944744117500f2386afbded911`; base `0x0ffc5886d69cc3c432ed421515c2a3b831db9210`; base `0x34684b2cab2be120b958b425afcab36bd2921d4a`; base `0x35ba11d003ec29875c00be2050fb10882738c6a2`; base `0x4c1345dc4267d56c0f7ae996611482f655f1af5a`; base `0x57a80301975a1c7b05c40c3858a745f2787f536d`; base `0x876777e07afa713b63ebf5830ecd7a88542618cf`; base `0x9610d3ba6576c2ac6ffc75d02003cf811732ae33`; base `0xa193ed138a4b04e7e3e47b13de1c0868784cc226`; base `0xab74b1598df064a838b8939ec85e283402fd2db4`; base `0xaf3bae5c2623157a963af9275be058c8f33acf2f`; base `0xced653f5c689ec80881b1a8b9ab2b64df2b963bd` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34697a08b7a14f12a1d926d31bc8c2eab5f654a6` | ⚠️ Unaudited |
| DeployLoopStrategyETHoverUSDCGuardianPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x391a369b6904fef62dca2785cbfc0e6e20bc0afa` | ⚠️ Unaudited |
| DeployLoopStrategyUSDCoverETHGuardianPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7723279a8a142d95a3fffc98f70f574ee89aca8` | ⚠️ Unaudited |
| DeployUniversalAerodromeAdapterGuardianPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e269a45ad61a08c74e1ab3587821705a5b07eea` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e081f9ebb2b2f07c2f771074ebb32ddac141d14` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5d8df7515493a804da1d16c73d75bd9479d49bad`; base `0x683271158b9a52a5e1e5345245a721c9455ab529` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0661dff721b459510c81c4c737fa5ac115e4950d`; base `0x07dfe9525a5d274d6f3e906e6a4efa7f066c4926` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4311dc38e44f225edc38ed5a081715f7b7189134`; base `0xa6d3fce31854049398eb47cf9a995ee871450f98` | ⚠️ Unaudited |
| ERC20BalanceSplitterTwoPayee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x4878a29767c2452823100f98ba53506ed1d5909b`; base `0xf070598338defd70068732290617c98cdb8add30`; base `0xfbc092a58479439a301a5b95a981e969a0d8b205` | ⚠️ Unaudited |
| ERC20TransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392458 | `0x003d47ddddb070822b35ae5cc4f0066cf9e89753` | ⚠️ Unaudited |
| ERC20TransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392474 | `0xd90eac90f5f067283954b96bbc3d28e34ebe55bb` | ⚠️ Unaudited |
| EscrowSeam | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c1f4bbfb944df2ff7ce636fd3122fd0fe9a69c1` | ⚠️ Unaudited |
| EscrowSeam | unknown | project_anchor | own_supporting | 1 | base | unit-392488 | 2 deployments: base `0x78423bfc5053102a3087daa978c2117a6809fbb1`; base `0x998e44232bef4f8b033e5a5175bdc97f2b10d5e5` | ⚠️ Unaudited |
| EscrowSeamTransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392461 | `0x2181be388ced00754e7c1ee33dbcf78397dd89ac` | ⚠️ Unaudited |
| EsSEAMAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xbedb9b2b5c334635b64e3f6de436d082aa8fdde7`; base `0xf345e93907d8e8b3e92c5e77e7bd9bacda37de4d` | ⚠️ Unaudited |
| FeeKeeper | unknown | project_anchor | own_supporting | 1 | base | unit-392484 | 2 deployments: base `0x003ee5e3b38cda6775d20a32080850106321f2f2`; base `0x21033e28be63a4f0ea7b1c7339733f511fb8d65b` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcebbf1a8e6cdd813e7efce223a4820d7d2877972`; base `0xf9853a2d58a516c605371f7da19252f55c0644ff` | ⚠️ Unaudited |
| Geyser | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | base | n/a | 6 deployments: base `0x0324c763deb573b4cb7d7236d63937cc276c1df7`; base `0x52efbbd14c5a4059e2108734e5d746ad19160564`; base `0x5d1afc39c3b58caa934fa8a9fd1f8f70fdec65f1`; base `0x6c6515133125c38675ce0126e9fc75382410aeb8`; base `0x9f5af07189b4ae59845d36a2b0562478870fa915`; base `0xac42efbd7a86464ff2b9d3c2fbdc622a77c7b3ec` | ⚠️ Unaudited |
| GeyserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5815fc3d736120d07a1fa92ba743c1167da89d8` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | base | unit-392494 | `0xa1b5f2cc9b407177cd8a4acf1699fa0b99955a22` | ⚠️ Unaudited |
| ILMRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36291d2d51a0122b9facbe3c3f989cc6b1f859b3` | ⚠️ Unaudited |
| L2Encoder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcecef475167f7bfd8995c0cbb577644b623cd7cf` | ⚠️ Unaudited |
| L2Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x918e3dfabd8c69a54d542cdeea4a3e0616174323` | ⚠️ Unaudited |
| LeverageManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392479 | 2 deployments: ethereum `0x5c37eb148d4a261acd101e2b997a0f163fb3e351`; ethereum `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` | ⚠️ Unaudited |
| LeverageManager | unknown | project_anchor | own_supporting | 1 | base | unit-392495 | 2 deployments: base `0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8`; base `0xfe9101349354e278970489f935a54905de2e1856` | ⚠️ Unaudited |
| LeverageManager | unknown | project_anchor | own_supporting | 0 | base | unit-392477 | `0xeb0221bf6cdaa74c94129771d5b0c9a994bb2b7c` | ⚠️ Unaudited |
| LeverageRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392449 | `0xb0764de7eef0ac69855c431334b7bc51a96e6dba` | ⚠️ Unaudited |
| LeverageRouter | adapter | project_anchor | own_supporting | 0 | base | unit-392459 | `0x00c66934ebca0f2a845812bc368b230f6da11a5c` | ⚠️ Unaudited |
| LeverageToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392480 | 2 deployments: ethereum `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82`; ethereum `0xfe9101349354e278970489f935a54905de2e1856` | ⚠️ Unaudited |
| LeverageToken | unknown | project_anchor | own_supporting | 0 | base | unit-392460 | `0x057a2a1cc13a9af430976af912a27a05de537673` | ⚠️ Unaudited |
| LeverageTokenDeploymentBatcher | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4466d52b714ef32657db89ec61fab1b7e30a0352` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x44659e741a09c0d3c4756e04c559772596cf2dfa`; base `0x524adcceede99f8fb0d654704f48ec2f0744b837` | ⚠️ Unaudited |
| LoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x31da38f0eb1528212de20a3668b795e83ea378d6`; base `0x3e61ba3725321eed93c95a3f70765f8110e4acd0`; base `0x7cbb6f831ba59632f11a5eab0f6b8561470ca955`; base `0x9bb43bf6b4b5e43580ab67c93a49802657904c0e` | ⚠️ Unaudited |
| LoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0fbc23eefeae1ae5cc929b97bce88b11261b255e`; base `0x22850a96b0889aa86017d167af5e93bb39341571` | ⚠️ Unaudited |
| LoopStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x258730e23cf2f25887cb962d32bd10b878ea8a4e` | ⚠️ Unaudited |
| LoopStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2fb1bea0a63f77efa77619b903b2830b52ee78f4` | ⚠️ Unaudited |
| LoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x588313d69f6ca189029d83a3012fd3c40be4eac5`; base `0x9c764c663f8b377bacc3bce7f1f480a9417cdb67`; base `0xa70c94ee51fb4ddfafa5dc9c30580c25878ca97b`; base `0xb94799306c30c091779f4801cc4cd293f7f993b7`; base `0xbff0e0262a427c3dd20af6ab5a8edf27d351b2d6`; base `0xc82a728429f112e85c827c7c8734c9210c3cf8ea`; base `0xcefeb99addeb0f408237379eb355cf96ba6fd328` | ⚠️ Unaudited |
| LoopStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5ed6167232b937b0a5c84b49031139f405c09c8a` | ⚠️ Unaudited |
| LoopStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x68dfad1a72c63897fec5fb9de9fdb5670280291e` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | base | unit-392462 | `0x27d8c7273fd3fcc6956a0b370ce5fd4a7fc65c18` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | base | unit-392465 | `0x5a47c803488fe2bb0a0eaaf346b420e4df22f3c7` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | base | unit-392467 | `0x616a4e1db48e22028f6bbf20444cd3b8e3273738` | ⚠️ Unaudited |
| MockAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x602823807c919a92b63cf5c126387c4759976072` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392436 | `0x00c66934ebca0f2a845812bc368b230f6da11a5c` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392450 | `0xb224f589297a5a207e6069de5dafd4b120129817` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392453 | `0xcb1effb6f6e531137ccc1508a8d4982e873aee58` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392455 | `0xe33eaf6ee64f4b9353ff2ce3748fa05eeb9bd809` | ⚠️ Unaudited |
| MorphoLendingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392456 | `0xe9a32ae2d53459ac490f1dbe0cfd0786fb298f1f` | ⚠️ Unaudited |
| MulticallExecutor | periphery | project_anchor | own_supporting | 0 | ethereum | unit-392437 | `0x16d02ebd89988cad1ce945807b963ab7a9fd22e1` | ⚠️ Unaudited |
| MulticallExecutor | periphery | project_anchor | own_supporting | 0 | base | unit-392470 | `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16e48501634dfbb52f556430d788c110e5bda6cf` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e02eb705be325407707662c6f6d3466e939f3a0` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90c5055530c0465abb077fa016a3699a3f53ef99` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbfb7391282a3576892bd1da328269ebac1b086cf` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xdd59cd12c455a1c091331c55423c9e4e5111dd6b`; base `0xe51329660d86b116b77f8af76dd0ff04e3309805` | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x272b77c7316dae8675beb5710d124f635f073e01` | ⚠️ Unaudited |
| PriceOracleSentinel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x23dc1656251f27327783f750fab5797a03a0ee45`; base `0x46f157ae896d2f6f465bdff0db71d7d1b3ede8bf`; base `0xd228edaa3bd33d604f5561e187782ad9d5b65571` | ⚠️ Unaudited |
| PricingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392439 | `0x44ccebea0dac17105e91a59e182f65f8d176c88f` | ⚠️ Unaudited |
| PricingAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94e337608d6f3afd4e5e1de9aaa0804e3ab92c4c` | ⚠️ Unaudited |
| PricingAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392473 | `0xce05fbed9260810bdded179adfdaf737be7ded71` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x073d0850be622deaab113e582a599c15895a2634`; base `0xdbe56b929d1dd73a9d2ce6f7c8a5c174cecdc4af`; base `0xf54f6eebaad0fcc3bd38d035c7916d89b0955b05` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a4490233fd6ea02873af11c744d286dc3d6c127`; ethereum `0x1d0c191a0fe2917e244826d3a8d0a64503efaec8` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | project_anchor | own_supporting | 1 | base | unit-392493 | 2 deployments: base `0xa530e6ea09eb118a1549aca73731379ba546dd32`; base `0xd923b2522e1f369e207d151cfe6a1bcd8ec24912` | ⚠️ Unaudited |
| RebalanceLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x07a4b168f9dae741b3b88bf6424434655af8a711`; base `0x3f7dd8bb37465d3944e45de7c0177af0f6ad0223`; base `0xab965ebdb1fb5254c4f8fb8b0b9151abd951ea3e`; base `0xc2cecbefb6ea8387ad1112ae2975f6bffd4dfaae` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb49db8f1b197c91fa01a870d827187e400a2c91f` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56908a201eb6a4c4a35b833e5e9749650228ff5e` | ⚠️ Unaudited |
| RewardsController | unknown | project_anchor | own_supporting | 1 | base | unit-392485 | 2 deployments: base `0x2c6dc2ce7747e726a590082adb3d7d08f52adb93`; base `0x3dc44066356feb430f281811c281802bc335409d` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x32688c5f716ecc0d0005b70bde33d4b88cae794d`; base `0x36321e1b5e41f3b719e7618dae96619164d1bd89`; base `0x76e72019f9429c8953fe1533d9e87f221eca9049`; base `0x8243de25c4b8a2ff57f38f89f7c989f7d0fc2850` | ⚠️ Unaudited |
| RouterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59a11c2f543790b8ce1a2dc46c4ad08a4536bdc8` | ⚠️ Unaudited |
| Seam | unknown | project_anchor | own_supporting | 1 | base | unit-392486 | 2 deployments: base `0x1c7a460413dd4e964f96d8dfc56e7223ce88cd85`; base `0x57b4b7f830244fc854cd1123ff14afd4c1aefd3f` | ⚠️ Unaudited |
| Seam | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x213fb4bbe3bfb56d967459bdb2749b4597513d24`; base `0x5d0ee49c3ea38edee7419e5e7f2ce3e193da76ec`; base `0xa900d0ca830e79b79b9dc993122c30d7e754b8c4`; base `0xbf20bac485ede6a189b800ca841f323e5d3895c1`; base `0xff7c1fdc6294a42104896854c5483711a45e7847` | ⚠️ Unaudited |
| SeamAirdrop | unknown | project_anchor | own_supporting | 0 | base | unit-392472 | `0xb7a6531665c5e2b2d5b9aa04636847c8f45c702b` | ⚠️ Unaudited |
| SeamEmissionManager | unknown | project_anchor | own_supporting | 1 | base | unit-392481 | 2 deployments: base `0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa`; base `0x57460dc21bf1574b8e6e00d372b8ca5ec41b3955` | ⚠️ Unaudited |
| SeamEmissionManager | unknown | project_anchor | own_supporting | 1 | base | unit-392483 | 2 deployments: base `0x1fdfc3872a70a7af5a818f27bb14fbea4ee38f9c`; base `0x785c979ee8709060b3f71aef4f2c09229db90778` | ⚠️ Unaudited |
| SeamGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5acb96aac90bf545500251d1eed10bf47e996317`; base `0xc8a0e02878a4ef18fa260f0968cecde8eb607bfc` | ⚠️ Unaudited |
| SeamGovernorV2 | unknown | project_anchor | own_supporting | 2 | base | unit-392490 (2 proxies) | 3 deployments: base `0x04faa2826dbb38a7a4e9a5e3db26b9e389e761b6`; base `0x8768c789c6df8af1a92d96de823b4f80010db294`; base `0xc3a36d72be57866ec4751d709b5bef67efa9baef` | ⚠️ Unaudited |
| SeamL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fdf852d7ce01b1594d38808be5cca9812417708` | ⚠️ Unaudited |
| SeamL1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392443 | `0x6b66ccd1340c479b07b390d326eadcbb84e726ba` | ⚠️ Unaudited |
| SeamTimelockController | unknown | project_anchor | own_supporting | 1 | base | unit-392482 | 2 deployments: base `0x13f5b49217f330167d6350530f6185a75ab35e6f`; base `0x639d2dd24304ac2e6a691d8c1cff4a2665925fee` | ⚠️ Unaudited |
| SeamTimelockController | unknown | project_anchor | own_supporting | 1 | base | unit-392489 | 2 deployments: base `0xa96448469520666edc351eff7676af2247b16718`; base `0xbe170d7d3cda6e9db39e012d0fe25ab83fff790d` | ⚠️ Unaudited |
| SeamTransferStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-392463 | `0x2b1bdefce33f34128759f71076ebd62637fd154c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0f471d88f31ab0be2ff1d0b1ff5f30a2e3107f54`; base `0xb8835b0fe138870e28219cd6973fa8118f660492` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0fedaedd6ba892921cf4728c5e2c20ffc613dbc2`; base `0x260fc80a03a4512d1ca79746a55153b027ea8147` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x204fe70b59c32f05bcf60c445d37876b2fb5406a`; base `0xac3121105b9173488b182f15b35b73f66938ce0f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x216cc63cec6b6219b6bae7d07e00b9301780d5b0`; base `0xfbe83d3d319605eeb3112bc8ffdc234a9c904f75` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x29006739ca8b9febf5c32bf5aae1e272cd1f0d72`; base `0x430d6f287cd26d6112c70315dae23e0689ebacb7` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x316c05085c328189a3436cfadf8ba76babfe9d6a`; base `0x5a61a102ff9fc960a8be79bdd9cb0c8f42ec5713` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x33e372861bea0966c1b121f26f5e9c918c01c261`; base `0x93b1d6c6bd373b995e1c378afae5235f0ed838fb` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x348c2e1bdb4f99e3b3e87ac18e0b2a3704164408`; base `0x81b50bf6eff55869344ead370b115214ff6dda5b` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x35aa3c2d426ad68c0a7f2ad968b68487a22efffe`; base `0x932d779f46fcd37d946ecdcf85905eaa5929d19c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x37e3f6df10a3ded02a7b9ba38b6e80fdd592d33c`; base `0x7acd19330a21b45a199265f70986f78b1a485903` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3932674032b0fc4b816530d7a8d0961a3dbad29f`; base `0x511f231e8867765d201d2c7bcba898276f1ec7ac` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3b5e0ab790a3e4fd73f7f345f65d96178242a691`; base `0x7b1293002f9685fad8eb552437218145155d973a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x435846abbbb4c9ec67a1517716cdc853ebf18514`; base `0xdf90ed2581a0fb2e6e8c6532d99e71fb0e4dff9f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x4b5bb87bcb2b6786397cc5813abb9e422d2adedb`; base `0x6ae5d8ee8d888539ee73afc2855ce75cfc2a4289`; base `0x93f4997999d6e9dea108d63f2055b27708773d49`; base `0xb7c6d0bd023086dc08f14bf0561402aa437a48b5`; base `0xbfbc3bbbc3216a30207a8aa1cafa61a74b3f430c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x4e7fada38a8d7496ab940f4c03185d5b7a6332ea`; base `0xa9d2a060bbb51e8626c5b40a3b145ead41947168`; base `0xb2118bf3411030db979ca385e497aca4e3a07e8b`; base `0xf1c220ac75a8e50c3e7e923d2c03d23ff601e14c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x51ddfe09b8cdc7d8200ad171face13aacda14e04`; base `0xc5a269ba4f3aa25f6883eb0531a2cdf6325c8103` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x597ce0e9cf5ccb070a37efbaca2fd13c193952b6`; base `0x77d0046bb01b7ef17d780f6259d2055c2c16451a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5f8a82b8ec7c17d75ccafb84fb5e95f6a87b5408`; base `0xcbc78472f58b7b526ff91cc33d73e5b207391d6e` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x61380a201f3e9491b3e9a8193bb8634724809726`; base `0x91f7d6ea6d001aa3a31354d81decf5e22835a9c1` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6147036c8315b178dfca90524e2ca5572bc9396f`; base `0xe15943fe957c0a8e724447e497686764240a0427` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x66345a825654a605f006cda37cb621cc00c8a5dc`; base `0x91a2fbe7beeac4f601974d67a612cfae21846235` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x67e0ea38382fcd2df74931bacc0af96954961ab0`; base `0xd8133539579b5e005c6e68b505f6b90d3b85af2f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6f4146040bf95f95bf9fbf0ed115133fcde11b0a`; base `0xfc233cf59f4d07c698983ca6cbd517647380f2eb` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x734614ea6c57924dc1a9efb2e0d6b78cd7735254`; base `0xb4f2031ac1b65f6ec12a94cd54f67e6c9cd6859e` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x78718b683ad01849be10702f268a72feea0a6993`; base `0xc0e23fe723ee837469f091ad0f6268e55e635285` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7b21591e9534ca3a6c155dca5e135cdeced10e03`; base `0x96bbed7247227df6afcc5eeeb7354704354f49e9` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8023d7bbed97e2a9736a91e10a664e1981bd908b`; base `0xf61fbc7c43ddbb7b8f2d01de9d2021f489bfd675` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x80fad4184506f1759d472bac0f21d9d01b4e4f52`; base `0xb44e362ce34f04eddebed2c4a4df966b800a1a80` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x96de174a0c407afceed5c2d8c8a671b7b55661bb`; base `0xdc37b7849289aa871e83a49f402dfa6bbedfa399` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb5dd3b0fe640b5f2cd4e08cccc28c14469e03808`; base `0xbac77ffc3f59e45d94017b09e7163a5b0be08b8a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc4ae2b6de2a26420fd0a41cb07a8c01d42122151`; base `0xe423f4f4bbbf5eed2e8611ff2783ca2ab759f972` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xf4c7d3bab6c0b1c0d0a3db9f585670b1612d5c32`; base `0xf71f91ef06928afa40260794ac0a4a071d71ace1` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x017167a33aa3665e90ccc21fd35aef60deeafa7f`; base `0x09f5ef7c920df1e30fbefc62a12f8e0ce7bc3954` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x04586b12c6a2010f1054bebc229aa73a46d011b3`; base `0x9130bb2193b94d1dbe9b10fa166d0f4245c5cef3` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x059bcfecb80de3ee07efcdc40959f148f81f6072`; base `0x5e2693a1bc9e3602c53342a644eb4ffeccbe4a19` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x09b53e8ea8659061a290203ba0fdca5f4eb0bfe8`; base `0x9825fb22809134a6dc6c13ebf09dc64c212a8542` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x10e2ff2f952bea6bb7d11185b4f6ad51b7266830`; base `0x5685c5f95749066da5429ff3da0608f33293ac80` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x175c051785e0266cec607c16772b5bef1e5a7333`; base `0x3bda7da361e012dc085a546b02b08151e4af0dfb` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1959139f7a53819b2ae7e550a72f71db0ec98a85`; base `0x1a70f2dc666e2a27e50668cd3994532352c83b02` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1bbd5560a483e10098500eb43c36b4719cda2235`; base `0x6ab21924c0be3000c4f2034dc6b0ac10c9b66e17` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1e7f54b7d1a2fdd8ae738ec463d2d7b7da523cc6`; base `0x9272ad74f901208c66f774855d983c66c3d36a78` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x54cd1c5a328436099a506b39c4b5116de544d586`; base `0x643551c8493fd967a6f56d293785faa2c9dff2ae` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6e7b0da9a0496b15ea68e0f1085779f9440b0ff5`; base `0x9882029300d9c1c27868be5c053395c4857c9e79` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7cd268a7ca70594fd09e04bcba8bb5c8af3fa730`; base `0x81ce023b5fcfd7aa6435254ffe296c016e5ddfa7` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x82ccc4c93fce28092ea205b3352fdee19aa02637`; base `0xb4963fe661f198a7e0d899307d7c8d2e355d558a` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x95029e427a1e8b7ada3471a493054058193f5133`; base `0xe9acd23ad60cd6419c6028b99e40eea3e4e3a55b` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9ce33cc39bddc13730469d7186f16cf65a53dd7e`; base `0x9da10c50b63e9fa0c6abaac09dcf5e4eb28191ba` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4d5e163738682a955404737f88fdcf15c1391bf` | ⚠️ Unaudited |
| StakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f099f6c0714eb423d175a31140a25aad4ac7e46` | ⚠️ Unaudited |
| StakedToken | unknown | project_anchor | own_supporting | 1 | base | unit-392491 | 2 deployments: base `0x73f0849756f6a79c1d536b7abab1e6955f7172a4`; base `0xc45f949292d6b69b092f0deb28e223177e8773de` | ⚠️ Unaudited |
| StataOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c24d71f079443384fd47cdad2372c9aed653163` | ⚠️ Unaudited |
| StaticATokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a0c2e2b287ef159adece3e657e12e7d53715e21` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb11d239a6007c4d8cc0fd6794e71b80bb14a352a` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcc76e71283963a72d005c5b48f4ab2218d56f54b`; base `0xff017d02020a6dc3505b00816981c5908daf4bb8` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04550e50f4753352f233aba53f094fc3cd62c54e` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x08561d280654790861591ffaf68ed193addc479d`; base `0xe314ae9d279919a00d4773cce37946a98faddabc` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2939821f3a9e5172d443def0749d58cc1655839e`; base `0xc9be03b39ce2a56ababc3d19265cc0968e9f2fc0` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e09f59754b4f3695553e2f37f08cc987361fd5c` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4db264876bf878a4d0375e7640c6d10fae1dd531`; base `0x5607718c64334eb5174cb2226af891a6ed82c7c6` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc4d677c0ed9e1cf2f1a53f755d7adbbbcb183b52`; base `0xe3b0f5b0d4cadb2bb882270899f218381e042b5c` | ⚠️ Unaudited |
| TransparentProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71d90c266b9eb9a41fe8f875ddbddc3fadcf1b5d` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f5a90ef7bc3ee64e1e95b850dbbc2469ff71ce8` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7397f841a449793c634c06cf12751d256b9bf50` | ⚠️ Unaudited |
| UnbuttonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9a5d255220e14e69475c1180640eab3f14ba2aa` | ⚠️ Unaudited |
| UnbuttonTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x613379008101df98d4ce5a1819e9f53fe33dc138` | ⚠️ Unaudited |
| UniversalAerodromeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87f8d14a8796b22116d267cfe9a57e986f207468` | ⚠️ Unaudited |
| UniversalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8bb3fc413114efbaeeecbb16a96cdde4938af77` | ⚠️ Unaudited |
| V3RateStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc19dd38d22600202fbdb36584981b9a55ec1fed2` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3800da378e17a5b8d07d0144c321163591475977` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x40292d35b48ff625c648c2a7f0c9e42cd07cd0b0` | ⚠️ Unaudited |
| VeloraAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392451 | `0xc4e5812976279cbcec943a6a148c95eaac7db6ba` | ⚠️ Unaudited |
| VeloraAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392466 | `0x5c37eb148d4a261acd101e2b997a0f163fb3e351` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb0f02421f830398d7b59dae8d385e2cd5ed5cf7` | ⚠️ Unaudited |
| WrappedERC20PermissionedDeposit | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x3e8707557d4ad25d6042f590bcf8a06071da2c5f`; base `0x85082bb4bf1a3e76e8ba2ef86ab19827d2d062be`; base `0x9660af3b1955648a72f5c958e80449032d645755`; base `0xc9ae3b5673341859d3ac55941d27c8be4698c9e4` | ⚠️ Unaudited |
| WrappedTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1508f1b71210593406f8b614dcc41cdf3e6d2a6d`; base `0x90f89048ea3cd2f0b5aa491bc6d11088bcd5fc44`; base `0xc3e17cdac7c6ed317f0d9845d47df1a281b5f79e` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaeeb3898ede6a6e86864688383e211132baa1af3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392438 | `0x42fc033435f4640affed1d5cf6f3bbe240d081af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392440 | `0x5e6b01ca7a604f0c7b5a97b7de6d2d46d9c30110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392441 | `0x604d37747f3382fa51519e7542d54f1e730b97a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392442 | `0x6426811ff283fa7c78f0bc5d71858c2f79c0fc3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392444 | `0x821deda361e924569ef35f049618a2d1c9615bd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392446 | `0x98c4e43e3bde7b649e5aa2f88de1658e8d3ed1bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392452 | `0xc73ce54dbc4a02d7110f69adf123b3dbe5b3033f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392457 | `0xf7356ee83b5e31f1afed5cc0d327ed39f3d6a69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00f0331b87b465f5c82b624b0d61c6a3e2494a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x426f8d26daa0d774740ecce21c1827eaf8c53d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x452a359cc220a9684d39e2c33b60efdf3da663e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5630a0a07a419562a8e034cfb92663b3f7ad3ab8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392464 | `0x585cc1c8af5c8ad79c64ac66d264590a3ff65c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70224e3bbb078635d88169e057d288749c85426b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392471 | `0xa2fceeae99d2caeee978da27be2d95b0381dbb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac6d0e95c84329b6af75c0d58c9b34a85ee521a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd241423a5ba7ac9ee48804c4ec7e975f1a630d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8a952b5b8a0e3da752c941ba30089195ac9d923` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392476 | `0xdd33419f0c01879a23051edbcda997a0f9e68e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecd2d02e780ef7c67fce1a0b6abcde1793606ea6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b](https://cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2025.05.19%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 5 | 1 | 0 | 11 | high |
| [Cantina - 1 Oct 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%201%20Oct%202025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Cantina - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%208%20May%202025.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Sherlock - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Sherlock%20-%208%20May%202025.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | matched | 5 | 1 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3862] cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b — no match: No explicit scope section found; contract names extracted from findings and descriptions. Audit period ends 10 April 2025.
- [3863] 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf — matched: All 16 files listed in the Scope section of the audit report. Audit date is the end date of the audit period (April 29 - May 8, 2025).
- [10384] Cantina - 1 Oct 2025.pdf — no match: No explicit scope section found; contracts extracted from findings context. Audit date from cover page.
- [10385] Cantina - 8 May 2025.pdf — matched: Extracted from Security Review Summary and findings context. Audit date from cover page: May 8, 2025.
- [10386] Sherlock - 8 May 2025.pdf — matched: All 16 files listed in scope section. Audit date range April 29 - May 8, 2025, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221bf6cdaa74c94129771d5b0c9a994bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb148d4a261acd101e2b997a0f163fb3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101349354e278970489f935a54905de2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a1cc13a9af430976af912a27a05de537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101349354e278970489f935a54905de2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e40edeb53b96c923381509a25a615c1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | MorphoLendingAdapter | ambiguous — not counted | MorphoLendingAdapter (alternative) `0xcb1effb6f6e531137ccc1508a8d4982e873aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf6ee64f4b9353ff2ce3748fa05eeb9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f589297a5a207e6069de5dafd4b120129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x9558b339bb03246c44c57fcee184645dbfab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c66934ebca0f2a845812bc368b230f6da11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32ae2d53459ac490f1dbe0cfd0786fb298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b | DataTypes | unmatched — not counted | — | mentioned in gas optimization finding as containing Auction struct | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | BeaconProxyFactory | own proxy deployment | BeaconProxyFactory (proxy) (selected) `0xe0b2e40edeb53b96c923381509a25a615c1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221bf6cdaa74c94129771d5b0c9a994bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb148d4a261acd101e2b997a0f163fb3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101349354e278970489f935a54905de2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a1cc13a9af430976af912a27a05de537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101349354e278970489f935a54905de2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e40edeb53b96c923381509a25a615c1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | MorphoLendingAdapter | own contract | MorphoLendingAdapter (alternative) `0xcb1effb6f6e531137ccc1508a8d4982e873aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf6ee64f4b9353ff2ce3748fa05eeb9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f589297a5a207e6069de5dafd4b120129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (selected) `0x9558b339bb03246c44c57fcee184645dbfab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c66934ebca0f2a845812bc368b230f6da11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32ae2d53459ac490f1dbe0cfd0786fb298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | MorphoLendingAdapterFactory | own contract | MorphoLendingAdapterFactory (selected) `0xce05fbed9260810bdded179adfdaf737be7ded71` — deployed 2025-09-30 00:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | EtherFiLeverageRouter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageRouter | own contract | LeverageRouter (alternative) `0xb0764de7eef0ac69855c431334b7bc51a96e6dba` — deployed 2025-09-30 00:25:35+03 — liveness: live (current_address_book_code)<br>LeverageRouter (selected) `0xdba92fc3dc10a17b96b6e807a908155c389a887c` — deployed 2025-06-02 23:04:31+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0x00c66934ebca0f2a845812bc368b230f6da11a5c` — deployed 2025-10-07 20:23:25+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageRouterBase | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | LeverageRouterMintBase | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | SwapAdapter | own contract | SwapAdapter (selected) `0xfdf71e2c2b34cd1f8bb852e7c55e8b926fe38942` — deployed 2025-06-02 23:04:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | CollateralRatiosRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | DutchAuctionRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | PreLiquidationRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | RebalanceAdapter | ambiguous — not counted | RebalanceAdapter (alternative) `0xd923b2522e1f369e207d151cfe6a1bcd8ec24912` — deployed 2025-06-02 23:10:49+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0xa530e6ea09eb118a1549aca73731379ba546dd32` — deployed 2025-06-02 23:10:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| Cantina - 1 Oct 2025.pdf | LeverageRouter | ambiguous — not counted | LeverageRouter (alternative) `0xb0764de7eef0ac69855c431334b7bc51a96e6dba` — deployed 2025-09-30 00:25:35+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0xdba92fc3dc10a17b96b6e807a908155c389a887c` — deployed 2025-06-02 23:04:31+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0x00c66934ebca0f2a845812bc368b230f6da11a5c` — deployed 2025-10-07 20:23:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 1 Oct 2025.pdf | PricingAdapter | ambiguous — not counted | PricingAdapter (alternative) `0x44ccebea0dac17105e91a59e182f65f8d176c88f` — deployed 2025-09-30 00:30:11+03 — liveness: live (current_address_book_code)<br>PricingAdapter (alternative) `0xce05fbed9260810bdded179adfdaf737be7ded71` — deployed 2025-10-07 20:26:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 1 Oct 2025.pdf | FeeManager | unmatched — not counted | — | mentioned in findings 3.2.2, 3.2.3, 3.3.1 | no |
| Cantina - 1 Oct 2025.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221bf6cdaa74c94129771d5b0c9a994bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb148d4a261acd101e2b997a0f163fb3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101349354e278970489f935a54905de2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 8 May 2025.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221bf6cdaa74c94129771d5b0c9a994bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb148d4a261acd101e2b997a0f163fb3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101349354e278970489f935a54905de2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 8 May 2025.pdf | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a1cc13a9af430976af912a27a05de537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101349354e278970489f935a54905de2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e40edeb53b96c923381509a25a615c1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Cantina - 8 May 2025.pdf | DataTypes | unmatched — not counted | — | Listed in scope context and findings | no |
| Cantina - 8 May 2025.pdf | MorphoLendingAdapter | own contract | MorphoLendingAdapter (alternative) `0xcb1effb6f6e531137ccc1508a8d4982e873aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf6ee64f4b9353ff2ce3748fa05eeb9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f589297a5a207e6069de5dafd4b120129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (selected) `0x9558b339bb03246c44c57fcee184645dbfab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c66934ebca0f2a845812bc368b230f6da11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32ae2d53459ac490f1dbe0cfd0786fb298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | BeaconProxyFactory | own proxy deployment | BeaconProxyFactory (proxy) (selected) `0xe0b2e40edeb53b96c923381509a25a615c1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | LeverageManager | ambiguous — not counted | LeverageManager (alternative) `0xeb0221bf6cdaa74c94129771d5b0c9a994bb2b7c` — deployed 2025-06-02 22:35:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c37eb148d4a261acd101e2b997a0f163fb3e351` — deployed 2025-09-30 00:06:35+03 — liveness: live (code_present_context)<br>LeverageManager (alternative) `0xfe9101349354e278970489f935a54905de2e1856` — deployed 2025-10-07 20:18:13+03 — liveness: live (proxy_unit_reachable)<br>LeverageManager (alternative) `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` — deployed 2025-09-30 00:06:23+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8` — deployed 2025-06-02 22:35:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock - 8 May 2025.pdf | LeverageToken | ambiguous — not counted | LeverageToken (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-10-07 20:19:47+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0x057a2a1cc13a9af430976af912a27a05de537673` — deployed 2025-06-02 22:34:55+03 — liveness: live (current_address_book_code)<br>LeverageToken (alternative) `0xfe9101349354e278970489f935a54905de2e1856` — deployed 2025-09-30 00:05:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0xe0b2e40edeb53b96c923381509a25a615c1abe57` — deployed 2025-06-02 22:34:59+03 — liveness: live (current_address_book_code)<br>BeaconProxyFactory (proxy) (alternative) `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` — deployed 2025-09-30 00:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock - 8 May 2025.pdf | MorphoLendingAdapter | own contract | MorphoLendingAdapter (alternative) `0xcb1effb6f6e531137ccc1508a8d4982e873aee58` — deployed 2026-01-06 01:14:59+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xe33eaf6ee64f4b9353ff2ce3748fa05eeb9bd809` — deployed 2025-10-10 17:45:35+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0xb224f589297a5a207e6069de5dafd4b120129817` — deployed 2025-10-10 17:36:47+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (selected) `0x9558b339bb03246c44c57fcee184645dbfab253f` — deployed 2025-06-02 23:10:57+03 — liveness: live (current_address_book_code)<br>MorphoLendingAdapter (alternative) `0x00c66934ebca0f2a845812bc368b230f6da11a5c` — deployed 2025-09-30 00:06:47+03 — liveness: live (code_present_context)<br>MorphoLendingAdapter (alternative) `0xe9a32ae2d53459ac490f1dbe0cfd0786fb298f1f` — deployed 2025-12-15 19:03:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | MorphoLendingAdapterFactory | own contract | MorphoLendingAdapterFactory (selected) `0xce05fbed9260810bdded179adfdaf737be7ded71` — deployed 2025-09-30 00:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | EtherFiLeverageRouter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | LeverageRouter | own contract | LeverageRouter (alternative) `0xb0764de7eef0ac69855c431334b7bc51a96e6dba` — deployed 2025-09-30 00:25:35+03 — liveness: live (current_address_book_code)<br>LeverageRouter (selected) `0xdba92fc3dc10a17b96b6e807a908155c389a887c` — deployed 2025-06-02 23:04:31+03 — liveness: live (current_address_book_code)<br>LeverageRouter (alternative) `0x00c66934ebca0f2a845812bc368b230f6da11a5c` — deployed 2025-10-07 20:23:25+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-02 was 25d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | LeverageRouterBase | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | LeverageRouterMintBase | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | SwapAdapter | own contract | SwapAdapter (selected) `0xfdf71e2c2b34cd1f8bb852e7c55e8b926fe38942` — deployed 2025-06-02 23:04:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - 8 May 2025.pdf | CollateralRatiosRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | DutchAuctionRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | PreLiquidationRebalanceAdapter | unmatched — not counted | — | listed in scope | no |
| Sherlock - 8 May 2025.pdf | RebalanceAdapter | ambiguous — not counted | RebalanceAdapter (alternative) `0xd923b2522e1f369e207d151cfe6a1bcd8ec24912` — deployed 2025-06-02 23:10:49+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0xa530e6ea09eb118a1549aca73731379ba546dd32` — deployed 2025-06-02 23:10:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock - 8 May 2025.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x003d47ddddb070822b35ae5cc4f0066cf9e89753` | ERC20TransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd90eac90f5f067283954b96bbc3d28e34ebe55bb` | ERC20TransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x78423bfc5053102a3087daa978c2117a6809fbb1` | EscrowSeam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2181be388ced00754e7c1ee33dbcf78397dd89ac` | EscrowSeamTransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x003ee5e3b38cda6775d20a32080850106321f2f2` | FeeKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c37eb148d4a261acd101e2b997a0f163fb3e351` | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8` | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xeb0221bf6cdaa74c94129771d5b0c9a994bb2b7c` | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb0764de7eef0ac69855c431334b7bc51a96e6dba` | LeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x00c66934ebca0f2a845812bc368b230f6da11a5c` | LeverageRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x603da735780e6bc7d04f3fb85c26dcccd4ff0a82` | LeverageToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x057a2a1cc13a9af430976af912a27a05de537673` | LeverageToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00c66934ebca0f2a845812bc368b230f6da11a5c` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb224f589297a5a207e6069de5dafd4b120129817` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb1effb6f6e531137ccc1508a8d4982e873aee58` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe33eaf6ee64f4b9353ff2ce3748fa05eeb9bd809` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe9a32ae2d53459ac490f1dbe0cfd0786fb298f1f` | MorphoLendingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16d02ebd89988cad1ce945807b963ab7a9fd22e1` | MulticallExecutor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` | MulticallExecutor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44ccebea0dac17105e91a59e182f65f8d176c88f` | PricingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xce05fbed9260810bdded179adfdaf737be7ded71` | PricingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa530e6ea09eb118a1549aca73731379ba546dd32` | RebalanceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2c6dc2ce7747e726a590082adb3d7d08f52adb93` | RewardsController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1c7a460413dd4e964f96d8dfc56e7223ce88cd85` | Seam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb7a6531665c5e2b2d5b9aa04636847c8f45c702b` | SeamAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa` | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1fdfc3872a70a7af5a818f27bb14fbea4ee38f9c` | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x04faa2826dbb38a7a4e9a5e3db26b9e389e761b6` | SeamGovernorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b66ccd1340c479b07b390d326eadcbb84e726ba` | SeamL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x13f5b49217f330167d6350530f6185a75ab35e6f` | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa96448469520666edc351eff7676af2247b16718` | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2b1bdefce33f34128759f71076ebd62637fd154c` | SeamTransferStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x73f0849756f6a79c1d536b7abab1e6955f7172a4` | StakedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc4e5812976279cbcec943a6a148c95eaac7db6ba` | VeloraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5c37eb148d4a261acd101e2b997a0f163fb3e351` | VeloraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 165 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 14 ambiguous, 19 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=2
- Match method counts: temporal_name=7, unique_name=4

Zero-match audit list:

- [3862] cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b
- [10384] Cantina - 1 Oct 2025.pdf

Fork inheritance lineage and inherited audits are included when available.
