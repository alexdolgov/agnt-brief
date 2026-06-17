# Agentic Audit Brief: cSigma Finance

## Project Overview

- Project: cSigma Finance (`csigma-finance`)
- Website: [https://csigma.finance](https://csigma.finance)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:50.013Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum
- Contract surface: 42 unique implementations (118 raw deployments)
- DeFi Llama TVL: $12,657,718.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

cSigma Finance is a decentralized lending protocol that enables real-world asset (RWA) backed loans. It provides vaults for collateral management, pools for liquidity, and factories for deploying new lending markets.

### Architecture

The cSigma Finance family uses VaultFacet for core vault logic and CsigmaV3Pool for liquidity pools, both managed through factory contracts. The Discover family's Sigma contract appears to be a predecessor or alternative implementation, sharing the same deployer cluster but no direct on-chain dependency with the main protocol.

## Contract Surface Quality

- Indexed contracts: 209; live-surface contracts included: 118 (34 live, 84 unknown).
- Excluded by liveness: 40 inactive, 51 singleton, 0 uninitialized.
- Deployment units: 0/24 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 15/32 (46.9%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 1
- Unverified implementations: 10
- Unique implementations: 42
- Raw deployments: 118
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunebytes | Tier 2 | 11 | 34.4% | n/a |
| QuillAudits | Tier 2 | 4 | 12.5% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlFacet | governance | base | n/a | 2 deployments: base [`0x1ad263...37e5ed`](./contracts/base-8453/0x1ad263d2521382db8a5d12c22586e0af1f37e5ed/); arbitrum [`0x1ad263...37e5ed`](./contracts/arbitrum-42161/0x1ad263d2521382db8a5d12c22586e0af1f37e5ed/) | ✅ Audited |
| CreditPoolFacet | core_logic | arbitrum | n/a | 5 deployments: base `0x37bdd7...f11d41`; base `0x9b1463...fcddb4`; arbitrum [`0x057d1f...31e9f0`](./contracts/arbitrum-42161/0x057d1f972887c7b99048a050249d6b726831e9f0/); arbitrum `0x9b1463...fcddb4`; arbitrum `0xecc7c7...67c068` | ✅ Audited |
| CsigmaV2FundManager | governance | base | n/a | 4 deployments: base [`0x2c787e...29510b`](./contracts/base-8453/0x2c787e74af551ae67feb2dec611166851729510b/); base `0x47a290...0ca5d9`; arbitrum `0x6219e9...3630cd`; arbitrum `0xd5f273...9a4776` | ✅ Audited |
| CsigmaV2Pool | core_logic | base | n/a | 18 deployments: ethereum `0xa5b755...9aec4d`; ethereum `0xea7171...c2abb1`; base [`0x188bb2...30c986`](./contracts/base-8453/0x188bb2c3d514b7500e06a9024b089f096430c986/); base `0x2a4648...ce2b4d`; base `0x2a4eb4...6e817d`; base `0x6609d3...e3f8c8`; base `0x95c144...a6e3ac`; base `0xc1f0b4...51dd77`; base `0xef31a0...8590f3`; arbitrum `0x2d1dda...fd440b`; arbitrum `0x3c6afe...7b81cf`; arbitrum `0x4cee88...256156`; arbitrum `0x6cbaf7...070c11`; arbitrum `0xa77b86...fae0b4`; arbitrum `0xc1f0b4...51dd77`; arbitrum `0xce5ca6...2e5d75`; arbitrum `0xf31c53...b485be`; arbitrum `0xf7d38d...e05b7d` | ✅ Audited |
| CsigmaV2StakingPool | core_logic | base | n/a | 2 deployments: base [`0x5da875...45924a`](./contracts/base-8453/0x5da8756917471702ea8642e849872b01c545924a/); arbitrum `0x798710...22c60e` | ✅ Audited |
| CsigmaV2StakingPoolExtension | adapter | base | n/a | 2 deployments: base [`0xe41ddc...079b82`](./contracts/base-8453/0xe41ddcd6e75a420241066312b6ebe17a26079b82/); arbitrum `0xe81853...9f3239` | ✅ Audited |
| DiamondCutFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3f6222...c80ebd`](./contracts/ethereum-1/0x3f62228db89af0f05e6baa2e27a276635cc80ebd/); base `0xbe08d0...4cd8c8`; arbitrum `0xbe08d0...4cd8c8` | ✅ Audited |
| DiamondLoupeFacet | unknown | base | n/a | 3 deployments: ethereum `0xfffb10...319c59`; base [`0xfead4e...43de62`](./contracts/base-8453/0xfead4e7c91965ff73c56b0db30ef367a8e43de62/); arbitrum [`0xfead4e...43de62`](./contracts/arbitrum-42161/0xfead4e7c91965ff73c56b0db30ef367a8e43de62/) | ✅ Audited |
| LenderFacet | unknown | arbitrum | n/a | [`0x33a561...6ed2cd`](./contracts/arbitrum-42161/0x33a5613897604d093fd9f8786300a52ba66ed2cd/) | ✅ Audited |
| MetadataFacet | unknown | base | n/a | 2 deployments: base [`0xbfcf3d...4463fe`](./contracts/base-8453/0xbfcf3dbfc43184c0d286b1ef1936e3bd2f4463fe/); arbitrum [`0xbfcf3d...4463fe`](./contracts/arbitrum-42161/0xbfcf3dbfc43184c0d286b1ef1936e3bd2f4463fe/) | ✅ Audited |
| PaymentFacet | unknown | base | n/a | 2 deployments: base [`0x2ab447...17fc3f`](./contracts/base-8453/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/); arbitrum [`0x2ab447...17fc3f`](./contracts/arbitrum-42161/0x2ab4477b2d59833a356eea59d51401e56a17fc3f/) | ✅ Audited |
| PoolManagerFacet | core_logic | base | n/a | 2 deployments: base [`0xc62396...122275`](./contracts/base-8453/0xc623967550d4c799e9ec575499fad38bbe122275/); arbitrum [`0xc62396...122275`](./contracts/arbitrum-42161/0xc623967550d4c799e9ec575499fad38bbe122275/) | ✅ Audited |
| StableCoinExtension | adapter | base | n/a | 2 deployments: base [`0x45dcf4...d66caf`](./contracts/base-8453/0x45dcf4f9d1b47c138bc1e490a878790932d66caf/); arbitrum `0xd146f6...1dec7a` | ✅ Audited |
| VaultFacet | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x0673a6...1f6799`](./contracts/ethereum-1/0x0673a6fa0d4a4bacd1821441eb14b3522d1f6799/); base `0x2bf7e1...750a6e`; base `0x53162e...72c8db`; arbitrum `0x28b178...900be4`; arbitrum `0x2bf7e1...750a6e`; arbitrum `0x4c158b...9192dc` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CsigmaPDN | unknown | arbitrum | n/a | [`0x53162e...72c8db`](./contracts/arbitrum-42161/0x53162ec0adae49f21515bb8ca91534dd3872c8db/) | ⚠️ Unaudited |
| CsigmaPDNInvestmentNFT | operational_periphery | arbitrum | n/a | [`0xad3f5b...6f4e4b`](./contracts/arbitrum-42161/0xad3f5b5a59f5b0d46b0bb629e22bd12f2e6f4e4b/) | ⚠️ Unaudited |
| CsigmaPDNv1_1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x2a4eb4...6e817d`](./contracts/arbitrum-42161/0x2a4eb45a52ebcae4ab62959088ca1c7c0a6e817d/); arbitrum `0x447683...8172cc`; arbitrum `0x85e700...534e17` | ⚠️ Unaudited |
| CsigmaPDNv1_1 | unknown | arbitrum | unit-30577 | [`0x67a1fc...5b1395`](./contracts/arbitrum-42161/0x67a1fc35961dd0e293bb4481b48491adf95b1395/) | ⚠️ Unaudited |
| CsigmaPermissionedFundManager | governance | arbitrum | n/a | 3 deployments: ethereum `0xa9fca7...bd2330`; base `0x7ce643...16063b`; arbitrum [`0x6132de...75cf1a`](./contracts/arbitrum-42161/0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a/) | ⚠️ Unaudited |
| CsigmaPermissionedPool | core_logic | base | n/a | 3 deployments: ethereum `0xe27cd6...85d411`; base [`0x85e700...534e17`](./contracts/base-8453/0x85e700e92dde9904009ac116251b5598c8534e17/); arbitrum `0xc6014a...527dd7` | ⚠️ Unaudited |
| CsigmaPermissionedWithdrawalManager | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x25f7e3...9dacb9`](./contracts/ethereum-1/0x25f7e3b56bf360250f94307fb22aa9b8049dacb9/); base `0x4c158b...9192dc`; arbitrum `0x5acb48...8153d1` | ⚠️ Unaudited |
| CsigmaV2Factory | registry | base | n/a | 8 deployments: base [`0x2d24d4...fabb32`](./contracts/base-8453/0x2d24d42a447ba1f782f85665f3d0a71097fabb32/); base `0x67a1fc...5b1395`; base `0xb5337c...1f3e55`; base `0xf6d6ef...9ab9c9`; arbitrum `0x54c475...f9cec0`; arbitrum `0x7ce643...16063b`; arbitrum `0x7d613b...ef72c8`; arbitrum `0x82c369...de79e3` | ⚠️ Unaudited |
| CsigmaV2WithdrawalManager | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x2db11a...3fc725`](./contracts/ethereum-1/0x2db11a6263c068d530ee8b82a25e715d463fc725/); ethereum `0x67db53...c45949`; base `0x6d7261...9345b2`; base `0x920296...56655e`; base `0xd055b4...031f38`; base `0xf1e475...5ff767`; arbitrum `0x4313b8...279c19`; arbitrum `0x71c492...e53110`; arbitrum `0xd2a0ab...5b0463`; arbitrum `0xdb2da1...efa661` | ⚠️ Unaudited |
| CsigmaV3Pool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x6a4605...5dbb72`](./contracts/ethereum-1/0x6a460564ccc601d2cd15399d8ebe52448b5dbb72/); ethereum `0xdbf149...02eb22`; ethereum `0xe3bf45...1b60b4` | ⚠️ Unaudited |
| CsigmaV3WithdrawalManager | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x5076d8...29a73f`](./contracts/ethereum-1/0x5076d83e5e6c750f783f8cd9990ea0508d29a73f/); ethereum `0x9264fe...fe73d4`; ethereum `0x9d6812...1a0c2e`; ethereum `0xa3a8cb...966906` | ⚠️ Unaudited |
| Diamond | unknown | ethereum | n/a | [`0x2cbf4a...620235`](./contracts/ethereum-1/0x2cbf4af96019f29ddc61438d20b11c77f3620235/) | ⚠️ Unaudited |
| DiamondInit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7fa701...314a8d`](./contracts/ethereum-1/0x7fa7015f2859160db9311a924e8ce08b86314a8d/); base `0x8a03b6...c3eac2`; arbitrum `0x8a03b6...c3eac2` | ⚠️ Unaudited |
| DistributeFacet | unknown | base | n/a | 2 deployments: base [`0x3bb0f9...efdee5`](./contracts/base-8453/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/); arbitrum `0xc97896...c14b84` | ⚠️ Unaudited |
| StakingPlatform | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2851e9...b695ca`](./contracts/ethereum-1/0x2851e986bb80466a36e8c13817a9df95c4b695ca/); ethereum `0x4e8a07...9836a3`; ethereum `0x71ddb7...c75973` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | [`0x447683...8172cc`](./contracts/ethereum-1/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | ⚠️ Unaudited |
| VaultFacetExtension | adapter | arbitrum | n/a | [`0x3bb0f9...efdee5`](./contracts/arbitrum-42161/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OwnershipFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7938b7...7c5733`](./contracts/ethereum-1/0x7938b7149a6997488318537096301db2b07c5733/); base `0xe715dd...179eda`; arbitrum `0xe715dd...179eda` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x15ccd7...a33e8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3283f3...8cf05a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b40e2...5317df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4010cd...ebdded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ff9e9...701eb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f3474...c27930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0002e...dd29a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8d6bf...1e6db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc01e4...db6182` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58735...505da5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cSigma Edge Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Edge%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-12 | aging | Direct | contract_name | 26 | high |
| [cSigma Institutional Audit Report - Immunebytes.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Institutional%20Audit%20Report%20-%20Immunebytes.pdf) | Immunebytes | Audit | n/a | unknown | Direct | contract_name | 30 | medium |
| [cSigma Token Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Token%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-11 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x53162e...72c8db`](./contracts/arbitrum-42161/0x53162ec0adae49f21515bb8ca91534dd3872c8db/) | CsigmaPDN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xad3f5b...6f4e4b`](./contracts/arbitrum-42161/0xad3f5b5a59f5b0d46b0bb629e22bd12f2e6f4e4b/) | CsigmaPDNInvestmentNFT | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a4eb4...6e817d`](./contracts/arbitrum-42161/0x2a4eb45a52ebcae4ab62959088ca1c7c0a6e817d/) | CsigmaPDNv1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6132de...75cf1a`](./contracts/arbitrum-42161/0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a/) | CsigmaPermissionedFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x85e700...534e17`](./contracts/base-8453/0x85e700e92dde9904009ac116251b5598c8534e17/) | CsigmaPermissionedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25f7e3...9dacb9`](./contracts/ethereum-1/0x25f7e3b56bf360250f94307fb22aa9b8049dacb9/) | CsigmaPermissionedWithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d24d4...fabb32`](./contracts/base-8453/0x2d24d42a447ba1f782f85665f3d0a71097fabb32/) | CsigmaV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db11a...3fc725`](./contracts/ethereum-1/0x2db11a6263c068d530ee8b82a25e715d463fc725/) | CsigmaV2WithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a4605...5dbb72`](./contracts/ethereum-1/0x6a460564ccc601d2cd15399d8ebe52448b5dbb72/) | CsigmaV3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5076d8...29a73f`](./contracts/ethereum-1/0x5076d83e5e6c750f783f8cd9990ea0508d29a73f/) | CsigmaV3WithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cbf4a...620235`](./contracts/ethereum-1/0x2cbf4af96019f29ddc61438d20b11c77f3620235/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fa701...314a8d`](./contracts/ethereum-1/0x7fa7015f2859160db9311a924e8ce08b86314a8d/) | DiamondInit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3bb0f9...efdee5`](./contracts/base-8453/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/) | DistributeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2851e9...b695ca`](./contracts/ethereum-1/0x2851e986bb80466a36e8c13817a9df95c4b695ca/) | StakingPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447683...8172cc`](./contracts/ethereum-1/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3bb0f9...efdee5`](./contracts/arbitrum-42161/0x3bb0f9f8f24a298b07032a0e24120afcffefdee5/) | VaultFacetExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=90

Zero-match audit list:

- [2030] cSigma Token Audit Report - QuillAudits.pdf

Fork inheritance lineage and inherited audits are included when available.
