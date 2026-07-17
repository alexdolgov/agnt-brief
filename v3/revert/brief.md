# Agentic Audit Brief: Revert

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 12 (2 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Revert (`revert`)
- Website: [https://revert.finance/#/ref/w6vno3](https://revert.finance/#/ref/w6vno3)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, ethereum, optimism, polygon, unichain
- Contract surface: 254 unique implementations (638 raw deployments)
- Coverage basis: 4/48 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,691,225.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Revert. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 71 contract row(s) across arbitrum, base, blast, bsc, ethereum, optimism, polygon, unichain. Structural roles: 37 core, 24 supporting, 10 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 71
- Structural roles: core (37), supporting (24), unclassified (10)
- Contract kinds: contract (70), abstract (1)
- Detected standards: ownable (53), ownable2step (32), multicall (14), erc20 (3), erc4626 (3)
- Frameworks: openzeppelin (60), uniswap-v3 (56), permit2 (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

3 of 59 contracts are derived from known codebases. 56 contracts have no detected origin.

### Forked Contracts

**V3Vault** (`0xa2754543f69dc036764bbfad16d2a74f5cd15667`, chain 1)
Origin: revert (`0x7f48e62386c51880415ef814b9abfddf3ee5fde0`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**V3Vault** (`0x36aeae0e411a1e28372e0d66f02e57744ebe7599`, chain 8453)
Origin: revert (`0x7f48e62386c51880415ef814b9abfddf3ee5fde0`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**V3Vault** (`0x74e6afef5705beb126c6d3bf46f8fad8f3e07825`, chain 42161)
Origin: revert (`0x7f48e62386c51880415ef814b9abfddf3ee5fde0`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd5c6057a3fa473431975e6d28e4e858544ecf4d8`, chain 10)
- UnnamedContract (`0x4ec6f2c562b811ec363e20df143745737452108f`, chain 137)
- UnnamedContract (`0x1ef7c181188687e20a9750714f1b9de6f70f17c0`, chain 8453)
- UnnamedContract (`0x2309a5ae06e86986a6f27b81a53cc31fc1b55b0a`, chain 8453)
- UnnamedContract (`0x82722327e45e86a0f2107746f423f612139b0952`, chain 8453)
- UnnamedContract (`0x9e29b74336a0d698ad600b3e52729bfda85e0564`, chain 8453)
- UnnamedContract (`0xc171f8c6ed8253151de50ab839e3a468028113f2`, chain 8453)
- UnnamedContract (`0xc35e20379c3267b5f63e569c25959031ac588203`, chain 8453)
- UnnamedContract (`0xeb6127dcfb1e4107dc1f3111151f779920c213dd`, chain 8453)
- UnnamedContract (`0xf4fcbab7d092a0b46438dbbaa21333f7f07137ec`, chain 8453)
- UnnamedContract (`0x18616c0a8389a2cabf596f91d3e6ccc626e58997`, chain 42161)
- UnnamedContract (`0x9f703bfccd04389725fbad7bc50f2e345583d506`, chain 42161)
- UnnamedContract (`0xcfd55ac7647454ea0f7c4c9ec231e0a282b30980`, chain 42161)
- UnnamedContract (`0x4a8c2bdf0d8d2473b985f869815d9caa36a57ee4`, chain 81457)
- AutoCompound (`0x7c81247ae0a35b03e3f4a704dcd6b101dca53abd`, chain 1)
- AutoCompound (`0xbe931744bf0b4c4c580d375de04ee7fc2f52c568`, chain 10)
- AutoCompound (`0x3b1767957d08ddc60493d35d812c66e2d52bd875`, chain 56)
- AutoCompound (`0x843fe45972f638a2e7065b8d8b54efcfed09b72b`, chain 56)
- AutoCompound (`0xf887e57ad9114bb31c7506890efc181f355e9783`, chain 137)
- AutoCompound (`0x0bf485bd7ebb82e282f72e7d14822c680e3f7bec`, chain 8453)
- AutoCompound (`0x9d97c76102e72883cd25fa60e0f4143516d5b6db`, chain 42161)
- AutoExit (`0xef4868d67a6dc9f0eb9dbaadfae6f4e78829edf7`, chain 1)
- AutoExit (`0x32d03c762995e1e90c6f809e13675ac84db223c7`, chain 10)
- AutoExit (`0xa16cf1e8adb706c762a04449cbbf8fa99cb66a58`, chain 56)
- AutoExit (`0xc2c77dd78f6f73aa0553bf3a2108566a40f696b3`, chain 56)
- AutoExit (`0x1d0d743466b0e65482bc7effd81232354c5ebcad`, chain 137)
- AutoExit (`0x16e0b91ce6f1c426df6e2a5a295d113e8f596a93`, chain 8453)
- AutoExit (`0xd0186335f7b7c390b6d6c0c021212243ed297dda`, chain 42161)
- AutoRange (`0x88481e2fbc98d4a251655b0f1a4422555ea72d9e`, chain 1)
- AutoRange (`0x87f44220d8895d6b9fc3f80f104a1a6cb87fdca5`, chain 10)
- AutoRange (`0xa0dc48783d6a5cc58d0ed6016eaa929e14c10ad5`, chain 56)
- AutoRange (`0xa8b9fc43974cc78fe8a137d8c6c48856ab96a493`, chain 56)
- AutoRange (`0x5e54224a75d459f57ac4c76ce7c560a353374a5b`, chain 137)
- AutoRange (`0xa8549424b20a514eb9e7a829ec013065bef9dc1d`, chain 8453)
- AutoRange (`0x5ff2195ba28d2544aed91e30e5f74b87d4f158de`, chain 42161)
- Compoundor (`0x4a8c2bdf0d8d2473b985f869815d9caa36a57ee4`, chain 8453)
- FlashloanLiquidator (`0xa44080f20464de260e25f35a69d6bda50f2cc79d`, chain 1)
- FlashloanLiquidator (`0x6bcb1ae7b3aec6086066dc4348dc679c93eeac5b`, chain 8453)
- FlashloanLiquidator (`0x5b94d444dfba48780524a1f0cd116f8a57bfefc2`, chain 42161)
- InterestRateModel (`0xb50dafe03fee68595ab2baad3c16f899421f063b`, chain 1)
- InterestRateModel (`0xd0524a77c8e2bd22b1f57268fd6bea1973ac7927`, chain 8453)
- LeverageTransformer (`0xbaea7f73569456096fcf38ae34242c52ca227b1e`, chain 1)
- LeverageTransformer (`0x5e97a478184993d3e376eec00b603f80463d9b23`, chain 8453)
- LeverageTransformer (`0xe5047b321071b939d48ae8aa34770c9838bb25e8`, chain 42161)
- SelfCompoundor (`0xb50a397543fb2c7d08c53d5f5331ad8990d3b48f`, chain 1)
- SelfCompoundor (`0x3c0fd0b42aa46f03f6cf5e305ed9b2ce402847ef`, chain 10)
- SelfCompoundor (`0x48331aec6a59a44fe1648aaa38545ceddbdd747c`, chain 56)
- SelfCompoundor (`0x69437b43805c9fff78ec63394474a48c69dd8da6`, chain 56)
- SelfCompoundor (`0xad58d1df63afcf090cc930475db3dd3cd8f739ea`, chain 137)
- SelfCompoundor (`0xc5d8fa6439a5a8caa4ab24025751255296f1551a`, chain 8453)
- SelfCompoundor (`0xb43a613f0dd19af1cb1f5d03d8e8e5af04d9f0a1`, chain 42161)
- V3Oracle (`0xe0151d335a6c4ab0600ae4000a9caaf7b236072f`, chain 1)
- V3Oracle (`0x31c8ae1e4d7a1788536ac19c92ce3ebae3f4731f`, chain 8453)
- V3Utils (`0x5b2f7cc65f8eb6222289c714547b9ab22db86be5`, chain 8453)
- V4Utils (`0xe162e02ed718f94ac70336fba69ff86f2918436d`, chain 1)
- V4Utils (`0x84b41aea9fe0d7a840d699d840c5fd78f20efe65`, chain 130)

## Contract Surface Quality

- Logic-topography rows: 71; live-surface rows included: 71 (48 live, 23 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 62/106 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/48 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 62 own, 42 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 150 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 62 of 254 unique; 192 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/87
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 167
- Unique implementations: 254
- Raw deployments: 638
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 4.6% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Compoundor | unknown | project_anchor | own_supporting | 0 | base | unit-253134 | `0x4a8c2bdf0d8d2473b985f869815d9caa36a57ee4` | ✅ Audited |
| FlashloanLiquidator | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-253088 | `0x5b94d444dfba48780524a1f0cd116f8a57bfefc2` | ✅ Audited |
| LeverageTransformer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253100 | `0xe5047b321071b939d48ae8aa34770c9838bb25e8` | ✅ Audited |
| V3Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-253090 | `0x74e6afef5705beb126c6d3bf46f8fad8f3e07825` | ✅ Audited |

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutoCompound | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253048 | `0x7c81247ae0a35b03e3f4a704dcd6b101dca53abd` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | optimism | unit-253072 | `0xbe931744bf0b4c4c580d375de04ee7fc2f52c568` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | bsc | unit-253105 | `0x3b1767957d08ddc60493d35d812c66e2d52bd875` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | bsc | unit-253113 | `0x843fe45972f638a2e7065b8d8b54efcfed09b72b` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | polygon | unit-253085 | `0xf887e57ad9114bb31c7506890efc181f355e9783` | ⚠️ Unaudited |
| AutoCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 16 deployments: base `0x06f64f46415aa307c46692f73fd85649086bd7b9`; base `0x1218bb17d6650b7f9dbaac0241ceb6ec0b6add80`; base `0x16d89bb855a8801775c4179339fb812a4f6f48f2`; base `0x31d3c6081d59ed3335ae48b1ea07bf7f809a43c2`; base `0x3f0a5823523b6e6097b8f80d358401df1412b43e`; base `0x46396ebaaf17deeb90469de4f0814016270f7cb7`; base `0x4a2d241fcad7b736f709c306c0540a2120a41357`; base `0x4d2f64e1f28c418e386ccf0a49b18bb89deea3e8`; base `0x5953942af51ab50a9dbf352c78a3074a98205aa0`; base `0x5b1c319f52ff939ac8f61f895210d46bb51e24aa`; base `0x91a7fdfb6cb09cf72323769ed61a0a22d73c3cae`; base `0xa148be8f41bddb9c827f2af3ba397ac4fce26ba1`; base `0xbb94c224586b08ff2a6c76ab34980745f6047ae5`; base `0xd6bfe1ce777511716125eeacc25c6303a56ec349`; base `0xdf46f1406434e5258d34a0c769d9ec65b792f185`; base `0xeaa2885a32ec5da2dd9892095b97838301d407d1` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | base | unit-253127 | `0x0bf485bd7ebb82e282f72e7d14822c680e3f7bec` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253091 | `0x9d97c76102e72883cd25fa60e0f4143516d5b6db` | ⚠️ Unaudited |
| AutoExit | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1765af4a4c660c0873922c9fa05744f4bd8265a4`; bsc `0x4fbfc715a079abd9595301846ccf1fdc65f48170`; bsc `0x5beacd744bf62fcad3793de053186a28f5845729`; bsc `0x9f26fb9d42067322d227096fb4eb915cd3156f4c`; bsc `0xa65b04210686a8d28724bb414d7d23225762f9b1`; bsc `0xa8a993e100583f7831753baf6b3a99c4dbd90cee`; bsc `0xd7569946eb38f727db873da528ec742850d7eb95`; bsc `0xf0136d61d177fedd475558506b29ac7bad2f9385` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253046 | `0x37c25b604d7f9615c375cc392be853a272ee4e90` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-253061 | `0xef4868d67a6dc9f0eb9dbaadfae6f4e78829edf7` | ⚠️ Unaudited |
| AutoExit | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253062 | `0xfcc46d2fde6b6eb9ab9f2c8e39802020c8ca4299` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-253063 | `0x32d03c762995e1e90c6f809e13675ac84db223c7` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253106 | `0x3cac4a92c8bac93ea2986cb819a4aaf529974d93` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253108 | `0x4bb7c9f44262af978f84a65bb5b13a8f946003ba` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253110 | `0x68bb8dbcb554b95ce0fffef6846a0ac8a7fe3cb9` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-253117 | `0xa16cf1e8adb706c762a04449cbbf8fa99cb66a58` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253119 | `0xae19eb52cca56c178d695b4d823d81b5f3829bb1` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-253121 | `0xc2c77dd78f6f73aa0553bf3a2108566a40f696b3` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-253076 | `0x1d0d743466b0e65482bc7effd81232354c5ebcad` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | base | unit-253128 | `0x16e0b91ce6f1c426df6e2a5a295d113e8f596a93` | ⚠️ Unaudited |
| AutoExit | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253136 | `0x5b3b61342c09c9455bd1913cf0be4c13c053d046` | ⚠️ Unaudited |
| AutoExit | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253147 | `0xde3dee3fbd8fd798e69f13de3745867b2b345d6a` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-253098 | `0xd0186335f7b7c390b6d6c0c021212243ed297dda` | ⚠️ Unaudited |
| AutoRange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x27f7131deeff87cc40d81be92d417dadc6577f04`; ethereum `0x2c0802b9538a9e75fe7805cc181e7031389b144e`; ethereum `0x81030088a39614cc1d579e643da67e83ea6b080a`; ethereum `0xd981c8e046c16c22d6bf5e8ea75ef5c56d3c6d99`; bsc `0x48628d532271fc1ee17ef15d134d26c41b85493e`; bsc `0x64346cff22ed74ba865be1374a2db95934d04510`; bsc `0x98b79d73efab63ac82478290404465e0ede9e09a`; bsc `0xc3d24eb1cc96c153b3c3d77a03537066cfa6bcf8`; bsc `0xc642dee271259d7ecdee565f17fc4adf52ce84cd`; bsc `0xd8491312d2528a982c0d764e9221600b1096353a`; bsc `0xf3f77839579ba569a2c0645718f1f5b8859a197e`; bsc `0xf82a64e421601bb16fdc33f6b99b877bd746b826` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253049 | `0x88481e2fbc98d4a251655b0f1a4422555ea72d9e` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253050 | `0x9576fc12363cbbd8aa010242f0939a4d55ce0b1a` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253051 | `0x9b74e52ae52ef26ebd4b77aa1929dd06f187cca9` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | optimism | unit-253069 | `0x87f44220d8895d6b9fc3f80f104a1a6cb87fdca5` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253102 | `0x1af7cf68f100a564325df83ae111cb61c29c54b1` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253109 | `0x52c200da4c57e3575788306ad8aafd15e8ac3e68` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253115 | `0x9a515ff53f38185b1f2aed81685c22953092fb3b` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | bsc | unit-253116 | `0xa0dc48783d6a5cc58d0ed6016eaa929e14c10ad5` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | bsc | unit-253118 | `0xa8b9fc43974cc78fe8a137d8c6c48856ab96a493` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253123 | `0xd8dcdbd48ba059c288a9d654c468ebd94c27d7e4` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | polygon | unit-253081 | `0x5e54224a75d459f57ac4c76ce7c560a353374a5b` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | base | unit-253141 | `0xa8549424b20a514eb9e7a829ec013065bef9dc1d` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253145 | `0xca7134443f4bd65c4f7ab30983858c239d88b906` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253089 | `0x5ff2195ba28d2544aed91e30e5f74b87d4f158de` | ⚠️ Unaudited |
| BridgeTester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3465fa4252d73ca61ec8c00246335189be8e2075` | ⚠️ Unaudited |
| BridgeTester2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb306f936d69cc8425dd3a7d260690b5df5a2cba6` | ⚠️ Unaudited |
| Compoundor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253047 | `0x5411894842e610c4d0f6ed4c232da689400f94a1` | ⚠️ Unaudited |
| Compoundor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253066 | `0x5411894842e610c4d0f6ed4c232da689400f94a1` | ⚠️ Unaudited |
| Compoundor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253078 | `0x5411894842e610c4d0f6ed4c232da689400f94a1` | ⚠️ Unaudited |
| Compoundor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253087 | `0x5411894842e610c4d0f6ed4c232da689400f94a1` | ⚠️ Unaudited |
| FlashloanLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0db09b29f0726d8dbe04b1083769d30e6724bc88`; ethereum `0x1cb0b8a5671b9a4d3d38ed99c049a105922aed57`; ethereum `0x5e97a478184993d3e376eec00b603f80463d9b23`; ethereum `0x6926cd6efe8bbf7928d94e94606fb53991a48e89`; ethereum `0xc11585020d5c4827fcaec85f27d3bde7629ce1f0`; ethereum `0xf63fc55c66fd0b2dce1942b77e10a270cb74586d`; ethereum `0xfc5637105d575c3c82224ebeb3d543868443f92f`; base `0x2867d6a7a17f88db3e7b210c7d2258216c3a8334`; base `0x4b073a6bf252c8de805a778c8ff2aad093ecb73d`; base `0x83b2184ec0e99798a6acc128dbee9a84ba8e8b9a`; base `0x8ddf5fc64166b4be8278293766fbf772329d7a68`; base `0xaa4a65e04496d94919ff029606591051e3716673`; base `0xe639d6868b4f096ad4b16d51f792aef1d0ecebc0` | ⚠️ Unaudited |
| FlashloanLiquidator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-253053 | `0xa44080f20464de260e25f35a69d6bda50f2cc79d` | ⚠️ Unaudited |
| FlashloanLiquidator | operational_periphery | project_anchor | own_supporting | 0 | base | unit-253138 | `0x6bcb1ae7b3aec6086066dc4348dc679c93eeac5b` | ⚠️ Unaudited |
| GaugeManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 55 deployments: base `0x03486dd203b725337a0ba72ea60f26c3966a0e11`; base `0x071e48662d78085a4073e2772335759757f0e3a3`; base `0x0bc5e4b1be764a8d325cc7be9b5d6827cf03fb2b`; base `0x111559ed297239c921338d6e349a9815f9849cdb`; base `0x1462a8bb4aa4bc32666e4b697893bf20c4ac600a`; base `0x16fec3e95f9ed515c5971c01ff9008366ab84338`; base `0x19f92c572d0cb8e9e27ad80ea1b4cdb8a194ba04`; base `0x1a2b34e824b779fcca100eb6ea8a5a82a39dc4e8`; base `0x1ac20bd4e85573abdb4c6bdb47e676541f9d11b9`; base `0x1e9f312a4515bd779eb355e70433e0b37518242b`; base `0x1f44aa4f0925a97aafa5f992ba70122e069b25c4`; base `0x233da915abf825393ce6f164d70ebff984c95673`; base `0x2365c3bdddba5ce8fd0eeb0aa371d321bc527615`; base `0x284b809f194eea237561c75eaf4090613f061743`; base `0x32eb0ff84ae13fb2d0a7a0d173e69446edbd88c4`; base `0x3411e48290826f47ea376a24d5168bbcd7856b7d`; base `0x3a9cb8c9b358ed3bc44a539b9bb356fe64b08559`; base `0x3de4534a5a8a7117fd52696dc46e81f5667fb0fc`; base `0x3ef141442ca8133c0098c5dadea7309b610f63ce`; base `0x5b6ccd0f3238ca2a1a4a9bfbc2d06efe2b8a79ab`; base `0x5c9a7d105b607d09162446b9b94cc0145e7f5d82`; base `0x66a2481b784cf26103441ca6067f997f90d3e129`; base `0x6eeee423297481ce9e4e007e191e789ed3b4da21`; base `0x75e77d54a14d5336827d5f2fff4534f377d54025`; base `0x779657616999713444469131536875575d7c231e`; base `0x7a5d83f557f75aeed350872d052ccd7e43e7f471`; base `0x7e3db255fe8e6629cce2f34639a6f75ee4aa8be7`; base `0x7edbfcc5c03a8482b73091cda893fa34d63585e4`; base `0x7f6b6080f0e5982e520ffbea72fa2b9e56a95e68`; base `0x8131cc40b2c3d704f90d0d56ac9d77590ed7855f`; base `0x8508f916dbf0b3e1819f0e582b953527250dcfac`; base `0x85cf3b3ceecde6d0330efd4ac53e764cc000159e`; base `0x8abc86a5ba8be6e3c1a9437aa45f215844000ce7`; base `0x90ab972b3fde682ba58f4cf0c15f404e3ca8644f`; base `0x92687770ec6ac0a1ce6e12b27c83f911a413c16f`; base `0x96beb0075f0e86ff99fd4883aa454752b28c35ca`; base `0x9d01fe804ffb769c169b746e49bf0f75db4bbfa5`; base `0xa2754543f69dc036764bbfad16d2a74f5cd15667`; base `0xa38ba047e554bf5b9e046894e1cd7ac032e10c7a`; base `0xb14384a2ad9424400cee5631f1bcb9d0cc4d6615`; base `0xb8a43dc239f986ab3bf73b9f99ad5e62a52edc7b`; base `0xb922131d2614902a6d995d6e0c978ed37150b165`; base `0xbe08ff47cb69abeb7ceafb066e017b4088d237ec`; base `0xbe28684605addcf997f52daf7057f3f57291ad19`; base `0xbfe23ebd3756b531411fcc9d8a73d13c97b2bd3b`; base `0xc010d054ba80aa416cfb0f385428aaaef7f9c9ba`; base `0xc311bef0edb2f2a91429d195bb58070857f027d2`; base `0xc92c015861ad0e7216df9d1a01a1ab07d05ec8c8`; base `0xd37cfe20320f0f5e0f123a47fdd0d08ba16d03de`; base `0xdbc592dd850555c08c544df2358441df6a79d141`; base `0xe6999112cdaeb33b63203ed2f2eca8b82c683e8c`; base `0xe7a8d95542c8d8ea341d7ef52c3cecba948e24a8`; base `0xe8e4f06047e6941a93840eaf45e79fca2bc6715f`; base `0xf10b6c658a9cf2d39380932dfeb9db34138dfff8`; base `0xf3e49ebb9d4d12ed74f0de2bfb0f33113e87bb92` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-253056 | `0xb50dafe03fee68595ab2baad3c16f899421f063b` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 72 deployments: ethereum `0x12d1a665dda20fdec8b1b1ab3e60ea6ce2ebd96a`; ethereum `0x8bccb779bd4cd1b68dea65936e99bb1c08480279`; ethereum `0xb1e602c3d098560135fa208d16b75c6a34dc937f`; ethereum `0xb5634bbed7a643ffb1006e5495b4d8a337956060`; ethereum `0xd0524a77c8e2bd22b1f57268fd6bea1973ac7927`; ethereum `0xd468de37d8a1c0e4bb7b424f045cc98b1a7e0577`; ethereum `0xd4c6175d01970d005c0233e9e30bc4613bb06156`; ethereum `0xdc3538492268806464699a8e873f63ceb1737878`; ethereum `0xe35bf3f009dacfbac8e534a2460fd3c3dc428c40`; base `0x03688efa97662d3a2fc7be8a322e02d4810053f9`; base `0x049c4bd0b173909b0a016d95bbe572e971f6767e`; base `0x04fd015175a6a90528e9694c304a848bf7c4fa85`; base `0x084531c07863b829dd65299bd5453fb8028d2923`; base `0x089d27189a43dcae283ee16f8c125e426b5322f0`; base `0x09e49a044b6141ad21d9c58630feceeecabcb41f`; base `0x0cf4d58ef7df50135a4793326b1c570a8592da7f`; base `0x108885122cfaa25b6bbdff8683e4c57de29e2527`; base `0x10e98166c6ddee5c98b54c61ba9f68adc7729fe2`; base `0x11f87754c4f9602f65bb81ca4a26998f9a71872e`; base `0x180044d880d18a7a4f9b1bde2027250602fc56c4`; base `0x1905d50f7e92e77d5da427c7ada5eeadc9182553`; base `0x1adbdd60474b57ce642b0923fa3c232fd1434605`; base `0x20d3c83101ae2772bb7799ddb2c884d8809abc2b`; base `0x22f1d44e21f271207aee766353337699dec87f42`; base `0x2774e0bdea902a3d789b68cd596e5bb0a4a98e7f`; base `0x30c4341c17aaf442d549658132179cf528c47719`; base `0x364606af4e21adc5ce039521e7a5b217d1630fc7`; base `0x39b583ee5913cbeff0fddcdb32528c34499d481a`; base `0x3ab6af6ace299bb623364c600df8c1c42da9ce57`; base `0x3f133fdef960406579bfdcb507676122f047b747`; base `0x406fc1e51d1f3affceaee64724f627d0933f8d2b`; base `0x4139d4d40bb88d51809b8bee0fbd791d7bb5dd72`; base `0x414690e77a1fcfc2e2086260b6b9fb8cafb9d283`; base `0x447a68d33be002b4660ee41554a70ea12aacf7ee`; base `0x4560754818fa9460a570800ab5957f88825a4276`; base `0x5b5e47bf6dfdcdf4f5cec0814b08979f2fc9c4df`; base `0x61ad778d9a1adea6ba7614a460088bd713204415`; base `0x65aa452d39f7abcedbea5d8fce5198d3a55f0fd0`; base `0x660588965eb31a1425042fa7b10f1aaf654aa715`; base `0x70079c3c26f5c0e6e86b03d969c491c9afbfad7a`; base `0x71b45d25ddc44bf040e1e7c91c55264b5a6104cc`; base `0x7655479e58455738d56bc5151f5c8b9ce90898ce`; base `0x76c9aec0ecd5a12cf732236ed6c0b7ea49473519`; base `0x775e3d284de29d1ba7e6b1d72873a33a380a12d3`; base `0x7b9b1fb6c10201403eac4ce828c16305f3b6f35c`; base `0x7fcef7ea3d81661517344cd3f8ea5867484b052c`; base `0x86dde721c4c365f826b58e0c57f62104935f4ec9`; base `0x87d676f269cf19673f1bf258ee2eba2e64d0039e`; base `0x915dde968ed90a8cd2e1af0ae5d5d33585af3350`; base `0x93463eb03a73d4a1e93b23963c30d4ac792bf4e3`; base `0x948ce97edbdcf1a941367d11b7c05a6d35bc1138`; base `0xa4b628b0fefb23a4bb93e33c6d66f27945e93b52`; base `0xb1bbe8e224ca7fe50de15d02d289fdebae6664fc`; base `0xb3aeb2c275b5193b35ec4f95a21145c65cf2372b`; base `0xb547683e0697282daaecb558816112169e11f0d5`; base `0xb6845c4690b2103b19cc4cff2124708a08550be5`; base `0xb80fec7e825ee02643d807ad5bebdf548f7e78c3`; base `0xbf25a8accfafb8601558699d779156045363e739`; base `0xcddb011c2b037f18e75a2dacb5ef08512747fa70`; base `0xd09053a11e07609445806a9581f2678cbf73af52`; base `0xd1909c692af0576dcf0f62ee6ab7cf5a797aecff`; base `0xd24c18c25204128955a8773d8016b404fac7577f`; base `0xd887fb8a10aa897aefa990201ed555467f9d60ce`; base `0xdcd43599b788e7a1bd4e50a9070440087ec93f3e`; base `0xdd34a16b2601b3768ef783354d524dcf8b6fc1c5`; base `0xe2ebb8eb324d8fa1353b2adde3ee21a250a839cb`; base `0xe6ec36b7260f98ecb716abf0bcd003940ff27523`; base `0xe7bf8fa0bcd1edfb99d6feed9662d78c6bdf81ea`; base `0xe8b6368dd6f8f08b0e2dc980e66f48ee2f622c67`; base `0xf24139cae7f3d53be45660090b128dfec26bfabe`; base `0xf44ebd7c9d4461418856d3f440726b4f0450f2ab`; base `0xf535632bbd434a1cc6d94bde20bd1b0e65dd35c4` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | project_anchor | own_supporting | 0 | base | unit-253146 | `0xd0524a77c8e2bd22b1f57268fd6bea1973ac7927` | ⚠️ Unaudited |
| LeverageTransformer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253057 | `0xbaea7f73569456096fcf38ae34242c52ca227b1e` | ⚠️ Unaudited |
| LeverageTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 66 deployments: ethereum `0x79a7dba256317bdd84a4f9aeeb7fb0f7f9f079a5`; ethereum `0x8f5fe7fd057db26448cfb6c310df9d3f762bd6e4`; ethereum `0xa9bfa7bf4549fed3dec487686a431a721db44bb7`; ethereum `0xaa740d62c2fdfdf7578fffcc95884d636115c0eb`; ethereum `0xd58b8f8a39e21201d732ff7d29bc48cfef3a21fb`; ethereum `0xfc3f986c78ebf6abc031106feac25cd53db30aa1`; base `0x05981339909992a8d9d13e8c651e54f306ec4e98`; base `0x082de29892c23abeebc76496eb1a41201f8b95a4`; base `0x086dcacc22f15f7aa824334e19b1d7e32e6de157`; base `0x1535ea36b2eeabb6e26feda576c59f64320db30a`; base `0x15c1f75dfec62d8dc1d2201c65eb5851220dd5d6`; base `0x16ea81e48a5e4eac41cbce0c210532f52a98bc92`; base `0x1d4f04fc6aeb73907f3984d087a36a38635fb7be`; base `0x21cbd9d62a822f863bca8466153bd84cb479bc51`; base `0x26581732e52870c819657f155116a4d8fdec3bb8`; base `0x26bf32663cba2f53941aa99de37e00e276259875`; base `0x2827cb0bbe8e84ca7079bba6c079542da4dbc07f`; base `0x2d470db8e7dc37105924687ad5a06a659f1c4dfe`; base `0x2e20e1c42aaee5c88aad5adb2d63a75281a3d5e7`; base `0x36fc9c45b94776ae0a01d3389020590da49b556a`; base `0x40b8e697204099f4ad08a48ad42e2bb6ca7abf48`; base `0x416f315384ff74ed4beb29d68e975fd4748a24b1`; base `0x44138ed8a900d0a3872c688891568adacb4d709b`; base `0x45085afef83df8d7ecac61aa632dfbec040fd1f8`; base `0x468695c0e0885591cf441126cfd77852c99f0d0d`; base `0x4d858ae66ffe94c1ab40da15275a3a8e2d79349a`; base `0x50d58c57f3faffc52a7fcd7772e44e3425c28b63`; base `0x5130511646ce542979d561ae2d3d30359edaa022`; base `0x5253a57184d5e9ee08ea29f85b13cecacd8d4d85`; base `0x52fff38682cb978d59a8b0eae24875dd1bea79d6`; base `0x5964f2e1753469d3a125cd8adca55bccedb099ed`; base `0x5d45ead42c8ca8b727408306db5ccfadb7ae52b8`; base `0x624870cbc7f540574cd9746786b3466f4f61bf48`; base `0x674afc4d8a04984ba8c64858e9a833f5375a045c`; base `0x69193c4b2011870d78f7cb7463d4c8c2ef18562d`; base `0x691f843b9d1ce1b282149440771a3a4341c1c188`; base `0x706d3e782234ca8459e8650b7d1688dda76d951d`; base `0x73790214182d339fe80724e2f2c3f76d09c8e878`; base `0x787fd54554606b9c832063cb77537e535d582c4d`; base `0x7c29988283361516e916ed5fb4ff020aae2d363c`; base `0x969df52695d6223adba3ed012c7bee89026970c4`; base `0x969ed3807029af64af2edba53cbf5f40048931d4`; base `0x9743e3db2d0c110530e617f67c848881b5ce2a3f`; base `0x97b02f05664283b012b7dafad8d877b76f0ed481`; base `0xa4bcaf31e988dc875306b88abee65c89e4adfd83`; base `0xab95a138916aa46e7ce0f2081d729735dffcb604`; base `0xad7e16cddddf62f9a9403177007285c1515daaa7`; base `0xae53b360ca8b47a4cd76a6f9554c74cca701e9b7`; base `0xb2f65fabd51b2acd84c3369a64da035300284471`; base `0xb3562ea4019b41fa5af3fcf10c75460285b35546`; base `0xba8619b42c467dfe7544edcb15362047e1b0a129`; base `0xbb8bc23d6866f39c0c180e67c9cf3aba403c4286`; base `0xc138d1f6391c96fbcd3e88a4f9d404007666722e`; base `0xc2a0e231ff096da553e62627152b47edd6354753`; base `0xc8fd28af526e6b669e3fee0860123a560a103029`; base `0xcbc1022fe35c3ef41f93a0205c60253a90173b5d`; base `0xcbda6f78898f5ceb1217980a238bd157f7c0b804`; base `0xd899e0160fd734b1436cffa6be389400bafc8fe0`; base `0xdd10fa1e67c85bd423771913679d501287d9449c`; base `0xe0c65897fafcaca42e2bae01870cc29a9386936c`; base `0xe328d8d7109d86d914fda7818a9bad2158873f07`; base `0xe44de5350acfee3e7bf285a146cb69868de8a998`; base `0xe5c8ff84bc30f0b45c8a0fdec6429af017b98ce7`; base `0xf47d5da4b35f80f90eb24bf6865076e62c3f5b68`; base `0xf84ef1849671020684ed1c428166944506404c7a`; base `0xf8d45668aec5a8a8e9429e770f6987f40b80da51` | ⚠️ Unaudited |
| LeverageTransformer | unknown | project_anchor | own_supporting | 0 | base | unit-253137 | `0x5e97a478184993d3e376eec00b603f80463d9b23` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: optimism `0x167829543510c13c792bd8f6a414f74d51e3a6d4`; optimism `0x35ba8c41ceeea24f7c826015844f2b58af3058a6`; optimism `0x86690b9dbb979850ae4622347af81232baa3c967`; optimism `0x9310f89a8d910d33c2a4d9a73a441be3705a63f2`; polygon `0x243d327fef1d878e6fa3784a75abcbb927c9132a`; polygon `0x9e9a06e0b21ca29d766a9a3ff4da50f2e11d1fb6` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253055 | `0xb50a397543fb2c7d08c53d5f5331ad8990d3b48f` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | optimism | unit-253065 | `0x3c0fd0b42aa46f03f6cf5e305ed9b2ce402847ef` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | bsc | unit-253107 | `0x48331aec6a59a44fe1648aaa38545ceddbdd747c` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | bsc | unit-253111 | `0x69437b43805c9fff78ec63394474a48c69dd8da6` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | polygon | unit-253083 | `0xad58d1df63afcf090cc930475db3dd3cd8f739ea` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | base | unit-253144 | `0xc5d8fa6439a5a8caa4ab24025751255296f1551a` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253096 | `0xb43a613f0dd19af1cb1f5d03d8e8e5af04d9f0a1` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xd7cbf8d3e40458693c4965d07c9a0257106408f0`; ethereum `0xff2dc15bb5ffd7d2a1e9dc6bb63b6c78a3d72145`; polygon `0xb9d4dfc486968befe2ccbd6b5b738e4ccd61eabf`; base `0x36bf9981ba905ca63bdd3271775db43cc57eb1cf`; base `0x47768309db25b1e4f6a402cae0a39aa3dbbada13`; base `0x7814ea7f5aafe6064225d9d73d16ae249477ae49` | ⚠️ Unaudited |
| UniswapV3Staker | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x8c696def6db3104df72f7843730784460795659a` | ⚠️ Unaudited |
| V3Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 71 deployments: ethereum `0x035462f4055338f6411a9a0a4e555d6f11a9f583`; ethereum `0x31c8ae1e4d7a1788536ac19c92ce3ebae3f4731f`; ethereum `0x38efef3131553f0d64f42a3ce95fe97f4538c471`; ethereum `0x5c760856813498043abd6c08726df6fca3b63a9b`; ethereum `0x8c599c910c64b63eae02a0df0c1662fe3778cc29`; ethereum `0xa125f65a4ca08d25815ef1c9d5c98129e5cb6585`; ethereum `0xda0f97ef9e906a0e35b8a2dc0715898f56a98a30`; base `0x06a1ebf7e086c69c11318486c967f24f0d073a7b`; base `0x08d9206dc8ddf2b4d78309a1a19f67241b0bd1bb`; base `0x0a922830c4329a3ae79901ec7885d90657ea7db3`; base `0x0bb922727a3a00cff2f9eec78418a7447959cabc`; base `0x0d16d5316c9ec63689b78d6afb43b676766804b5`; base `0x0e752029b8262327b413ff417a83e17c4e8df829`; base `0x0ff4b8479c5e72a2ab8e80e134b7a93278f05800`; base `0x14b0b9120ffc7e63c89e01566b7da986d660625e`; base `0x1572f985bd203eabc2ae14cd436d5b7bdfe91e22`; base `0x21df5847e3d1f1ef41c89f4ba6f8f0cca61af9e2`; base `0x298816603d27879d3008c84bcee288205a70a6db`; base `0x2d2b853b178f3d1e3410ef65c34eab7e94bf1bf3`; base `0x2e300fe2a2ebe87aec97dfc6db54b60d5296757f`; base `0x3679b7bbb1c16525148c94f0d44c0133418ffc21`; base `0x3dfe6e347bfa1054e1c1d9c63acda78c3f281c4a`; base `0x42ca6f4d891b988c4f21bcc991c7258aec0ea1ee`; base `0x446d5ddf58a541d4f4da32617d39ef4c7b65762a`; base `0x4652ac812874ce9cad61bfde694ebaf84d081260`; base `0x46df44691c040a3d31ffd6644e745e110111fd01`; base `0x4d1f01a76b1be532154f3531ad1dd3931f14ef60`; base `0x4ec09a92d7ad1639c4714e2e14b09c6b555fbae2`; base `0x52fe739898c7ad9f4df4efa00a42b334eb810e5c`; base `0x5358b4e981e3020404a8a98bad68ecece10e4af0`; base `0x56e88640eec31e3a8d0091adef29c892bac8cf6d`; base `0x57282692319c8b8b6a292428dd99c7b748cd3a67`; base `0x5a6cd5e1afd72ea6c80e62ffac9c2d788c19e7f6`; base `0x5cf66918855457266338ded97566f2b2e5e35984`; base `0x5d1e743c3b7b8a952392d19902cb636a8446bc57`; base `0x5ec4214c022d4a1a6c293ca6a613eeb30244908b`; base `0x6014db5542cb8d9f155d3abdbdb9b34bed5a63a9`; base `0x6e28dddd0361fb857818dafb0be06e48c9388100`; base `0x7c73a666e62c2f2a8f750ad1f88ae80ce9efcff6`; base `0x82e7881797a7e79a83cfbe9607ecd82e8bbb67c8`; base `0x896a2feb2cd936b4083e8d13390da2dc78935279`; base `0x90af66c9cf41df3d281f5ab6cf86e2a1619423bc`; base `0x92105474ab102741a73481a40e361d9898248d7f`; base `0x950fa01731b20893439064ced69bda984ffc1d47`; base `0xa1e6d9d906b148b1767bcf04bf7065bc85479285`; base `0xa33f14f1cf02d741e36191d87de64a32bc9a691b`; base `0xa53f1d98824d44d4f3d0aa170a5fdb89755ac178`; base `0xab52f8c11e72d00d4f717a657378ef9b8bf7c2b6`; base `0xad6239235ca1f512c205bcb772db6116363cc096`; base `0xaed99727d7cce74101f654be79671536e09aa7dd`; base `0xb077e7b9fa2a0f1045316426ce16d87ac0853b54`; base `0xb2fe049f32f1394a1f9088cf93320bf3adc148ae`; base `0xbbaa5afec5d31c748537e3ced7fdf1752b5c893f`; base `0xbefa9d5ebd5dfb86a26694811b4c54ad29a8c988`; base `0xc128e9e66ca3c8135b55906838c6201277077db4`; base `0xc27d159513c951e6e9713cc916fd6b783be85521`; base `0xc38f80096ead25adde7ab88df5267f3c0becbd0d`; base `0xc43d787af0f57328da3fd4f0dd9b3b600dd4f91a`; base `0xc5664a1b5a96b6fca3c837be3029796158a32d4f`; base `0xc7037f66b6572e605dd7609a850b68b1e7ef666f`; base `0xcced0bdddfb6301ab09899d4829228845dbc310c`; base `0xcd2e4fd7f632be22852a5dc436b336f0ce168ec1`; base `0xcf33e40099fb20d8dc6729ef8dd9f8633a779967`; base `0xd29e128c4f2222de8dad9762f269a2a3307712af`; base `0xe865a28c24cdf7d79b5d42d78bc730da8562c929`; base `0xeccfe1cabfa17d4684d5244e594d4ccc1d7d9eb8`; base `0xee49e448c7992719c48e76412e10d8f806365131`; base `0xf1050afb771aec5af4b0e193c23ad0ed5084a4a3`; base `0xf3b0abf511ba6c993b39c1f4ad72b5fb18a1d4d1`; base `0xf3f647f03dd6cc68a14661c1349fbadda6d05e2d`; base `0xf6c04c9927e2b21b9634b4746ae7f21171ce0e4c` | ⚠️ Unaudited |
| V3Oracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-253059 | `0xe0151d335a6c4ab0600ae4000a9caaf7b236072f` | ⚠️ Unaudited |
| V3Oracle | operational_periphery | project_anchor | own_supporting | 0 | base | unit-253131 | `0x31c8ae1e4d7a1788536ac19c92ce3ebae3f4731f` | ⚠️ Unaudited |
| V3Utils | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253045 | `0x371a339d21a45d874f1399a4e060b6931f423e8c` | ⚠️ Unaudited |
| V3Utils | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253054 | `0xae8999da4d81cb81b42288b12176fe20d7ead578` | ⚠️ Unaudited |
| V3Utils | unknown | project_anchor | own_supporting | 0 | bsc | unit-253103 | `0x2b19718f8f28c17e3fec92e937d58c477584d773` | ⚠️ Unaudited |
| V3Utils | unknown | project_anchor | own_supporting | 0 | bsc | unit-253112 | `0x81835416ba59810cf0716ae2b1334f2ed6c53392` | ⚠️ Unaudited |
| V3Utils | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253120 | `0xae8999da4d81cb81b42288b12176fe20d7ead578` | ⚠️ Unaudited |
| V3Utils | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253122 | `0xd81a68fca163b772f0346881fd98aa1d41aad97d` | ⚠️ Unaudited |
| V3Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 28 deployments: ethereum `0x3f133fdef960406579bfdcb507676122f047b747`; ethereum `0x531110418d8591c92e9cbbfc722db8ffb604fafd`; ethereum `0xa851b72a4d548ef7f0a272c66b9e79fecb4e5627`; ethereum `0xab52f8c11e72d00d4f717a657378ef9b8bf7c2b6`; ethereum `0xd656833ebee729d753e600b353d7d4ca6571161c`; ethereum `0xde1734bbb63409165e829f456d853b021836eeb7`; optimism `0x2a017f2fb369f4ca061b8d8a922bb05100e8f8c3`; bsc `0x6da6ed7e4ae8fba251686ae21a250fbf86dd5f18`; bsc `0x839706d3c77f57ed8d5bc3f6961df74246305e9d`; bsc `0x89941a1574937aff3e02700b7667b5ef945e05b2`; bsc `0x91403a697c57a4fb585fc248c315a81ecacdfee6`; bsc `0xd694b3403d63338a2e3d72fd0609279ad80909ca`; bsc `0xedfc4481f53447f2ea4c1db24cf906a6c7cb0782`; bsc `0xf6d2daf6fd57b1498d60dfe2237c9b7f5735a376`; polygon `0x034f0e78cf205d7f43ebe7878434afd7f4b32da2`; polygon `0x28ef5a3de94b7c5bd4d4acda8524d63ea353b44d`; polygon `0x321f134c16d4a2c8f87fa617084721e4b96b2002`; polygon `0x65565703cd1cab8898abbdbc388550f9dbd07708`; polygon `0x7763424f9a29263ebd6f269122e6db2562f8cd81`; polygon `0x8c925768c793e00c095135b8656d6014ee2d07bb`; polygon `0x8cc7f8846d1ba5fef80a16f5526eb9e8c7a6f548`; polygon `0xb894957db69da797327b38aef871d51554ee32d3`; polygon `0xd6bafb7c9eeb15d20652f568b3f4f49d0f07ca4a`; base `0x7d1f9fc22bed0798cda3fdb18b14a96fc838b9e1`; base `0x85f7d1747ef8c566d04fcdff3e5fdb8c750f3f85`; base `0x98ec492942090364ac0736ef1a741ae6c92ec790`; base `0xde1734bbb63409165e829f456d853b021836eeb7`; arbitrum `0x95a8cc9ab71b26bdacbe6a7ccf519456edc2a164` | ⚠️ Unaudited |
| V3Utils | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253133 | `0x3eb0fffa1470cdd3725b9eb29aded2736144b078` | ⚠️ Unaudited |
| V3Utils | unknown | project_anchor | own_supporting | 0 | base | unit-253135 | `0x5b2f7cc65f8eb6222289c714547b9ab22db86be5` | ⚠️ Unaudited |
| V3Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-253052 | `0xa2754543f69dc036764bbfad16d2a74f5cd15667` | ⚠️ Unaudited |
| V3Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 38 deployments: ethereum `0x36aeae0e411a1e28372e0d66f02e57744ebe7599`; ethereum `0x4d858ae66ffe94c1ab40da15275a3a8e2d79349a`; ethereum `0x674afc4d8a04984ba8c64858e9a833f5375a045c`; ethereum `0x68e7cbf0072dfdf9da73058f04e3237766dd0adb`; ethereum `0x7f48e62386c51880415ef814b9abfddf3ee5fde0`; ethereum `0xca6b14a648ecfd4762bd92fe6bcf135b15f3e459`; ethereum `0xdc4f386078e248519b69177ecc49bf9949a2b518`; base `0x02c51413a0c76af2c71d74cfadb414a0ed1528cd`; base `0x1625d8ec0eff80cbcca49cd465ae11a2b318971f`; base `0x22ce292d882c7799183949509b011512352454cb`; base `0x2736e689d5828d89f7181895def8c6518c5f302d`; base `0x33a8abf9ebc9d971a231c71402ba90e8d9c901a6`; base `0x348633df128b52d55952adb865d1b67c3eaa988d`; base `0x3a23ec541901fb0ee5e43e5ac2f2ca5697563d3a`; base `0x4aba43594236320c85976e75eaa2cc660041904b`; base `0x50a854e1c996220cfe7bdd0667cd5d2641ac154f`; base `0x5166463c55710260f8c45a035a1a49860722a7a0`; base `0x55fe009244938d68f9ec13ad900b680bbf7a2619`; base `0x632fff4a31aefd42ca372071c94ec571c6dc6564`; base `0x77f769dad2e036cc675c1021e8b7317a590fc5f4`; base `0x82132b2660e6846e07fb176d23d1bc391931c758`; base `0x89941a1574937aff3e02700b7667b5ef945e05b2`; base `0x93db99aeb08e44d21f4eb2af247b9dc6f1eccd26`; base `0xa1ccfb5b47fa4e5c403aeb0aa45f1b8047005859`; base `0xa2ffbeb14e0156712ee74c9e60ec03f68a8f66b5`; base `0xb0a1a917a142d1fdca4d37d43bdd553f0e53a639`; base `0xb1284d7007b2142ad79ceb7c00193c57adbe3cd3`; base `0xb4694159ef30fa21bcc9d963c7fa3716b0821e38`; base `0xc09d7d451bc07becd8b8fe1e6a03ff4974c69084`; base `0xce56140e8eed0cdd2c6407abb980f2e0e9d67460`; base `0xd4c6175d01970d005c0233e9e30bc4613bb06156`; base `0xd70c799e090450cad94a8423af42602684a1c384`; base `0xdfeba94bc072294b57bd80451f2b65d729a55adc`; base `0xdff54fd62bfd681e707cce95579447721e994054`; base `0xe91793e53965efb045fe2b8a9e40c89d9617c3d9`; base `0xeca1836f6b1580fe15f6ca70dfaa4e39c83e6466`; base `0xed8125d6941c8d7b23d933892a1f505152cf9d55`; base `0xff86e457750abc2127b9442439495cc8f1e4a305` | ⚠️ Unaudited |
| V3Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-253132 | `0x36aeae0e411a1e28372e0d66f02e57744ebe7599` | ⚠️ Unaudited |
| V4Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x01d050d6c303c5861e83b00f2c9a218039b0699c`; ethereum `0x2dba3725ad5f9f266391187b1e6e91296e32fd1e`; ethereum `0x6323434c7ba299ccde3c56fa5cd8d8e26d4f255b`; unichain `0x4a8c2bdf0d8d2473b985f869815d9caa36a57ee4`; unichain `0x5411894842e610c4d0f6ed4c232da689400f94a1`; unichain `0x6a5023628e1a9a811548a99291f8d5d5cae1dfb3` | ⚠️ Unaudited |
| V4Utils | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253060 | `0xe162e02ed718f94ac70336fba69ff86f2918436d` | ⚠️ Unaudited |
| V4Utils | unknown | project_anchor | own_supporting | 0 | unichain | unit-253074 | `0x84b41aea9fe0d7a840d699d840c5fd78f20efe65` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (167)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bb2029f83dbb178ca3333a67c09391701cfcfaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34961669f9318e41871071b607ee324c4e404e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b2252733dd27c30e757b8d47cafc1943baf9fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c5ca5e97a626ee880c374590e31653bfc60b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71e8cbdce0b1350fbda40ed10bfeb6a399561eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f7801fb608a4f513c1c6d3ab6efb5c6dbb081a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2feaca6d2f125113e841aabc106a5065cfc70ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d7e41603088412fb2d6bbd6f36943a54f3341e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c04c9927e2b21b9634b4746ae7f21171ce0e4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253064 | `0x3322ac2d080dafb4a312929d97d51d66764742b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41c84fe367bb1b517fea383e66c4bf304f30eb47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253067 | `0x6d55aa15e84bd5847b13bab3245c06b05917d3da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253068 | `0x6ee80279c057f17a3c7d5a9aa3e52ac304861e71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253070 | `0x9377ff26ea172bb61596d730ec4eeee78232ccab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253071 | `0xae8999da4d81cb81b42288b12176fe20d7ead578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbdd1d443118554feb151406622a3b586992b49d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-253073 | `0xd5c6057a3fa473431975e6d28e4e858544ecf4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09f9e51b73b1d8545452f061fe354c816aa73e89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253104 | `0x317202b11add82232d06bc13892cd22e38d505d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c09c193ccd4bef8ea07b0b2a13cb6ef7df97994` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253114 | `0x98ec492942090364ac0736ef1a741ae6c92ec790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x069cac489d2ab31dbf73ed5e4940bddad3432d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x0bc36a9cc6ee1c9ba64f90ef99faf18ad497d68d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x0e574261a0b6a1ae0ba16b80c604d6b5482ec2ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x14644e5892b67c1e67cabc9979db07e9f6ac4534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3eb0fffa1470cdd3725b9eb29aded2736144b078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x7443d4e4da6f979a7ba941e66df795e55d25fde0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x8b29cb5a7e5e8a475aadac579fb0d12fed75036d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xca7134443f4bd65c4f7ab30983858c239d88b906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x040150f5087c87cec0494db461d649b1748e9a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05d89969a31ced162e7d2c17410aa4c691c873d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05ec8e813ffc35b8b928ee5a5482d7a5bf362778` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253075 | `0x08ad36649da1271124533d36dccacb1e00e37533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11e9d2a7264683bd9de15ef1919ea2ddffa4e67f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1281341d15d26cec6e24135278f731025fb08c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1516e9ad5f0f678d8e4c25ad01cb4f0df368f02a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b7c0d77e796832b2681b1cf3448a04d2f50221b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20f23a7eaa2ba21cab58558ed9d4e2a6e9850a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25da60b30009702440914e1ff0445674a4380c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x274e2ad63aacc16728cfa5a2fb5ed2e95fcc78f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x281395f918c09d9f523e4b8f2a5afcce947a4b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x285f67fab3fbcc3dcb9a22efee05b65359fe7b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d7ebf4a86506cd4d0916fec65f78b4bd748e3a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fa681f14bc1b4c8827cbb1721962a8a4cd6c1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x400677ba04bab91415a707d34d743d7a9897bc72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4109587c59f7aa1c56ff714e9a439c43dfb1be69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4202817eba4ec4c0cdbe7728d86d22cbc23375c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x478f6aa6e7056c5798c74eb66a5e383c4dffa475` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-253077 | `0x4ec6f2c562b811ec363e20df143745737452108f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5252a4633840feba8be05b5b88409543b1508398` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253079 | `0x54ebb4815326d922a93339f37dcbbf0d2fe2864e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253080 | `0x55d5889211e33296eb1d9087b8a8d7dd89edfbf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5835e305c27f1025697a4dd148967f433a09710f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5da73ad0590a130f2848e5d161de6885a6240ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x654048ac424e087e887b902505739b6368fdcacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a7303aadc211142452b1fb2c9a51635373d8133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e47887dc6cbc6d50c926204a1cdf6cc9433f2be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e6f723f068db8c3f8123b98096006b16b0849e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7021333a3466dda1b5bc0b5d85df3dce803bc863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74e97af10ca309a4fcb6abc7e49e8eecedd3874e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78c583b48f2114c499769d347d0f2cfea3e1e6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7dc5e260824a0fe3c80aa46bbd4857081583a2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f30c47dd486a3555ae559a120181e8ef2ec79d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x84fe3b03d264492b09f3b49095f47594e7006962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x86545d251ab07c96c4e3ee2d7954d58c8463f8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x869089a4e39692f108297b6f6ae024893bb1482f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x884ac5e827ec66c7caa0aa1dd36b51abdac2519b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f03f90e9d30e3b0ba81a74860e1ae382d4e17d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x906086b2b05ff6caaaa2e5dfc4209e2ca4e9697a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x910b30e1947e26a3b5f0024893be593cc2508b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x914f71d6909d23794c0ccfa2f1622f2f33bc12f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253082 | `0x9210a14b2b62607246d453df6ff0860e98aea00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x982f6fcac715bf6d148a3df38df18cd0e5938e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x994ac60960ce9ec93e819eeb505f1e3ef8ff2b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f2d61004c9dc6297984513c1383544fe9aef16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3ab58d97361209a213b53db9effb9c2bcd3e596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac4b3edfbdd36fb125442cfa227a26ded63c32e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253084 | `0xae8999da4d81cb81b42288b12176fe20d7ead578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf40047fa8726f65f48b7291aaa60457d89ca3c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb71154a0e50edc9b4a714a90d348db7f220d9562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9cdfd71c2cccb6a2934841f255cddeff24168b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe05435db4d2e35670fd046b21fc5a8fb02d83b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf578e3ca17b601b10abf3acb57c2318fbc68563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc04235fe23c23f8a4ffa0d6cfdb0acda14915b26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd78e551f7ed3105e5a722807cfe6484519f70de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4dca145be4c530a26570b6d469fcded1d1d49d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd679243416654668db94b1dba7010c3a95ae6b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd782902b1e1fccd31d8be65538b194fc6c135cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd7c3c210a15479354876dc7eb51fab8cc81e0c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8557c31354f9e6672c295b222c687763e9415cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc5f0fe0d8ab81297a8b209c25b627ac2230283a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8b834c997032a611974755efc5716ccc1cd9c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea12b8248c4adafd70b6d72b1de6b7b9c7b3fe1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf27d83b94f3537ab8a234ee5cf7fe5e51191184d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4da62f7865ed93578b8dd3e7bc6c5f85625e8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8ff2b22fd8aed40d1d126df413d63762bc4c24a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253126 | `0x043e2ff28db24061d46629b999a358a24c784c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07e73f3223ae746577bc5254db2bb838d6cd3666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a9732dbf587e7c54c75d88919bf1e60afa84d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b14fe4a7d5479ef99651275774568f87d602e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c01040f642901dcfa8371bf0d04b64cef443913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d73c202d90a2c03aa8c85c2d827663d5cef5e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bb920e7699449811cce56dcdd134dfb7f118be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c4888f81c711e558e8d12439f17aebd04008488` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253129 | `0x1ef7c181188687e20a9750714f1b9de6f70f17c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253130 | `0x2309a5ae06e86986a6f27b81a53cc31fc1b55b0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24e4d4b5c20ed4219f4d36bc5747b6a483433551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25459efe8cd9474549e2763d4d83934bff7c2e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b80d5345364d2071358ebb1a2d5835c1df0657c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a0724a5b206f942284417b82ed2cb04922d355f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b168c70f72e44bfec6dc1380d038d3e5cd486b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45d88c2cf1cb1f5ef85bbdd5a3934ed1caf13937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4849fb399ccb541d08b29cff7e8ab4b7df0cc7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x511cebfafd4cbd364d643b1b7edfa5d6dd831349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5826e911c021b876c411c2ebad8bebec4a061eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x583c44639ee28156f0a88af57433553bc4cb477d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b6d7aa172133c9404753142d728a5e71f60a126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e515a4028bb83b967d6f345f524eface541b554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f1a4424365cdbeac39fa02b7669673990751e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61c5e2532055da8cff4708d267bd90140d679170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6201588fbf7c3188a1919773eef1a648533321d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64be8d0948b25c51ad0a0def3e237010fb1e7088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c98f8d25deffc814cfffcc2c0a62cde5f7e94ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72cec42bf03a14762dff33e04abd58bbb19bfd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x751d49b327b64670d988dcff5c2ca63dd97d196c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b18b3d5ba36fa0730961b06b47970e7a6aec979` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253139 | `0x82722327e45e86a0f2107746f423f612139b0952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x894aac57f816ab3a733cc8842b7daf29c73e26a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9762bc0fd654dd6d2f0d6c50f33dee21379dea01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b98c7b82df397becea74f030d52ef154d4976de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bb199a7c32605391aa72624c4f520c3a1688394` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253140 | `0x9e29b74336a0d698ad600b3e52729bfda85e0564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa98c3519af6b95e41bafbd7a64614eedf89ebcaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb622b47f2044e0a05d8346a67a855cfbd62d86c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9d6dc7e9d637bf8229b46dbfc167407297e738c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe19d3ffcc47d5e71a1ddcf730189593018eee07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253142 | `0xc171f8c6ed8253151de50ab839e3a468028113f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1ba1ded1eea624306b1de33cdf3fb6484ae0b5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253143 | `0xc35e20379c3267b5f63e569c25959031ac588203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5d3811be91c54fd7591497cd6f73a2cc96dae8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc922792462eafdcea62df63e44aa487a1a8a2a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcac344c7422c06d21a454cff4d3560f8bd1b7fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd627faccda57a93953e1f8b39ce942f69a7ccfe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9f80f80760bf42c67b6d4791fdb45d762dbb698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdaf14e91027809f225d9342f38b55d0b0ba5cb1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf74c94eafdea467aad846718fa033ccf6dffe62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0151d335a6c4ab0600ae4000a9caaf7b236072f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe289a47a26dc1480b06ce93844a00c889ea6c5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe5579bed593a6a989245cb49db2d98f5b08b3a24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7fcaaed529f501e9dd6dd4c41f4c785f8578bb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253148 | `0xeb6127dcfb1e4107dc1f3111151f779920c213dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeca3628f9d94db1c6fbab22ed27cd2f457f1db3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed071ab812c06012aa80ca342fd0c883a8956915` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253149 | `0xf4fcbab7d092a0b46438dbbaa21333f7f07137ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbba68489f8a026b94b7353a57068a4cb43730a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcca37d8f6cbf5d072563e927f2e6e48e994a849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfce7d66264fef40cbcd1c23a7dc8becf5867a3c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253086 | `0x18616c0a8389a2cabf596f91d3e6ccc626e58997` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253092 | `0x9f703bfccd04389725fbad7bc50f2e345583d506` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253093 | `0xa44b95e50932e2792625886d4ed3099b6932645a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253094 | `0xab6998459d767eeab2c58aa0a08b7bb5990e7f1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253095 | `0xae8999da4d81cb81b42288b12176fe20d7ead578` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253097 | `0xcfd55ac7647454ea0f7c4c9ec231e0a282b30980` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253099 | `0xd82e0be376196690aae31372b25cc9025600ab06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253101 | `0xee1e94addc3aec46d16ab9735e262c92824165c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-253124 | `0x4a8c2bdf0d8d2473b985f869815d9caa36a57ee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-253125 | `0x6a5023628e1a9a811548a99291f8d5d5cae1dfb3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [PeckShield-Audit-Report-Revert-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-v1.0.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [HYDN - Revert Finance autoExit_autoRange Audit Report.pdf](https://github.com/hydnsec/audits/blob/main/Revert%20Finance%20-%20Exit%20Auto%20%26%20Range%20Auto/HYDN%20-%20Revert%20Finance%20autoExit_autoRange%20Audit%20Report.pdf) | Hydn Security | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf](https://github.com/hydnsec/audits/blob/main/Revert%20Finance%20-%20Exit%20Auto%20%20%26%20Move%20Range/Revert_Finance_Audit_Report_%20Auto-Exit_Auto-Move_Range.pdf) | Hydn Security | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [HYDN - Revert Finance Lend Audit Report.pdf](https://github.com/hydnsec/audits/blob/main/Revert%20Finance%20-%20Lend/HYDN%20-%20Revert%20Finance%20Lend%20Audit%20Report.pdf) | Hydn Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [code4rena.com/audits/2024-03-revert-lend](https://code4rena.com/audits/2024-03-revert-lend) | Code4rena | Contest | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-Revert-Lend-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-Lend-v1.0.pdf) | PeckShield | Audit | 2024-08 | aging | Direct | n/a | matched | 3 | 0 | 0 | 0 | n/a |
| [PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf) | PeckShield | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf](https://github.com/revert-finance/lend/blob/aerodrome-slipstream/report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [HYDN - Revert Finance Lend - aero - Audit.pdf](https://github.com/hydnsec/audits/blob/main/Revert%20Finance%20-%20Lend/HYDN%20-%20Revert%20Finance%20Lend%20-%20aero%20-%20Audit.pdf) | HYDN | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2043] PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf — matched: No reason recorded
- [2044] PeckShield-Audit-Report-Revert-v1.0.pdf — no match: No reason recorded
- [11995] PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf — no match: The report focuses on the V3Utils contract of Revert Finance. No explicit scope table, but the contract is consistently referenced as the target.
- [11996] PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf — no match: Only SelfCompoundor contract is in scope; no file paths provided.
- [11997] HYDN - Revert Finance autoExit_autoRange Audit Report.pdf — no match: Scope URL points to src/automators directory; findings reference AutoRange.sol and AutoExit.sol.
- [11998] Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf — no match: Scope is the src/automators directory; contracts identified: AutoRange, AutoExit, Automator.
- [11999] HYDN - Revert Finance Lend Audit Report.pdf — no match: Contracts extracted from detailed findings sections; scope section references repository URL but no explicit file list; contracts are inferred from code extracts.
- [12000] code4rena.com/audits/2024-03-revert-lend — no match: The provided text is a leaderboard of participants and their rewards, not the actual audit report. No contracts in scope or audit date could be extracted from this content.
- [12001] PeckShield-Audit-Report-Revert-Lend-v1.0.pdf — matched: No reason recorded
- [12002] PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf — no match: The audit report explicitly states the scope is the V4Utils contract. Swapper is mentioned as a target in one finding. No file paths provided.
- [12003] report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf — no match: The report does not have a dedicated scope section; contract names were extracted from findings and PoC code. The date is from the title 'Revert Finance Competition June 4, 2026'.
- [12004] HYDN - Revert Finance Lend - aero - Audit.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf | Compoundor | own contract | Compoundor (selected) `0x4a8c2bdf0d8d2473b985f869815d9caa36a57ee4` — deployed 2023-08-09 17:31:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Revert-v1.0.pdf | UniswapV3Staker | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf | V3Utils | ambiguous — not counted | V3Utils (alternative) `0x5b2f7cc65f8eb6222289c714547b9ab22db86be5` — deployed 2024-05-28 21:10:09+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x371a339d21a45d874f1399a4e060b6931f423e8c` — deployed 2024-05-28 23:51:47+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x2b19718f8f28c17e3fec92e937d58c477584d773` — deployed 2024-05-28 21:51:39+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x81835416ba59810cf0716ae2b1334f2ed6c53392` — deployed 2024-05-28 21:13:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf | SelfCompoundor | ambiguous — not counted | SelfCompoundor (alternative) `0x48331aec6a59a44fe1648aaa38545ceddbdd747c` — deployed 2023-09-02 02:27:45+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0xad58d1df63afcf090cc930475db3dd3cd8f739ea` — deployed 2023-05-26 18:54:05+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0xb50a397543fb2c7d08c53d5f5331ad8990d3b48f` — deployed 2023-05-26 19:51:59+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0xb43a613f0dd19af1cb1f5d03d8e8e5af04d9f0a1` — deployed 2023-05-26 19:03:14+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0xc5d8fa6439a5a8caa4ab24025751255296f1551a` — deployed 2023-08-09 19:37:51+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0x3c0fd0b42aa46f03f6cf5e305ed9b2ce402847ef` — deployed 2023-05-26 18:58:46+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0x69437b43805c9fff78ec63394474a48c69dd8da6` — deployed 2023-05-26 19:06:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance autoExit_autoRange Audit Report.pdf | AutoRange | ambiguous — not counted | AutoRange (alternative) `0x88481e2fbc98d4a251655b0f1a4422555ea72d9e` — deployed 2024-05-29 00:05:23+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5e54224a75d459f57ac4c76ce7c560a353374a5b` — deployed 2024-05-28 19:26:29+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x87f44220d8895d6b9fc3f80f104a1a6cb87fdca5` — deployed 2024-05-28 19:16:03+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5ff2195ba28d2544aed91e30e5f74b87d4f158de` — deployed 2024-05-28 01:20:30+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa8b9fc43974cc78fe8a137d8c6c48856ab96a493` — deployed 2024-05-28 19:53:05+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa0dc48783d6a5cc58d0ed6016eaa929e14c10ad5` — deployed 2024-05-28 21:49:12+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa8549424b20a514eb9e7a829ec013065bef9dc1d` — deployed 2024-05-28 19:35:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance autoExit_autoRange Audit Report.pdf | AutoExit | ambiguous — not counted | AutoExit (alternative) `0xef4868d67a6dc9f0eb9dbaadfae6f4e78829edf7` — deployed 2024-05-28 23:59:11+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x16e0b91ce6f1c426df6e2a5a295d113e8f596a93` — deployed 2024-05-28 19:36:25+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x1d0d743466b0e65482bc7effd81232354c5ebcad` — deployed 2024-05-28 19:27:45+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xc2c77dd78f6f73aa0553bf3a2108566a40f696b3` — deployed 2024-05-28 19:55:41+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xd0186335f7b7c390b6d6c0c021212243ed297dda` — deployed 2024-05-28 01:21:20+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x32d03c762995e1e90c6f809e13675ac84db223c7` — deployed 2024-05-28 19:16:55+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xa16cf1e8adb706c762a04449cbbf8fa99cb66a58` — deployed 2024-05-28 21:50:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf | AutoRange | ambiguous — not counted | AutoRange (alternative) `0x88481e2fbc98d4a251655b0f1a4422555ea72d9e` — deployed 2024-05-29 00:05:23+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5e54224a75d459f57ac4c76ce7c560a353374a5b` — deployed 2024-05-28 19:26:29+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x87f44220d8895d6b9fc3f80f104a1a6cb87fdca5` — deployed 2024-05-28 19:16:03+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5ff2195ba28d2544aed91e30e5f74b87d4f158de` — deployed 2024-05-28 01:20:30+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa8b9fc43974cc78fe8a137d8c6c48856ab96a493` — deployed 2024-05-28 19:53:05+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa0dc48783d6a5cc58d0ed6016eaa929e14c10ad5` — deployed 2024-05-28 21:49:12+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa8549424b20a514eb9e7a829ec013065bef9dc1d` — deployed 2024-05-28 19:35:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf | AutoExit | ambiguous — not counted | AutoExit (alternative) `0xef4868d67a6dc9f0eb9dbaadfae6f4e78829edf7` — deployed 2024-05-28 23:59:11+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x16e0b91ce6f1c426df6e2a5a295d113e8f596a93` — deployed 2024-05-28 19:36:25+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x1d0d743466b0e65482bc7effd81232354c5ebcad` — deployed 2024-05-28 19:27:45+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xc2c77dd78f6f73aa0553bf3a2108566a40f696b3` — deployed 2024-05-28 19:55:41+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xd0186335f7b7c390b6d6c0c021212243ed297dda` — deployed 2024-05-28 01:21:20+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x32d03c762995e1e90c6f809e13675ac84db223c7` — deployed 2024-05-28 19:16:55+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xa16cf1e8adb706c762a04449cbbf8fa99cb66a58` — deployed 2024-05-28 21:50:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf | Automator | unmatched — not counted | — | mentioned in findings and scope | no |
| HYDN - Revert Finance Lend Audit Report.pdf | AutoCompound | ambiguous — not counted | AutoCompound (alternative) `0x7c81247ae0a35b03e3f4a704dcd6b101dca53abd` — deployed 2024-05-28 20:44:47+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0x9d97c76102e72883cd25fa60e0f4143516d5b6db` — deployed 2024-05-28 01:26:48+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0xbe931744bf0b4c4c580d375de04ee7fc2f52c568` — deployed 2024-05-28 19:17:23+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0xf887e57ad9114bb31c7506890efc181f355e9783` — deployed 2024-05-28 19:28:29+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0x843fe45972f638a2e7065b8d8b54efcfed09b72b` — deployed 2024-05-28 19:56:59+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0x0bf485bd7ebb82e282f72e7d14822c680e3f7bec` — deployed 2024-05-28 19:36:51+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0x3b1767957d08ddc60493d35d812c66e2d52bd875` — deployed 2024-05-28 21:50:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | AutoRange | ambiguous — not counted | AutoRange (alternative) `0x88481e2fbc98d4a251655b0f1a4422555ea72d9e` — deployed 2024-05-29 00:05:23+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5e54224a75d459f57ac4c76ce7c560a353374a5b` — deployed 2024-05-28 19:26:29+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x87f44220d8895d6b9fc3f80f104a1a6cb87fdca5` — deployed 2024-05-28 19:16:03+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5ff2195ba28d2544aed91e30e5f74b87d4f158de` — deployed 2024-05-28 01:20:30+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa8b9fc43974cc78fe8a137d8c6c48856ab96a493` — deployed 2024-05-28 19:53:05+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa0dc48783d6a5cc58d0ed6016eaa929e14c10ad5` — deployed 2024-05-28 21:49:12+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa8549424b20a514eb9e7a829ec013065bef9dc1d` — deployed 2024-05-28 19:35:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | V3Utils | ambiguous — not counted | V3Utils (alternative) `0x5b2f7cc65f8eb6222289c714547b9ab22db86be5` — deployed 2024-05-28 21:10:09+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x371a339d21a45d874f1399a4e060b6931f423e8c` — deployed 2024-05-28 23:51:47+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x2b19718f8f28c17e3fec92e937d58c477584d773` — deployed 2024-05-28 21:51:39+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x81835416ba59810cf0716ae2b1334f2ed6c53392` — deployed 2024-05-28 21:13:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | V3Vault | ambiguous — not counted | V3Vault (alternative) `0x74e6afef5705beb126c6d3bf46f8fad8f3e07825` — deployed 2024-08-08 01:15:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0x36aeae0e411a1e28372e0d66f02e57744ebe7599` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0xa2754543f69dc036764bbfad16d2a74f5cd15667` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | LeverageTransformer | ambiguous — not counted | LeverageTransformer (alternative) `0xe5047b321071b939d48ae8aa34770c9838bb25e8` — deployed 2024-08-08 01:20:02+03 — liveness: live (current_address_book_code)<br>LeverageTransformer (alternative) `0x5e97a478184993d3e376eec00b603f80463d9b23` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>LeverageTransformer (alternative) `0xbaea7f73569456096fcf38ae34242c52ca227b1e` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | Automator | unmatched — not counted | — | mentioned in findings | no |
| PeckShield-Audit-Report-Revert-Lend-v1.0.pdf | FlashloanLiquidator | own contract | FlashloanLiquidator (alternative) `0x6bcb1ae7b3aec6086066dc4348dc679c93eeac5b` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>FlashloanLiquidator (alternative) `0xa44080f20464de260e25f35a69d6bda50f2cc79d` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code)<br>FlashloanLiquidator (selected) `0x5b94d444dfba48780524a1f0cd116f8a57bfefc2` — deployed 2024-08-08 01:19:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-08 was 7d from audit; next candidate 322d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Revert-Lend-v1.0.pdf | LeverageTransformer | own contract | LeverageTransformer (selected) `0xe5047b321071b939d48ae8aa34770c9838bb25e8` — deployed 2024-08-08 01:20:02+03 — liveness: live (current_address_book_code)<br>LeverageTransformer (alternative) `0x5e97a478184993d3e376eec00b603f80463d9b23` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>LeverageTransformer (alternative) `0xbaea7f73569456096fcf38ae34242c52ca227b1e` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-08 was 7d from audit; next candidate 322d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Revert-Lend-v1.0.pdf | V3Vault | own contract | V3Vault (selected) `0x74e6afef5705beb126c6d3bf46f8fad8f3e07825` — deployed 2024-08-08 01:15:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0x36aeae0e411a1e28372e0d66f02e57744ebe7599` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0xa2754543f69dc036764bbfad16d2a74f5cd15667` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-08 was 7d from audit; next candidate 322d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf | V4Utils | ambiguous — not counted | V4Utils (alternative) `0x84b41aea9fe0d7a840d699d840c5fd78f20efe65` — deployed 2025-11-18 07:35:58+03 — liveness: live (current_address_book_code)<br>V4Utils (alternative) `0xe162e02ed718f94ac70336fba69ff86f2918436d` — deployed 2025-11-18 07:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf | Swapper | unmatched — not counted | — | Mentioned as target in finding PVE-001: 'Target: Swapper, V4Utils' | no |
| report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf | V3Vault | ambiguous — not counted | V3Vault (alternative) `0x74e6afef5705beb126c6d3bf46f8fad8f3e07825` — deployed 2024-08-08 01:15:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0x36aeae0e411a1e28372e0d66f02e57744ebe7599` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0xa2754543f69dc036764bbfad16d2a74f5cd15667` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf | V3Oracle | ambiguous — not counted | V3Oracle (alternative) `0xe0151d335a6c4ab0600ae4000a9caaf7b236072f` — deployed 2025-06-19 01:50:23+03 — liveness: live (code_present_context)<br>V3Oracle (alternative) `0x31c8ae1e4d7a1788536ac19c92ce3ebae3f4731f` — deployed 2025-06-19 20:22:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0xb50dafe03fee68595ab2baad3c16f899421f063b` — deployed 2025-06-19 01:50:23+03 — liveness: live (code_present_context)<br>InterestRateModel (alternative) `0xd0524a77c8e2bd22b1f57268fd6bea1973ac7927` — deployed 2025-06-19 20:22:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf | GaugeManager | unmatched — not counted | — | mentioned in finding 3.1.3 | no |
| HYDN - Revert Finance Lend - aero - Audit.pdf | GaugeManager | unmatched — not counted | — | — | no |
| HYDN - Revert Finance Lend - aero - Audit.pdf | Vault | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7c81247ae0a35b03e3f4a704dcd6b101dca53abd` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbe931744bf0b4c4c580d375de04ee7fc2f52c568` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3b1767957d08ddc60493d35d812c66e2d52bd875` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x843fe45972f638a2e7065b8d8b54efcfed09b72b` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf887e57ad9114bb31c7506890efc181f355e9783` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0bf485bd7ebb82e282f72e7d14822c680e3f7bec` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9d97c76102e72883cd25fa60e0f4143516d5b6db` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xef4868d67a6dc9f0eb9dbaadfae6f4e78829edf7` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x32d03c762995e1e90c6f809e13675ac84db223c7` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa16cf1e8adb706c762a04449cbbf8fa99cb66a58` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc2c77dd78f6f73aa0553bf3a2108566a40f696b3` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1d0d743466b0e65482bc7effd81232354c5ebcad` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x16e0b91ce6f1c426df6e2a5a295d113e8f596a93` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd0186335f7b7c390b6d6c0c021212243ed297dda` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x88481e2fbc98d4a251655b0f1a4422555ea72d9e` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x87f44220d8895d6b9fc3f80f104a1a6cb87fdca5` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa0dc48783d6a5cc58d0ed6016eaa929e14c10ad5` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa8b9fc43974cc78fe8a137d8c6c48856ab96a493` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5e54224a75d459f57ac4c76ce7c560a353374a5b` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa8549424b20a514eb9e7a829ec013065bef9dc1d` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5ff2195ba28d2544aed91e30e5f74b87d4f158de` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa44080f20464de260e25f35a69d6bda50f2cc79d` | FlashloanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6bcb1ae7b3aec6086066dc4348dc679c93eeac5b` | FlashloanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb50dafe03fee68595ab2baad3c16f899421f063b` | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd0524a77c8e2bd22b1f57268fd6bea1973ac7927` | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbaea7f73569456096fcf38ae34242c52ca227b1e` | LeverageTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5e97a478184993d3e376eec00b603f80463d9b23` | LeverageTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb50a397543fb2c7d08c53d5f5331ad8990d3b48f` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3c0fd0b42aa46f03f6cf5e305ed9b2ce402847ef` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x48331aec6a59a44fe1648aaa38545ceddbdd747c` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x69437b43805c9fff78ec63394474a48c69dd8da6` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xad58d1df63afcf090cc930475db3dd3cd8f739ea` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc5d8fa6439a5a8caa4ab24025751255296f1551a` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb43a613f0dd19af1cb1f5d03d8e8e5af04d9f0a1` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe0151d335a6c4ab0600ae4000a9caaf7b236072f` | V3Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x31c8ae1e4d7a1788536ac19c92ce3ebae3f4731f` | V3Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x371a339d21a45d874f1399a4e060b6931f423e8c` | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2b19718f8f28c17e3fec92e937d58c477584d773` | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x81835416ba59810cf0716ae2b1334f2ed6c53392` | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5b2f7cc65f8eb6222289c714547b9ab22db86be5` | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa2754543f69dc036764bbfad16d2a74f5cd15667` | V3Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x36aeae0e411a1e28372e0d66f02e57744ebe7599` | V3Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe162e02ed718f94ac70336fba69ff86f2918436d` | V4Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x84b41aea9fe0d7a840d699d840c5fd78f20efe65` | V4Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 80 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 167 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 15 ambiguous, 7 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1, medium=1
- Match method counts: temporal_name=3, unique_name=1

Zero-match audit list:

- [2044] PeckShield-Audit-Report-Revert-v1.0.pdf
- [11995] PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf
- [11996] PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf
- [11997] HYDN - Revert Finance autoExit_autoRange Audit Report.pdf
- [11998] Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf
- [11999] HYDN - Revert Finance Lend Audit Report.pdf
- [12000] code4rena.com/audits/2024-03-revert-lend
- [12002] PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf
- [12003] report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf
- [12004] HYDN - Revert Finance Lend - aero - Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
