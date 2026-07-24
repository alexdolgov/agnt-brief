# Agentic Audit Brief: Mangrove

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Mangrove (`mangrove`)
- Website: [https://www.mangrove.exchange](https://www.mangrove.exchange)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, blast, sei
- Contract surface: 120 unique implementations (161 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,232,928.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Mangrove. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 37 contract row(s) across arbitrum, base, blast, sei. Structural roles: 17 unclassified, 10 core, 10 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 37
- Structural roles: unclassified (17), core (10), supporting (10)
- Contract kinds: contract (35), abstract (1), unclassified (1)
- Detected standards: ownable (5)
- Frameworks: foundry (20), openzeppelin (7), solady (4)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 37; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 51 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/93
- Verified + Unaudited implementations: 93
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 120
- Raw deployments: 161
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (93)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveKandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246087 | `0x38845d7dad5bf849e1f77fe89597083fec5b5d77` | ⚠️ Unaudited |
| AaveKandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246141 | `0x095854c8c4591fb0a413615b9a366b4dd69b9b1d` | ⚠️ Unaudited |
| AaveKandelSeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x3e6d5aa75617f1f2bcd2c1d9992fbb17a4bec228`; base `0x4ff58b373e845198be5bd0b81a9015f5ceab0eb1`; base `0x556dc530a23552ba19b3741d7e8fd016d20a719a` | ⚠️ Unaudited |
| AaveKandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246127 | `0x55b12de431c6e355b56b79472a3632faec58fb5a` | ⚠️ Unaudited |
| BalancerV2Swapper | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246085 | `0x369022670f2c623ee6894ae4053ef54c2c685dd0` | ⚠️ Unaudited |
| BlastMangrove | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-246139 | `0xb1a49c54192ea59b233200ea38ab56650dfb448c` | ⚠️ Unaudited |
| ChainlinkPriceOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246111 | `0xe26eb21f4b2a621e4c5ce52b3fb80608bcf3b1ed` | ⚠️ Unaudited |
| CompoundVaultV2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x88902102097570134b02a245f6629b32551b6ad3`; sei `0xd34e51858465439158dfb5cf87f6e7574658cf0a` | ⚠️ Unaudited |
| ERC4626KandelSeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x0d5e4ca24edda06915264feadf4b9cce74d902e6` | ⚠️ Unaudited |
| ERC4626KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246100 | `0x9c5ad9d0fc127af40b7cd6279b696607e258bb11` | ⚠️ Unaudited |
| ERC4626KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246151 | `0x4778c54e6380bbc6ef9647f2a31528b0640b41fe` | ⚠️ Unaudited |
| ERC4626RouterDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: sei `0xb37f7a1194790ee97efd03f0265cf8d27bee14d9`; sei `0xc698f8d9d496f2b9dc836df7eac82530c2121b72`; base `0x5f4d596c58a1d171196923fd8c45a09e9dee7b34` | ⚠️ Unaudited |
| ERC4626RouterProxyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x84bf03a254151afc147ad09cd85a3d5ab75ea71c` | ⚠️ Unaudited |
| ERC4626VaultV2Deployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6d5e02a56631bb0b846e0bbd521df4b3d7c6b69a` | ⚠️ Unaudited |
| GeometricKandelExtra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: sei `0x572fcd28707ffee2d311278d405b9db0a90373cc`; base `0x274f471270251fe69e17eb1b45666676fe4bc077` | ⚠️ Unaudited |
| Kandel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc88863ec3efe3bbecc48564ebc2f135ea19878f0` | ⚠️ Unaudited |
| KandelLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 6 deployments: sei `0x9a48cb4ac0631bf694b252b756f3c5e0a51a7ad2`; sei `0xbef21fe31e3d5a9428f8c087d328fcb502a1ba3a`; base `0x1d7c32b43409ac66a9f5666daf674e2ef21427d0`; blast `0x0ea85f9e19763eec0e376f988fe9a19c9328e3fa`; blast `0x3660bd841bb9e23e048853e77acf589e95762af9`; blast `0xd12594f8f7a7a0e7297a5a3d09ff790646466fcf` | ⚠️ Unaudited |
| KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246075 | `0x075420cb1f213857fcbaf2c9dbfc6ca6295124a3` | ⚠️ Unaudited |
| KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246158 | `0x808bc04030bc558c99e6844e877bb22d166a089a` | ⚠️ Unaudited |
| KandelSeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bb7567303c8bde27a4b490b3e5f1593c891b03d` | ⚠️ Unaudited |
| KandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246133 | `0x89139bed90b1bfb5501f27be6d6f9901ae35745d` | ⚠️ Unaudited |
| Mangrove | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sei | unit-246173 | `0xd9834d7caa2acf81c40e7aac645cf9a57cb14bcd` | ⚠️ Unaudited |
| Mangrove | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246145 | `0x22613524f5905cb17cbd785b956e9238bf725faa` | ⚠️ Unaudited |
| Mangrove | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246116 | `0x109d9cdfa4ac534354873ef634ef63c235f93f61` | ⚠️ Unaudited |
| Mangrove | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dbf9445a6c8dc912afad8cce48e40f2a8d9d227` | ⚠️ Unaudited |
| MangroveChainlinkOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246164 | `0x9d05c7a303efebd215b86b57da2fc671039e5712` | ⚠️ Unaudited |
| MangroveChainlinkOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246121 | `0x31c47e3f442f521e1c65b5b626ac2e978c1f2587` | ⚠️ Unaudited |
| MangroveChainlinkOracleFactoryV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246155 | `0x656a6ac038d1686d4f80427ddaf59b352f960123` | ⚠️ Unaudited |
| MangroveCleanerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: base `0xb922a4560bedcd22450574453e178e8a12b75eae`; blast `0x22ba67eb361ec40e0949ed034f3ce08af51099fa` | ⚠️ Unaudited |
| MangroveDiaOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246074 | `0x035d53d54aef1815e882fea7ef4795de214518a1` | ⚠️ Unaudited |
| MangroveDiaOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cf19437dc140308d8f87fb824c61c9b9fdd87a3` | ⚠️ Unaudited |
| MangroveDiaOracleFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246153 | `0x5297561cb9df1d2ff83698c6fc51abef24d39560` | ⚠️ Unaudited |
| MangroveERC4626KandelVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246102 | `0xadbb100770e1f9ac61eac9cca2ec05a0a66956a0` | ⚠️ Unaudited |
| MangroveERC4626KandelVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5975ba297795296f9ab99014807d853fe85e20fa` | ⚠️ Unaudited |
| MangroveERC4626KandelVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246162 | `0x92db74a11ec2b2acdcfc354cf55243cf33c052b8` | ⚠️ Unaudited |
| MangroveGhostBook | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246079 | `0x127a5a5e086dce304875e392c8170b04bc81e8b6` | ⚠️ Unaudited |
| MangroveGhostBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x02bda8c9051cdcf273609786cb24ec242dd0af4c`; base `0xbd7189c760a8d00933dcdd42ad565febe9b5a918`; base `0xfd4fcc88448f86216a76e85cf6706cdc691fe574`; arbitrum `0x426537f7204272bccd6a2939de10fa6d2ed0b2c1`; arbitrum `0x6b04fbefc13bb9a27644f27eccf46bd946c673ca`; arbitrum `0xc8857cbe4e58545884323b9a0b4cc31ff5366959`; arbitrum `0xe2beb61e868661827fa822a28080957e7136dca9`; arbitrum `0xfff6f0a0332f350c583265fb54c4b2797cc20fca` | ⚠️ Unaudited |
| MangroveGhostBook | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246143 | `0x15f02fb9c9bb772a3303349f88c94fc971bd549f` | ⚠️ Unaudited |
| MangroveGhostBook | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246123 | `0x46708dd6e68e1f09c6f4830c2586f73659dfafea` | ⚠️ Unaudited |
| MangroveOrder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246097 | `0x5ba0761ff644560529b0f54362c8f6024175928b` | ⚠️ Unaudited |
| MangroveOrder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246165 | `0xa3c363ca0ea3603faee9facffd65e777122adf36` | ⚠️ Unaudited |
| MangroveOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0ea85f9e19763eec0e376f988fe9a19c9328e3fa`; blast `0x50793d97a0c905ea51c1c93f37fc73abe6d2ffcc`; blast `0x83251e7f36a51c5238c9aa0c6bb7cc209b32d80e`; blast `0x9204743121466f9de67eb058c9764b5a6608e418`; blast `0xded8e2fac702646dafe51d496d1217a837b0a424` | ⚠️ Unaudited |
| MangroveOrder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246125 | `0x50793d97a0c905ea51c1c93f37fc73abe6d2ffcc` | ⚠️ Unaudited |
| MangrovePoints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26e9e34839b5f150b66ea30cd8b503ffa1b4bfd4` | ⚠️ Unaudited |
| MangroveVaultFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246106 | `0xd6cc0b43261a73209ccc135207b8ba98d2ba369e` | ⚠️ Unaudited |
| MangroveVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246147 | `0x26a0e433f89317ca5585945198a5f0760c1dafa5` | ⚠️ Unaudited |
| MangroveVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda5ecd0eb8f9ba979a51a44a0c9ab57f928cce79` | ⚠️ Unaudited |
| MangroveVaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246129 | `0x6b82ce8a45ce9bef9b20c3d65747356a5cdab41a` | ⚠️ Unaudited |
| MangroveVaultV2Factory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246089 | `0x44536a066e9c736f2d90b2999275cffd26b287b1` | ⚠️ Unaudited |
| MangroveVaultV2Factory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246099 | `0x78793bcd98450530ce9109af1f79fd6d66a7328c` | ⚠️ Unaudited |
| MangroveVaultV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0xbce560aabbe951caefd87a19a7f6caeb8e2f314a`; sei `0xfe7d4477bf03056f376dc8fd08e25a19aa2296e3` | ⚠️ Unaudited |
| MgvCleaner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55b196d0d51840b99c7973d1b8d6d036b69ed24c` | ⚠️ Unaudited |
| MgvOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: base `0xa3749d35103ad916c4753f89a1bf065ab608a7d0`; arbitrum `0xb1a49c54192ea59b233200ea38ab56650dfb448c`; blast `0x815872019c3a84c8befc2d0bd0d1304d10d57f62`; blast `0xe1c9a6cd839733f0e9fc5f4e9746d7b61a4b839d` | ⚠️ Unaudited |
| MgvOracleBaseFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84c931166fb306c79165fdc38b88dad24e354723` | ⚠️ Unaudited |
| MgvPriceOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246077 | `0x10f9e248e1515847ab120ce2daf2e7e7bdbc6e2f` | ⚠️ Unaudited |
| MgvPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246160 | `0x8fb396e0745f0b4b1cf12fb2e4d1662ff7560ffd` | ⚠️ Unaudited |
| MgvPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb81d09daea1bca8ece128d9762995e94834fd38c` | ⚠️ Unaudited |
| MgvReader | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246114 | `0xfeafb31ac7f09892b50c4d6da06a1e48d487499e` | ⚠️ Unaudited |
| MgvReader | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246171 | `0xe5b118ea1ffbc502ea7a666376d448209bfb50d3` | ⚠️ Unaudited |
| MgvReader | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246131 | `0x7e108d7c9cadb03e026075bf242ac2353d0d1875` | ⚠️ Unaudited |
| MgvReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9204743121466f9de67eb058c9764b5a6608e418`; blast `0xaa11445725ac90001717ed12e47e1d1da9f592ee` | ⚠️ Unaudited |
| MgvReader | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-246137 | `0x26fd9643baf1f8a44b752b28f0d90aebd04ab3f8` | ⚠️ Unaudited |
| MgvReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x07e5a2dcf82d7b5b8ab684d9b40842e174e49908` | ⚠️ Unaudited |
| MgvRewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xdb6a3a20743f5878732ef73623a51033c80dbb10` | ⚠️ Unaudited |
| MintHelperV1 | periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246081 | `0x1ae53888ce926ca468c9574dd2cb885b005e0716` | ⚠️ Unaudited |
| MintHelperV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246149 | `0x2ae6f95f0ac61441d9ec9290000f81087567cda1` | ⚠️ Unaudited |
| MintHelperV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246135 | `0xc39b5fb38a8acbffb51d876f0c0da0325b5cd440` | ⚠️ Unaudited |
| MockTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x789a28a6fcc5682365e5144e05c04d4af4603151` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xafaf0291a15aaf7453e2f5954b6ef56bc61cd21e` | ⚠️ Unaudited |
| OracleCombinerFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246112 | `0xfd8e85387afe7e3df1ed7ec7b81e3de0c6fbeb19` | ⚠️ Unaudited |
| OracleCombinerFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246169 | `0xb898c4a986a1e4fd31b9818772f9ec16dbf3efed` | ⚠️ Unaudited |
| OracleCombinerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9d160da6a2d6ef3b1cf37a1666339c15b5f4fa7` | ⚠️ Unaudited |
| OracleLib | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246095 | `0x5555571f9cbec32d6a8dcb5042b73cddd000acfd` | ⚠️ Unaudited |
| OracleLib | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb9d022cbfbb01e96b9c51ed5f060f06658cc5b1d` | ⚠️ Unaudited |
| OxiumToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x8ee050f6af49a6b7fd8557d0e75219d66f5f6094` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x5d924dc43c9cc3429dbf4baad32a5b7ede2d6177` | ⚠️ Unaudited |
| RouterProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: sei `0x91d001e0b1f3e5cd50aa706896eb22f024516d93`; base `0x2926cc3977f93a51465f9742c548e67220af54e9`; arbitrum `0x396614e1050ffb01e16b4c985b02a7ebb377e0f1`; blast `0x79c3f23f210e30f6aa9072f0ddfd2d180c8b7131` | ⚠️ Unaudited |
| SmartKandelSeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: base `0x614fe2edeeb9dfbccbb0884455e0591c9f5d770a`; arbitrum `0x43bb29f47b7b14f252fba32d686f4902823ea7b7` | ⚠️ Unaudited |
| SmartRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: sei `0xcc9d10431f168598ae331f149856e5aef4ac12dd`; base `0x1424d7428dc11623100df1a3d06088c2d87fbe32` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xc7a26e28142aba6b9ee0a5fbcf7f8ba50ad19175` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xc8982aece074781265a5a60b2f6ad9ec1996b541` | ⚠️ Unaudited |
| TakaraKandelSeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 6 deployments: sei `0x2f0c903973501859b9ebba0c6c6afffb07def08d`; sei `0x76aa9ed48d10d458a4f716941f4c565c0e027eaf`; sei `0xa04bc23f6f1bc2a16e06887701f56ed1678378ee`; sei `0xaccc077ae632559c5eeea461fe088b68f04ce055`; sei `0xb9028a517fc2429228c5effc8323b57a976aecc4`; sei `0xf150ab4f24bd444c76d7738c4bdb8cf26e5e3f60` | ⚠️ Unaudited |
| TakaraKandelSeeder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246109 | `0xdcc3d2761f59b4e727570107c791a1349796af2c` | ⚠️ Unaudited |
| TakaraRouterProxyDeployer | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x1feae24e399cdee3ad009570b6c1418b5494cfbf`; sei `0x7964be30d7dec2dcd7b7c437dd6ec06effc8663b`; sei `0xf6353532fd148171b0ed580f903afab171ce6c5b` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x1db278727d701fbd387f26ca95f09ce9640e250d` | ⚠️ Unaudited |
| UniswapV3Swapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-246167 | `0xaf31beb21d2b1f8c3bdd211ec02470265a21ea3f` | ⚠️ Unaudited |
| UniswapV3Swapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-246118 | `0x22ba67eb361ec40e0949ed034f3ce08af51099fa` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xc44d5d6fb3ff81e8a5b9c5cb7dbe358c775c2454` | ⚠️ Unaudited |
| VaultsV2Feed | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x85e438c92773ad8501ec465da4f64bfb53c9724c`; sei `0xbb4b6b300d2338aabc9b36947a8096e24d4b7f10` | ⚠️ Unaudited |
| VaultV2Deployer | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246091 | `0x4476bdf5d97b2ba9604b3cf2104c0860823d7c60` | ⚠️ Unaudited |
| Vif | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd58370794cdb3738973552ee1a36197edebc4b06` | ⚠️ Unaudited |
| VifReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa36043be6f60846e8b952c8b3a2e23cf3ca308e4` | ⚠️ Unaudited |
| VifRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7444490be491bbae95b639180bd4dc1795796b47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246083 | `0x1efad8af168a85c655851dc90b19a2f9e346b690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3119fd78397bf269f04a64b9712858f0c4eb1957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3ac5ec2ea4da5d48289374ebc0168d03c7a301b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246093 | `0x4bb7f3087664e559365c4c94d3c21a39847d7726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x4ca024b2eeb704f8b83d4197f7b88a6f94134ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x5417bf5ff6ec1d7db0a1813e9b2e8aaa0d380a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x60251d318d9a93fa22ed48b53c8561cec620da98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7875bdc8960f007db4f487292426fef23fe448f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x92838730e226ab42414891b507fc19db262d0c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa70b4ac3973bd8eef255ec50c46f131d5e05c2bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-246104 | `0xc9c40382121ef6043d6b3d4870214cf415a67f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xd5843ea19ff54ceba567a5eea103e59ad7a30047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xf87e182b6361f85974c0c367265f478702a7f4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f2d0a0b0df172259f3a466150f82d040346dc91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x05f20ecdc7de841b2aec0b5a4f466d8697f88262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0f216b63c1bb1d3a9d447e4db3f201e0d44c8ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3870dafb80713cad59dd999c85b1e46314b41e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x43bb29f47b7b14f252fba32d686f4902823ea7b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x55b196d0d51840b99c7973d1b8d6d036b69ed24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5c1476add10bdd078b42ac401a3db7a4aad3a4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6a6f6e271fe86ebd6a8ed6716d39ae1250c025ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa3b5b77ab0a15d8be7736f214a2d2591f65d53c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa48b36e01919472fcda56cad574433becb7a87c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa52ba5e5199be4fd363b163bde567606589ed2e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc0b3e750554448d2641c87e7bfe7a02531f16120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc88863ec3efe3bbecc48564ebc2f135ea19878f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xcf4ec117bc38d7d0fe8678b511ff6a212c76d60b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 104
- Live contracts: 0
- Unknown liveness contracts: 104
- Source-verified contracts: 82
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=53, contamination review=6, exact address book overlap=4, source verified unclassified=22, unverified unclassified=19

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | CompoundVaultV2Deployer<br>`0x88902102097570134b02a245f6629b32551b6ad3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | CompoundVaultV2Deployer<br>`0xd34e51858465439158dfb5cf87f6e7574658cf0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | ERC4626KandelSeeder<br>`0x0d5e4ca24edda06915264feadf4b9cce74d902e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | ERC4626KandelSeeder<br>`0x9c5ad9d0fc127af40b7cd6279b696607e258bb11` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | ERC4626RouterDeployer<br>`0xb37f7a1194790ee97efd03f0265cf8d27bee14d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | ERC4626RouterDeployer<br>`0xc698f8d9d496f2b9dc836df7eac82530c2121b72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | ERC4626RouterProxyDeployer<br>`0x84bf03a254151afc147ad09cd85a3d5ab75ea71c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | GeometricKandelExtra<br>`0x572fcd28707ffee2d311278d405b9db0a90373cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | KandelLib<br>`0x9a48cb4ac0631bf694b252b756f3c5e0a51a7ad2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | KandelLib<br>`0xbef21fe31e3d5a9428f8c087d328fcb502a1ba3a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | KandelSeeder<br>`0x075420cb1f213857fcbaf2c9dbfc6ca6295124a3` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | MangroveDiaOracleFactory<br>`0x035d53d54aef1815e882fea7ef4795de214518a1` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | MangroveERC4626KandelVaultFactory<br>`0xadbb100770e1f9ac61eac9cca2ec05a0a66956a0` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | OracleCombinerFactory<br>`0xfd8e85387afe7e3df1ed7ec7b81e3de0c6fbeb19` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | RouterProxyFactory<br>`0x91d001e0b1f3e5cd50aa706896eb22f024516d93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | SmartRouter<br>`0xcc9d10431f168598ae331f149856e5aef4ac12dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| candidate review | AaveKandelSeeder<br>`0x3e6d5aa75617f1f2bcd2c1d9992fbb17a4bec228` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | AaveKandelSeeder<br>`0x4ff58b373e845198be5bd0b81a9015f5ceab0eb1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | AaveKandelSeeder<br>`0x556dc530a23552ba19b3741d7e8fd016d20a719a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | ERC4626KandelSeeder<br>`0x4778c54e6380bbc6ef9647f2a31528b0640b41fe` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | ERC4626RouterDeployer<br>`0x5f4d596c58a1d171196923fd8c45a09e9dee7b34` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | GeometricKandelExtra<br>`0x274f471270251fe69e17eb1b45666676fe4bc077` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | KandelLib<br>`0x1d7c32b43409ac66a9f5666daf674e2ef21427d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | MangroveDiaOracleFactory<br>`0x0cf19437dc140308d8f87fb824c61c9b9fdd87a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | MangroveDiaOracleFactory<br>`0x5297561cb9df1d2ff83698c6fc51abef24d39560` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | MangroveERC4626KandelVaultFactory<br>`0x5975ba297795296f9ab99014807d853fe85e20fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | MangroveERC4626KandelVaultFactory<br>`0x92db74a11ec2b2acdcfc354cf55243cf33c052b8` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | MangroveVaultFactory<br>`0x26a0e433f89317ca5585945198a5f0760c1dafa5` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | MangroveVaultFactory<br>`0xda5ecd0eb8f9ba979a51a44a0c9ab57f928cce79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | MgvReader<br>`0xe5b118ea1ffbc502ea7a666376d448209bfb50d3` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | MintHelperV1<br>`0x2ae6f95f0ac61441d9ec9290000f81087567cda1` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | OracleCombinerFactory<br>`0xb898c4a986a1e4fd31b9818772f9ec16dbf3efed` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | OracleCombinerFactory<br>`0xf9d160da6a2d6ef3b1cf37a1666339c15b5f4fa7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | RouterProxyFactory<br>`0x2926cc3977f93a51465f9742c548e67220af54e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | SmartKandelSeeder<br>`0x614fe2edeeb9dfbccbb0884455e0591c9f5d770a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| candidate review | Kandel<br>`0xc88863ec3efe3bbecc48564ebc2f135ea19878f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | KandelSeeder<br>`0x4bb7567303c8bde27a4b490b3e5f1593c891b03d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | KandelSeeder<br>`0x89139bed90b1bfb5501f27be6d6f9901ae35745d` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | MangroveVaultFactory<br>`0x6b82ce8a45ce9bef9b20c3d65747356a5cdab41a` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | MgvReader<br>`0x9204743121466f9de67eb058c9764b5a6608e418` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | MintHelperV1<br>`0xc39b5fb38a8acbffb51d876f0c0da0325b5cd440` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x6d677609fa4b0527dd3952a21845d7818d345808` |
| candidate review | RouterProxyFactory<br>`0x396614e1050ffb01e16b4c985b02a7ebb377e0f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | SmartKandelSeeder<br>`0x43bb29f47b7b14f252fba32d686f4902823ea7b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | KandelLib<br>`0x0ea85f9e19763eec0e376f988fe9a19c9328e3fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | KandelLib<br>`0x3660bd841bb9e23e048853e77acf589e95762af9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | KandelLib<br>`0xd12594f8f7a7a0e7297a5a3d09ff790646466fcf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | MangroveCleanerV2<br>`0x22ba67eb361ec40e0949ed034f3ce08af51099fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | MangroveOrder<br>`0x50793d97a0c905ea51c1c93f37fc73abe6d2ffcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | MangroveOrder<br>`0x9204743121466f9de67eb058c9764b5a6608e418` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | MangroveOrder<br>`0xded8e2fac702646dafe51d496d1217a837b0a424` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | MgvReader<br>`0x26fd9643baf1f8a44b752b28f0d90aebd04ab3f8` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | MgvReader<br>`0xaa11445725ac90001717ed12e47e1d1da9f592ee` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| candidate review | RouterProxyFactory<br>`0x79c3f23f210e30f6aa9072f0ddfd2d180c8b7131` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| contamination review | TickLens<br>`0x1db278727d701fbd387f26ca95f09ce9640e250d` | non_address_book | unknown | unknown | verified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| contamination review | MgvOracle<br>`0xa3749d35103ad916c4753f89a1bf065ab608a7d0` | non_address_book | unknown | unknown | verified | n/a | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| contamination review | VifReader<br>`0xa36043be6f60846e8b952c8b3a2e23cf3ca308e4` | non_address_book | unknown | unknown | verified | n/a | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| contamination review | MangroveOrder<br>`0x0ea85f9e19763eec0e376f988fe9a19c9328e3fa` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| contamination review | MgvCleaner<br>`0x55b196d0d51840b99c7973d1b8d6d036b69ed24c` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| contamination review | MgvOracle<br>`0x815872019c3a84c8befc2d0bd0d1304d10d57f62` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| exact address book overlap | UnnamedContract<br>`0x1efad8af168a85c655851dc90b19a2f9e346b690` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| exact address book overlap | UnnamedContract<br>`0x4bb7f3087664e559365c4c94d3c21a39847d7726` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| exact address book overlap | UnnamedContract<br>`0xc9c40382121ef6043d6b3d4870214cf415a67f84` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| exact address book overlap | MgvPriceOracle<br>`0x8fb396e0745f0b4b1cf12fb2e4d1662ff7560ffd` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| source verified unclassified | NonfungiblePositionManager<br>`0xafaf0291a15aaf7453e2f5954b6ef56bc61cd21e` | non_address_book | unknown | unknown | verified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| source verified unclassified | OxiumToken<br>`0x8ee050f6af49a6b7fd8557d0e75219d66f5f6094` | non_address_book | unknown | unknown | verified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| source verified unclassified | QuoterV2<br>`0x5d924dc43c9cc3429dbf4baad32a5b7ede2d6177` | non_address_book | unknown | unknown | verified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| source verified unclassified | SwapRouter<br>`0xc7a26e28142aba6b9ee0a5fbcf7f8ba50ad19175` | non_address_book | unknown | unknown | verified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| source verified unclassified | SwapRouter02<br>`0xc8982aece074781265a5a60b2f6ad9ec1996b541` | non_address_book | unknown | unknown | verified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| source verified unclassified | V3Migrator<br>`0xc44d5d6fb3ff81e8a5b9c5cb7dbe358c775c2454` | non_address_book | unknown | unknown | verified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| source verified unclassified | MangroveGhostBook<br>`0x02bda8c9051cdcf273609786cb24ec242dd0af4c` | non_address_book | unknown | unknown | verified | n/a | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| source verified unclassified | MangroveGhostBook<br>`0xbd7189c760a8d00933dcdd42ad565febe9b5a918` | non_address_book | unknown | unknown | verified | n/a | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| source verified unclassified | MangroveGhostBook<br>`0xfd4fcc88448f86216a76e85cf6706cdc691fe574` | non_address_book | unknown | unknown | verified | n/a | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| source verified unclassified | Vif<br>`0xd58370794cdb3738973552ee1a36197edebc4b06` | non_address_book | unknown | unknown | verified | n/a | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| source verified unclassified | VifRouter<br>`0x7444490be491bbae95b639180bd4dc1795796b47` | non_address_book | unknown | unknown | verified | n/a | `0x5511e281fa424255c83ef598f826307b0de8ade7` |
| source verified unclassified | Mangrove<br>`0x1dbf9445a6c8dc912afad8cce48e40f2a8d9d227` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| source verified unclassified | MangroveGhostBook<br>`0x426537f7204272bccd6a2939de10fa6d2ed0b2c1` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| source verified unclassified | MangroveGhostBook<br>`0x6b04fbefc13bb9a27644f27eccf46bd946c673ca` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| source verified unclassified | MangroveGhostBook<br>`0xc8857cbe4e58545884323b9a0b4cc31ff5366959` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| source verified unclassified | MangroveGhostBook<br>`0xe2beb61e868661827fa822a28080957e7136dca9` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| source verified unclassified | MangroveGhostBook<br>`0xfff6f0a0332f350c583265fb54c4b2797cc20fca` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| source verified unclassified | MangrovePoints<br>`0x26e9e34839b5f150b66ea30cd8b503ffa1b4bfd4` | non_address_book | unknown | unknown | verified | n/a | `0x6d677609fa4b0527dd3952a21845d7818d345808` |
| source verified unclassified | MgvOracle<br>`0xb1a49c54192ea59b233200ea38ab56650dfb448c` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| source verified unclassified | MgvOracleBaseFee<br>`0x84c931166fb306c79165fdc38b88dad24e354723` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| source verified unclassified | MgvOracle<br>`0xe1c9a6cd839733f0e9fc5f4e9746d7b61a4b839d` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| source verified unclassified | MgvReferral<br>`0x07e5a2dcf82d7b5b8ab684d9b40842e174e49908` | non_address_book | unknown | unknown | verified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0x3119fd78397bf269f04a64b9712858f0c4eb1957` | non_address_book | unknown | unknown | unverified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| unverified unclassified | UnnamedContract<br>`0x3ac5ec2ea4da5d48289374ebc0168d03c7a301b0` | non_address_book | unknown | unknown | unverified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| unverified unclassified | UnnamedContract<br>`0x5417bf5ff6ec1d7db0a1813e9b2e8aaa0d380a34` | non_address_book | unknown | unknown | unverified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| unverified unclassified | UnnamedContract<br>`0x7875bdc8960f007db4f487292426fef23fe448f2` | non_address_book | unknown | unknown | unverified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| unverified unclassified | UnnamedContract<br>`0xa70b4ac3973bd8eef255ec50c46f131d5e05c2bb` | non_address_book | unknown | unknown | unverified | n/a | `0x00007fef391695b3d2cf4ffcf59d6710456ead29` |
| unverified unclassified | UnnamedContract<br>`0x1f2d0a0b0df172259f3a466150f82d040346dc91` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0x05f20ecdc7de841b2aec0b5a4f466d8697f88262` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0x0f216b63c1bb1d3a9d447e4db3f201e0d44c8ef4` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0x3870dafb80713cad59dd999c85b1e46314b41e9c` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0x43bb29f47b7b14f252fba32d686f4902823ea7b7` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0x55b196d0d51840b99c7973d1b8d6d036b69ed24c` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0x5c1476add10bdd078b42ac401a3db7a4aad3a4ba` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0x6a6f6e271fe86ebd6a8ed6716d39ae1250c025ea` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0xa3b5b77ab0a15d8be7736f214a2d2591f65d53c8` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0xa48b36e01919472fcda56cad574433becb7a87c5` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0xa52ba5e5199be4fd363b163bde567606589ed2e2` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0xc0b3e750554448d2641c87e7bfe7a02531f16120` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0xc88863ec3efe3bbecc48564ebc2f135ea19878f0` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |
| unverified unclassified | UnnamedContract<br>`0xcf4ec117bc38d7d0fe8678b511ff6a212c76d60b` | non_address_book | unknown | unknown | unverified | n/a | `0xd137d6c5e565c480773e3031a5dab5b9327668e3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf](https://github.com/mangrovedao/audits/blob/main/core/v1/ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v0/ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf) | ChainSecurity | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 29 | n/a |
| [NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf) | Nethermind | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [NM_0339_Mangrove_Vault_FINAL.pdf](https://github.com/mangrovedao/audits/blob/main/vaults/NM_0339_Mangrove_Vault_FINAL.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf](https://github.com/mangrovedao/audits/blob/main/core/v0/ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf](https://github.com/mangrovedao/audits/blob/main/strats/v1/2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf) | Code4rena | Contest | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2632] ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf — no match: No reason recorded
- [2633] ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf — no match: No reason recorded
- [2634] ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf — no match: No reason recorded
- [2636] ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf — no match: No reason recorded
- [2637] NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf — no match: All four contracts listed in the Audited Files table are in scope. The audit date is March 19, 2024 from the report header.
- [2638] NM_0339_Mangrove_Vault_FINAL.pdf — no match: No reason recorded
- [15143] ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf — no match: No reason recorded
- [15147] 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | Mangrove | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvAppendix | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvGovernable | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvGovernance | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvOfferMaking | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvOfferTaking | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvOfferTakingWithPermit | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf | MgvView | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AaveKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AaveKandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AavePooledRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AaveV3Lender | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AbstractKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AbstractKandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | AbstractRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | CoreKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | Direct | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | DirectWithBidsAndAsksDistributions | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | GeometricKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | HasAaveBalanceMemoizer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | HasIndexedBidsAndAsks | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | Kandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | KandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf | TradesBaseQuotePair | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | AbstractRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | AbstractRouterStorage | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | AccessControlled | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | Forwarder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | IForwarder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | IOfferLogic | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | IOrderLogic | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | MangroveOffer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | MangroveOfferStorage | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | MangroveOrder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | MgvLib | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | SimpleRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf | TransferLib | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AaveKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AaveKandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AavePooledRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AaveV3Lender | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AbstractKandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AbstractRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | AccessControlled | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | CoreKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | DataTypes | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | Direct | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | DirectWithBidsAndAsksDistribution | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | Forwarder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | GeometricKandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | HasAaveBalanceMemoizer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | HasIndexedBidsAndAsks | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IForwarder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | ILiquidityProvider | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IOfferLogic | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IOrderLogic | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IPool | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IPoolAddressesProvider | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | IRewardsControllerIsh | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | Kandel | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | KandelLib | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | KandelSeeder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | MangroveOffer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | MangroveOrder | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | SimpleRouter | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf | TradesBaseQuotePair | unmatched — not counted | — | — | no |
| NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf | UniswapV3Manager | unmatched — not counted | — | listed in Audited Files table | no |
| NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf | UniswapV3RoutingLogic | unmatched — not counted | — | listed in Audited Files table | no |
| NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf | OrbitLogicStorage | unmatched — not counted | — | listed in Audited Files table | no |
| NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf | OrbitLogic | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | DistributionLib | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | GeometricKandelExtra | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | IOracle | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveChainlinkOracle | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveChainlinkOracleFactory | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveLib | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVault | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVaultConstants | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVaultErrors | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVaultEvents | unmatched — not counted | — | — | no |
| NM_0339_Mangrove_Vault_FINAL.pdf | MangroveVaultFactory | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | AbstractMangrove | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | IMangrove | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | Mangrove | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvGovernable | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvHasOffer | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvLib | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvOfferMaking | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvOfferTaking | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvOfferTakingWithPermit | unmatched — not counted | — | — | no |
| ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf | MgvRoot | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | AbstractRouter | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | AccessControlled | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | Forwarder | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | IForwarder | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | ILiquidityProvider | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | IOfferLogic | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | IOrderLogic | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | MangroveAmplifier | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | MangroveOffer | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | MangroveOrder | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | RenegingForwarder | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | RouterProxy | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | RouterProxyFactory | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | RoutingOrderLib | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | SimpleRouter | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | SmartRouter | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | SmartRouterStorage | unmatched — not counted | — | — | no |
| 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf | TakerOrderLib | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 109 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2632] ChainSecurity_Mangrove_Association_ADDMA_Mangrove_Core_audit_2-d3425cee36b3dad60bfac272af328fd4.pdf
- [2633] ChainSecurity_Mangrove_Association_ADDMA_Kandel_Strats_audit-db1b0f4516874f622d2a7f5bc7837f7c.pdf
- [2634] ChainSecurity_Mangrove_Association_ADDMA_MangroveOrder_audit-7e289d0c705233f1d69d419d7689cab5.pdf
- [2636] ChainSecurity_Mangrove_Association_Mangrove_Strategies_audit-caa8fc55eadb26bf40eead2b80af0c99.pdf
- [2637] NM0208_FINAL_MANGROVE-684a6582cd4f3a18a25feeed05fb5482.pdf
- [2638] NM_0339_Mangrove_Vault_FINAL.pdf
- [15143] ChainSecurity_Mangrove_Association_(ADDMA)_Mangrove_audit-c7a5bd87cc411539606ff9082bb5c8a1.pdf
- [15147] 2024-02-14-NM-0162-Nethermind_SmartRouter_MangroveOrder_MangroveAmplifier_audit-26ca97c4578d39c3ca4cb82ae7a0f374.pdf

Fork inheritance lineage and inherited audits are included when available.
