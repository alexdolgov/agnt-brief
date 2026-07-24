# Agentic Audit Brief: Camelot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Camelot (`camelot`)
- Website: [https://camelot.exchange/](https://camelot.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum
- Contract surface: 140 unique implementations (214 raw deployments)
- Coverage basis: 4/19 confirmed own live verified implementations (21.1%); conservative 21.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,479,494.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Camelot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across arbitrum, sepolia. Structural roles: 14 supporting, 10 core, 3 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: supporting (14), core (10), unclassified (3)
- Contract kinds: contract (27)
- Detected standards: ownable (9), erc165 (7), accesscontrol (5), multicall (4), erc20 (3), erc721 (2), erc1967proxy (1), ownable2step (1)
- Frameworks: openzeppelin (21)
- Upgradeable-pattern rows: 2

## Fork Analysis

1 of 23 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

**AlgebraFactory** (`0xbefc4b405041c5833f53412ff997ed2f697a2f37`, chain 42161)
Origin: supernova (`0x01f99c...3ade8c`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1f98415757620b543a52e61c46b32eb19261f984`, chain 42161)
- UnnamedContract (`0x222f135d84bb4852d2cbbdd6fcabafd043687a71`, chain 42161)
- AlgebraAdapter (`0x1486882e02e6a1037da6afc324b2f911f4c893a0`, chain 42161)
- AlgebraFactory (`0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b`, chain 42161)
- AlgebraV2Adapter (`0x64c0861a141a7f80ac0b3a32312acad3c62947f3`, chain 42161)
- CamelotAdapter (`0xabc401a16595077881964683450ad63ab3688dab`, chain 42161)
- CamelotMaster (`0x55401a4f396b3655f66bf6948a1a4dc61dfc21f4`, chain 42161)
- CamelotRouter (`0xc873fecbd354f5a56e00e710b90ef4201db2448d`, chain 42161)
- CamelotYakRouter (`0x99d4e80db0c023eff8d25d8155e0dcfb5addec5e`, chain 42161)
- DividendsV2 (`0x5422aa06a38fd9875fc2501380b40659feebd3bb`, chain 42161)
- GrailTokenV2 (`0x3d9907f9a368ad0a51be60f7da3b97cf940982d8`, chain 42161)
- Launchpad (`0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5`, chain 42161)
- NonfungiblePositionManager (`0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15`, chain 42161)
- NonfungiblePositionManager (`0xa602e7195fcc9364210181dffa33482b5adce9d8`, chain 42161)
- PositionHelper (`0xe458018ad4283c90fb7f5460e24c4016f81b8175`, chain 42161)
- Quoter (`0x0fc73040b26e9bc8514fa028d998e73a254fa76e`, chain 42161)
- Quoter (`0xfe24b2cdff01b644995bc248ba8497467d688f7b`, chain 42161)
- SwapRouter (`0x1f721e2e82f6676fce4ea07a5958cf098d339e18`, chain 42161)
- SwapRouter (`0x4ee15342d6deb297c3a2aa7cffd451f788675f53`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- XGrailToken (`0x3caae25ee616f2c8e13c74da0813402eae3f496b`, chain 42161)
- YieldBooster (`0xd27c373950e7466c53e5cd6ee3f70b240dc0b1b1`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 27; live-surface rows included: 27 (21 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/41 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/19 (21.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 110 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 22 of 140 unique; 118 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/75
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 140
- Raw deployments: 214
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 4 | 5.3% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CamelotRouter | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-231507 | 2 deployments: arbitrum `0xc873fecbd354f5a56e00e710b90ef4201db2448d`; arbitrum `0xe458018ad4283c90fb7f5460e24c4016f81b8175` | ✅ Audited |
| GrailTokenV2 | token | project_anchor | own_supporting | 0 | arbitrum | unit-231484 | `0x3d9907f9a368ad0a51be60f7da3b97cf940982d8` | ✅ Audited |
| XGrailToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-231483 | `0x3caae25ee616f2c8e13c74da0813402eae3f496b` | ✅ Audited |
| YieldBooster | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231500 | `0xd27c373950e7466c53e5cd6ee3f70b240dc0b1b1` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-231506 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ⚠️ Unaudited |
| AlgebraAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231479 | `0x1486882e02e6a1037da6afc324b2f911f4c893a0` | ⚠️ Unaudited |
| AlgebraAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46fca952fe399b6bafbf55c4b5b1929b6e1780aa` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a`; arbitrum `0xe3c3e260071ca29231d930bc31654571c51da69e` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf1849090b659505a0d7a75fead3068020aea3ef` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b3538cc8d06e73f26956f81d1a4be513d99db1b` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-231480 | `0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x1e3db3a221bcf6296fef2c493bb44d09018455ca`; arbitrum `0x6b692b588def775a92a6d0f3b6cccc8a4a4e5bb8`; arbitrum `0x9a8ddc2f8b998de00f7028bd0881bde028aed592`; arbitrum `0xd3b4c3262b7bc4d0ae522f15f48eef8f6b5d6aea`; arbitrum `0xd490f2f6990c0291597fd1247651b4e0dcf684dd`; arbitrum `0xd97b6e6944a7c36cf047f4606875a3fadbdb61d6`; arbitrum `0xe907d0b2b830124d64b11e6416ecf61483994ae3` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-231498 | `0xbefc4b405041c5833f53412ff997ed2f697a2f37` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x0f9dff83d8b1f1b41dfbe340b8d9d75aa1741870`; arbitrum `0x34f74f5217d57223b51e51245769a89874c69bd2`; arbitrum `0x5e1e14df94ee031c51f41e5ee3a2ad7a1345ffe1`; arbitrum `0x6dd3fb9653b10e806650f107c3b5a0a6ff974f65`; arbitrum `0x89aee07e1dbafc82f089b45ffc763738e9fff226`; arbitrum `0x8b5665ba77ca4e98ba96412061276ad2adca6f15`; arbitrum `0xd5143db853b4af176c2379b6ac48ab3e66c4fa56`; arbitrum `0xf09c0892885ba43d4ba29be7388fc145a174af8d` | ⚠️ Unaudited |
| AlgebraStaticQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4efc8a4ceeeeefbb81bfac55a001100b5af39e07`; arbitrum `0xe7a5ce186a9b6bcfb71f5250dfe0305e5b8204d1` | ⚠️ Unaudited |
| AlgebraV2Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x28901cc545bf9dc1b381cbd9da8ea94fc005d947`; arbitrum `0xd1599679b891f35f833317b39e822f82acdb989f` | ⚠️ Unaudited |
| AlgebraV2Adapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231490 | `0x64c0861a141a7f80ac0b3a32312acad3c62947f3` | ⚠️ Unaudited |
| AlgebraV2StaticQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x26d1e904047449feeba13bb517f9e731587414b6`; arbitrum `0xe04538e23c58022cb8bce506e7d01e04fac5594f` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1cb8eedc4dcff2da02bfcfbed2456cf2c41333f6`; arbitrum `0x653658ddb7e4a7a69f0fa4c020f1e7e60732d540` | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3ae84a486c737e4e260b48f1173dfcd96cbd03d` | ⚠️ Unaudited |
| BondWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc132116a76683f5355042e1b67819551aaf34e5` | ⚠️ Unaudited |
| CamelotAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79ab95b4c112337310ad04d977c5734dd3b70f9b` | ⚠️ Unaudited |
| CamelotAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231497 | `0xabc401a16595077881964683450ad63ab3688dab` | ⚠️ Unaudited |
| CamelotExchangeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1be46c7a40906c19d91d07b3ae69ef5893268f25` | ⚠️ Unaudited |
| CamelotFactory | registry | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231492 | `0x6eccab422d763ac031210895c81787e87b43a652` | ⚠️ Unaudited |
| CamelotMaster | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231487 | `0x55401a4f396b3655f66bf6948a1a4dc61dfc21f4` | ⚠️ Unaudited |
| CamelotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4672f4327a099ae5e4bfc42cdf0c2a400535d091`; arbitrum `0xdd8e1a81bf38d7575d74f2db9ee1e79d34d8a453` | ⚠️ Unaudited |
| CamelotYakRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x17bcb7cc86ad107d97511a17e35eee9d15105d5c`; arbitrum `0x728343da77b27e9674d706fac4ed30e4bde5cc00`; arbitrum `0x762629a54802ff6f9b1fd1d65cd8b695a6bed56d`; arbitrum `0x81e3a6f46715855b439f93e4023ed86bed619cf8`; arbitrum `0x8b3bc323827abc8a9d58e52f402cb266c83d6b74`; arbitrum `0x932235a1a8437789786fc77de2ed7f05b7a1d35a`; arbitrum `0x9c1e9771155471a243a093acf44ce78f707922fb`; arbitrum `0xb1562f68031cf82639615f4ac0ca2b6d04662712`; arbitrum `0xe14b4fba019fc9ebde63328bf5fc542233adfee1`; arbitrum `0xe9f6226f173706a96021d8e11474a216da845152` | ⚠️ Unaudited |
| CamelotYakRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231495 | `0x99d4e80db0c023eff8d25d8155e0dcfb5addec5e` | ⚠️ Unaudited |
| CampaignFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x09fa9d4cb408f437442529d9d9daeed914eb3ee1`; arbitrum `0x0afae9fa2954d1f850627df688f0bf09bd595fe4`; arbitrum `0x44fac3aceb8836338d0a4902b183d8bb777feaa4` | ⚠️ Unaudited |
| CampaignFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x68c4a79bb793c354614a798b70aff3ae623b619b`; arbitrum `0xe8c0d29c696624c4f628506f90280640e5f3e3c2` | ⚠️ Unaudited |
| DefiEdgeProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4eb9fff53581130e65e3b60b31295c52509c11f` | ⚠️ Unaudited |
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01`; arbitrum `0xd4f3dce6b616e5283d5c288b287bd8beea47880c` | ⚠️ Unaudited |
| DividendsV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231486 | `0x5422aa06a38fd9875fc2501380b40659feebd3bb` | ⚠️ Unaudited |
| EXCLegacyToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83bbc9c4c436bd7a4b4a1c5d42b00caae113c3b5` | ⚠️ Unaudited |
| FairAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: arbitrum `0x06b5c17857c32f96daa2f43aee465e962c883362`; arbitrum `0x0ca4fc142e3b0a26f34b52faa1a022fc70f6c20b`; arbitrum `0x149ace96c59639df1b83cfe5c574cf9d1b87975b`; arbitrum `0x2322431053e360305b68474d17ec68676398bbb8`; arbitrum `0x2eb79edc1533d39d0f7ab3983650eb76ce36ffe1`; arbitrum `0x40bf2461e5cf86850174ef4ae42d5cbfdc4b47d4`; arbitrum `0x4a867f68f9f41656723ec86f03d80b54644adca3`; arbitrum `0x7079ed6a667e8f19d1ff8d283526383165b58b66`; arbitrum `0x9c613a014675d2c8f2e27f243bada934475d7248`; arbitrum `0xb09a7414445217666ddce5f652c18c6524f6c88d`; arbitrum `0xb955cb9343d6fbd4495baa44f76fc76275648a0c`; arbitrum `0xdac17cdc4772ec44b20daacebf7c0ebc2909e54c`; arbitrum `0xe0e0b0b069b74351d521dd43ad953cd47ebbc1ec`; arbitrum `0xea0817773a0b8970a1ca786ac69a7601ab42cc73` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eee90c983e2728ae6d7880064b0c5b055342c46` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | arbitrum | unit-231505 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ⚠️ Unaudited |
| GammaUniProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x851b3fb3c3178cd3fbaa0cdaae0175efa15a30f1` | ⚠️ Unaudited |
| Launchpad | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231488 | `0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5` | ⚠️ Unaudited |
| LiquidityManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x979bc658871368cef694490b24a79c41ddbe2520`; arbitrum `0xf23e2450aff5280c7372a9a717c71141f5edf363` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1e12aad4b836a9b5edf17367eb8f1cbe3e781dae`; arbitrum `0xff7da61e7037378da1baf3d40ba8e6e47dfb3a62` | ⚠️ Unaudited |
| NFTPoolFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-231491 | `0x6db1ef0df42e30acf139a70c1ed0b7e6c51dbf6d` | ⚠️ Unaudited |
| NitroPoolFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-231501 | `0xe0a6b372ac6af4b37c7f3a989fe5d5b194c24569` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | arbitrum | unit-231503 | `0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x197de4ea3c45eefad1727d7c4858e078f1e8d31b`; arbitrum `0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8`; arbitrum `0x5c8d79b78786a2e9327f2d20910abd6d198c5905`; arbitrum `0xacdcc3c6a2339d08e0ac9f694e4de7c52f890db3`; arbitrum `0xe6988b12753e2f6e1bf84843988a0242b17a5383`; arbitrum `0xf41599ffc71518fd4411941439dae7dee27020f9` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-231496 | `0xa602e7195fcc9364210181dffa33482b5adce9d8` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc`; arbitrum `0x52d2ebe1fe306c90124d159b59392b6bb1b48325` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2d22aa1c50433eb018077e4bfc52fadc437606dc`; arbitrum `0x89a13bb0c2315670aadb07b7a0c7067333b8a68a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x49f5985a122028093c91bb63084eb29a7632067c`; arbitrum `0x674d0794c32f061eeef5ee981fa3b0ee3be7a7ef` | ⚠️ Unaudited |
| Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66ec1ee6c3ad04d7629ce4a6d5d19ba99c365d29` | ⚠️ Unaudited |
| ProtocolEarnings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a63830e24f9a2f9c295fb2150107d0390ed1448` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x02102bd5b57c128b19d4d4fa4d8f8192ea1b88ac`; arbitrum `0x27d3ce023f34f1e560f9ba4c8616526085fefe92`; arbitrum `0x32ab0c927d2197aebf8e5471ab9db7fd1854e73c`; arbitrum `0x6c78f25cc4fdff99d0c88aab75b3b6e50fbbc0bd`; arbitrum `0x9b7a7c93db745d5f6c679eeda7dd15ccd638c063`; arbitrum `0xaaf703dadca1aae754ad74de643907747d2eb3ac`; arbitrum `0xc50b125beeecb1ad17a893c5d54a0a0e629fe056`; arbitrum `0xd70dd6d5e4226a515f90623213d9aa437b63b955` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231478 | `0x0fc73040b26e9bc8514fa028d998e73a254fa76e` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231502 | `0xfe24b2cdff01b644995bc248ba8497467d688f7b` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66d756335bff276d73a8ab0853c3d336475e639b` | ⚠️ Unaudited |
| Refund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f31ce35169e64e0783a625a594c1df75d0e36eb` | ⚠️ Unaudited |
| RvlPNP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x279427df97b34da65d96e92efdd2b961085356af` | ⚠️ Unaudited |
| StakedUSDX | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x17585d045eb322d292e0166a4cd643f793640b50`; arbitrum `0x22535b3e45c4c3eaed4b3821a0a95eccb518ad98`; arbitrum `0x377b58ffd1d68e2b7815421854bcd1489493c51d`; arbitrum `0x49c98fca16c115fdd341728a869d08f9a51d951a`; arbitrum `0xa555826c9a26e13238f657db06e0a02431839ef5`; arbitrum `0xad3a4361d633a3b9377ce82ad951caad2bb64e12` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-231504 | `0x1f721e2e82f6676fce4ea07a5958cf098d339e18` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231485 | `0x4ee15342d6deb297c3a2aa7cffd451f788675f53` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x22cb092d904eb13cdaca0ca5d93093fae19b8034`; arbitrum `0x6e39ccd0b6d1e91a69d5bdc1d112bfa0d34bde38` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2e9bdddbad724b1cc3bfe521d8e2c5f52a887a9f`; arbitrum `0x5846bf78fb95712f394ba1aba45ecf262f7209b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5822a45b05d08028baa3d19626870076d26bc460`; arbitrum `0xd8676fbdfa5b56bb2298d452c9768f51e80e34ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x903293c1e922a72a95a69c61ede74073c8594c13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa760212bc60a77b24ba52e889b0dc9d99e280b5c`; arbitrum `0xf4c88bc4585f9de3396774c3f0c8b559a7e7dd41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xf53b4b36d9b24e5b0086fe7c4532a3c5ddedd8c1`; arbitrum `0xfecbac90ba3478c24f82c5c142a222e75b7e4321` | ⚠️ Unaudited |
| USDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3527ef8de265eaa3716fb312c12847bfba66cef` | ⚠️ Unaudited |
| USDXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0eaf6fe1aed8631114d1de78317982ce73d82f7b` | ⚠️ Unaudited |
| USDXSales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8598348b2cb4f62ec529ad52ab5e57b52ae3065f`; arbitrum `0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1` | ⚠️ Unaudited |
| VestingWallet | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231494 | `0x8b4ee9a030c50fd02c845a171064f8fca90cb155` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x953bf6efe8f93c0fd615980a3af26be673683aaa` | ⚠️ Unaudited |
| VestingWallet2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a5a7c0108cef44549b7782495b1df2ad5294da3` | ⚠️ Unaudited |
| VestingWallet2 | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231493 | `0x770066bb3e4613fc27ce586bd3e06fce81df0f45` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08dff9bb0c9cf33d75a7b01cc19a9979ddc2c3fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x105a04979f42a07d99625cee58de42ec3980598e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ac737bad04a643bf3205a6764b964c4a574959d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cf9cf377252802780c3c4d61d53432fc4e98a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f054ce3254f9e3edd987d897223e0184646d8ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231481 | `0x1f98415757620b543a52e61c46b32eb19261f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231482 | `0x222f135d84bb4852d2cbbdd6fcabafd043687a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x259ba0c58bb231c6fe5b71dd928b9d297685ea3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x279fa58e8b2d52683c0a65733e9825102dade413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c09fea2abb20158dc7c66ee84f5484ccff14ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f2a410ccaeb4e877abe5a6253f42062bcdcf861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3046cf2eef9840aed537598042db3d911b942dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30a4bd5b1a9e9c0d80e9a45ef486bc1f1bc8e230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30cea63a6b2653c1a50d284a0cc079938ef943b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fc3f74dbf4c2e9f583d2855a868cc5af2d931af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x400bb79e9651e683300fcb312fc074940381e231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4548ab9f211d10e511f37f3bcab0fe96e8b04574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46306b241773e5e8fdfbb5455fcb0482c54d8820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48813f00c532d995e8847cf8491fda41d87caf33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b53488a14b2eef51df8b8b31e6add2f378c72f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5864962ae89b700f44e0552930da9455da3b25f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5906554049fa61b474006d77257ee5cf55553f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5999991f4f85dcaac14689d5bb2909627380a9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e11bb1a4b4b00ad195f04e6c2987ab643f326ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e26ba756e1e39429c8b2620263c20295535897a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231489 | `0x60a186019f81bfd04afc16c9c01804a04e79e68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x610934febc44be225adecd888eaf7dff3b0bc050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61e69f55d9cccca940126abe2ae09c2b4d55c717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65fbb381e3f598742ffb0390e8d50484b79efcb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67f9e20862cb0e12f09396ac4a07584114abe545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f2ac974397d0f2ea43186402668a88c8378f09f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x763b382ba5fbbc697f58b327c2bac05fa1fb51b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77025d4c9b6cfeec9f224c592dafdfc64f405aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x787c1a09c6a9a58aa3ee791e54ea9c59f51ada48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790b6cf4429b4407f5227feaa31d798829f049a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d1b59e7df0244b66a966d250627193396963389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d8c6b58ba2d40fc6e34c25f9a488067fe0d2db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7dbc6ca53e4f717425fbb7c0ddabc64fc63fdde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83bb6048d55ea0a84795a939531fdc1314c0d3e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84e5ba51c158c9f70684f93b6cf9d6aae506c9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aa8a6f0138880e687289941da0738548f6184fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c0971be6a98dcc61958ffdec4259e5ee833689b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cc27635c3a075d21b332f43440bd177b439b16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9220d07c1e8b5c170fa6011db8a729e9898b6245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92883acd807c0cc086e72f9bf7c0468ff2fd8087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x955a7043b0c904170cc16b70afb878dbac2fedca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99f28a1ac137f1a484d137567040b20a2b28893a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a662758d72f004d2b49c1b4a518b3bc0f0a1621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dd65541b8cdb69b571cb1f63f72dcca4cabe2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaedc4e73cddd8e3af091bba0a959cbf36a2025ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0e01e985c5f0da8a07bbaecff00272a964606ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2b2a946be40054be345610878f8da3076273bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6156fc9a0ea2068a6c6fae6e6713517e5e25ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc129870bafcc9f6f021de94c8abbf0ecb873ebcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231499 | `0xc216fcdeb961eef95657cb45dee20e379c7624b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc27d4dbf4d86c90f63828d2cd2582be67e5e5657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7585c2528f7785b848f6d4800d26bd353c60960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc96ff2c8503f1658f3b2f1d3884d548968eb338d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf8d0723e69c6215523253a190eb9bc3f68e0ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8f185769b6e2918b759e83f7ec268c882800ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4331da0e97627a04638506770e5d48f6b304d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf22808b31854b534d4a52fc64ea6003a3ca7a21b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8644abdb47d048e5572836db30d95cf63243c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdd06964f8b48725be238524f8e4ea6da42eb659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfeecfdf5ea3061c82e6c502a9320c88f26680e33` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 164
- Live contracts: 4
- Unknown liveness contracts: 160
- Source-verified contracts: 104
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, candidate review=16, exact address book overlap=8, source verified unclassified=80, unverified unclassified=58

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | currently scope matched | CamelotRouter<br>`0xc873fecbd354f5a56e00e710b90ef4201db2448d` | project_anchor | unknown | live | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | currently scope matched | YieldBooster<br>`0xd27c373950e7466c53e5cd6ee3f70b240dc0b1b1` | project_anchor | unknown | live | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x0afae9fa2954d1f850627df688f0bf09bd595fe4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x44fac3aceb8836338d0a4902b183d8bb777feaa4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xe8c0d29c696624c4f628506f90280640e5f3e3c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | exact address book overlap | CamelotMaster<br>`0x55401a4f396b3655f66bf6948a1a4dc61dfc21f4` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | exact address book overlap | NFTPoolFactory<br>`0x6db1ef0df42e30acf139a70c1ed0b7e6c51dbf6d` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | exact address book overlap | NitroPoolFactory<br>`0xe0a6b372ac6af4b37c7f3a989fe5d5b194c24569` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | exact address book overlap | PositionHelper<br>`0xe458018ad4283c90fb7f5460e24c4016f81b8175` | project_anchor | unknown | live | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | exact address book overlap | UnnamedContract<br>`0x60a186019f81bfd04afc16c9c01804a04e79e68b` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | exact address book overlap | UnnamedContract<br>`0xc216fcdeb961eef95657cb45dee20e379c7624b8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | exact address book overlap | VestingWallet<br>`0x8b4ee9a030c50fd02c845a171064f8fca90cb155` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | exact address book overlap | VestingWallet2<br>`0x770066bb3e4613fc27ce586bd3e06fce81df0f45` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | AlgebraStaticQuoter<br>`0xe7a5ce186a9b6bcfb71f5250dfe0305e5b8204d1` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | BondWrapper<br>`0xdc132116a76683f5355042e1b67819551aaf34e5` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CamelotExchangeRouter<br>`0x1be46c7a40906c19d91d07b3ae69ef5893268f25` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CamelotRouter<br>`0x4672f4327a099ae5e4bfc42cdf0c2a400535d091` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CamelotRouter<br>`0xdd8e1a81bf38d7575d74f2db9ee1e79d34d8a453` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CamelotYakRouter<br>`0x728343da77b27e9674d706fac4ed30e4bde5cc00` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CamelotYakRouter<br>`0x762629a54802ff6f9b1fd1d65cd8b695a6bed56d` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CamelotYakRouter<br>`0x81e3a6f46715855b439f93e4023ed86bed619cf8` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CamelotYakRouter<br>`0x932235a1a8437789786fc77de2ed7f05b7a1d35a` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CamelotYakRouter<br>`0x9c1e9771155471a243a093acf44ce78f707922fb` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CamelotYakRouter<br>`0xe14b4fba019fc9ebde63328bf5fc542233adfee1` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CampaignFactory<br>`0x09fa9d4cb408f437442529d9d9daeed914eb3ee1` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | CampaignFactory<br>`0x68c4a79bb793c354614a798b70aff3ae623b619b` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | DefiEdgeProxyHelper<br>`0xc4eb9fff53581130e65e3b60b31295c52509c11f` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0x06b5c17857c32f96daa2f43aee465e962c883362` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0x2322431053e360305b68474d17ec68676398bbb8` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0x40bf2461e5cf86850174ef4ae42d5cbfdc4b47d4` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0x4a867f68f9f41656723ec86f03d80b54644adca3` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0x7079ed6a667e8f19d1ff8d283526383165b58b66` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0x9c613a014675d2c8f2e27f243bada934475d7248` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0xb09a7414445217666ddce5f652c18c6524f6c88d` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0xb955cb9343d6fbd4495baa44f76fc76275648a0c` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0xdac17cdc4772ec44b20daacebf7c0ebc2909e54c` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0xe0e0b0b069b74351d521dd43ad953cd47ebbc1ec` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | FairAuction<br>`0xea0817773a0b8970a1ca786ac69a7601ab42cc73` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | GammaUniProxyHelper<br>`0x851b3fb3c3178cd3fbaa0cdaae0175efa15a30f1` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | LiquidityManagerFactory<br>`0x979bc658871368cef694490b24a79c41ddbe2520` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | LiquidityManagerFactory<br>`0xf23e2450aff5280c7372a9a717c71141f5edf363` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | Presale<br>`0x66ec1ee6c3ad04d7629ce4a6d5d19ba99c365d29` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | Refund<br>`0x0f31ce35169e64e0783a625a594c1df75d0e36eb` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | RvlPNP<br>`0x279427df97b34da65d96e92efdd2b961085356af` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | VestingWallet<br>`0x953bf6efe8f93c0fd615980a3af26be673683aaa` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | source verified unclassified | VestingWallet2<br>`0x5a5a7c0108cef44549b7782495b1df2ad5294da3` | non_address_book | unknown | unknown | verified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x105a04979f42a07d99625cee58de42ec3980598e` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ac737bad04a643bf3205a6764b964c4a574959d` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2c09fea2abb20158dc7c66ee84f5484ccff14ec4` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2f2a410ccaeb4e877abe5a6253f42062bcdcf861` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x30a4bd5b1a9e9c0d80e9a45ef486bc1f1bc8e230` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4548ab9f211d10e511f37f3bcab0fe96e8b04574` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x46306b241773e5e8fdfbb5455fcb0482c54d8820` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5864962ae89b700f44e0552930da9455da3b25f2` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5906554049fa61b474006d77257ee5cf55553f34` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5e11bb1a4b4b00ad195f04e6c2987ab643f326ab` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5e26ba756e1e39429c8b2620263c20295535897a` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x61e69f55d9cccca940126abe2ae09c2b4d55c717` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x65fbb381e3f598742ffb0390e8d50484b79efcb3` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x67f9e20862cb0e12f09396ac4a07584114abe545` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f2ac974397d0f2ea43186402668a88c8378f09f` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x763b382ba5fbbc697f58b327c2bac05fa1fb51b3` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x787c1a09c6a9a58aa3ee791e54ea9c59f51ada48` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7d8c6b58ba2d40fc6e34c25f9a488067fe0d2db4` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x84e5ba51c158c9f70684f93b6cf9d6aae506c9a1` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8c0971be6a98dcc61958ffdec4259e5ee833689b` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x955a7043b0c904170cc16b70afb878dbac2fedca` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x99f28a1ac137f1a484d137567040b20a2b28893a` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9a662758d72f004d2b49c1b4a518b3bc0f0a1621` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb6156fc9a0ea2068a6c6fae6e6713517e5e25ca2` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc129870bafcc9f6f021de94c8abbf0ecb873ebcf` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc96ff2c8503f1658f3b2f1d3884d548968eb338d` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcf8d0723e69c6215523253a190eb9bc3f68e0ffa` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd8f185769b6e2918b759e83f7ec268c882800ec7` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf22808b31854b534d4a52fc64ea6003a3ca7a21b` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfeecfdf5ea3061c82e6c502a9320c88f26680e33` | non_address_book | unknown | unknown | unverified | n/a | `0x01bb7b44cc398aaa2b76ac6253f0f5634279db9d` |
| arbitrum | candidate review | AlgebraCommunityVault<br>`0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | AlgebraCommunityVault<br>`0xe3c3e260071ca29231d930bc31654571c51da69e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | AlgebraFactory<br>`0x1e3db3a221bcf6296fef2c493bb44d09018455ca` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | AlgebraFactory<br>`0xd3b4c3262b7bc4d0ae522f15f48eef8f6b5d6aea` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | AlgebraFactory<br>`0xd490f2f6990c0291597fd1247651b4e0dcf684dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | AlgebraFactory<br>`0xe907d0b2b830124d64b11e6416ecf61483994ae3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x49f5985a122028093c91bb63084eb29a7632067c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x89a13bb0c2315670aadb07b7a0c7067333b8a68a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x903293c1e922a72a95a69c61ede74073c8594c13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xa760212bc60a77b24ba52e889b0dc9d99e280b5c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xd8676fbdfa5b56bb2298d452c9768f51e80e34ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xfecbac90ba3478c24f82c5c142a222e75b7e4321` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraCustomPoolEntryPoint<br>`0xbf1849090b659505a0d7a75fead3068020aea3ef` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraEternalFarming<br>`0x0b3538cc8d06e73f26956f81d1a4be513d99db1b` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraFactory<br>`0x9a8ddc2f8b998de00f7028bd0881bde028aed592` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraFactory<br>`0xd97b6e6944a7c36cf047f4606875a3fadbdb61d6` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x0f9dff83d8b1f1b41dfbe340b8d9d75aa1741870` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x34f74f5217d57223b51e51245769a89874c69bd2` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x5e1e14df94ee031c51f41e5ee3a2ad7a1345ffe1` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x6dd3fb9653b10e806650f107c3b5a0a6ff974f65` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x89aee07e1dbafc82f089b45ffc763738e9fff226` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0x8b5665ba77ca4e98ba96412061276ad2adca6f15` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0xd5143db853b4af176c2379b6ac48ab3e66c4fa56` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraPoolDeployer<br>`0xf09c0892885ba43d4ba29be7388fc145a174af8d` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraVaultFactoryStub<br>`0x1cb8eedc4dcff2da02bfcfbed2456cf2c41333f6` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraVaultFactoryStub<br>`0x653658ddb7e4a7a69f0fa4c020f1e7e60732d540` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | BasePluginV1Factory<br>`0xe3ae84a486c737e4e260b48f1173dfcd96cbd03d` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | FarmingCenter<br>`0x3eee90c983e2728ae6d7880064b0c5b055342c46` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NFTDescriptor<br>`0x1e12aad4b836a9b5edf17367eb8f1cbe3e781dae` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NFTDescriptor<br>`0xff7da61e7037378da1baf3d40ba8e6e47dfb3a62` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0x197de4ea3c45eefad1727d7c4858e078f1e8d31b` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0x5c8d79b78786a2e9327f2d20910abd6d198c5905` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0xe6988b12753e2f6e1bf84843988a0242b17a5383` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungiblePositionManager<br>`0xf41599ffc71518fd4411941439dae7dee27020f9` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x2d22aa1c50433eb018077e4bfc52fadc437606dc` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x52d2ebe1fe306c90124d159b59392b6bb1b48325` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x674d0794c32f061eeef5ee981fa3b0ee3be7a7ef` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0x02102bd5b57c128b19d4d4fa4d8f8192ea1b88ac` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0x27d3ce023f34f1e560f9ba4c8616526085fefe92` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0x32ab0c927d2197aebf8e5471ab9db7fd1854e73c` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0x6c78f25cc4fdff99d0c88aab75b3b6e50fbbc0bd` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0x9b7a7c93db745d5f6c679eeda7dd15ccd638c063` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0xaaf703dadca1aae754ad74de643907747d2eb3ac` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0xc50b125beeecb1ad17a893c5d54a0a0e629fe056` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | Quoter<br>`0xd70dd6d5e4226a515f90623213d9aa437b63b955` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | QuoterV2<br>`0x66d756335bff276d73a8ab0853c3d336475e639b` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0x17585d045eb322d292e0166a4cd643f793640b50` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0x22535b3e45c4c3eaed4b3821a0a95eccb518ad98` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0x377b58ffd1d68e2b7815421854bcd1489493c51d` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0x49c98fca16c115fdd341728a869d08f9a51d951a` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | SwapRouter<br>`0xad3a4361d633a3b9377ce82ad951caad2bb64e12` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | TickLens<br>`0x22cb092d904eb13cdaca0ca5d93093fae19b8034` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | TickLens<br>`0x6e39ccd0b6d1e91a69d5bdc1d112bfa0d34bde38` | non_address_book | unknown | unknown | verified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1cf9cf377252802780c3c4d61d53432fc4e98a14` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f054ce3254f9e3edd987d897223e0184646d8ec` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x259ba0c58bb231c6fe5b71dd928b9d297685ea3c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3046cf2eef9840aed537598042db3d911b942dbd` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x30cea63a6b2653c1a50d284a0cc079938ef943b1` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3fc3f74dbf4c2e9f583d2855a868cc5af2d931af` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x400bb79e9651e683300fcb312fc074940381e231` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48813f00c532d995e8847cf8491fda41d87caf33` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b53488a14b2eef51df8b8b31e6add2f378c72f4` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5822a45b05d08028baa3d19626870076d26bc460` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x790b6cf4429b4407f5227feaa31d798829f049a8` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8cc27635c3a075d21b332f43440bd177b439b16e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x92883acd807c0cc086e72f9bf7c0468ff2fd8087` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9dd65541b8cdb69b571cb1f63f72dcca4cabe2bb` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc27d4dbf4d86c90f63828d2cd2582be67e5e5657` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe4331da0e97627a04638506770e5d48f6b304d36` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf4c88bc4585f9de3396774c3f0c8b559a7e7dd41` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf53b4b36d9b24e5b0086fe7c4532a3c5ddedd8c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf8644abdb47d048e5572836db30d95cf63243c33` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfdd06964f8b48725be238524f8e4ea6da42eb659` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0db7c063dd28bbf6c4bad43a21169f4565bc41` |
| arbitrum | source verified unclassified | AlgebraV2StaticQuoter<br>`0x26d1e904047449feeba13bb517f9e731587414b6` | non_address_book | unknown | unknown | verified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | source verified unclassified | CamelotYakRouter<br>`0x8b3bc323827abc8a9d58e52f402cb266c83d6b74` | non_address_book | unknown | unknown | verified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | source verified unclassified | CamelotYakRouter<br>`0xb1562f68031cf82639615f4ac0ca2b6d04662712` | non_address_book | unknown | unknown | verified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x08dff9bb0c9cf33d75a7b01cc19a9979ddc2c3fd` | non_address_book | unknown | unknown | unverified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5999991f4f85dcaac14689d5bb2909627380a9fc` | non_address_book | unknown | unknown | unverified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x610934febc44be225adecd888eaf7dff3b0bc050` | non_address_book | unknown | unknown | unverified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7d1b59e7df0244b66a966d250627193396963389` | non_address_book | unknown | unknown | unverified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x83bb6048d55ea0a84795a939531fdc1314c0d3e3` | non_address_book | unknown | unknown | unverified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9220d07c1e8b5c170fa6011db8a729e9898b6245` | non_address_book | unknown | unknown | unverified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaedc4e73cddd8e3af091bba0a959cbf36a2025ef` | non_address_book | unknown | unknown | unverified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc7585c2528f7785b848f6d4800d26bd353c60960` | non_address_book | unknown | unknown | unverified | n/a | `0xac864c0713fa2d83acabd99c61c40eea5f029762` |
| arbitrum | source verified unclassified | Timelock<br>`0x2e9bdddbad724b1cc3bfe521d8e2c5f52a887a9f` | non_address_book | unknown | unknown | verified | n/a | `0xee38dd8888885674edfc1e9bbf168eb520087659` |
| arbitrum | source verified unclassified | Timelock<br>`0x5846bf78fb95712f394ba1aba45ecf262f7209b4` | non_address_book | unknown | unknown | verified | n/a | `0xee38dd8888885674edfc1e9bbf168eb520087659` |
| arbitrum | source verified unclassified | USDXSales<br>`0x8598348b2cb4f62ec529ad52ab5e57b52ae3065f` | non_address_book | unknown | unknown | verified | n/a | `0xee38dd8888885674edfc1e9bbf168eb520087659` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/camelot](https://paladinsec.co/projects/camelot) | Paladin | Audit | 2022-11 | stale | Direct | n/a | matched | 4 | 0 | 0 | 13 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1826] paladinsec.co/projects/camelot — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/camelot | CamelotFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | CamelotMaster | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | CamelotPair | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | CamelotRouter | own contract | PositionHelper (proxy) (alternative) `0xe458018ad4283c90fb7f5460e24c4016f81b8175` — deployed 2022-11-19 17:46:33+03 — liveness: live (current_address_book_code)<br>CamelotRouter (selected) `0xc873fecbd354f5a56e00e710b90ef4201db2448d` — deployed 2022-11-04 01:24:28+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-11-04 was 3d from audit; next candidate 18d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/camelot | GrailTokenV2 | own contract | GrailTokenV2 (selected) `0x3d9907f9a368ad0a51be60f7da3b97cf940982d8` — deployed 2022-11-19 17:06:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/camelot | Math | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NFTPool | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NFTPoolFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NitroPool | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NitroPoolFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | Presale | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | SafeMath | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | UQ112x112 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | UniswapV2ERC20 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | UniswapV2Library | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | XGrailToken | own contract | XGrailToken (selected) `0x3caae25ee616f2c8e13c74da0813402eae3f496b` — deployed 2022-11-19 17:14:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/camelot | YieldBooster | own contract | YieldBooster (selected) `0xd27c373950e7466c53e5cd6ee3f70b240dc0b1b1` — deployed 2022-11-19 17:29:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1486882e02e6a1037da6afc324b2f911f4c893a0` | AlgebraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbefc4b405041c5833f53412ff997ed2f697a2f37` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x64c0861a141a7f80ac0b3a32312acad3c62947f3` | AlgebraV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xabc401a16595077881964683450ad63ab3688dab` | CamelotAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x99d4e80db0c023eff8d25d8155e0dcfb5addec5e` | CamelotYakRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5422aa06a38fd9875fc2501380b40659feebd3bb` | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5` | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa602e7195fcc9364210181dffa33482b5adce9d8` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0fc73040b26e9bc8514fa028d998e73a254fa76e` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfe24b2cdff01b644995bc248ba8497467d688f7b` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1f721e2e82f6676fce4ea07a5958cf098d339e18` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4ee15342d6deb297c3a2aa7cffd451f788675f53` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 71 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 67 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: temporal_name=1, unique_name=3

Fork inheritance lineage and inherited audits are included when available.
