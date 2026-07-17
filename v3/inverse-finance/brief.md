# Agentic Audit Brief: Inverse Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Inverse Finance (`inverse-finance`)
- Website: [https://www.inverse.finance](https://www.inverse.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, ethereum, optimism
- Contract surface: 179 unique implementations (399 raw deployments)
- Coverage basis: 7/43 confirmed own live verified implementations (16.3%); conservative 16.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $33,224,895.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Inverse Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 42 contract row(s) across arbitrum, base, berachain, ethereum, optimism. Structural roles: 33 core, 9 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 42
- Structural roles: core (33), supporting (9)
- Contract kinds: contract (42)
- Detected standards: erc20permit (9), erc165 (7), ownable (3), erc20 (2)
- Frameworks: chainlink (7), openzeppelin (2), solmate (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

17 of 39 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

**Market** (`0x27b6c301fd441f3345d61b7a4245e1f823c3f9c4`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x28684485369f7478f42aaa62660123ab5d573537`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x2a256306d8ba899e33b01e495982656884ac77ff`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x3474ad0e3a9775c9f68b415a7a9880b0cab9397a`, chain 1)
Origin: volta-club (`0x63df5e23db45a2066508318f172ba45b9cd37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x3fd3dabb9f9480621c8a111603d3ba70f17550bc`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x48ba574edf0bc4e2e40b529863aaa6a67c264e7c`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x4a33bafa8a31e4ec9649f65646022cad1957808b`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x4e264618dc015219cd83dbc53b31251d73c2db1a`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x63d27fc9d463ed727676367d3f818999962737e8`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x63df5e23db45a2066508318f172ba45b9cd37035`, chain 1)
Origin: volta-club (`0x63df5e23db45a2066508318f172ba45b9cd37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8`, chain 1)
Origin: volta-club (`0x63df5e23db45a2066508318f172ba45b9cd37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x79ef6d28c41e47a588e2f2ffb4140eb6d952aec4`, chain 1)
Origin: volta-club (`0x63df5e23db45a2066508318f172ba45b9cd37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xb427fc22561f3963b04202f9bb5bcebd76c14a99`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xb8bc1e9c0a2d445bc39d2a745f47619e954dd565`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xd68d3a44d46dd50bfeba8cca544717b76e7c4b29`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xdc2265cbd15bed67b5f2c0b82e23fce4a07ddf6b`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xe4d47ef77ac2c3fa4019cd169ac1dd9e27cb12e4`, chain 1)
Origin: inverse-finance (`0xb516247596ca36bf32876199fbdcad6b3322330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- DolaBorrowingRights (`0xad038eb671c44b853887a7e32528fab35dc5d710`, chain 1)
- ERC20 (`0x865377367054516e17014ccded1e7d814edc9ce4`, chain 1)
- ERC20Mintable (`0xfc63c9c8ba44ae89c01265453ed4f427c80cbd4e`, chain 10)
- ERC20Mintable (`0x8bbd036d018657e454f679e7c4726f7a8ece2773`, chain 8453)
- ERC20Mintable (`0xca78ee4544ec5a33af86f1e786efc7d3652bf005`, chain 8453)
- ERC20Mintable (`0x4c7b266b4bf0a8758fa85e69292ee55c212236cf`, chain 42161)
- ERC20Mintable (`0x7a1e123e41458aabab8068bfed6010d8f9480898`, chain 42161)
- ERC20Mintable (`0x02eaa69646183c069fc2b64f15923f27b9cf3b03`, chain 80094)
- GovernanceProxy (`0xaf956837af704d825c1fcbe2651d5c3c37ad5289`, chain 10)
- GovernanceProxy (`0xcbb162b761b83578b2a0226cbaf4c1ade0d60b2e`, chain 10)
- GovernanceProxy (`0x1c064265e053d23d120c518fdbb542e6537f82d1`, chain 8453)
- GovernanceProxy (`0x5d5392505ee69f9fe7a6a1c1af14f17db3b3e364`, chain 8453)
- GovernanceProxy (`0x1230bd56bf23bf7adf95b9f861711301e3ccd6b3`, chain 42161)
- GovernanceProxy (`0x607bcd974bb69c78ecdbf0b68748b791bba24d94`, chain 42161)
- GovernanceProxy (`0x1992af61fbf8ee38741bcc57d636caa22a1a7702`, chain 80094)
- GovernorMills (`0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6`, chain 1)
- Guardian (`0x941c2699ec7e55a50bde030d8e1e70649839259d`, chain 1)
- INV (`0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68`, chain 1)
- Market (`0xb516247596ca36bf32876199fbdcad6b3322330b`, chain 1)
- sDola (`0xb45ad160634c528cc3d2926d9807104fa3157305`, chain 1)
- sINV (`0x08d23468a467d2bb86fae0e32f247a26c7e2e994`, chain 1)
- Timelock (`0x926df14a23be491164dcf93f4c468a50ef659d5b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 42; live-surface rows included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 43/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/43 (16.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 43 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 136 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 43 of 179 unique; 136 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/170
- Verified + Unaudited implementations: 163
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 179
- Raw deployments: 399
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 11.6% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 5 | 2.9% | 2022-10 |
| Nomoi | Tier 2 | 5 | 2.9% | 2023-05 |
| yAudit | Tier 2 | 1 | 0.6% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BorrowController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387619 | `0x01eca33e20a4c379bd8a5361f896a7dd2bae4ce8` | ✅ Audited |
| DbrDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387647 | `0xdcd2d918511ba39f2872eb731bb88681ae184244` | ✅ Audited |
| DolaBorrowingRights | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387639 | `0xad038eb671c44b853887a7e32528fab35dc5d710` | ✅ Audited |
| Fed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387624 | `0x2b34548b865ad66a2b046cb82e59ee43f75b90fd` | ✅ Audited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387632 | `0x63df5e23db45a2066508318f172ba45b9cd37035` | ✅ Audited |
| Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387638 | `0xabe146cf570fd27ddd985895ce9b138a7110cce8` | ✅ Audited |
| sDola | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387641 | `0xb45ad160634c528cc3d2926d9807104fa3157305` | ✅ Audited |

### ⚠️ Verified + Unaudited (163)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeroFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xe96e99a5a3512468a4aafc317d77c6fa0289f5f3`; base `0xfd0bf44f31a83d407c8d0e46d352e25560397905` | ⚠️ Unaudited |
| AeroFarmerMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09af9e0d4932604913f7cd77ad5e157f0bc700ea` | ⚠️ Unaudited |
| AeroFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2457937668a345305fe08736f407fba3f39cbf2f`; base `0xde1697a5da5d06904c9755e3fc287d215579daf0` | ⚠️ Unaudited |
| AeroFedMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf090f285b6eaeb7e22487029b42a9ae59224056f` | ⚠️ Unaudited |
| ALE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958979432a7c58fd3f30be8071bba79401bbae3e` | ⚠️ Unaudited |
| ALEV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x39d167fe676efc3be49be874a37349a5d89f9058`; ethereum `0x4df2eaa1658a220fdb415b9966a9ae7c3d16e240`; ethereum `0x63c017cdfc46a90d664d5116b8122fe6bb235a40` | ⚠️ Unaudited |
| ArbiAuraFarmerMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x7275fd8a1b5f4874b10066236309d8901a848228`; ethereum `0x74457cd182a11be7396453810aedf4a11d57b062`; ethereum `0xa00178095e5ec8c5fa033c0afab8f95027754d15`; ethereum `0xa8df99448694930a7a277165e3da432503bcd960`; ethereum `0xacbd0767418b8c00ff70df1ff9d5c317f4349384`; ethereum `0xee484b2b23e9272d8d33c81d6ce330f3f9729f7a`; ethereum `0xfe5d391de0521281eb20f9909a0400532954cf90` | ⚠️ Unaudited |
| ArbiFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0b5ec95257afd9534c953428ac833d19579843cb`; ethereum `0x4e1637b02c0560192644c967be52087bae271b9d`; ethereum `0x5e280f959df6fc6bdaa1db71f90638630e45732d`; ethereum `0x7163d6308dcc712488eba2e965ad0cf517293a8b`; ethereum `0xac6bd90b3ad19b797244e312bee5fec34008c6fa`; ethereum `0xd84e1b7e1a7a8d49167884855c3985ef4bca45ab` | ⚠️ Unaudited |
| ArbiGovMessengerL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x13e1a06a59702ee788bde1fb60af495ff30eadeb`; ethereum `0x18fd726520d501954fc1c4c70a47eeb16607070a`; ethereum `0x26c2e43405cf79720a3a4117613425d037683a64`; ethereum `0x5128559cce352cd31f691ccd11310de34bdd89ea`; ethereum `0x8404024d8f74ad2d20e82c184816b64d4184a018`; ethereum `0xaed75bc8c9e5bfbdb3b36be08489c57f3c543056`; ethereum `0xb51c74ab03e226d74d19d265f53d915e87828cb8`; ethereum `0xcb908c4a7faece1847e18e9570852a5788dc0aca`; ethereum `0xd7d1eb9a02668fe56b7e2037a8ac91576bb27595` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7cac7f6be1f74d00d874bbacb98b531fa889d613`; ethereum `0x933cbe81313d9dd523df6dc9b899a7af8ba073e3` | ⚠️ Unaudited |
| AuraComposableStablepoolFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab4ae477899fd61b27744b4debe8990c66c81c22` | ⚠️ Unaudited |
| AuraFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x02eaa69646183c069fc2b64f15923f27b9cf3b03`; arbitrum `0x1992af61fbf8ee38741bcc57d636caa22a1a7702`; arbitrum `0x2457937668a345305fe08736f407fba3f39cbf2f`; arbitrum `0x80819e03829a71fee5fdca95acbc006e2ebf91f0`; arbitrum `0x8bbd036d018657e454f679e7c4726f7a8ece2773`; arbitrum `0x9060a61994f700632d16d6d2938ca3c7a1d344cb`; arbitrum `0xde1697a5da5d06904c9755e3fc287d215579daf0`; arbitrum `0xe96e99a5a3512468a4aafc317d77c6fa0289f5f3`; arbitrum `0xfd0bf44f31a83d407c8d0e46d352e25560397905` | ⚠️ Unaudited |
| AuraFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x474e3e8a1818c33864a728f30ee8035c4010fa42`; ethereum `0x5d5392505ee69f9fe7a6a1c1af14f17db3b3e364`; ethereum `0xc6279a7cd38819ebbf6ad3a05a0998f887df2740`; ethereum `0xfa58babe8f0cb5550e6c23a346e48f8d18a5f85d` | ⚠️ Unaudited |
| AuraStablepoolFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1cd24e3fbae88becbafed4b8cda765d1e6e3bc03`; ethereum `0x5c16ae212f8d721fab74164d1039d4514b11db54` | ⚠️ Unaudited |
| BaseFedCCTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783719ddf09d2ee0960bb365f7ef652bfe35f54d` | ⚠️ Unaudited |
| BaseNetworkFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a3c49e5cd8786498e9051f5be7d6e86b263c8b` | ⚠️ Unaudited |
| BorrowController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0d9ce79f4a03db39ff393569a24a1421d160a641`; ethereum `0x20c7349f6d6a746a25e66f7c235e96dac880bc0d`; ethereum `0x2dbad53a647a86b8988e007a33fe78bd55e9dd6f`; ethereum `0x44b7895989bc7886423f06deaa844d413384b0d6`; ethereum `0x7be97685990602a40e86a1a34294c5e3d6e41a4e`; ethereum `0x81ff13c46f363d13fc25fb801a4335c6097b7862`; ethereum `0xac6b83aa13c5c5f8125f13045d2e2f59f4e0cf6c`; ethereum `0xeebea1ed06eeb120cbf72fad195683746b5a5245`; ethereum `0xfd50ec27fc22ab379d2af70070c46f604e01682a` | ⚠️ Unaudited |
| BorrowControllerMigrationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829a0afa7a977428bfcc50f4a4ae0b156e64456d` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x8404024d8f74ad2d20e82c184816b64d4184a018`; base `0xd84e1b7e1a7a8d49167884855c3985ef4bca45ab`; arbitrum `0xbbc28db61df26b76d5f7d5eed17ed4d6c278460e`; berachain `0x8bbd036d018657e454f679e7c4726f7a8ece2773` | ⚠️ Unaudited |
| BurnTokenPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8`; base `0x912fa810fc246bc60689a7b537d7344ee0366f69`; arbitrum `0x912fa810fc246bc60689a7b537d7344ee0366f69` | ⚠️ Unaudited |
| CErc20Immutable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0bc08f2433965ea88d977d7bfded0917f3a0f60b`; ethereum `0x17786f3813e6ba35343211bd8fe18ec4de14f28b`; ethereum `0x4b228d99b9e5bed831b8d7d2bcc88882279a16bb`; ethereum `0x5ea580ea35ccb5c6aed689a85271acd94e9c2ea8`; ethereum `0x7d6bd230a96334559d724f72b93a19cfc75e9d2a`; ethereum `0x7e18ab8d87f3430968f0755a623fb35017cb3eca`; ethereum `0x7fcb7dac61ee35b3d4a51117a7c58d53f0a8a670`; ethereum `0xa978d807614c3bfb0f90bc282019b2898c617880`; ethereum `0xc528b0571d0be4153aeb8ddb8cceee63c3dd7760`; ethereum `0xd60b06b457bff7fc38ac5e7ece2b5ad16b288326`; ethereum `0xd79bcf0ad38e06bc0be56768939f57278c7c42f7` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697b4acaa24430f254224eb794d2a85ba1fa1fb8` | ⚠️ Unaudited |
| ClampFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8cf8706451f1d8b3580930fffa4c8669876d132f`; ethereum `0x91b79a9e3c5a18f09786fa3a2a228905649971b8`; ethereum `0xbac0c2936e159c7b1828290a1f3007e2445d11a1` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c0edf1f7dbcdb347ed8ce626d4de2221f1d76a2`; ethereum `0x731b65a993c7a4ff10d304d5204afc51033cda4c` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4dcf7407ae5c07f8681e1659f626e114a7667339` | ⚠️ Unaudited |
| Controller | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3475728673eabaec90a37aa3ae2ced9f0db5ff2` | ⚠️ Unaudited |
| ConvertibleFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769`; ethereum `0x671f13a551af596de9106b24077d090850ab1424` | ⚠️ Unaudited |
| CTokenStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x42b5d4a11c8fe76d114759f7f3d8e94ea28bdbe5`; ethereum `0x42be0f4fa30980f8261325e9c8fc9cbd08de9d6c`; ethereum `0xdc91f11de8d294bd547d4f9009fa16466b2ca796` | ⚠️ Unaudited |
| CYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde2af899040536884e062d3a334f2dd36f34b4a4` | ⚠️ Unaudited |
| DAIEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccabad4923c14e48c9c27e6c4556c1caf4e91ebb` | ⚠️ Unaudited |
| DbrHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3363ad5780316fd5180bb9f34297b533fb9cb335`; ethereum `0x5caede3ad9e7c64ab512a3d774768fd8dc06d717`; ethereum `0xec51e66c1e1bfc85acc3b6847820a3ff0a38364b` | ⚠️ Unaudited |
| DolaFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf45c5ef54e1401569325e047f2fea7190e055a18` | ⚠️ Unaudited |
| DolaPayroll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32eddd879b199503c6fc37df95b8920cd415358f` | ⚠️ Unaudited |
| DolaPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x957a6f1ca411d530f03dbfada93fcfa9ca2e67bc` | ⚠️ Unaudited |
| DolaSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc91b5f3a2b6393130d5f3c20ce6d2c28f07f2b20`; ethereum `0xe5f24791e273cb96a1f8e5b67bc2397f0ad9b8b4` | ⚠️ Unaudited |
| ERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-387635 | `0x865377367054516e17014ccded1e7d814edc9ce4` | ⚠️ Unaudited |
| ERC20Mintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x1992af61fbf8ee38741bcc57d636caa22a1a7702`; optimism `0x4c7b266b4bf0a8758fa85e69292ee55c212236cf`; optimism `0x5d5392505ee69f9fe7a6a1c1af14f17db3b3e364`; optimism `0x912fa810fc246bc60689a7b537d7344ee0366f69`; base `0x80819e03829a71fee5fdca95acbc006e2ebf91f0`; base `0x9060a61994f700632d16d6d2938ca3c7a1d344cb`; base `0xede7aae6c97a757b23fceb4f78349f296ae8dcdb`; arbitrum `0x788c3efc8182393915e216174a03cd81395f8c7a`; arbitrum `0xcbb162b761b83578b2a0226cbaf4c1ade0d60b2e` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | optimism | unit-387651 | `0xfc63c9c8ba44ae89c01265453ed4f427c80cbd4e` | ⚠️ Unaudited |
| ERC20Mintable | unknown | project_anchor | own_supporting | 0 | base | unit-387660 | `0x8bbd036d018657e454f679e7c4726f7a8ece2773` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | base | unit-387661 | `0xca78ee4544ec5a33af86f1e786efc7d3652bf005` | ⚠️ Unaudited |
| ERC20Mintable | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387653 | `0x4c7b266b4bf0a8758fa85e69292ee55c212236cf` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | arbitrum | unit-387655 | `0x7a1e123e41458aabab8068bfed6010d8f9480898` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | berachain | unit-387656 | `0x02eaa69646183c069fc2b64f15923f27b9cf3b03` | ⚠️ Unaudited |
| ERC4626Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x42bc5557b2ab996415bf98d7f83f977b2727dc6c`; ethereum `0x5221571fb2c1eb20e905110fbad3a274529f58af`; ethereum `0x94eba5d48e8405b153d03e1e9ad6239b51c8715f`; ethereum `0xd398e8beee7dfdc52f066295a3db18bc177048c4` | ⚠️ Unaudited |
| ERC4626Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x99e38696ada09433afa79123595701a80a406780`; ethereum `0xfbd90607cc42f8ae0e8b0ac94e7ab1631e494abd` | ⚠️ Unaudited |
| EthRepayAllHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0c9650cf8ce5279b990e7a6634c63323adfeae` | ⚠️ Unaudited |
| EthVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2dcdca085af2e258654e47204e483127e0d8b277`; ethereum `0x89ec5df87a5186a0f0fa8cb84edd815de6047357` | ⚠️ Unaudited |
| ExchangeRateUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0xd5a3416f7863f306ca7cd9b12f067fffd5d57a61`; ethereum `0xd6376e280b76eb83d36f690c360bdd6bfd704089`; optimism `0xca78ee4544ec5a33af86f1e786efc7d3652bf005`; optimism `0xede7aae6c97a757b23fceb4f78349f296ae8dcdb`; base `0x788c3efc8182393915e216174a03cd81395f8c7a`; base `0x7a1e123e41458aabab8068bfed6010d8f9480898`; arbitrum `0x402f38457800c32c67c5983381a685a4a1d4f8bb`; arbitrum `0x93685185666c8d34ad4c574b3dbf41231bbfb31b`; berachain `0xde1697a5da5d06904c9755e3fc287d215579daf0` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2c13d0f087c42644fcdeeb0f4d0a272c50618d83`; ethereum `0x6262faa56151ff3412a211c6a777c7b8da2dd87e`; ethereum `0x6832802996e177660ede6095f184ec34d91c39e2`; ethereum `0x6ab52d36a1c29b6a00e0dbf6806728548ff16d66`; ethereum `0x9d556a572145cff26ef00ba00f004791a45419b1` | ⚠️ Unaudited |
| Factory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6d961c9dcf1ad73566822ba4b087892e3839b849` | ⚠️ Unaudited |
| Fed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5e075e40d01c82b6bf0b0ecdb4eb1d6984357ef7`; ethereum `0xe3277f1102c1ca248ad859407ca0cbf128db0664` | ⚠️ Unaudited |
| FeedSwitch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e20dee27979a44eb4fd1dafc539f61515322561` | ⚠️ Unaudited |
| FeedSwitchV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3326a10a83b77faae29aedbb8aaeb18e5872624d` | ⚠️ Unaudited |
| FiRMSlashingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x316a01f878aa6d5a4c7ea2080d64d364f9538aa2`; ethereum `0x6d27dd57a7dbf5b27a3fcabd75c916ac765a346c`; ethereum `0x98400130a60cd1e436a0f433100f2de17c658603`; ethereum `0x9c0e166052d69d6f46422525e1f75d4a8f295423`; ethereum `0xa56ed04eb7a51c62f3e4feee15bd5cf0d6efaa4e`; ethereum `0xc61059ee153d4396c0496056465d4a14ae16b8c1`; ethereum `0xc7aec40f225fffb92c271e9eb07f473504b74fad`; ethereum `0xefb3c69d7ed849340f60bb71f1e9c648be4a3914`; ethereum `0xefb4c3d1cad9f9eb0d458c6f89e5072777037f31` | ⚠️ Unaudited |
| FixedPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x803a7114d7701e3e6d6f86edf5fbf73b1266e7f4` | ⚠️ Unaudited |
| FixedRateIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7` | ⚠️ Unaudited |
| FoundationFunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd84d9312ed1961ce80a1ceb17446737f480993` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x4b6c63e6a94ef26e2df60b89372db2d8e211f1b7`; ethereum `0x8f97cca30dbe80e7a8b462f1dd1a51c32accdfc8`; ethereum `0x943dbdc995add25a1728a482322f9b3c575b16fb`; ethereum `0xe3ed95e130ad9e15643f5a5f232a3dae980784cd` | ⚠️ Unaudited |
| GOhmTokenEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4c4cd74e7b99ad2cf2f7b3a4f7091efb8bceb7a` | ⚠️ Unaudited |
| GovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x43d3942f46c8dc6e9adc8e0678e3ca073bae1e86`; base `0xc415ff1574a106e238bc29693457af5d224ec27c`; arbitrum `0xc761ebd4e2bd6cc171cbfb29e81bc9819e7f2a16` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-387649 | `0xaf956837af704d825c1fcbe2651d5c3c37ad5289` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-387650 | `0xcbb162b761b83578b2a0226cbaf4c1ade0d60b2e` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | base | unit-387658 | `0x1c064265e053d23d120c518fdbb542e6537f82d1` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | base | unit-387659 | `0x5d5392505ee69f9fe7a6a1c1af14f17db3b3e364` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387652 | `0x1230bd56bf23bf7adf95b9f861711301e3ccd6b3` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387654 | `0x607bcd974bb69c78ecdbf0b68748b791bba24d94` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | berachain | unit-387657 | `0x1992af61fbf8ee38741bcc57d636caa22a1a7702` | ⚠️ Unaudited |
| GovernanceSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4e521fe7a9084067096d45a312b8feee39d5f1f3`; ethereum `0x8a0cecee2b16fc386942d3bf650e163e7600338d`; ethereum `0xaea8ae87a34a0faaea0e6bed9f4627f576b524fa` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x260ac708a95b10715d8bcd2f335196fd354534b1`; ethereum `0x35d9f4953748b318f18c30634ba299b237eedfff` | ⚠️ Unaudited |
| GovernorMills | governance | project_anchor | own_supporting | 0 | ethereum | unit-387644 | `0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6` | ⚠️ Unaudited |
| GovernorMills | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3bd8ca3beac259d898b2c546f804b49d52e2fd` | ⚠️ Unaudited |
| GovTokenEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36c2398bd782aa4ac0d6529fe5c83c96b2233fcf`; ethereum `0x882d00508bbf32874f48eb739515cf3cb6fc94e0` | ⚠️ Unaudited |
| Guardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-387637 | `0x941c2699ec7e55a50bde030d8e1e70649839259d` | ⚠️ Unaudited |
| Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0539638ba429c87ae2e8f7951e105df372a1e3bf`; ethereum `0x088d351e4ebe045c08bcdfb60234aae524776536`; ethereum `0x23de4f9a07bcb0141d6b04d074236c9069a588c5`; ethereum `0x658890f633b6892c1ba13247502791ad6da1c266`; ethereum `0x9229331500bb1773bf305cd05641ef9cea2e6bf6`; ethereum `0x93c0610b258e42c43544e74cfc1efec8c1f5459b`; ethereum `0xc7d5e6fa4d5b4b4a82b14a256008dafaf5232adb`; ethereum `0xcb1cf17f0e579e520458a3a3aa72eca65eb8560c`; ethereum `0xd9ef7bee98a920e7727075f2fe770342089fc677`; ethereum `0xe0db3f30c96e272c5ef7dfe3d30272bd2ae3d3cf` | ⚠️ Unaudited |
| INV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387627 | `0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68` | ⚠️ Unaudited |
| INV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8805c8a08022a41fef736ea3af56dfdff282a9cb` | ⚠️ Unaudited |
| INVEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x502a7759809bd673cd39a0055beed44b40eaac98`; ethereum `0x57f2a3891397112614adb9821e9dfd23d39000cd` | ⚠️ Unaudited |
| InvFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x210ac53b27f16e20a9aa7d16260f84693390258f`; ethereum `0x7d6e99e22e5618db4b94261963772dd4966623ad` | ⚠️ Unaudited |
| InvPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cd14096cd6f81e31e945afb7de41a5d7d970589` | ⚠️ Unaudited |
| JDola | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1ce3f5d0c5f84a203167261f11c2e12c3d90fbb8`; ethereum `0x5bacafbe2788b0ec837eb95f05938daf49224f54`; ethereum `0x5cebb0db9cd7544201e91d17425dfcb919fd91b8`; ethereum `0x633821b8e003344e5223509277f2084ea809a452`; ethereum `0x6607efa88da3a37f9c645a586cfe73931fddb933`; ethereum `0x6f80a22a57c7f0257094ea8d426af3f747defbc7`; ethereum `0xd178f7a559d486ab1056c37630a51682c2c72f81`; ethereum `0xf4307a1354c0463812b3ce0f509c227f5cd1ccfd` | ⚠️ Unaudited |
| JrDolaDOLAFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x315291397aa6dba866d5b5f695196864e89779c8`; ethereum `0x41939fd313f2f0880f6b5675f885b6b86cd6250b`; ethereum `0x6b6e969ed13061058820bfcbaead5ab85411afd6` | ⚠️ Unaudited |
| JrDolaUSDFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x531899352531ea0ea7a74b60965b939c1e113795`; ethereum `0x830a0be197f927ca1673355a85db5e715f4ce621`; ethereum `0x9a4c95768749b4660b2614e1c6dc44ee3db593aa` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x161fd17c7cb8f4b34c87799fba1f26ce4543bb9a`; ethereum `0x8f0439382359c05ed287acd5170757b76402d93f` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd14439b3a7245d8ea92e37b77347014ea7e4f809` | ⚠️ Unaudited |
| Lens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x5336183353ca175cc1ed3e067c8f057683bf21a9`; ethereum `0x8aab59675e123ceefe5e05b0bc1be8fe6101e60d`; ethereum `0x941a224090dc7890bcbc89adfd045d45e95e7fb7`; ethereum `0x9fb6d67bc0d112c428d7405a10f0a0029b478238`; ethereum `0xedb597c9715c648e4cf546464d365d5923d7f6c8` | ⚠️ Unaudited |
| LinearInterpolationDelayModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3b1e443ab423c9a7b1b2ea7b3cb7c0be012a4fbf`; ethereum `0x6aa1051269e53bd22b7776c6cb5c7c55dc04ea5a`; ethereum `0x75fda12cb3341cccd41b77c2515f0da716119b07`; ethereum `0xb1b62e269606a41e4f2e35b93772150889c67fca` | ⚠️ Unaudited |
| LockedTokenPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa251e6da77ded91a5990c12cacf117aec5481519`; ethereum `0xd9f926a41e1f70004635c4a5d6a6f47c6b7a3974`; arbitrum `0xede7aae6c97a757b23fceb4f78349f296ae8dcdb` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05eee76f456c51be0459ec1c0a78bf177b2c877c` | ⚠️ Unaudited |
| LpFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x56775f083ac3015b8c869d9e089da251dcaa41ff`; ethereum `0xbb6afadfdd3e1b35d4e4855ccab315d5f3a21cd3` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0971b1690d101169bfca4715897ad3a9b3c39b26`; ethereum `0x0c0bb843fabda441edefb93331cfff8ec92bd168`; ethereum `0x29fe42f4f71ba5b9a7aae794468e7ca4128a93b8`; ethereum `0x2fed508aac87c0e6f0b647fe83164a7aa6eb2fc9`; ethereum `0x3ac5cebc7a417db619b85660e4f284f5643dfd5e`; ethereum `0x4f5ea72d932f554f08e97cb78dd25f8aae43c08e`; ethereum `0x5bb8f6aacff2971b42f9fe6945d24726a2541cf2`; ethereum `0x607370d051b70f66dd2efb7a6c03ad0c3871dcc5`; ethereum `0x6a522f3bd3fda15e74180953f203cf55aa6c631e`; ethereum `0x743a502cf0e213f6fee56cd9c6b03de7fa951dcf`; ethereum `0x7cd3ab8354289bef52c84c2bf0a54e3608e66b37`; ethereum `0x85fdd73dec62541862b1d135591c0e1b5298dfc8`; ethereum `0x93685185666c8d34ad4c574b3dbf41231bbfb31b`; ethereum `0xb686f195ecfb7cbdfc16d7d17cf12f500709c867`; ethereum `0xb907dcc926b5991a149d04cb7c0a4a25dc2d8f9a`; ethereum `0xc0086ff652c67f43f00f0f9c69ef6c33640c8ccf`; ethereum `0xf85ed61dfd00bcd89ae0a6085b062a261e222db2`; ethereum `0xfea3a862ee4b3f9b6015581d6d2d25af816c54f1` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387621 | `0x27b6c301fd441f3345d61b7a4245e1f823c3f9c4` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387622 | `0x28684485369f7478f42aaa62660123ab5d573537` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387623 | `0x2a256306d8ba899e33b01e495982656884ac77ff` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387625 | `0x3474ad0e3a9775c9f68b415a7a9880b0cab9397a` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387626 | `0x3fd3dabb9f9480621c8a111603d3ba70f17550bc` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387628 | `0x48ba574edf0bc4e2e40b529863aaa6a67c264e7c` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387629 | `0x4a33bafa8a31e4ec9649f65646022cad1957808b` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387630 | `0x4e264618dc015219cd83dbc53b31251d73c2db1a` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387631 | `0x63d27fc9d463ed727676367d3f818999962737e8` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387633 | `0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387634 | `0x79ef6d28c41e47a588e2f2ffb4140eb6d952aec4` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387640 | `0xb427fc22561f3963b04202f9bb5bcebd76c14a99` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387642 | `0xb516247596ca36bf32876199fbdcad6b3322330b` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387643 | `0xb8bc1e9c0a2d445bc39d2a745f47619e954dd565` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387645 | `0xd68d3a44d46dd50bfeba8cca544717b76e7c4b29` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387646 | `0xdc2265cbd15bed67b5f2c0b82e23fce4a07ddf6b` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387648 | `0xe4d47ef77ac2c3fa4019cd169ac1dd9e27cb12e4` | ⚠️ Unaudited |
| MarketFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c8fd2764e3a3a98d115e3cf98a27eaaeabd6829`; ethereum `0x85cc595086eca0ef79f2c4887b42d28667821575` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe810281d189f19572b5250556369c39f5ebc6b00` | ⚠️ Unaudited |
| MerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1992af61fbf8ee38741bcc57d636caa22a1a7702`; ethereum `0x4c7b266b4bf0a8758fa85e69292ee55c212236cf` | ⚠️ Unaudited |
| Metadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2afb125bb848049b54d0903a1fd365e7518f581a`; ethereum `0x62e71ec317a8bf6ae7c4d68ddd3b57b394ec8e3c` | ⚠️ Unaudited |
| Migration | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x043646a09fa89a1d8f48788008e70299bb269855` | ⚠️ Unaudited |
| MultiDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ba87be4c20fa2d4cbd8e4ae9998649226207f76`; ethereum `0xdb09cafceb041217296c22e07c16b28980a72e27` | ⚠️ Unaudited |
| NavBeforeMaturityFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce70fd21aa587a5016e9cae57a2382777d7c1d9` | ⚠️ Unaudited |
| NormalizedPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a618c4ab1053739816cbbfc89f6c78c8746e40f` | ⚠️ Unaudited |
| OptiFedCCTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ffd313cc11882b75879c41d837b20f974ea88f` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8929afd47064efd36a7fb51da3f8c5eb40c4cb4` | ⚠️ Unaudited |
| OTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x35fdfab459043a335cbbdf8fa28b31a147334c0e`; ethereum `0x55447385f1e1921d202dbb6ea4b99f86552f0bbb`; ethereum `0x66048f186253123ac55258151dad10ee2efba9ce` | ⚠️ Unaudited |
| Payroll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e`; ethereum `0xabfbf345dd103993c2524d9c5f3260845e372f2f` | ⚠️ Unaudited |
| PriceFeedNoStale | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe928f79d6c7a315ad0a49254015ab8d64dde2f61`; ethereum `0xea1dc98bf2308f31f3d26d40b31d4bec2d2cd61f` | ⚠️ Unaudited |
| ProgrammableDataTokenTransfers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: ethereum `0x70f3795c1ef726c58ffea2e1a51526ac5707c066`; ethereum `0x7a43c13f7fb3a0bf19ceb3fbc583a0cada6d29a2`; optimism `0x474e3e8a1818c33864a728f30ee8035c4010fa42`; optimism `0xb5a998e90aded2c97f7cedbb7c45bbc27e82dfdd`; optimism `0xc53ea7734e189f446c1afc5a69230527c2f28387`; base `0x0173804066f7403e0815680f3dda125a6cd10f7c`; base `0xaff87cc246ba8a7d4000d01635b424319ad80ce6`; base `0xc6279a7cd38819ebbf6ad3a05a0998f887df2740`; arbitrum `0x0173804066f7403e0815680f3dda125a6cd10f7c`; arbitrum `0xaff87cc246ba8a7d4000d01635b424319ad80ce6`; arbitrum `0xc6279a7cd38819ebbf6ad3a05a0998f887df2740` | ⚠️ Unaudited |
| PSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d02f2841afa3cc20435a8c804c24deac5f30dfa`; ethereum `0x4dfd662622d766304cb539e66f893c4defa19398` | ⚠️ Unaudited |
| PSMFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400510611bcbf9171f0e548f1c3dca7159e60d28` | ⚠️ Unaudited |
| PTUSDeFeedSwitchFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1a266d46e107e08863890b1b8dccc3ce5ea16e7` | ⚠️ Unaudited |
| Purchaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x58dcb47956de1e99b1af0ceb643727ef66af4647`; ethereum `0x93163634a8879df97343b4d6b49c5516ccd1fab8`; ethereum `0xf6c2b9f5ee30b7f2bca5c3dcc28e27fcb733be04` | ⚠️ Unaudited |
| ReceiptTokenHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5554ea84a0cba7eb1ff91db9d9ea16e44cc087b2` | ⚠️ Unaudited |
| RepayRewardEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f9049121f81ad1959938dc2e1c202412ac6766` | ⚠️ Unaudited |
| SaleHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f4a31c1c11bdd438cf0c7668d6afa2b5825932e`; ethereum `0xb4497a7351e4915182b3e577b3a2f411fa66b27f` | ⚠️ Unaudited |
| sDola | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2142c7c052e3b4a92e7d9f47410d6a7e6ede8f71`; ethereum `0xbbbfc183d57654c268bb2656bae98bfc502b12a1` | ⚠️ Unaudited |
| SDolaFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25071798fd920c17be3b4cb599bfc5613e665c76`; ethereum `0x8198a3b7b32ab300dca153b88ab63be72536cead` | ⚠️ Unaudited |
| sDolaHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2ef7b083837db8fcd0fb05a427400151ad6b3336`; ethereum `0x3b3e4541975b9d754e27a8d68f259089d35fca61`; ethereum `0x5c1f6a62cc587e135280cbd59520def551bb3c97`; ethereum `0xc87f4e6a354ede520250d47bf85a49aa27d2d520` | ⚠️ Unaudited |
| SimpleERC20Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06053fcad0a0df7cc32289a135bbea9030c010f` | ⚠️ Unaudited |
| sINV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387620 | `0x08d23468a467d2bb86fae0e32f247a26c7e2e994` | ⚠️ Unaudited |
| sINV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x857b87171c99c234ac7dcd6a96859e78b1d1a625` | ⚠️ Unaudited |
| sInvHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7817e09c9e48a95bfc6ea82c22a7e7d168e7bd05` | ⚠️ Unaudited |
| Stabilizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec0d931affba01b77711c2cd07c76b970795cdd` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4581958737c58a632621c82095664de7f4f5a9f4`; ethereum `0x5c1245f9db3f8f7fe1208cb82325ea88fc11fe89`; ethereum `0xa88948217f21175337226d94f1a47b7a01eed197` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad308cb4479fd2558d40a4abf420565fa80356` | ⚠️ Unaudited |
| StethFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1b086779e47509bdc9f49f1ed31eefb1ef156deb`; ethereum `0x591a75c287ce9cf553e8cbb77ef3b9d908976f5b`; ethereum `0xd21cba93074fbe899338c2b6ec4ff711c865428c` | ⚠️ Unaudited |
| StyCRVPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc63c9c8ba44ae89c01265453ed4f427c80cbd4e` | ⚠️ Unaudited |
| StYEthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe5fabbb55c2c79ae1efe6b5bd52048a199e166` | ⚠️ Unaudited |
| SwitchFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca2f329a011a4d464f8ef97e493974964911ed0` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387636 | `0x926df14a23be491164dcf93f4c468a50ef659d5b` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6ef0b93792e4e98c6e6062eb1a9638d82e500f` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b`; ethereum `0xc8f2e91dc9d198eded1b2778f6f2a7fd5bbeac34` | ⚠️ Unaudited |
| VaultEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1dfe66a6265d071e433675e97a53ed4932abd774`; ethereum `0x76c207cd3c325cf85d0a83204632dd017e901a82`; ethereum `0x885db7f3bc44e6ce11e82ba472efaaf8b04d3e41` | ⚠️ Unaudited |
| VaultExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x06d42c7755c02e94be35633f128ff510338964e9`; ethereum `0x0ce2b4fda533e101d7bd84dcd6455ab129025831`; ethereum `0x0e0bee607e205e5e0f538251c02c534e1a7c71ce`; ethereum `0x87aab065a142032a98257918a4c88a5ff6c479b0`; ethereum `0x9063007b3d024fb24c31ea9b6c29ac6cd41c707f`; ethereum `0xd9f6a061b9e5a6dcb3a8a0c096752851f32d33dc`; ethereum `0xf840a1930c8c12d4f2a989f59fa390a5fffec1e7` | ⚠️ Unaudited |
| VaultFed | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe082eb109fad53ea8db9827ce6b8ef74882734fc` | ⚠️ Unaudited |
| VaultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0bd59551661ff55fbb581fdf3abc8a5826a0957` | ⚠️ Unaudited |
| VeloFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x02eaa69646183c069fc2b64f15923f27b9cf3b03`; optimism `0x2457937668a345305fe08736f407fba3f39cbf2f`; optimism `0xde1697a5da5d06904c9755e3fc287d215579daf0` | ⚠️ Unaudited |
| VeloFarmerMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x10ad952dead968dc3bafa2a140d5441a54d09a1f`; ethereum `0x257d2836c8f5797581740543f853403b81c44b5a`; ethereum `0x788c3efc8182393915e216174a03cd81395f8c7a`; ethereum `0x853f20285a99a36490957ff836d367530ad22b6b`; ethereum `0x912fa810fc246bc60689a7b537d7344ee0366f69`; ethereum `0xc761ebd4e2bd6cc171cbfb29e81bc9819e7f2a16`; ethereum `0xede7aae6c97a757b23fceb4f78349f296ae8dcdb` | ⚠️ Unaudited |
| VeloFarmerMessengerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d9fd272962d5994d2bea719c54bce7bda44aa7` | ⚠️ Unaudited |
| VeloFarmerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x80819e03829a71fee5fdca95acbc006e2ebf91f0`; optimism `0x8bbd036d018657e454f679e7c4726f7a8ece2773` | ⚠️ Unaudited |
| VeloFarmerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9060a61994f700632d16d6d2938ca3c7a1d344cb` | ⚠️ Unaudited |
| WbtcPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x857e5abdecead6bcc1ac21e69b4e98ff42ce10a0` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0f0c30f294dc0ca8c315683fc036179e1d8d1fa9`; ethereum `0x15d32182206a54684a5cd2b7ee4532a6d1cf7638` | ⚠️ Unaudited |
| WithdrawalEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1f3068a1ac79d2cba4b692c5191ba1dbe2f25f2c`; ethereum `0x3912365cc44309c99743597f9d18c6cb946ab5f0`; ethereum `0x3924a6b55b92529d1f96fa1031e639287351e9b0`; ethereum `0x8554d8a6bcc5b6d6eb7bea2189e6a8f8d24c7e45` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x894b896cdc772656cbb1ee28e6bd4a704caa7b61` | ⚠️ Unaudited |
| XINV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b`; ethereum `0x65b35d6eb7006e0e607bc54eb2dfd459923476fe` | ⚠️ Unaudited |
| XinvManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07eb8fd853c847d6e25f29e566d605cff474909d` | ⚠️ Unaudited |
| XinvVesterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c67007d1074bcacc577dd946661f0cb9053a19` | ⚠️ Unaudited |
| YTokenStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x57faa0dec960ed774674a45d61ecfe738eb32052`; ethereum `0x698c1d40574cd90f1920f61d347acce60d3910af`; ethereum `0x973f509c695cffcf355787456923637ff8a34b29`; ethereum `0xb0b02c75fc1d07d351c991ebf8b5f5b48f24f40b`; ethereum `0xbe21650b126b08c8b0fbc8356a8b291010ee901a`; ethereum `0xf8df8bb6a10eec2619ebc1e384489b728b5b1c1f` | ⚠️ Unaudited |
| YVYCRVHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61d1c71a2311100670932c79b7316e9a568e401` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041c3a97843b2b5ea59fc02e4c20dd7bcd89f38a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ff92a065995668d957325e872b5675e7f80a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bec2fbc1a0c7e66ae0089450c0b3cc2813efcfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b09061ca23a820fb629041008ee99b4180918f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780568f55941c12eaa86a79607855f349c48c9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a01fe4771f0b41e5a0f901baaad8f381c0aabcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac37e688a2d40df9b69723b7b867812dc34de5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6479a77ecbd54893590d544c26eab6647e2a259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xded891ac882394ce9ca794a2ebb576fb40875875` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [junior-sherlock-contest.pdf](https://www.inverse.finance/audits/junior-sherlock-contest.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [junior-sherlock-audit.pdf](https://www.inverse.finance/audits/junior-sherlock-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [sDOLA-yAudit.pdf](https://www.inverse.finance/audits/sDOLA-yAudit.pdf) | yAudit | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [firm-nomoi.pdf](https://www.inverse.finance/audits/firm-nomoi.pdf) | Nomoi | Audit | 2023-05 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 6 | medium |
| [code4rena.com/reports/2022-10-inverse](https://code4rena.com/reports/2022-10-inverse) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 3 | high |
| [audits.sherlock.xyz/bug-bounties/233](https://audits.sherlock.xyz/bug-bounties/233) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view](https://drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1758] junior-sherlock-contest.pdf — no match: No reason recorded
- [1759] junior-sherlock-audit.pdf — no match: No reason recorded
- [1760] sDOLA-yAudit.pdf — matched: No reason recorded
- [1761] firm-nomoi.pdf — matched: No explicit scope section; contracts extracted from findings and descriptions. Audit date from report update date.
- [1762] code4rena.com/reports/2022-10-inverse — matched: Scope section explicitly lists 8 smart contracts. Audit date from report title.
- [1763] audits.sherlock.xyz/bug-bounties/233 — no match: The provided text is a bug bounty page header with no contract names, file paths, or audit date. No scope section or contract listings are present.
- [1765] drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view — no match: The audit report explicitly names DebtRepayer and DebtConverter as the two repayment strategies within the DebtRepayment protocol. No other contracts are listed in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| junior-sherlock-contest.pdf | FiRMSlashingModule | unmatched — not counted | — | — | no |
| junior-sherlock-contest.pdf | LinearInterpolationDelayModel | unmatched — not counted | — | — | no |
| junior-sherlock-contest.pdf | WithdrawalEscrow | unmatched — not counted | — | — | no |
| junior-sherlock-contest.pdf | jDola | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | FiRMSlashingModule | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | LinearInterpolationDelayModel | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | WithdrawalEscrow | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | jDola | unmatched — not counted | — | — | no |
| sDOLA-yAudit.pdf | DolaSavings | unmatched — not counted | — | — | no |
| sDOLA-yAudit.pdf | sDola | own contract | sDola (selected) `0xb45ad160634c528cc3d2926d9807104fa3157305` — deployed 2024-01-31 21:33:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sDOLA-yAudit.pdf | sDolaHelper | unmatched — not counted | — | — | no |
| firm-nomoi.pdf | ConvexCurveEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | Market | ambiguous — not counted | Market (alternative) `0x48ba574edf0bc4e2e40b529863aaa6a67c264e7c` — deployed 2024-02-25 23:27:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xd68d3a44d46dd50bfeba8cca544717b76e7c4b29` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb427fc22561f3963b04202f9bb5bcebd76c14a99` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8` — deployed 2023-03-09 17:11:23+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb516247596ca36bf32876199fbdcad6b3322330b` — deployed 2023-05-16 17:19:35+03 — liveness: live (code_present_context)<br>Market (alternative) `0x4a33bafa8a31e4ec9649f65646022cad1957808b` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x27b6c301fd441f3345d61b7a4245e1f823c3f9c4` — deployed 2023-07-10 17:20:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x28684485369f7478f42aaa62660123ab5d573537` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x4e264618dc015219cd83dbc53b31251d73c2db1a` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3474ad0e3a9775c9f68b415a7a9880b0cab9397a` — deployed 2023-05-04 12:56:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x79ef6d28c41e47a588e2f2ffb4140eb6d952aec4` — deployed 2024-08-02 19:15:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63d27fc9d463ed727676367d3f818999962737e8` — deployed 2024-12-18 10:04:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63df5e23db45a2066508318f172ba45b9cd37035` — deployed 2022-12-11 07:15:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xe4d47ef77ac2c3fa4019cd169ac1dd9e27cb12e4` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb8bc1e9c0a2d445bc39d2a745f47619e954dd565` — deployed 2024-12-18 10:05:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x2a256306d8ba899e33b01e495982656884ac77ff` — deployed 2024-09-18 10:33:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xdc2265cbd15bed67b5f2c0b82e23fce4a07ddf6b` — deployed 2023-09-18 13:51:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3fd3dabb9f9480621c8a111603d3ba70f17550bc` — deployed 2023-12-06 17:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| firm-nomoi.pdf | INVEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | Oracle | own contract | Oracle (selected) `0xabe146cf570fd27ddd985895ce9b138a7110cce8` — deployed 2022-12-11 06:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | DbrDistributor | own contract | DbrDistributor (selected) `0xdcd2d918511ba39f2872eb731bb88681ae184244` — deployed 2023-05-16 16:50:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | DBR | own contract | DolaBorrowingRights (selected) `0xad038eb671c44b853887a7e32528fab35dc5d710` — deployed 2022-12-10 20:20:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | BorrowController | own contract | BorrowController (selected) `0x01eca33e20a4c379bd8a5361f896a7dd2bae4ce8` — deployed 2025-05-20 17:38:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | Fed | own contract | Fed (selected) `0x2b34548b865ad66a2b046cb82e59ee43f75b90fd` — deployed 2022-12-11 07:01:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | ConvexCurvePriceFeed | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | GOhmTokenEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | GovTokenEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| code4rena.com/reports/2022-10-inverse | Market | own contract | Market (alternative) `0x48ba574edf0bc4e2e40b529863aaa6a67c264e7c` — deployed 2024-02-25 23:27:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xd68d3a44d46dd50bfeba8cca544717b76e7c4b29` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb427fc22561f3963b04202f9bb5bcebd76c14a99` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8` — deployed 2023-03-09 17:11:23+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb516247596ca36bf32876199fbdcad6b3322330b` — deployed 2023-05-16 17:19:35+03 — liveness: live (code_present_context)<br>Market (alternative) `0x4a33bafa8a31e4ec9649f65646022cad1957808b` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x27b6c301fd441f3345d61b7a4245e1f823c3f9c4` — deployed 2023-07-10 17:20:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x28684485369f7478f42aaa62660123ab5d573537` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x4e264618dc015219cd83dbc53b31251d73c2db1a` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3474ad0e3a9775c9f68b415a7a9880b0cab9397a` — deployed 2023-05-04 12:56:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x79ef6d28c41e47a588e2f2ffb4140eb6d952aec4` — deployed 2024-08-02 19:15:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63d27fc9d463ed727676367d3f818999962737e8` — deployed 2024-12-18 10:04:11+03 — liveness: live (current_address_book_code)<br>Market (selected) `0x63df5e23db45a2066508318f172ba45b9cd37035` — deployed 2022-12-11 07:15:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xe4d47ef77ac2c3fa4019cd169ac1dd9e27cb12e4` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb8bc1e9c0a2d445bc39d2a745f47619e954dd565` — deployed 2024-12-18 10:05:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x2a256306d8ba899e33b01e495982656884ac77ff` — deployed 2024-09-18 10:33:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xdc2265cbd15bed67b5f2c0b82e23fce4a07ddf6b` — deployed 2023-09-18 13:51:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3fd3dabb9f9480621c8a111603d3ba70f17550bc` — deployed 2023-12-06 17:19:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-11 was 9d from audit; next candidate 79d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | DBR | own contract | DolaBorrowingRights (selected) `0xad038eb671c44b853887a7e32528fab35dc5d710` — deployed 2022-12-10 20:20:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | Oracle | own contract | Oracle (selected) `0xabe146cf570fd27ddd985895ce9b138a7110cce8` — deployed 2022-12-11 06:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | Fed | own contract | Fed (selected) `0x2b34548b865ad66a2b046cb82e59ee43f75b90fd` — deployed 2022-12-11 07:01:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | BorrowController | own contract | BorrowController (selected) `0x01eca33e20a4c379bd8a5361f896a7dd2bae4ce8` — deployed 2025-05-20 17:38:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | SimpleERC20Escrow | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-10-inverse | GovTokenEscrow | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-10-inverse | INVEscrow | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view | DebtRepayer | unmatched — not counted | — | Listed as a repayment strategy in Section 1.1 and targeted in findings PVE-001, PVE-002, PVE-003. | no |
| drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view | DebtConverter | unmatched — not counted | — | Listed as a repayment strategy in Section 1.1 and targeted in findings PVE-002, PVE-003. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x865377367054516e17014ccded1e7d814edc9ce4` | ERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfc63c9c8ba44ae89c01265453ed4f427c80cbd4e` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8bbd036d018657e454f679e7c4726f7a8ece2773` | ERC20Mintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xca78ee4544ec5a33af86f1e786efc7d3652bf005` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4c7b266b4bf0a8758fa85e69292ee55c212236cf` | ERC20Mintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a1e123e41458aabab8068bfed6010d8f9480898` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x02eaa69646183c069fc2b64f15923f27b9cf3b03` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xaf956837af704d825c1fcbe2651d5c3c37ad5289` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xcbb162b761b83578b2a0226cbaf4c1ade0d60b2e` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1c064265e053d23d120c518fdbb542e6537f82d1` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5d5392505ee69f9fe7a6a1c1af14f17db3b3e364` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1230bd56bf23bf7adf95b9f861711301e3ccd6b3` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x607bcd974bb69c78ecdbf0b68748b791bba24d94` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x1992af61fbf8ee38741bcc57d636caa22a1a7702` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6` | GovernorMills | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x941c2699ec7e55a50bde030d8e1e70649839259d` | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68` | INV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x27b6c301fd441f3345d61b7a4245e1f823c3f9c4` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x28684485369f7478f42aaa62660123ab5d573537` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a256306d8ba899e33b01e495982656884ac77ff` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3474ad0e3a9775c9f68b415a7a9880b0cab9397a` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fd3dabb9f9480621c8a111603d3ba70f17550bc` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48ba574edf0bc4e2e40b529863aaa6a67c264e7c` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a33bafa8a31e4ec9649f65646022cad1957808b` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e264618dc015219cd83dbc53b31251d73c2db1a` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63d27fc9d463ed727676367d3f818999962737e8` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x79ef6d28c41e47a588e2f2ffb4140eb6d952aec4` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb427fc22561f3963b04202f9bb5bcebd76c14a99` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb516247596ca36bf32876199fbdcad6b3322330b` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb8bc1e9c0a2d445bc39d2a745f47619e954dd565` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd68d3a44d46dd50bfeba8cca544717b76e7c4b29` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc2265cbd15bed67b5f2c0b82e23fce4a07ddf6b` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe4d47ef77ac2c3fa4019cd169ac1dd9e27cb12e4` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x08d23468a467d2bb86fae0e32f247a26c7e2e994` | sINV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 168 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 20 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1, medium=1
- Match method counts: temporal_name=1, unique_name=10

Zero-match audit list:

- [1758] junior-sherlock-contest.pdf
- [1759] junior-sherlock-audit.pdf
- [1763] audits.sherlock.xyz/bug-bounties/233
- [1765] drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view

Fork inheritance lineage and inherited audits are included when available.
