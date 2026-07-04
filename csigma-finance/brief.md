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
| CsigmaV2Pool | unknown | ethereum | n/a | 25 deployments: ethereum [`0x057d1f...31e9f0`](./contracts/ethereum-1/0x057d1f972887c7b99048a050249d6b726831e9f0/); ethereum `0x1f75fe...140f41`; ethereum `0x27bd34...b53120`; ethereum `0x95c144...a6e3ac`; ethereum `0xa5b755...9aec4d`; ethereum `0xc1f0b4...51dd77`; ethereum `0xddced7...7a6920`; ethereum `0xe81853...9f3239`; ethereum `0xea7171...c2abb1`; base `0x188bb2...30c986`; base `0x2a4648...ce2b4d`; base `0x2a4eb4...6e817d`; base `0x6609d3...e3f8c8`; base `0x95c144...a6e3ac`; base `0xc1f0b4...51dd77`; base `0xef31a0...8590f3`; arbitrum `0x2d1dda...fd440b`; arbitrum `0x3c6afe...7b81cf`; arbitrum `0x4cee88...256156`; arbitrum `0x6cbaf7...070c11`; arbitrum `0xa77b86...fae0b4`; arbitrum `0xc1f0b4...51dd77`; arbitrum `0xce5ca6...2e5d75`; arbitrum `0xf31c53...b485be`; arbitrum `0xf7d38d...e05b7d` | ✅ Audited |
| DiamondCutFacet | unknown | ethereum | n/a | [`0x3f6222...c80ebd`](./contracts/ethereum-1/0x3f62228db89af0f05e6baa2e27a276635cc80ebd/) | ✅ Audited |
| DiamondLoupeFacet | unknown | ethereum | n/a | [`0xfffb10...319c59`](./contracts/ethereum-1/0xfffb10a6f20d86bbec86b71b7e0e38c21a319c59/) | ✅ Audited |
| Sigma | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37bdd7...f11d41`](./contracts/ethereum-1/0x37bdd789a515140593ece202365e5987c9f11d41/); ethereum `0x53162e...72c8db` | ✅ Audited |
| VaultFacet | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x0673a6...1f6799`](./contracts/ethereum-1/0x0673a6fa0d4a4bacd1821441eb14b3522d1f6799/); ethereum `0x1ad263...37e5ed`; ethereum `0x3c15a2...cfac4d`; ethereum `0xe41ddc...079b82`; ethereum `0xedcb98...916d40`; ethereum `0xf626c6...b69027`; base `0x2bf7e1...750a6e`; base `0x53162e...72c8db`; arbitrum `0x28b178...900be4`; arbitrum `0x2bf7e1...750a6e`; arbitrum `0x4c158b...9192dc`; arbitrum `0xebc301...30124f` | ✅ Audited |

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlFacet | unknown | base | n/a | 3 deployments: ethereum `0x45dcf4...d66caf`; base [`0x1ad263...37e5ed`](./contracts/base-8453/0x1ad263d2521382db8a5d12c22586e0af1f37e5ed/); arbitrum [`0x1ad263...37e5ed`](./contracts/arbitrum-42161/0x1ad263d2521382db8a5d12c22586e0af1f37e5ed/) | ⚠️ Unaudited |
| CreditPoolFacet | unknown | arbitrum | n/a | 8 deployments: ethereum `0x05c55c...5271b6`; ethereum `0x2bf7e1...750a6e`; ethereum `0x4c158b...9192dc`; base `0x37bdd7...f11d41`; base `0x9b1463...fcddb4`; arbitrum [`0x057d1f...31e9f0`](./contracts/arbitrum-42161/0x057d1f972887c7b99048a050249d6b726831e9f0/); arbitrum `0x9b1463...fcddb4`; arbitrum `0xecc7c7...67c068` | ⚠️ Unaudited |
| CsigmaAssetOracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1abee0...ac2b38`](./contracts/ethereum-1/0x1abee07cc868b50b9fce2d151ea678c3e7ac2b38/); ethereum `0x3936eb...35446f`; ethereum `0xf29b38...bfaafa` | ⚠️ Unaudited |
| CsigmaPDNv1_1 | unknown | arbitrum | n/a | [`0x67a1fc...5b1395`](./contracts/arbitrum-42161/0x67a1fc35961dd0e293bb4481b48491adf95b1395/) | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3cafaa...8b3b18`](./contracts/ethereum-1/0x3cafaa19816b8b23245b6c4dbe7649efc38b3b18/); ethereum `0x94facc...0fdbb4` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | base | n/a | 2 deployments: base [`0x057d1f...31e9f0`](./contracts/base-8453/0x057d1f972887c7b99048a050249d6b726831e9f0/); base `0x6cbaf7...070c11` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x05acd1...ab0571`](./contracts/arbitrum-42161/0x05acd1f16f0dee7e72367b076d31e68c2cab0571/); arbitrum `0xee3794...6652d6` | ⚠️ Unaudited |
| CsigmaPermissionedFundManager | governance | arbitrum | n/a | 3 deployments: ethereum `0xa9fca7...bd2330`; base `0x7ce643...16063b`; arbitrum [`0x6132de...75cf1a`](./contracts/arbitrum-42161/0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a/) | ⚠️ Unaudited |
| CsigmaPermissionedPool | core_logic | base | n/a | 3 deployments: ethereum `0xe27cd6...85d411`; base [`0x85e700...534e17`](./contracts/base-8453/0x85e700e92dde9904009ac116251b5598c8534e17/); arbitrum `0xc6014a...527dd7` | ⚠️ Unaudited |
| CsigmaPermissionedWithdrawalManager | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x25f7e3...9dacb9`](./contracts/ethereum-1/0x25f7e3b56bf360250f94307fb22aa9b8049dacb9/); base `0x4c158b...9192dc`; arbitrum `0x5acb48...8153d1` | ⚠️ Unaudited |
| CsigmaRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c9148...bf9302`](./contracts/ethereum-1/0x8c91481314de612ec55b96cf12ca121f20bf9302/); ethereum `0xe2e965...a2c79f` | ⚠️ Unaudited |
| CsigmaRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcdda7e...655a8d`](./contracts/ethereum-1/0xcdda7e103c87d35d43108539f24aec1eaa655a8d/); ethereum `0xd5841c...191e8e` | ⚠️ Unaudited |
| CsigmaRouter | unknown | base | n/a | 2 deployments: base [`0xb8eb87...41a674`](./contracts/base-8453/0xb8eb879cf35694078c34bd2a0efc08fa5041a674/); base `0xf5c36d...4cbe08` | ⚠️ Unaudited |
| CsigmaRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6d6175...03581d`](./contracts/arbitrum-42161/0x6d617583345b200ec5d9f93594509f335103581d/); arbitrum `0xf1f0b8...86dd08` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79cda4...700aea`](./contracts/ethereum-1/0x79cda4f5f712f15261b0944fb2bc8ee637700aea/); ethereum `0xcbf2e5...56572f` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | base | n/a | 2 deployments: base [`0x447683...8172cc`](./contracts/base-8453/0x447683715f000cfeaf8d2c6c23a6b501408172cc/); base `0xa77b86...fae0b4` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x920296...56655e`](./contracts/arbitrum-42161/0x920296afd1140faf368a1516986d84752e56655e/); arbitrum `0xddced7...7a6920` | ⚠️ Unaudited |
| CsigmaUSD | unknown | ethereum | n/a | 3 deployments: ethereum [`0x04d15c...2c5374`](./contracts/ethereum-1/0x04d15cea4bd7ced196c24ce87a0190b9a72c5374/); ethereum `0x1708c2...a3adf9`; ethereum `0x183d14...6594b0` | ⚠️ Unaudited |
| CsigmaUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x347aec...7ea535`](./contracts/ethereum-1/0x347aec0dabb6d2ffd8bb735b2b79b334107ea535/); ethereum `0x9eabed...89c246` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb5337c...1f3e55`](./contracts/ethereum-1/0xb5337c2e320d61be3511216b9b4d32b2c41f3e55/); ethereum `0xd45b27...909547` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | base | n/a | 13 deployments: ethereum `0x4c28f5...561bd4`; ethereum `0x5334b6...cd2a3a`; ethereum `0x920296...56655e`; ethereum `0x929658...04189c`; ethereum `0xce5ca6...2e5d75`; base [`0x2d24d4...fabb32`](./contracts/base-8453/0x2d24d42a447ba1f782f85665f3d0a71097fabb32/); base `0x67a1fc...5b1395`; base `0xb5337c...1f3e55`; base `0xf6d6ef...9ab9c9`; arbitrum `0x54c475...f9cec0`; arbitrum `0x7ce643...16063b`; arbitrum `0x7d613b...ef72c8`; arbitrum `0x82c369...de79e3` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | base | n/a | 2 deployments: base [`0x4cee88...256156`](./contracts/base-8453/0x4cee88aa3fc282c7215fde69ef91b28122256156/); base `0xe76c20...a3568b` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4c28f5...561bd4`](./contracts/arbitrum-42161/0x4c28f5c87e5557db971c9a2f862bfdcf9f561bd4/); arbitrum `0x63da09...bf6d61` | ⚠️ Unaudited |
| CsigmaV2FundManager | unknown | base | n/a | 6 deployments: ethereum `0x2e0ae0...b058da`; ethereum `0x7d613b...ef72c8`; base [`0x2c787e...29510b`](./contracts/base-8453/0x2c787e74af551ae67feb2dec611166851729510b/); base `0x47a290...0ca5d9`; arbitrum `0x6219e9...3630cd`; arbitrum `0xd5f273...9a4776` | ⚠️ Unaudited |
| CsigmaV2StakingPool | unknown | base | n/a | 3 deployments: ethereum `0x798710...22c60e`; base [`0x5da875...45924a`](./contracts/base-8453/0x5da8756917471702ea8642e849872b01c545924a/); arbitrum `0x798710...22c60e` | ⚠️ Unaudited |
| CsigmaV2StakingPoolExtension | unknown | base | n/a | 3 deployments: ethereum `0xf7d38d...e05b7d`; base [`0xe41ddc...079b82`](./contracts/base-8453/0xe41ddcd6e75a420241066312b6ebe17a26079b82/); arbitrum `0xe81853...9f3239` | ⚠️ Unaudited |
| CsigmaV2WithdrawalManager | operational_periphery | ethereum | n/a | 12 deployments: ethereum [`0x2db11a...3fc725`](./contracts/ethereum-1/0x2db11a6263c068d530ee8b82a25e715d463fc725/); ethereum `0x67db53...c45949`; ethereum `0x99888c...b8274d`; ethereum `0xff3222...88e2e6`; base `0x6d7261...9345b2`; base `0x920296...56655e`; base `0xd055b4...031f38`; base `0xf1e475...5ff767`; arbitrum `0x4313b8...279c19`; arbitrum `0x71c492...e53110`; arbitrum `0xd2a0ab...5b0463`; arbitrum `0xdb2da1...efa661` | ⚠️ Unaudited |
| CsigmaV3Pool | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0b27a7...8a8e12`](./contracts/ethereum-1/0x0b27a7a8d22c383906914521ff1b24bf8f8a8e12/); ethereum `0x1922d1...b6e151`; ethereum `0xbd3f0b...bdf777`; ethereum `0xd5d097...14b47e`; ethereum `0xead919...74fd4c` | ⚠️ Unaudited |
| CsigmaV3Pool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x6a4605...5dbb72`](./contracts/ethereum-1/0x6a460564ccc601d2cd15399d8ebe52448b5dbb72/); ethereum `0xdbf149...02eb22`; ethereum `0xe3bf45...1b60b4` | ⚠️ Unaudited |
| CsigmaV3WithdrawalManager | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x5076d8...29a73f`](./contracts/ethereum-1/0x5076d83e5e6c750f783f8cd9990ea0508d29a73f/); ethereum `0x9264fe...fe73d4`; ethereum `0x9d6812...1a0c2e`; ethereum `0xa3a8cb...966906` | ⚠️ Unaudited |
| CSUSDFundManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2fb05f...54074d`](./contracts/ethereum-1/0x2fb05f52d839301011aad06c7edd156ed554074d/); ethereum `0x6a3a7f...5fbd3b`; ethereum `0xe33d61...2e73f2` | ⚠️ Unaudited |
| Diamond | unknown | ethereum | n/a | [`0x2cbf4a...620235`](./contracts/ethereum-1/0x2cbf4af96019f29ddc61438d20b11c77f3620235/) | ⚠️ Unaudited |
| DiamondInit | unknown | ethereum | n/a | [`0x7fa701...314a8d`](./contracts/ethereum-1/0x7fa7015f2859160db9311a924e8ce08b86314a8d/) | ⚠️ Unaudited |
| DistributeFacet | unknown | base | n/a | 3 deployments: ethereum `0x722974...879243`; base [`0x3bb0f9...efdee5`](./contracts/base-8453/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/); arbitrum `0xc97896...c14b84` | ⚠️ Unaudited |
| LenderFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2ab447...17fc3f`](./contracts/ethereum-1/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/); base `0x33a561...6ed2cd`; arbitrum `0x33a561...6ed2cd` | ⚠️ Unaudited |
| MetadataFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3bb0f9...efdee5`](./contracts/ethereum-1/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/); base `0xbfcf3d...4463fe`; arbitrum `0xbfcf3d...4463fe` | ⚠️ Unaudited |
| Migration | unknown | ethereum | n/a | 2 deployments: ethereum [`0x948589...accba4`](./contracts/ethereum-1/0x94858947f20766866abe5e608521134a2baccba4/); ethereum `0xaea29e...630c6d` | ⚠️ Unaudited |
| PaymentFacet | unknown | base | n/a | 3 deployments: ethereum `0xbfcf3d...4463fe`; base [`0x2ab447...17fc3f`](./contracts/base-8453/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/); arbitrum [`0x2ab447...17fc3f`](./contracts/arbitrum-42161/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/) | ⚠️ Unaudited |
| PoolManagerFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9b1463...fcddb4`](./contracts/ethereum-1/0x9b1463b8f110f927eb49e908b597624d52fcddb4/); base `0xc62396...122275`; arbitrum `0xc62396...122275` | ⚠️ Unaudited |
| StableCoinExtension | unknown | base | n/a | 3 deployments: ethereum `0xff2307...cc4963`; base [`0x45dcf4...d66caf`](./contracts/base-8453/0x45dcf4f9d1b47c138bc1e490a878790932d66caf/); arbitrum `0xd146f6...1dec7a` | ⚠️ Unaudited |
| StakingPlatform | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2851e9...b695ca`](./contracts/ethereum-1/0x2851e986bb80466a36e8c13817a9df95c4b695ca/); ethereum `0x4e8a07...9836a3`; ethereum `0x71ddb7...c75973` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | [`0x447683...8172cc`](./contracts/ethereum-1/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | ⚠️ Unaudited |
| VaultFacetExtension | unknown | ethereum | n/a | 3 deployments: ethereum [`0x07d7bf...443322`](./contracts/ethereum-1/0x07d7bf6dcc4a2f03e82e3da52ebfbae871443322/); ethereum `0xf6d6ef...9ab9c9`; arbitrum `0x3bb0f9...efdee5` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x15ccd7...a33e8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3283f3...8cf05a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b40e2...5317df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4010cd...ebdded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ff9e9...701eb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f3474...c27930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cbaf7...070c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7938b7...7c5733` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0002e...dd29a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8d6bf...1e6db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc01e4...db6182` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58735...505da5` | ❓ Unverified |

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
| base | [`0x1ad263...37e5ed`](./contracts/base-8453/0x1ad263d2521382db8a5d12c22586e0af1f37e5ed/) | AccessControlFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x057d1f...31e9f0`](./contracts/arbitrum-42161/0x057d1f972887c7b99048a050249d6b726831e9f0/) | CreditPoolFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1abee0...ac2b38`](./contracts/ethereum-1/0x1abee07cc868b50b9fce2d151ea678c3e7ac2b38/) | CsigmaAssetOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x67a1fc...5b1395`](./contracts/arbitrum-42161/0x67a1fc35961dd0e293bb4481b48491adf95b1395/) | CsigmaPDNv1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cafaa...8b3b18`](./contracts/ethereum-1/0x3cafaa19816b8b23245b6c4dbe7649efc38b3b18/) | CsigmaPermissionedFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x057d1f...31e9f0`](./contracts/base-8453/0x057d1f972887c7b99048a050249d6b726831e9f0/) | CsigmaPermissionedFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05acd1...ab0571`](./contracts/arbitrum-42161/0x05acd1f16f0dee7e72367b076d31e68c2cab0571/) | CsigmaPermissionedFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6132de...75cf1a`](./contracts/arbitrum-42161/0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a/) | CsigmaPermissionedFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x85e700...534e17`](./contracts/base-8453/0x85e700e92dde9904009ac116251b5598c8534e17/) | CsigmaPermissionedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25f7e3...9dacb9`](./contracts/ethereum-1/0x25f7e3b56bf360250f94307fb22aa9b8049dacb9/) | CsigmaPermissionedWithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c9148...bf9302`](./contracts/ethereum-1/0x8c91481314de612ec55b96cf12ca121f20bf9302/) | CsigmaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdda7e...655a8d`](./contracts/ethereum-1/0xcdda7e103c87d35d43108539f24aec1eaa655a8d/) | CsigmaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb8eb87...41a674`](./contracts/base-8453/0xb8eb879cf35694078c34bd2a0efc08fa5041a674/) | CsigmaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6d6175...03581d`](./contracts/arbitrum-42161/0x6d617583345b200ec5d9f93594509f335103581d/) | CsigmaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79cda4...700aea`](./contracts/ethereum-1/0x79cda4f5f712f15261b0944fb2bc8ee637700aea/) | CsigmaTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x447683...8172cc`](./contracts/base-8453/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | CsigmaTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x920296...56655e`](./contracts/arbitrum-42161/0x920296afd1140faf368a1516986d84752e56655e/) | CsigmaTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d15c...2c5374`](./contracts/ethereum-1/0x04d15cea4bd7ced196c24ce87a0190b9a72c5374/) | CsigmaUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x347aec...7ea535`](./contracts/ethereum-1/0x347aec0dabb6d2ffd8bb735b2b79b334107ea535/) | CsigmaUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5337c...1f3e55`](./contracts/ethereum-1/0xb5337c2e320d61be3511216b9b4d32b2c41f3e55/) | CsigmaV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d24d4...fabb32`](./contracts/base-8453/0x2d24d42a447ba1f782f85665f3d0a71097fabb32/) | CsigmaV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4cee88...256156`](./contracts/base-8453/0x4cee88aa3fc282c7215fde69ef91b28122256156/) | CsigmaV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4c28f5...561bd4`](./contracts/arbitrum-42161/0x4c28f5c87e5557db971c9a2f862bfdcf9f561bd4/) | CsigmaV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2c787e...29510b`](./contracts/base-8453/0x2c787e74af551ae67feb2dec611166851729510b/) | CsigmaV2FundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5da875...45924a`](./contracts/base-8453/0x5da8756917471702ea8642e849872b01c545924a/) | CsigmaV2StakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe41ddc...079b82`](./contracts/base-8453/0xe41ddcd6e75a420241066312b6ebe17a26079b82/) | CsigmaV2StakingPoolExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db11a...3fc725`](./contracts/ethereum-1/0x2db11a6263c068d530ee8b82a25e715d463fc725/) | CsigmaV2WithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b27a7...8a8e12`](./contracts/ethereum-1/0x0b27a7a8d22c383906914521ff1b24bf8f8a8e12/) | CsigmaV3Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a4605...5dbb72`](./contracts/ethereum-1/0x6a460564ccc601d2cd15399d8ebe52448b5dbb72/) | CsigmaV3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5076d8...29a73f`](./contracts/ethereum-1/0x5076d83e5e6c750f783f8cd9990ea0508d29a73f/) | CsigmaV3WithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fb05f...54074d`](./contracts/ethereum-1/0x2fb05f52d839301011aad06c7edd156ed554074d/) | CSUSDFundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cbf4a...620235`](./contracts/ethereum-1/0x2cbf4af96019f29ddc61438d20b11c77f3620235/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fa701...314a8d`](./contracts/ethereum-1/0x7fa7015f2859160db9311a924e8ce08b86314a8d/) | DiamondInit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3bb0f9...efdee5`](./contracts/base-8453/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/) | DistributeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ab447...17fc3f`](./contracts/ethereum-1/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/) | LenderFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bb0f9...efdee5`](./contracts/ethereum-1/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/) | MetadataFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x948589...accba4`](./contracts/ethereum-1/0x94858947f20766866abe5e608521134a2baccba4/) | Migration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ab447...17fc3f`](./contracts/base-8453/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/) | PaymentFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b1463...fcddb4`](./contracts/ethereum-1/0x9b1463b8f110f927eb49e908b597624d52fcddb4/) | PoolManagerFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x45dcf4...d66caf`](./contracts/base-8453/0x45dcf4f9d1b47c138bc1e490a878790932d66caf/) | StableCoinExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2851e9...b695ca`](./contracts/ethereum-1/0x2851e986bb80466a36e8c13817a9df95c4b695ca/) | StakingPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447683...8172cc`](./contracts/ethereum-1/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d7bf...443322`](./contracts/ethereum-1/0x07d7bf6dcc4a2f03e82e3da52ebfbae871443322/) | VaultFacetExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
