# Agentic Audit Brief: cSigma Finance

## Project Overview

- Project: cSigma Finance (`csigma-finance`)
- Website: [https://csigma.finance](https://csigma.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.651Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, base, ethereum
- Contract surface: 60 unique implementations (189 raw deployments)
- DeFi Llama TVL: $12,657,681.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA Lending. Structurally: 44 project-authored contract(s) across 3 chain(s); 6 ERC4626 vaults, 7 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (erc4626upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 210; live-surface contracts included: 178 (166 live, 12 unknown).
- Excluded by liveness: 32 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/48 (10.4%)
- Deployed-live implementations: 48 of 60 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/48
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 60
- Raw deployments: 189
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunebytes | Tier 2 | 3 | 6.3% | n/a |
| QuillAudits | Tier 2 | 2 | 4.2% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CsigmaV2Pool | unknown | ethereum | n/a | 25 deployments: ethereum [`0x057d1f972887c7b99048a050249d6b726831e9f0`](./contracts/ethereum-1/0x057d1f972887c7b99048a050249d6b726831e9f0/); ethereum `0x1f75fe91bf062a181f4111bca97be9fb07140f41`; ethereum `0x27bd349fa50bc4cb78d559fcb48f85952fb53120`; ethereum `0x95c144f33ca6c28fb7a5b50809a7ba57f2a6e3ac`; ethereum `0xa5b7555775a33ca79818702f63b34b14dc9aec4d`; ethereum `0xc1f0b4a3137d1cd884eaa69fa4f1e2496b51dd77`; ethereum `0xddced77ef91da43dbe422a91ed89d8804c7a6920`; ethereum `0xe818536c01c5aaa417523b7bf061a4a79c9f3239`; ethereum `0xea7171e5ad78c38c054e83cc9e5310d2bdc2abb1`; base `0x188bb2c3d514b7500e06a9024b089f096430c986`; base `0x2a4648de77365e4eb24d54134452dc1b52ce2b4d`; base `0x2a4eb45a52ebcae4ab62959088ca1c7c0a6e817d`; base `0x6609d3da21de9da07767a12198cd1a70f4e3f8c8`; base `0x95c144f33ca6c28fb7a5b50809a7ba57f2a6e3ac`; base `0xc1f0b4a3137d1cd884eaa69fa4f1e2496b51dd77`; base `0xef31a05eca5c2f70d98fdb12b406902cd98590f3`; arbitrum `0x2d1dda9457c8ec31d6f48f4b8538720893fd440b`; arbitrum `0x3c6afeb7345c9954e45e9e2ca4eb060ea27b81cf`; arbitrum `0x4cee88aa3fc282c7215fde69ef91b28122256156`; arbitrum `0x6cbaf736d2ee502fea9b40ee68efadd782070c11`; arbitrum `0xa77b86b8d81b763445b6d3ffab8145265dfae0b4`; arbitrum `0xc1f0b4a3137d1cd884eaa69fa4f1e2496b51dd77`; arbitrum `0xce5ca6f65ec74cda95bcb0aad82d7084682e5d75`; arbitrum `0xf31c53ccf07276f02c3ee5581ec8fac83db485be`; arbitrum `0xf7d38d771051d2d06508b5c6a9cca1aab6e05b7d` | ✅ Audited |
| DiamondCutFacet | unknown | ethereum | n/a | [`0x3f62228db89af0f05e6baa2e27a276635cc80ebd`](./contracts/ethereum-1/0x3f62228db89af0f05e6baa2e27a276635cc80ebd/) | ✅ Audited |
| DiamondLoupeFacet | unknown | ethereum | n/a | [`0xfffb10a6f20d86bbec86b71b7e0e38c21a319c59`](./contracts/ethereum-1/0xfffb10a6f20d86bbec86b71b7e0e38c21a319c59/) | ✅ Audited |
| Sigma | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37bdd789a515140593ece202365e5987c9f11d41`](./contracts/ethereum-1/0x37bdd789a515140593ece202365e5987c9f11d41/); ethereum `0x53162ec0adae49f21515bb8ca91534dd3872c8db` | ✅ Audited |
| VaultFacet | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x0673a6fa0d4a4bacd1821441eb14b3522d1f6799`](./contracts/ethereum-1/0x0673a6fa0d4a4bacd1821441eb14b3522d1f6799/); ethereum `0x1ad263d2521382db8a5d12c22586e0af1f37e5ed`; ethereum `0x3c15a28bb78b6777f755a206425fdc9deacfac4d`; ethereum `0xe41ddcd6e75a420241066312b6ebe17a26079b82`; ethereum `0xedcb98ee892d256370373193e772ecddb3916d40`; ethereum `0xf626c6db2e5a7b2242ca9afc308c1b09e3b69027`; base `0x2bf7e1df2d9b587787bedbe68cb0b446d2750a6e`; base `0x53162ec0adae49f21515bb8ca91534dd3872c8db`; arbitrum `0x28b17864cfb03652bc8ec5064070f0f6ec900be4`; arbitrum `0x2bf7e1df2d9b587787bedbe68cb0b446d2750a6e`; arbitrum `0x4c158bfe194df7b74a4fd3d316017615229192dc`; arbitrum `0xebc301f671c89fdb0602ce9dfa65f75b1b30124f` | ✅ Audited |

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlFacet | unknown | base | n/a | 3 deployments: ethereum `0x45dcf4f9d1b47c138bc1e490a878790932d66caf`; base [`0x1ad263d2521382db8a5d12c22586e0af1f37e5ed`](./contracts/base-8453/0x1ad263d2521382db8a5d12c22586e0af1f37e5ed/); arbitrum [`0x1ad263d2521382db8a5d12c22586e0af1f37e5ed`](./contracts/arbitrum-42161/0x1ad263d2521382db8a5d12c22586e0af1f37e5ed/) | ⚠️ Unaudited |
| CreditPoolFacet | unknown | arbitrum | n/a | 8 deployments: ethereum `0x05c55c355d90d8dc98fec2b2c07872c9b35271b6`; ethereum `0x2bf7e1df2d9b587787bedbe68cb0b446d2750a6e`; ethereum `0x4c158bfe194df7b74a4fd3d316017615229192dc`; base `0x37bdd789a515140593ece202365e5987c9f11d41`; base `0x9b1463b8f110f927eb49e908b597624d52fcddb4`; arbitrum [`0x057d1f972887c7b99048a050249d6b726831e9f0`](./contracts/arbitrum-42161/0x057d1f972887c7b99048a050249d6b726831e9f0/); arbitrum `0x9b1463b8f110f927eb49e908b597624d52fcddb4`; arbitrum `0xecc7c76a6399eea4e2f7602ff95e1a1b5567c068` | ⚠️ Unaudited |
| CsigmaAssetOracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1abee07cc868b50b9fce2d151ea678c3e7ac2b38`](./contracts/ethereum-1/0x1abee07cc868b50b9fce2d151ea678c3e7ac2b38/); ethereum `0x3936eb150e761ebbacf438fdabeabff67035446f`; ethereum `0xf29b38b0696827722a51b3ea7f6a65d06abfaafa` | ⚠️ Unaudited |
| CsigmaPDNv1_1 | unknown | arbitrum | n/a | [`0x67a1fc35961dd0e293bb4481b48491adf95b1395`](./contracts/arbitrum-42161/0x67a1fc35961dd0e293bb4481b48491adf95b1395/) | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3cafaa19816b8b23245b6c4dbe7649efc38b3b18`](./contracts/ethereum-1/0x3cafaa19816b8b23245b6c4dbe7649efc38b3b18/); ethereum `0x94facc004d8eb2a94c552ee4334cdff5820fdbb4` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | base | n/a | 2 deployments: base [`0x057d1f972887c7b99048a050249d6b726831e9f0`](./contracts/base-8453/0x057d1f972887c7b99048a050249d6b726831e9f0/); base `0x6cbaf736d2ee502fea9b40ee68efadd782070c11` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x05acd1f16f0dee7e72367b076d31e68c2cab0571`](./contracts/arbitrum-42161/0x05acd1f16f0dee7e72367b076d31e68c2cab0571/); arbitrum `0xee379488d292d9ab71a587fc1352ddfab56652d6` | ⚠️ Unaudited |
| CsigmaPermissionedFundManager | governance | arbitrum | n/a | 3 deployments: ethereum `0xa9fca7db51e12ee7ef9e2bf7a7349e36d9bd2330`; base `0x7ce6432a0e69235db7f24d09f99829937616063b`; arbitrum [`0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a`](./contracts/arbitrum-42161/0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a/) | ⚠️ Unaudited |
| CsigmaPermissionedPool | core_logic | base | n/a | 3 deployments: ethereum `0xe27cd6e19c63411e948005310b0457fc1f85d411`; base [`0x85e700e92dde9904009ac116251b5598c8534e17`](./contracts/base-8453/0x85e700e92dde9904009ac116251b5598c8534e17/); arbitrum `0xc6014a75a576c1517221ef133bc80e19b9527dd7` | ⚠️ Unaudited |
| CsigmaPermissionedWithdrawalManager | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x25f7e3b56bf360250f94307fb22aa9b8049dacb9`](./contracts/ethereum-1/0x25f7e3b56bf360250f94307fb22aa9b8049dacb9/); base `0x4c158bfe194df7b74a4fd3d316017615229192dc`; arbitrum `0x5acb4882ccd0171efb9ea32e70aa5a05978153d1` | ⚠️ Unaudited |
| CsigmaRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c91481314de612ec55b96cf12ca121f20bf9302`](./contracts/ethereum-1/0x8c91481314de612ec55b96cf12ca121f20bf9302/); ethereum `0xe2e965cf81736374b46ee21992b2821816a2c79f` | ⚠️ Unaudited |
| CsigmaRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcdda7e103c87d35d43108539f24aec1eaa655a8d`](./contracts/ethereum-1/0xcdda7e103c87d35d43108539f24aec1eaa655a8d/); ethereum `0xd5841c0f0c1c5438894e4218f08915cbf2191e8e` | ⚠️ Unaudited |
| CsigmaRouter | unknown | base | n/a | 2 deployments: base [`0xb8eb879cf35694078c34bd2a0efc08fa5041a674`](./contracts/base-8453/0xb8eb879cf35694078c34bd2a0efc08fa5041a674/); base `0xf5c36df3003131b4fd48bffce31ca0f2aa4cbe08` | ⚠️ Unaudited |
| CsigmaRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6d617583345b200ec5d9f93594509f335103581d`](./contracts/arbitrum-42161/0x6d617583345b200ec5d9f93594509f335103581d/); arbitrum `0xf1f0b8f6f4cef382323fbef945a3343b5986dd08` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79cda4f5f712f15261b0944fb2bc8ee637700aea`](./contracts/ethereum-1/0x79cda4f5f712f15261b0944fb2bc8ee637700aea/); ethereum `0xcbf2e530ac5e0ef6436026d3b2d6f2398156572f` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | base | n/a | 2 deployments: base [`0x447683715f000cfeaf8d2c6c23a6b501408172cc`](./contracts/base-8453/0x447683715f000cfeaf8d2c6c23a6b501408172cc/); base `0xa77b86b8d81b763445b6d3ffab8145265dfae0b4` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x920296afd1140faf368a1516986d84752e56655e`](./contracts/arbitrum-42161/0x920296afd1140faf368a1516986d84752e56655e/); arbitrum `0xddced77ef91da43dbe422a91ed89d8804c7a6920` | ⚠️ Unaudited |
| CsigmaUSD | unknown | ethereum | n/a | 3 deployments: ethereum [`0x04d15cea4bd7ced196c24ce87a0190b9a72c5374`](./contracts/ethereum-1/0x04d15cea4bd7ced196c24ce87a0190b9a72c5374/); ethereum `0x1708c20b8008158749e580ffb68bbdb733a3adf9`; ethereum `0x183d14959aa391bdaa7a737d5e740830af6594b0` | ⚠️ Unaudited |
| CsigmaUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x347aec0dabb6d2ffd8bb735b2b79b334107ea535`](./contracts/ethereum-1/0x347aec0dabb6d2ffd8bb735b2b79b334107ea535/); ethereum `0x9eabed51bf7956680044f07ea21402814f89c246` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb5337c2e320d61be3511216b9b4d32b2c41f3e55`](./contracts/ethereum-1/0xb5337c2e320d61be3511216b9b4d32b2c41f3e55/); ethereum `0xd45b271eac3cef6efb6f19424f5fdff820909547` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | base | n/a | 13 deployments: ethereum `0x4c28f5c87e5557db971c9a2f862bfdcf9f561bd4`; ethereum `0x5334b6b759c51536d8cf458b176a1e7b22cd2a3a`; ethereum `0x920296afd1140faf368a1516986d84752e56655e`; ethereum `0x929658707b517f002cc5c5eeb6c430f12e04189c`; ethereum `0xce5ca6f65ec74cda95bcb0aad82d7084682e5d75`; base [`0x2d24d42a447ba1f782f85665f3d0a71097fabb32`](./contracts/base-8453/0x2d24d42a447ba1f782f85665f3d0a71097fabb32/); base `0x67a1fc35961dd0e293bb4481b48491adf95b1395`; base `0xb5337c2e320d61be3511216b9b4d32b2c41f3e55`; base `0xf6d6ef26d7d584ed8a89b87348f61506c89ab9c9`; arbitrum `0x54c475fc3275496744eb5bb1730e6cb835f9cec0`; arbitrum `0x7ce6432a0e69235db7f24d09f99829937616063b`; arbitrum `0x7d613bd963d1258c0bddcadc5aac98e2d0ef72c8`; arbitrum `0x82c3696c2ae79705f8281d61e1e6d66730de79e3` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | base | n/a | 2 deployments: base [`0x4cee88aa3fc282c7215fde69ef91b28122256156`](./contracts/base-8453/0x4cee88aa3fc282c7215fde69ef91b28122256156/); base `0xe76c20761bfcd471196bb61f68250daf3da3568b` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4c28f5c87e5557db971c9a2f862bfdcf9f561bd4`](./contracts/arbitrum-42161/0x4c28f5c87e5557db971c9a2f862bfdcf9f561bd4/); arbitrum `0x63da09d5f3622b104145728abc73ebf2cdbf6d61` | ⚠️ Unaudited |
| CsigmaV2FundManager | unknown | base | n/a | 6 deployments: ethereum `0x2e0ae02141f79b5c61219b6d6996720edfb058da`; ethereum `0x7d613bd963d1258c0bddcadc5aac98e2d0ef72c8`; base [`0x2c787e74af551ae67feb2dec611166851729510b`](./contracts/base-8453/0x2c787e74af551ae67feb2dec611166851729510b/); base `0x47a290f03420af9cb179c69d0a814c80350ca5d9`; arbitrum `0x6219e9a585c83c26490e38b191c9f1ed203630cd`; arbitrum `0xd5f273ff399930fce1ce4b24b9ff6a57889a4776` | ⚠️ Unaudited |
| CsigmaV2StakingPool | unknown | base | n/a | 3 deployments: ethereum `0x7987106861d7a53f222375cab58b39cd0722c60e`; base [`0x5da8756917471702ea8642e849872b01c545924a`](./contracts/base-8453/0x5da8756917471702ea8642e849872b01c545924a/); arbitrum `0x7987106861d7a53f222375cab58b39cd0722c60e` | ⚠️ Unaudited |
| CsigmaV2StakingPoolExtension | unknown | base | n/a | 3 deployments: ethereum `0xf7d38d771051d2d06508b5c6a9cca1aab6e05b7d`; base [`0xe41ddcd6e75a420241066312b6ebe17a26079b82`](./contracts/base-8453/0xe41ddcd6e75a420241066312b6ebe17a26079b82/); arbitrum `0xe818536c01c5aaa417523b7bf061a4a79c9f3239` | ⚠️ Unaudited |
| CsigmaV2WithdrawalManager | operational_periphery | ethereum | n/a | 12 deployments: ethereum [`0x2db11a6263c068d530ee8b82a25e715d463fc725`](./contracts/ethereum-1/0x2db11a6263c068d530ee8b82a25e715d463fc725/); ethereum `0x67db5336474446a1ce616d1d5d17e01cfac45949`; ethereum `0x99888c44a5ab5e96b5af0124ff0dae6d3eb8274d`; ethereum `0xff3222ccd8d068519cb17f9e665802cddc88e2e6`; base `0x6d72617fc05d9689133ef8c82c4ba118c79345b2`; base `0x920296afd1140faf368a1516986d84752e56655e`; base `0xd055b4a3d93a1f787cb0fdfd24ebc21434031f38`; base `0xf1e4751c371d3103c1a07497ba6daca80c5ff767`; arbitrum `0x4313b859f026792c750ad619fc454bd6f9279c19`; arbitrum `0x71c49203c1e707e2bdb51b5f60776c3c4ee53110`; arbitrum `0xd2a0ab6b4013b2d4ff38d844ba607893995b0463`; arbitrum `0xdb2da12d6afd0551b9490f2b5f31627a28efa661` | ⚠️ Unaudited |
| CsigmaV3Pool | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0b27a7a8d22c383906914521ff1b24bf8f8a8e12`](./contracts/ethereum-1/0x0b27a7a8d22c383906914521ff1b24bf8f8a8e12/); ethereum `0x1922d16cc88cd60499906915b30ec891ceb6e151`; ethereum `0xbd3f0befa86794b999b29a91d201124d8fbdf777`; ethereum `0xd5d097f278a735d0a3c609deee71234cac14b47e`; ethereum `0xead9190db1a6a5f4262572845cf75c31e474fd4c` | ⚠️ Unaudited |
| CsigmaV3Pool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x6a460564ccc601d2cd15399d8ebe52448b5dbb72`](./contracts/ethereum-1/0x6a460564ccc601d2cd15399d8ebe52448b5dbb72/); ethereum `0xdbf14908737a854acafc35f8a17796eb1b02eb22`; ethereum `0xe3bf45b1cdfbeebca75f9f5e44787e1ac21b60b4` | ⚠️ Unaudited |
| CsigmaV3WithdrawalManager | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x5076d83e5e6c750f783f8cd9990ea0508d29a73f`](./contracts/ethereum-1/0x5076d83e5e6c750f783f8cd9990ea0508d29a73f/); ethereum `0x9264fe55cd0fc506a04045861cad70a900fe73d4`; ethereum `0x9d6812ae250cc1b9c5c697c703680215671a0c2e`; ethereum `0xa3a8cb341d3680b71136219d1b855f5e07966906` | ⚠️ Unaudited |
| CSUSDFundManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2fb05f52d839301011aad06c7edd156ed554074d`](./contracts/ethereum-1/0x2fb05f52d839301011aad06c7edd156ed554074d/); ethereum `0x6a3a7f8d29c8df1653ca8f05cb6d50a3045fbd3b`; ethereum `0xe33d6167398a1d79931611c8db0bed8ff22e73f2` | ⚠️ Unaudited |
| Diamond | unknown | ethereum | n/a | [`0x2cbf4af96019f29ddc61438d20b11c77f3620235`](./contracts/ethereum-1/0x2cbf4af96019f29ddc61438d20b11c77f3620235/) | ⚠️ Unaudited |
| DiamondInit | unknown | ethereum | n/a | [`0x7fa7015f2859160db9311a924e8ce08b86314a8d`](./contracts/ethereum-1/0x7fa7015f2859160db9311a924e8ce08b86314a8d/) | ⚠️ Unaudited |
| DistributeFacet | unknown | base | n/a | 3 deployments: ethereum `0x722974eee5f1420df0e9679e56a52e5c48879243`; base [`0x3bb0f9f8f24a298b07032a0e24120afcffefdee5`](./contracts/base-8453/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/); arbitrum `0xc978963f2a0b29541801daa94b21351116c14b84` | ⚠️ Unaudited |
| LenderFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2ab4477b2d59833a356eea59d51401e56a17fc3f`](./contracts/ethereum-1/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/); base `0x33a5613897604d093fd9f8786300a52ba66ed2cd`; arbitrum `0x33a5613897604d093fd9f8786300a52ba66ed2cd` | ⚠️ Unaudited |
| MetadataFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3bb0f9f8f24a298b07032a0e24120afcffefdee5`](./contracts/ethereum-1/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/); base `0xbfcf3dbfc43184c0d286b1ef1936e3bd2f4463fe`; arbitrum `0xbfcf3dbfc43184c0d286b1ef1936e3bd2f4463fe` | ⚠️ Unaudited |
| Migration | unknown | ethereum | n/a | 2 deployments: ethereum [`0x94858947f20766866abe5e608521134a2baccba4`](./contracts/ethereum-1/0x94858947f20766866abe5e608521134a2baccba4/); ethereum `0xaea29e73febdb74833084586ab1bd13c09630c6d` | ⚠️ Unaudited |
| PaymentFacet | unknown | base | n/a | 3 deployments: ethereum `0xbfcf3dbfc43184c0d286b1ef1936e3bd2f4463fe`; base [`0x2ab4477b2d59833a356eea59d51401e56a17fc3f`](./contracts/base-8453/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/); arbitrum [`0x2ab4477b2d59833a356eea59d51401e56a17fc3f`](./contracts/arbitrum-42161/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/) | ⚠️ Unaudited |
| PoolManagerFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9b1463b8f110f927eb49e908b597624d52fcddb4`](./contracts/ethereum-1/0x9b1463b8f110f927eb49e908b597624d52fcddb4/); base `0xc623967550d4c799e9ec575499fad38bbe122275`; arbitrum `0xc623967550d4c799e9ec575499fad38bbe122275` | ⚠️ Unaudited |
| StableCoinExtension | unknown | base | n/a | 3 deployments: ethereum `0xff2307e23c2e579b7f627cd138c35dc025cc4963`; base [`0x45dcf4f9d1b47c138bc1e490a878790932d66caf`](./contracts/base-8453/0x45dcf4f9d1b47c138bc1e490a878790932d66caf/); arbitrum `0xd146f6987d89519832618fb9f057d22f631dec7a` | ⚠️ Unaudited |
| StakingPlatform | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2851e986bb80466a36e8c13817a9df95c4b695ca`](./contracts/ethereum-1/0x2851e986bb80466a36e8c13817a9df95c4b695ca/); ethereum `0x4e8a0785cf90f8330cfec2d8c2b04ede5d9836a3`; ethereum `0x71ddb7f4f0c329466af64afbcbc0713637c75973` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | [`0x447683715f000cfeaf8d2c6c23a6b501408172cc`](./contracts/ethereum-1/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | ⚠️ Unaudited |
| VaultFacetExtension | unknown | ethereum | n/a | 3 deployments: ethereum [`0x07d7bf6dcc4a2f03e82e3da52ebfbae871443322`](./contracts/ethereum-1/0x07d7bf6dcc4a2f03e82e3da52ebfbae871443322/); ethereum `0xf6d6ef26d7d584ed8a89b87348f61506c89ab9c9`; arbitrum `0x3bb0f9f8f24a298b07032a0e24120afcffefdee5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x15ccd75da30384bf743248cad92af11a87a33e8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3283f3c5c53e99426bab2f45f158e9d4b58cf05a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b40e267b33b3e172c707f10818700a9cb5317df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4010cd0ddb5ed24bf26bdcfc14bc12b2edebdded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ff9e9e1e2d42d339193b1579345e5aafa701eb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f3474f2812eedc0edc49d299a2fda9241c27930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cbaf736d2ee502fea9b40ee68efadd782070c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7938b7149a6997488318537096301db2b07c5733` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0002edaa5280a84b9f5c7e04ee95d8f06dd29a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8d6bfdef36f8ff48ea55e8f4d6bac14f81e6db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc01e477be8e03b45dd348523294d0dbc3db6182` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58735305d6018dbbbdb91c64d5958fb52505da5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cSigma Edge Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Edge%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [cSigma Institutional Audit Report - Immunebytes.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Institutional%20Audit%20Report%20-%20Immunebytes.pdf) | Immunebytes | Audit | n/a | unknown | Direct | contract_name | 3 | n/a |
| [cSigma Token Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Token%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-11 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1ad263d2521382db8a5d12c22586e0af1f37e5ed`](./contracts/base-8453/0x1ad263d2521382db8a5d12c22586e0af1f37e5ed/) | AccessControlFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x057d1f972887c7b99048a050249d6b726831e9f0`](./contracts/arbitrum-42161/0x057d1f972887c7b99048a050249d6b726831e9f0/) | CreditPoolFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1abee07cc868b50b9fce2d151ea678c3e7ac2b38`](./contracts/ethereum-1/0x1abee07cc868b50b9fce2d151ea678c3e7ac2b38/) | CsigmaAssetOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x67a1fc35961dd0e293bb4481b48491adf95b1395`](./contracts/arbitrum-42161/0x67a1fc35961dd0e293bb4481b48491adf95b1395/) | CsigmaPDNv1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cafaa19816b8b23245b6c4dbe7649efc38b3b18`](./contracts/ethereum-1/0x3cafaa19816b8b23245b6c4dbe7649efc38b3b18/) | CsigmaPermissionedFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x057d1f972887c7b99048a050249d6b726831e9f0`](./contracts/base-8453/0x057d1f972887c7b99048a050249d6b726831e9f0/) | CsigmaPermissionedFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05acd1f16f0dee7e72367b076d31e68c2cab0571`](./contracts/arbitrum-42161/0x05acd1f16f0dee7e72367b076d31e68c2cab0571/) | CsigmaPermissionedFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a`](./contracts/arbitrum-42161/0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a/) | CsigmaPermissionedFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x85e700e92dde9904009ac116251b5598c8534e17`](./contracts/base-8453/0x85e700e92dde9904009ac116251b5598c8534e17/) | CsigmaPermissionedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25f7e3b56bf360250f94307fb22aa9b8049dacb9`](./contracts/ethereum-1/0x25f7e3b56bf360250f94307fb22aa9b8049dacb9/) | CsigmaPermissionedWithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c91481314de612ec55b96cf12ca121f20bf9302`](./contracts/ethereum-1/0x8c91481314de612ec55b96cf12ca121f20bf9302/) | CsigmaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdda7e103c87d35d43108539f24aec1eaa655a8d`](./contracts/ethereum-1/0xcdda7e103c87d35d43108539f24aec1eaa655a8d/) | CsigmaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb8eb879cf35694078c34bd2a0efc08fa5041a674`](./contracts/base-8453/0xb8eb879cf35694078c34bd2a0efc08fa5041a674/) | CsigmaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6d617583345b200ec5d9f93594509f335103581d`](./contracts/arbitrum-42161/0x6d617583345b200ec5d9f93594509f335103581d/) | CsigmaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79cda4f5f712f15261b0944fb2bc8ee637700aea`](./contracts/ethereum-1/0x79cda4f5f712f15261b0944fb2bc8ee637700aea/) | CsigmaTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x447683715f000cfeaf8d2c6c23a6b501408172cc`](./contracts/base-8453/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | CsigmaTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x920296afd1140faf368a1516986d84752e56655e`](./contracts/arbitrum-42161/0x920296afd1140faf368a1516986d84752e56655e/) | CsigmaTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d15cea4bd7ced196c24ce87a0190b9a72c5374`](./contracts/ethereum-1/0x04d15cea4bd7ced196c24ce87a0190b9a72c5374/) | CsigmaUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x347aec0dabb6d2ffd8bb735b2b79b334107ea535`](./contracts/ethereum-1/0x347aec0dabb6d2ffd8bb735b2b79b334107ea535/) | CsigmaUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5337c2e320d61be3511216b9b4d32b2c41f3e55`](./contracts/ethereum-1/0xb5337c2e320d61be3511216b9b4d32b2c41f3e55/) | CsigmaV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d24d42a447ba1f782f85665f3d0a71097fabb32`](./contracts/base-8453/0x2d24d42a447ba1f782f85665f3d0a71097fabb32/) | CsigmaV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4cee88aa3fc282c7215fde69ef91b28122256156`](./contracts/base-8453/0x4cee88aa3fc282c7215fde69ef91b28122256156/) | CsigmaV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4c28f5c87e5557db971c9a2f862bfdcf9f561bd4`](./contracts/arbitrum-42161/0x4c28f5c87e5557db971c9a2f862bfdcf9f561bd4/) | CsigmaV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2c787e74af551ae67feb2dec611166851729510b`](./contracts/base-8453/0x2c787e74af551ae67feb2dec611166851729510b/) | CsigmaV2FundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5da8756917471702ea8642e849872b01c545924a`](./contracts/base-8453/0x5da8756917471702ea8642e849872b01c545924a/) | CsigmaV2StakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe41ddcd6e75a420241066312b6ebe17a26079b82`](./contracts/base-8453/0xe41ddcd6e75a420241066312b6ebe17a26079b82/) | CsigmaV2StakingPoolExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db11a6263c068d530ee8b82a25e715d463fc725`](./contracts/ethereum-1/0x2db11a6263c068d530ee8b82a25e715d463fc725/) | CsigmaV2WithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b27a7a8d22c383906914521ff1b24bf8f8a8e12`](./contracts/ethereum-1/0x0b27a7a8d22c383906914521ff1b24bf8f8a8e12/) | CsigmaV3Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a460564ccc601d2cd15399d8ebe52448b5dbb72`](./contracts/ethereum-1/0x6a460564ccc601d2cd15399d8ebe52448b5dbb72/) | CsigmaV3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5076d83e5e6c750f783f8cd9990ea0508d29a73f`](./contracts/ethereum-1/0x5076d83e5e6c750f783f8cd9990ea0508d29a73f/) | CsigmaV3WithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fb05f52d839301011aad06c7edd156ed554074d`](./contracts/ethereum-1/0x2fb05f52d839301011aad06c7edd156ed554074d/) | CSUSDFundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cbf4af96019f29ddc61438d20b11c77f3620235`](./contracts/ethereum-1/0x2cbf4af96019f29ddc61438d20b11c77f3620235/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fa7015f2859160db9311a924e8ce08b86314a8d`](./contracts/ethereum-1/0x7fa7015f2859160db9311a924e8ce08b86314a8d/) | DiamondInit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3bb0f9f8f24a298b07032a0e24120afcffefdee5`](./contracts/base-8453/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/) | DistributeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ab4477b2d59833a356eea59d51401e56a17fc3f`](./contracts/ethereum-1/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/) | LenderFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bb0f9f8f24a298b07032a0e24120afcffefdee5`](./contracts/ethereum-1/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/) | MetadataFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94858947f20766866abe5e608521134a2baccba4`](./contracts/ethereum-1/0x94858947f20766866abe5e608521134a2baccba4/) | Migration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ab4477b2d59833a356eea59d51401e56a17fc3f`](./contracts/base-8453/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/) | PaymentFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b1463b8f110f927eb49e908b597624d52fcddb4`](./contracts/ethereum-1/0x9b1463b8f110f927eb49e908b597624d52fcddb4/) | PoolManagerFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x45dcf4f9d1b47c138bc1e490a878790932d66caf`](./contracts/base-8453/0x45dcf4f9d1b47c138bc1e490a878790932d66caf/) | StableCoinExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2851e986bb80466a36e8c13817a9df95c4b695ca`](./contracts/ethereum-1/0x2851e986bb80466a36e8c13817a9df95c4b695ca/) | StakingPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447683715f000cfeaf8d2c6c23a6b501408172cc`](./contracts/ethereum-1/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d7bf6dcc4a2f03e82e3da52ebfbae871443322`](./contracts/ethereum-1/0x07d7bf6dcc4a2f03e82e3da52ebfbae871443322/) | VaultFacetExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=4, extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
