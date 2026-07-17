# Agentic Audit Brief: cSigma Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: cSigma Finance (`csigma-finance`)
- Website: [https://csigma.finance](https://csigma.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum
- Contract surface: 68 unique implementations (210 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $12,657,681.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for cSigma Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base, ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (1 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 67 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 30
- Confirmed-live implementations: 1 of 68 unique; 67 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/56
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 68
- Raw deployments: 210
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| QuillAudits | Tier 2 | 1 | 1.8% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Sigma | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234584 | `0x53162ec0adae49f21515bb8ca91534dd3872c8db` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x45dcf4f9d1b47c138bc1e490a878790932d66caf`; base `0x1ad263d2521382db8a5d12c22586e0af1f37e5ed`; arbitrum `0x1ad263d2521382db8a5d12c22586e0af1f37e5ed` | ⚠️ Unaudited |
| CreditPoolFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: ethereum `0x05c55c355d90d8dc98fec2b2c07872c9b35271b6`; ethereum `0x2bf7e1df2d9b587787bedbe68cb0b446d2750a6e`; ethereum `0x4c158bfe194df7b74a4fd3d316017615229192dc`; base `0x37bdd789a515140593ece202365e5987c9f11d41`; base `0x9b1463b8f110f927eb49e908b597624d52fcddb4`; arbitrum `0x057d1f972887c7b99048a050249d6b726831e9f0`; arbitrum `0x9b1463b8f110f927eb49e908b597624d52fcddb4`; arbitrum `0xecc7c76a6399eea4e2f7602ff95e1a1b5567c068` | ⚠️ Unaudited |
| CsigmaAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1abee07cc868b50b9fce2d151ea678c3e7ac2b38`; ethereum `0x3936eb150e761ebbacf438fdabeabff67035446f`; ethereum `0xf29b38b0696827722a51b3ea7f6a65d06abfaafa` | ⚠️ Unaudited |
| CsigmaPDN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53162ec0adae49f21515bb8ca91534dd3872c8db` | ⚠️ Unaudited |
| CsigmaPDNInvestmentNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad3f5b5a59f5b0d46b0bb629e22bd12f2e6f4e4b` | ⚠️ Unaudited |
| CsigmaPDNv1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x2a4eb45a52ebcae4ab62959088ca1c7c0a6e817d`; arbitrum `0x447683715f000cfeaf8d2c6c23a6b501408172cc`; arbitrum `0x85e700e92dde9904009ac116251b5598c8534e17` | ⚠️ Unaudited |
| CsigmaPDNv1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x67a1fc35961dd0e293bb4481b48491adf95b1395` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3cafaa19816b8b23245b6c4dbe7649efc38b3b18`; ethereum `0x94facc004d8eb2a94c552ee4334cdff5820fdbb4` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x057d1f972887c7b99048a050249d6b726831e9f0`; base `0x6cbaf736d2ee502fea9b40ee68efadd782070c11` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x05acd1f16f0dee7e72367b076d31e68c2cab0571`; arbitrum `0xee379488d292d9ab71a587fc1352ddfab56652d6` | ⚠️ Unaudited |
| CsigmaPermissionedFundManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xa9fca7db51e12ee7ef9e2bf7a7349e36d9bd2330`; base `0x7ce6432a0e69235db7f24d09f99829937616063b`; arbitrum `0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a` | ⚠️ Unaudited |
| CsigmaPermissionedPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xe27cd6e19c63411e948005310b0457fc1f85d411`; base `0x85e700e92dde9904009ac116251b5598c8534e17`; arbitrum `0xc6014a75a576c1517221ef133bc80e19b9527dd7` | ⚠️ Unaudited |
| CsigmaPermissionedWithdrawalManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x25f7e3b56bf360250f94307fb22aa9b8049dacb9`; base `0x4c158bfe194df7b74a4fd3d316017615229192dc`; arbitrum `0x5acb4882ccd0171efb9ea32e70aa5a05978153d1` | ⚠️ Unaudited |
| CsigmaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8c91481314de612ec55b96cf12ca121f20bf9302`; ethereum `0xe2e965cf81736374b46ee21992b2821816a2c79f` | ⚠️ Unaudited |
| CsigmaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcdda7e103c87d35d43108539f24aec1eaa655a8d`; ethereum `0xd5841c0f0c1c5438894e4218f08915cbf2191e8e` | ⚠️ Unaudited |
| CsigmaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb8eb879cf35694078c34bd2a0efc08fa5041a674`; base `0xf5c36df3003131b4fd48bffce31ca0f2aa4cbe08` | ⚠️ Unaudited |
| CsigmaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6d617583345b200ec5d9f93594509f335103581d`; arbitrum `0xf1f0b8f6f4cef382323fbef945a3343b5986dd08` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x79cda4f5f712f15261b0944fb2bc8ee637700aea`; ethereum `0xcbf2e530ac5e0ef6436026d3b2d6f2398156572f` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x447683715f000cfeaf8d2c6c23a6b501408172cc`; base `0xa77b86b8d81b763445b6d3ffab8145265dfae0b4` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x920296afd1140faf368a1516986d84752e56655e`; arbitrum `0xddced77ef91da43dbe422a91ed89d8804c7a6920` | ⚠️ Unaudited |
| CsigmaUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x04d15cea4bd7ced196c24ce87a0190b9a72c5374`; ethereum `0x1708c20b8008158749e580ffb68bbdb733a3adf9`; ethereum `0x183d14959aa391bdaa7a737d5e740830af6594b0` | ⚠️ Unaudited |
| CsigmaUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x347aec0dabb6d2ffd8bb735b2b79b334107ea535`; ethereum `0x9eabed51bf7956680044f07ea21402814f89c246` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb5337c2e320d61be3511216b9b4d32b2c41f3e55`; ethereum `0xd45b271eac3cef6efb6f19424f5fdff820909547` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: ethereum `0x4c28f5c87e5557db971c9a2f862bfdcf9f561bd4`; ethereum `0x5334b6b759c51536d8cf458b176a1e7b22cd2a3a`; ethereum `0x920296afd1140faf368a1516986d84752e56655e`; ethereum `0x929658707b517f002cc5c5eeb6c430f12e04189c`; ethereum `0xce5ca6f65ec74cda95bcb0aad82d7084682e5d75`; base `0x2d24d42a447ba1f782f85665f3d0a71097fabb32`; base `0x67a1fc35961dd0e293bb4481b48491adf95b1395`; base `0xb5337c2e320d61be3511216b9b4d32b2c41f3e55`; base `0xf6d6ef26d7d584ed8a89b87348f61506c89ab9c9`; arbitrum `0x54c475fc3275496744eb5bb1730e6cb835f9cec0`; arbitrum `0x7ce6432a0e69235db7f24d09f99829937616063b`; arbitrum `0x7d613bd963d1258c0bddcadc5aac98e2d0ef72c8`; arbitrum `0x82c3696c2ae79705f8281d61e1e6d66730de79e3` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4cee88aa3fc282c7215fde69ef91b28122256156`; base `0xe76c20761bfcd471196bb61f68250daf3da3568b` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4c28f5c87e5557db971c9a2f862bfdcf9f561bd4`; arbitrum `0x63da09d5f3622b104145728abc73ebf2cdbf6d61` | ⚠️ Unaudited |
| CsigmaV2FundManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x2e0ae02141f79b5c61219b6d6996720edfb058da`; ethereum `0x7d613bd963d1258c0bddcadc5aac98e2d0ef72c8`; base `0x2c787e74af551ae67feb2dec611166851729510b`; base `0x47a290f03420af9cb179c69d0a814c80350ca5d9`; arbitrum `0x6219e9a585c83c26490e38b191c9f1ed203630cd`; arbitrum `0xd5f273ff399930fce1ce4b24b9ff6a57889a4776` | ⚠️ Unaudited |
| CsigmaV2Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 25 deployments: ethereum `0x057d1f972887c7b99048a050249d6b726831e9f0`; ethereum `0x1f75fe91bf062a181f4111bca97be9fb07140f41`; ethereum `0x27bd349fa50bc4cb78d559fcb48f85952fb53120`; ethereum `0x95c144f33ca6c28fb7a5b50809a7ba57f2a6e3ac`; ethereum `0xa5b7555775a33ca79818702f63b34b14dc9aec4d`; ethereum `0xc1f0b4a3137d1cd884eaa69fa4f1e2496b51dd77`; ethereum `0xddced77ef91da43dbe422a91ed89d8804c7a6920`; ethereum `0xe818536c01c5aaa417523b7bf061a4a79c9f3239`; ethereum `0xea7171e5ad78c38c054e83cc9e5310d2bdc2abb1`; base `0x188bb2c3d514b7500e06a9024b089f096430c986`; base `0x2a4648de77365e4eb24d54134452dc1b52ce2b4d`; base `0x2a4eb45a52ebcae4ab62959088ca1c7c0a6e817d`; base `0x6609d3da21de9da07767a12198cd1a70f4e3f8c8`; base `0x95c144f33ca6c28fb7a5b50809a7ba57f2a6e3ac`; base `0xc1f0b4a3137d1cd884eaa69fa4f1e2496b51dd77`; base `0xef31a05eca5c2f70d98fdb12b406902cd98590f3`; arbitrum `0x2d1dda9457c8ec31d6f48f4b8538720893fd440b`; arbitrum `0x3c6afeb7345c9954e45e9e2ca4eb060ea27b81cf`; arbitrum `0x4cee88aa3fc282c7215fde69ef91b28122256156`; arbitrum `0x6cbaf736d2ee502fea9b40ee68efadd782070c11`; arbitrum `0xa77b86b8d81b763445b6d3ffab8145265dfae0b4`; arbitrum `0xc1f0b4a3137d1cd884eaa69fa4f1e2496b51dd77`; arbitrum `0xce5ca6f65ec74cda95bcb0aad82d7084682e5d75`; arbitrum `0xf31c53ccf07276f02c3ee5581ec8fac83db485be`; arbitrum `0xf7d38d771051d2d06508b5c6a9cca1aab6e05b7d` | ⚠️ Unaudited |
| CsigmaV2StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x7987106861d7a53f222375cab58b39cd0722c60e`; base `0x5da8756917471702ea8642e849872b01c545924a`; arbitrum `0x7987106861d7a53f222375cab58b39cd0722c60e` | ⚠️ Unaudited |
| CsigmaV2StakingPoolExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xf7d38d771051d2d06508b5c6a9cca1aab6e05b7d`; base `0xe41ddcd6e75a420241066312b6ebe17a26079b82`; arbitrum `0xe818536c01c5aaa417523b7bf061a4a79c9f3239` | ⚠️ Unaudited |
| CsigmaV2WithdrawalManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x2db11a6263c068d530ee8b82a25e715d463fc725`; ethereum `0x67db5336474446a1ce616d1d5d17e01cfac45949`; ethereum `0x99888c44a5ab5e96b5af0124ff0dae6d3eb8274d`; ethereum `0xff3222ccd8d068519cb17f9e665802cddc88e2e6`; base `0x6d72617fc05d9689133ef8c82c4ba118c79345b2`; base `0x920296afd1140faf368a1516986d84752e56655e`; base `0xd055b4a3d93a1f787cb0fdfd24ebc21434031f38`; base `0xf1e4751c371d3103c1a07497ba6daca80c5ff767`; arbitrum `0x4313b859f026792c750ad619fc454bd6f9279c19`; arbitrum `0x71c49203c1e707e2bdb51b5f60776c3c4ee53110`; arbitrum `0xd2a0ab6b4013b2d4ff38d844ba607893995b0463`; arbitrum `0xdb2da12d6afd0551b9490f2b5f31627a28efa661` | ⚠️ Unaudited |
| CsigmaV3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x0b27a7a8d22c383906914521ff1b24bf8f8a8e12`; ethereum `0x1922d16cc88cd60499906915b30ec891ceb6e151`; ethereum `0xbd3f0befa86794b999b29a91d201124d8fbdf777`; ethereum `0xd5d097f278a735d0a3c609deee71234cac14b47e`; ethereum `0xead9190db1a6a5f4262572845cf75c31e474fd4c` | ⚠️ Unaudited |
| CsigmaV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6a460564ccc601d2cd15399d8ebe52448b5dbb72`; ethereum `0xdbf14908737a854acafc35f8a17796eb1b02eb22`; ethereum `0xe3bf45b1cdfbeebca75f9f5e44787e1ac21b60b4` | ⚠️ Unaudited |
| CsigmaV3WithdrawalManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5076d83e5e6c750f783f8cd9990ea0508d29a73f`; ethereum `0x9264fe55cd0fc506a04045861cad70a900fe73d4`; ethereum `0x9d6812ae250cc1b9c5c697c703680215671a0c2e`; ethereum `0xa3a8cb341d3680b71136219d1b855f5e07966906` | ⚠️ Unaudited |
| CSUSDFundManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x2fb05f52d839301011aad06c7edd156ed554074d`; ethereum `0x6a3a7f8d29c8df1653ca8f05cb6d50a3045fbd3b`; ethereum `0xe33d6167398a1d79931611c8db0bed8ff22e73f2` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cbf4af96019f29ddc61438d20b11c77f3620235` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3f62228db89af0f05e6baa2e27a276635cc80ebd`; ethereum `0xe715dd791981127fa23021e0bdf3d9ef1a179eda`; base `0xbe08d0e79f26be08d97e5b77610c8096994cd8c8`; arbitrum `0xbe08d0e79f26be08d97e5b77610c8096994cd8c8` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x7fa7015f2859160db9311a924e8ce08b86314a8d`; ethereum `0xd055b4a3d93a1f787cb0fdfd24ebc21434031f38`; ethereum `0xfead4e7c91965ff73c56b0db30ef367a8e43de62`; base `0x8a03b6bcc56ca7d814ccdd115a6c9b4280c3eac2`; arbitrum `0x8a03b6bcc56ca7d814ccdd115a6c9b4280c3eac2` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0xc623967550d4c799e9ec575499fad38bbe122275`; ethereum `0xfffb10a6f20d86bbec86b71b7e0e38c21a319c59`; base `0xfead4e7c91965ff73c56b0db30ef367a8e43de62`; arbitrum `0xfead4e7c91965ff73c56b0db30ef367a8e43de62` | ⚠️ Unaudited |
| DistributeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x722974eee5f1420df0e9679e56a52e5c48879243`; base `0x3bb0f9f8f24a298b07032a0e24120afcffefdee5`; arbitrum `0xc978963f2a0b29541801daa94b21351116c14b84` | ⚠️ Unaudited |
| LenderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ab4477b2d59833a356eea59d51401e56a17fc3f`; arbitrum `0x33a5613897604d093fd9f8786300a52ba66ed2cd` | ⚠️ Unaudited |
| LenderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x07d7bf6dcc4a2f03e82e3da52ebfbae871443322`; base `0x33a5613897604d093fd9f8786300a52ba66ed2cd` | ⚠️ Unaudited |
| MetadataFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3bb0f9f8f24a298b07032a0e24120afcffefdee5`; base `0xbfcf3dbfc43184c0d286b1ef1936e3bd2f4463fe`; arbitrum `0xbfcf3dbfc43184c0d286b1ef1936e3bd2f4463fe` | ⚠️ Unaudited |
| Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x94858947f20766866abe5e608521134a2baccba4`; ethereum `0xaea29e73febdb74833084586ab1bd13c09630c6d` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x33a5613897604d093fd9f8786300a52ba66ed2cd`; base `0xe715dd791981127fa23021e0bdf3d9ef1a179eda`; arbitrum `0xe715dd791981127fa23021e0bdf3d9ef1a179eda` | ⚠️ Unaudited |
| PaymentFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xbfcf3dbfc43184c0d286b1ef1936e3bd2f4463fe`; base `0x2ab4477b2d59833a356eea59d51401e56a17fc3f`; arbitrum `0x2ab4477b2d59833a356eea59d51401e56a17fc3f` | ⚠️ Unaudited |
| PoolManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9b1463b8f110f927eb49e908b597624d52fcddb4`; base `0xc623967550d4c799e9ec575499fad38bbe122275`; arbitrum `0xc623967550d4c799e9ec575499fad38bbe122275` | ⚠️ Unaudited |
| Sigma | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234583 | `0x37bdd789a515140593ece202365e5987c9f11d41` | ⚠️ Unaudited |
| StableCoinExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xff2307e23c2e579b7f627cd138c35dc025cc4963`; base `0x45dcf4f9d1b47c138bc1e490a878790932d66caf`; arbitrum `0xd146f6987d89519832618fb9f057d22f631dec7a` | ⚠️ Unaudited |
| StakingPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2851e986bb80466a36e8c13817a9df95c4b695ca`; ethereum `0x4e8a0785cf90f8330cfec2d8c2b04ede5d9836a3`; ethereum `0x71ddb7f4f0c329466af64afbcbc0713637c75973` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447683715f000cfeaf8d2c6c23a6b501408172cc` | ⚠️ Unaudited |
| VaultFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0673a6fa0d4a4bacd1821441eb14b3522d1f6799`; ethereum `0x1ad263d2521382db8a5d12c22586e0af1f37e5ed`; ethereum `0x3c15a28bb78b6777f755a206425fdc9deacfac4d`; ethereum `0xe41ddcd6e75a420241066312b6ebe17a26079b82`; ethereum `0xf626c6db2e5a7b2242ca9afc308c1b09e3b69027`; base `0x2bf7e1df2d9b587787bedbe68cb0b446d2750a6e`; base `0x53162ec0adae49f21515bb8ca91534dd3872c8db`; arbitrum `0x28b17864cfb03652bc8ec5064070f0f6ec900be4`; arbitrum `0x2bf7e1df2d9b587787bedbe68cb0b446d2750a6e`; arbitrum `0x4c158bfe194df7b74a4fd3d316017615229192dc` | ⚠️ Unaudited |
| VaultFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xedcb98ee892d256370373193e772ecddb3916d40`; ethereum `0xf80ba51189763b7ac484a23f7d7695345b1149c9` | ⚠️ Unaudited |
| VaultFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x45dcf4f9d1b47c138bc1e490a878790932d66caf`; arbitrum `0xebc301f671c89fdb0602ce9dfa65f75b1b30124f` | ⚠️ Unaudited |
| VaultFacetExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x07d7bf6dcc4a2f03e82e3da52ebfbae871443322`; ethereum `0xf6d6ef26d7d584ed8a89b87348f61506c89ab9c9`; arbitrum `0x3bb0f9f8f24a298b07032a0e24120afcffefdee5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ccd75da30384bf743248cad92af11a87a33e8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3283f3c5c53e99426bab2f45f158e9d4b58cf05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b40e267b33b3e172c707f10818700a9cb5317df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4010cd0ddb5ed24bf26bdcfc14bc12b2edebdded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff9e9e1e2d42d339193b1579345e5aafa701eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f3474f2812eedc0edc49d299a2fda9241c27930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cbaf736d2ee502fea9b40ee68efadd782070c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7938b7149a6997488318537096301db2b07c5733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0002edaa5280a84b9f5c7e04ee95d8f06dd29a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d6bfdef36f8ff48ea55e8f4d6bac14f81e6db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc01e477be8e03b45dd348523294d0dbc3db6182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58735305d6018dbbbdb91c64d5958fb52505da5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cSigma Edge Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Edge%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [cSigma Institutional Audit Report - Immunebytes.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Institutional%20Audit%20Report%20-%20Immunebytes.pdf) | Immunebytes | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [cSigma Token Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Token%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2028] cSigma Edge Audit Report - QuillAudits.pdf — no match: No reason recorded
- [2029] cSigma Institutional Audit Report - Immunebytes.pdf — no match: No reason recorded
- [2030] cSigma Token Audit Report - QuillAudits.pdf — matched: Only one contract (Sigma) is in scope. Audit date inferred from 'November, 2024' on cover and 'First Review 14th November 2024' - using end of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cSigma Edge Audit Report - QuillAudits.pdf | CsigmaV2FundManager | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | CsigmaV2Pool | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | CsigmaV2StakingPool | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | CsigmaV2StakingPoolExtension | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Factory | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Fund manager | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Pool | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Staking pool | unmatched — not counted | — | — | no |
| cSigma Edge Audit Report - QuillAudits.pdf | Staking pool extension | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | AccessControlFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | AccessControlLib | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | CreditPoolFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | DiamondCutFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | DiamondLoupeFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | DistributeExtension | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | DistributeState | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | LenderFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | MetadataFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | OwnershipFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | PaymentFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | PoolManagerFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | PoolManagerLib | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | StableCoinExtension | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | VaultFacet | unmatched — not counted | — | — | no |
| cSigma Institutional Audit Report - Immunebytes.pdf | VaultLib | unmatched — not counted | — | — | no |
| cSigma Token Audit Report - QuillAudits.pdf | Sigma | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x53162ec0adae49f21515bb8ca91534dd3872c8db` — deployed 2024-07-04 15:11:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [2028] cSigma Edge Audit Report - QuillAudits.pdf
- [2029] cSigma Institutional Audit Report - Immunebytes.pdf

Fork inheritance lineage and inherited audits are included when available.
