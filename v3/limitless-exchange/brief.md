# Agentic Audit Brief: Limitless Exchange

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Limitless Exchange (`limitless-exchange`)
- Website: [https://limitless.exchange](https://limitless.exchange)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 64 unique implementations (64 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $727,571.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Limitless Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across base. Structural roles: 9 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (9)
- Contract kinds: contract (9)
- Detected standards: erc165 (2), erc1967proxy (1), erc20permit (1)
- Frameworks: solmate (8), openzeppelin (3)
- Upgradeable-pattern rows: 1

## Fork Analysis

2 of 9 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

**CTFExchange** (`0x05c748e2f4dcde0ec9fa8ddc40de6b867f923fa5`, chain 8453)
Origin: limitless-exchange (`0x46e607...48891d`)
Containment: 100.0% - 35 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**NegRiskAdapter** (`0x6151ef8368b6316c1aa3c68453ef083ad31e712d`, chain 8453)
Origin: predict-fun (`0x41dce1...0b2a40`)
Containment: 66.7% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- renounceAdmin()

Removals (removed from original):
- addOperator(address)
- isOperator(address)
- removeOperator(address)
- renounceAdminRole()
- renounceOperatorRole()
- setIsConvertPositionsGated(bool)
- setIsMergePositionsGated(bool)
- setIsSplitPositionGated(bool)
- setPermissions(address,bool,bool,bool)

### Original Contracts (no fork detected - full audit scope)

- FeeModule (`0x5130c2c398f930c4f43b15635410047cbea9d6eb`, chain 8453)
- FiatTokenProxy (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- NegRiskCtfExchange (`0x46e607d3f4a8494b0ab9b304d1463e2f4848891d`, chain 8453)
- NegRiskFeeModule (`0x18b3e1192c01286050a0994bc26f7226ae4a483d`, chain 8453)
- NegRiskOperator (`0xae363abc7b264755e8706d81475c3586d4543992`, chain 8453)
- Vault (`0x2ec22ee9381d0b3570ccb5887960ddfd05d210b3`, chain 8453)
- WrappedCollateral (`0x428f0fc93221a9957dc667baa07e62d50c6b8c03`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 55 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 9 of 64 unique; 55 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 64
- Raw deployments: 64
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

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConditionalTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b017cdcd731ff177ec00c4294561ff00ab9ae28` | ⚠️ Unaudited |
| CTFExchange | unknown | project_anchor | own_supporting | 0 | base | unit-266862 | `0x05c748e2f4dcde0ec9fa8ddc40de6b867f923fa5` | ⚠️ Unaudited |
| FeeModule | unknown | project_anchor | own_supporting | 0 | base | unit-266867 | `0x5130c2c398f930c4f43b15635410047cbea9d6eb` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | base | unit-266870 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d0c9a70d85e42ba8b76dc06620d4e988ec8d0c1` | ⚠️ Unaudited |
| Fixed192x64Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe4974e19404894baa5ba4562cf748bcacf466bb` | ⚠️ Unaudited |
| FixedProductMarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8cf2c130abc977a93ded099bbf54fe8c8f68cb32` | ⚠️ Unaudited |
| FPMMDeterministicFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b5d0c08cffc8de2d079a21e37ddb40c452c7ca6` | ⚠️ Unaudited |
| LMSRMarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0665acb185a54fb3ec6a22a0097d1b432cac94ae` | ⚠️ Unaudited |
| LMTS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9eadbe35f3ee3bf3e28180070c429298a1b02f93` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2230393edad0299b7e7b59f20aa856cd1bed52e1` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x050b10cbcd8448bbad6fe644094ed4aa5b8379b8` | ⚠️ Unaudited |
| MockCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd9dc7e303654d910b2b30c1caaefa6e4eec71dd` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04792d48550be72a5e80d7dd04e65e06ef270378` | ⚠️ Unaudited |
| MockWETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f654baec6fd510309a3a8f3461f8d73e7eef2b3` | ⚠️ Unaudited |
| NegRiskAdapter | unknown | project_anchor | own_supporting | 0 | base | unit-266868 | `0x6151ef8368b6316c1aa3c68453ef083ad31e712d` | ⚠️ Unaudited |
| NegRiskCtfExchange | unknown | project_anchor | own_supporting | 0 | base | unit-266866 | `0x46e607d3f4a8494b0ab9b304d1463e2f4848891d` | ⚠️ Unaudited |
| NegRiskFeeModule | unknown | project_anchor | own_supporting | 0 | base | unit-266863 | `0x18b3e1192c01286050a0994bc26f7226ae4a483d` | ⚠️ Unaudited |
| NegRiskOperator | unknown | project_anchor | own_supporting | 0 | base | unit-266869 | `0xae363abc7b264755e8706d81475c3586d4543992` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | base | unit-266864 | `0x2ec22ee9381d0b3570ccb5887960ddfd05d210b3` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa94cbe4ad581a7761c62142e6c22582b8c57afed` | ⚠️ Unaudited |
| WrappedCollateral | unknown | project_anchor | own_supporting | 0 | base | unit-266865 | `0x428f0fc93221a9957dc667baa07e62d50c6b8c03` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12615a974d3c9093bd9531a060b5b94760d3bbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15a61459d65d89a25a9e91e0dc9fc69598791505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x181cc6903edfb4cf06a91b152f4d869362d87fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f875569a770a8c069a48055fe8744b030c07d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a3820099a931eb8a15d851259449ed9a815235f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x322068defd92daaed55ecf50339d2f803d6db255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3263b28807901008d9991b0a536586ac5b56e91c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41d7288dd3a04740896f12135bcfb45a2f1b265f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51d9add7b0718c5f491af9fcfab6479b8dbc560a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56bf6785e1036d07942e7fe2b5734ef57fdc624e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a38afc17f7e97ad8d6c547ddb837e40b4aedfc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d6c6a4fea600e0b1a3ab3ef711060310e27886a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x606d242d2c2ffe03be7e09fea834e074590b02db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d8a7d1898306ca129a74c296d14e55e20aae87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73fc1b1395ba964fea8705bff7ef8ea5c23cc661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7afeb946986211950d17f24176039f12c2ab2436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fc645ad1e0d69e679952c40b4d2bebcd38b7018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x80307da4d8ea92cd7a13bbf6b3309431ca7a1c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8071602d710552078bf93249dcd2b0d85c5c834c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8c6064c2e65aa4ce9531600a90107adbf92b7401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e50578aca3c5e2ef5ed2aa4bd66429b5e44c16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x983d539551b219dd40a034dd63071f1c24b96fcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4409d988ca2218d956beefd3874100f444f0dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab1193a0b53d5a8f2e36d659baef7d162ca38d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7d463037836cff84fa9ddc25c1136756b4b5f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7e9ded256c529637e83c230f036de939efd130a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8daa4c8c9f690396f671bb601727a4c3741340c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba8eb0d22790d21d95f43ece00aed7bbce12c8e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd8ff5ac78a3739037feaa18278cc157c4798b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc397d5d70cb3b56b26dd5c2824d49a96c4dabf50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc811f60944057fac420e45e4690b41d350098b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9c98965297bc527861c898329ee280632b76e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbb44e00b928a1562714b5668fd52acd4f66b60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2e4a23e57f67a90bfc999d420fda16de0fb2751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd640e526d7b9feb8e3707335b0bcced455166ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7d245cb2cbe55633e270af8379e5d4aba87bd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda51dc76a6540e8a575969a94f4f21296ac3a66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3e00ba3a9888d1de4834269f62ac008b4bb5c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeecd2cf0ff29d712648fc328be4ee02fc7931c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefa943e61b0f771cf6aa2bcba869cbf66b2277db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1de958f8641448a5ba78c01f434085385af096d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfeb646d32a2a558359419a1c9c5dfb47fd92dadb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 25
- Live contracts: 0
- Unknown liveness contracts: 25
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=25

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | unverified unclassified | UnnamedContract<br>`0x12615a974d3c9093bd9531a060b5b94760d3bbb5` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x15a61459d65d89a25a9e91e0dc9fc69598791505` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x1f875569a770a8c069a48055fe8744b030c07d06` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x2a3820099a931eb8a15d851259449ed9a815235f` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x322068defd92daaed55ecf50339d2f803d6db255` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x3263b28807901008d9991b0a536586ac5b56e91c` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x41d7288dd3a04740896f12135bcfb45a2f1b265f` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x7fc645ad1e0d69e679952c40b4d2bebcd38b7018` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x8071602d710552078bf93249dcd2b0d85c5c834c` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x8e50578aca3c5e2ef5ed2aa4bd66429b5e44c16e` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x983d539551b219dd40a034dd63071f1c24b96fcd` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0xab1193a0b53d5a8f2e36d659baef7d162ca38d2a` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0xb7e9ded256c529637e83c230f036de939efd130a` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0xba8eb0d22790d21d95f43ece00aed7bbce12c8e1` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0xc397d5d70cb3b56b26dd5c2824d49a96c4dabf50` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0xc811f60944057fac420e45e4690b41d350098b86` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0xcbb44e00b928a1562714b5668fd52acd4f66b60c` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0xda51dc76a6540e8a575969a94f4f21296ac3a66d` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0xefa943e61b0f771cf6aa2bcba869cbf66b2277db` | non_address_book | unknown | unknown | unverified | n/a | `0x98b4a5d0205537796b5f996f31552e874ccd2d3f` |
| base | unverified unclassified | UnnamedContract<br>`0x51d9add7b0718c5f491af9fcfab6479b8dbc560a` | non_address_book | unknown | unknown | unverified | n/a | `0xaae78342a756d5dca4319ede5b36ebdbf4a1b47c` |
| base | unverified unclassified | UnnamedContract<br>`0xd640e526d7b9feb8e3707335b0bcced455166ded` | non_address_book | unknown | unknown | unverified | n/a | `0xaae78342a756d5dca4319ede5b36ebdbf4a1b47c` |
| base | unverified unclassified | UnnamedContract<br>`0x181cc6903edfb4cf06a91b152f4d869362d87fab` | non_address_book | unknown | unknown | unverified | n/a | `0xb995d2ed4f7242f15cafa3a708b94a224749f3b2` |
| base | unverified unclassified | UnnamedContract<br>`0x56bf6785e1036d07942e7fe2b5734ef57fdc624e` | non_address_book | unknown | unknown | unverified | n/a | `0xb995d2ed4f7242f15cafa3a708b94a224749f3b2` |
| base | unverified unclassified | UnnamedContract<br>`0x606d242d2c2ffe03be7e09fea834e074590b02db` | non_address_book | unknown | unknown | unverified | n/a | `0xb995d2ed4f7242f15cafa3a708b94a224749f3b2` |
| base | unverified unclassified | UnnamedContract<br>`0x8c6064c2e65aa4ce9531600a90107adbf92b7401` | non_address_book | unknown | unknown | unverified | n/a | `0xb995d2ed4f7242f15cafa3a708b94a224749f3b2` |

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
| base | `0x05c748e2f4dcde0ec9fa8ddc40de6b867f923fa5` | CTFExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5130c2c398f930c4f43b15635410047cbea9d6eb` | FeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6151ef8368b6316c1aa3c68453ef083ad31e712d` | NegRiskAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x46e607d3f4a8494b0ab9b304d1463e2f4848891d` | NegRiskCtfExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18b3e1192c01286050a0994bc26f7226ae4a483d` | NegRiskFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xae363abc7b264755e8706d81475c3586d4543992` | NegRiskOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ec22ee9381d0b3570ccb5887960ddfd05d210b3` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x428f0fc93221a9957dc667baa07e62d50c6b8c03` | WrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

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
