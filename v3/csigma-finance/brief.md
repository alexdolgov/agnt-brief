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
| Sigma | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234584 | `0x53162e...72c8db` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x45dcf4...d66caf`; base `0x1ad263...37e5ed`; arbitrum `0x1ad263...37e5ed` | ⚠️ Unaudited |
| CreditPoolFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: ethereum `0x05c55c...5271b6`; ethereum `0x2bf7e1...750a6e`; ethereum `0x4c158b...9192dc`; base `0x37bdd7...f11d41`; base `0x9b1463...fcddb4`; arbitrum `0x057d1f...31e9f0`; arbitrum `0x9b1463...fcddb4`; arbitrum `0xecc7c7...67c068` | ⚠️ Unaudited |
| CsigmaAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1abee0...ac2b38`; ethereum `0x3936eb...35446f`; ethereum `0xf29b38...bfaafa` | ⚠️ Unaudited |
| CsigmaPDN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53162e...72c8db` | ⚠️ Unaudited |
| CsigmaPDNInvestmentNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad3f5b...6f4e4b` | ⚠️ Unaudited |
| CsigmaPDNv1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x2a4eb4...6e817d`; arbitrum `0x447683...8172cc`; arbitrum `0x85e700...534e17` | ⚠️ Unaudited |
| CsigmaPDNv1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x67a1fc...5b1395` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3cafaa...8b3b18`; ethereum `0x94facc...0fdbb4` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x057d1f...31e9f0`; base `0x6cbaf7...070c11` | ⚠️ Unaudited |
| CsigmaPermissionedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x05acd1...ab0571`; arbitrum `0xee3794...6652d6` | ⚠️ Unaudited |
| CsigmaPermissionedFundManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xa9fca7...bd2330`; base `0x7ce643...16063b`; arbitrum `0x6132de...75cf1a` | ⚠️ Unaudited |
| CsigmaPermissionedPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xe27cd6...85d411`; base `0x85e700...534e17`; arbitrum `0xc6014a...527dd7` | ⚠️ Unaudited |
| CsigmaPermissionedWithdrawalManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x25f7e3...9dacb9`; base `0x4c158b...9192dc`; arbitrum `0x5acb48...8153d1` | ⚠️ Unaudited |
| CsigmaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8c9148...bf9302`; ethereum `0xe2e965...a2c79f` | ⚠️ Unaudited |
| CsigmaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcdda7e...655a8d`; ethereum `0xd5841c...191e8e` | ⚠️ Unaudited |
| CsigmaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb8eb87...41a674`; base `0xf5c36d...4cbe08` | ⚠️ Unaudited |
| CsigmaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6d6175...03581d`; arbitrum `0xf1f0b8...86dd08` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x79cda4...700aea`; ethereum `0xcbf2e5...56572f` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x447683...8172cc`; base `0xa77b86...fae0b4` | ⚠️ Unaudited |
| CsigmaTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x920296...56655e`; arbitrum `0xddced7...7a6920` | ⚠️ Unaudited |
| CsigmaUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x04d15c...2c5374`; ethereum `0x1708c2...a3adf9`; ethereum `0x183d14...6594b0` | ⚠️ Unaudited |
| CsigmaUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x347aec...7ea535`; ethereum `0x9eabed...89c246` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb5337c...1f3e55`; ethereum `0xd45b27...909547` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: ethereum `0x4c28f5...561bd4`; ethereum `0x5334b6...cd2a3a`; ethereum `0x920296...56655e`; ethereum `0x929658...04189c`; ethereum `0xce5ca6...2e5d75`; base `0x2d24d4...fabb32`; base `0x67a1fc...5b1395`; base `0xb5337c...1f3e55`; base `0xf6d6ef...9ab9c9`; arbitrum `0x54c475...f9cec0`; arbitrum `0x7ce643...16063b`; arbitrum `0x7d613b...ef72c8`; arbitrum `0x82c369...de79e3` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4cee88...256156`; base `0xe76c20...a3568b` | ⚠️ Unaudited |
| CsigmaV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4c28f5...561bd4`; arbitrum `0x63da09...bf6d61` | ⚠️ Unaudited |
| CsigmaV2FundManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x2e0ae0...b058da`; ethereum `0x7d613b...ef72c8`; base `0x2c787e...29510b`; base `0x47a290...0ca5d9`; arbitrum `0x6219e9...3630cd`; arbitrum `0xd5f273...9a4776` | ⚠️ Unaudited |
| CsigmaV2Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 25 deployments: ethereum `0x057d1f...31e9f0`; ethereum `0x1f75fe...140f41`; ethereum `0x27bd34...b53120`; ethereum `0x95c144...a6e3ac`; ethereum `0xa5b755...9aec4d`; ethereum `0xc1f0b4...51dd77`; ethereum `0xddced7...7a6920`; ethereum `0xe81853...9f3239`; ethereum `0xea7171...c2abb1`; base `0x188bb2...30c986`; base `0x2a4648...ce2b4d`; base `0x2a4eb4...6e817d`; base `0x6609d3...e3f8c8`; base `0x95c144...a6e3ac`; base `0xc1f0b4...51dd77`; base `0xef31a0...8590f3`; arbitrum `0x2d1dda...fd440b`; arbitrum `0x3c6afe...7b81cf`; arbitrum `0x4cee88...256156`; arbitrum `0x6cbaf7...070c11`; arbitrum `0xa77b86...fae0b4`; arbitrum `0xc1f0b4...51dd77`; arbitrum `0xce5ca6...2e5d75`; arbitrum `0xf31c53...b485be`; arbitrum `0xf7d38d...e05b7d` | ⚠️ Unaudited |
| CsigmaV2StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x798710...22c60e`; base `0x5da875...45924a`; arbitrum `0x798710...22c60e` | ⚠️ Unaudited |
| CsigmaV2StakingPoolExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xf7d38d...e05b7d`; base `0xe41ddc...079b82`; arbitrum `0xe81853...9f3239` | ⚠️ Unaudited |
| CsigmaV2WithdrawalManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x2db11a...3fc725`; ethereum `0x67db53...c45949`; ethereum `0x99888c...b8274d`; ethereum `0xff3222...88e2e6`; base `0x6d7261...9345b2`; base `0x920296...56655e`; base `0xd055b4...031f38`; base `0xf1e475...5ff767`; arbitrum `0x4313b8...279c19`; arbitrum `0x71c492...e53110`; arbitrum `0xd2a0ab...5b0463`; arbitrum `0xdb2da1...efa661` | ⚠️ Unaudited |
| CsigmaV3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x0b27a7...8a8e12`; ethereum `0x1922d1...b6e151`; ethereum `0xbd3f0b...bdf777`; ethereum `0xd5d097...14b47e`; ethereum `0xead919...74fd4c` | ⚠️ Unaudited |
| CsigmaV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6a4605...5dbb72`; ethereum `0xdbf149...02eb22`; ethereum `0xe3bf45...1b60b4` | ⚠️ Unaudited |
| CsigmaV3WithdrawalManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5076d8...29a73f`; ethereum `0x9264fe...fe73d4`; ethereum `0x9d6812...1a0c2e`; ethereum `0xa3a8cb...966906` | ⚠️ Unaudited |
| CSUSDFundManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x2fb05f...54074d`; ethereum `0x6a3a7f...5fbd3b`; ethereum `0xe33d61...2e73f2` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cbf4a...620235` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3f6222...c80ebd`; ethereum `0xe715dd...179eda`; base `0xbe08d0...4cd8c8`; arbitrum `0xbe08d0...4cd8c8` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x7fa701...314a8d`; ethereum `0xd055b4...031f38`; ethereum `0xfead4e...43de62`; base `0x8a03b6...c3eac2`; arbitrum `0x8a03b6...c3eac2` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0xc62396...122275`; ethereum `0xfffb10...319c59`; base `0xfead4e...43de62`; arbitrum `0xfead4e...43de62` | ⚠️ Unaudited |
| DistributeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x722974...879243`; base `0x3bb0f9...efdee5`; arbitrum `0xc97896...c14b84` | ⚠️ Unaudited |
| LenderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ab447...17fc3f`; arbitrum `0x33a561...6ed2cd` | ⚠️ Unaudited |
| LenderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x07d7bf...443322`; base `0x33a561...6ed2cd` | ⚠️ Unaudited |
| MetadataFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3bb0f9...efdee5`; base `0xbfcf3d...4463fe`; arbitrum `0xbfcf3d...4463fe` | ⚠️ Unaudited |
| Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x948589...accba4`; ethereum `0xaea29e...630c6d` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x33a561...6ed2cd`; base `0xe715dd...179eda`; arbitrum `0xe715dd...179eda` | ⚠️ Unaudited |
| PaymentFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xbfcf3d...4463fe`; base `0x2ab447...17fc3f`; arbitrum `0x2ab447...17fc3f` | ⚠️ Unaudited |
| PoolManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9b1463...fcddb4`; base `0xc62396...122275`; arbitrum `0xc62396...122275` | ⚠️ Unaudited |
| Sigma | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-234583 | `0x37bdd7...f11d41` | ⚠️ Unaudited |
| StableCoinExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xff2307...cc4963`; base `0x45dcf4...d66caf`; arbitrum `0xd146f6...1dec7a` | ⚠️ Unaudited |
| StakingPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2851e9...b695ca`; ethereum `0x4e8a07...9836a3`; ethereum `0x71ddb7...c75973` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447683...8172cc` | ⚠️ Unaudited |
| VaultFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0673a6...1f6799`; ethereum `0x1ad263...37e5ed`; ethereum `0x3c15a2...cfac4d`; ethereum `0xe41ddc...079b82`; ethereum `0xf626c6...b69027`; base `0x2bf7e1...750a6e`; base `0x53162e...72c8db`; arbitrum `0x28b178...900be4`; arbitrum `0x2bf7e1...750a6e`; arbitrum `0x4c158b...9192dc` | ⚠️ Unaudited |
| VaultFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xedcb98...916d40`; ethereum `0xf80ba5...1149c9` | ⚠️ Unaudited |
| VaultFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x45dcf4...d66caf`; arbitrum `0xebc301...30124f` | ⚠️ Unaudited |
| VaultFacetExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x07d7bf...443322`; ethereum `0xf6d6ef...9ab9c9`; arbitrum `0x3bb0f9...efdee5` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ccd7...a33e8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3283f3...8cf05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b40e2...5317df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4010cd...ebdded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff9e9...701eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f3474...c27930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cbaf7...070c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7938b7...7c5733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0002e...dd29a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d6bf...1e6db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc01e4...db6182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58735...505da5` | ❓ Unverified |

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
| cSigma Token Audit Report - QuillAudits.pdf | Sigma | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x53162e...72c8db` — deployed 2024-07-04 15:11:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

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
