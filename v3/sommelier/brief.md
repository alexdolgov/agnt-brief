# Agentic Audit Brief: Sommelier

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 19 (0 matched; 19 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Sommelier (`sommelier`)
- Website: [https://somm.finance/](https://somm.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, optimism
- Contract surface: 165 unique implementations (165 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $835,849.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Sommelier in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 165 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 131
- Unique implementations: 165
- Raw deployments: 165
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 18 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2StablecoinCellar | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-166296 | `0x7bad5df5e11151dc5ee1a648800057c5c934c0d5` | ⚠️ Unaudited |
| AaveV3ATokenAdaptor | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | unit-166306 | `0x392b1e6905bb8449d26af701cdea6ff47bf6e5a8` | ⚠️ Unaudited |
| Cellar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166276 | `0x05641a27c82799aaf22b436f20a3110410f29652` | ⚠️ Unaudited |
| CellarAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166286 | `0x23a739cba6e29767082c26b3d9c421409d9bed38` | ⚠️ Unaudited |
| CellarFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166278 | `0x09d158103a311471d8f2cb2a879a54735b3ad159` | ⚠️ Unaudited |
| CellarInitializable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166292 | `0x644d0f801521810530b60cc338931d835b5b4c24` | ⚠️ Unaudited |
| CellarInitializableV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166297 | `0x8d4b8f3576c988d0764ae61963366ca044aa8753` | ⚠️ Unaudited |
| CellarInitializableV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166274 | `0x0274a704a6d9129f90a62ddc6f6024b33ecdad36` | ⚠️ Unaudited |
| CellarRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166282 | `0x15533ba95b85da500e1faa444871d4760ecc4a58` | ⚠️ Unaudited |
| CellarStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166275 | `0x0349b3c56adb9e39b5d75fc1df52eee313dd80d1` | ⚠️ Unaudited |
| CellarWithOracleWithBalancerFlashLoans | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166279 | `0x0c190ded9be5f512bd72827bdad4003e9cc7975c` | ⚠️ Unaudited |
| CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166284 | `0x19b8d8fc682fc56fbb42653f68c7d48dd3fe597e` | ⚠️ Unaudited |
| CellarWithShareLockPeriod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166294 | `0x6c51041a91c91c86f3f08a72cb4d3f67f1208897` | ⚠️ Unaudited |
| CosmosERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166300 | `0xa670d7237398238de01267472c6f13e5b8010fd1` | ⚠️ Unaudited |
| CTokenAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166287 | `0x26dba82495f6189dde7648ae88bead46c402f078` | ⚠️ Unaudited |
| ERC20Adaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166283 | `0x195e769df61f201e2161f575302edb3ac7074693` | ⚠️ Unaudited |
| ERC4626SharePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166305 | `0xfc254a090af27a94d00677191955f7713fdc71cc` | ⚠️ Unaudited |
| EulerDebtTokenAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166302 | `0xb079d4ccf8557b0dd9ab829eedb62fa70feb1b38` | ⚠️ Unaudited |
| EulerETokenAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166290 | `0x4869a3c6642c824d9de238ebbe6e4424086cfb8d` | ⚠️ Unaudited |
| FeesAndReserves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166303 | `0xba7f27d2893a908cceb08bc9952eb1ba5a987c84` | ⚠️ Unaudited |
| FeesAndReservesAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166293 | `0x647d264d800a2461e594796af61a39b7735d8933` | ⚠️ Unaudited |
| FTokenAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166281 | `0x13c7da01977e6de1dfa8b135da34bd569650acb9` | ⚠️ Unaudited |
| FTokenAdaptorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166289 | `0x3bd96cb052d8e7162edc929b254c63596ae1c5b0` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166299 | `0xa5e3b273ecbfe90a9abb8824974343d46a966c2c` | ⚠️ Unaudited |
| MockFTokenAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166291 | `0x5d02823c235048236a293f3d6c634bbb70538aa6` | ⚠️ Unaudited |
| OneInchAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166301 | `0xa99ae6a11db22ff50bb17ca24c49a2bad8ece7de` | ⚠️ Unaudited |
| PriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166273 | `0x01d2f9353393a2e5854c87d816bc4d5965a840a8` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166288 | `0x2cbd27e034fee53f79b607430da7771b22050741` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166277 | `0x070f43e613b33ad3efc6b2928f3c01d58d032020` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-166298 | `0x97a23e208d9de5546c3dfac655cb88288c8d6aff` | ⚠️ Unaudited |
| VestingSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166295 | `0x797337de25b8a2649ca08a25b701dee2aef9143a` | ⚠️ Unaudited |
| VestingSimpleAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166285 | `0x1eaa1a100a460f46a2032f0402bc01fe89faab60` | ⚠️ Unaudited |
| WstEthExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166304 | `0xd9fd7dd08b3ffc53323db881661367e0d16a71c7` | ⚠️ Unaudited |
| ZeroXAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-166280 | `0x1039a9b61dff6a3fb8dbf4e924aa749e5cfe35ef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (131)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09614115685f2cf791cd02fa987885ae6a9bdbce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6b501c3ee7d26d86633a581434105d40db239b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1071b2bfb4c4108086ca350fbf317bd6baf38a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138a6d8c49428d4c71dd7596571fbd4699c7d3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x147039ba6a108b72dfba1fce31fc7c5ee23cd8de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17fe13616f6f78f586da091f2353318d77e0b28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b38148b8dfdea0b3d80c45f0d8569889504f0b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8180bbe2b14a1b24d759c139668f2dc421d699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd161ef8ee43e72ce8cfb156c2ca4f64e49c086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d90366b0154fbcb5101c06a39c25d26cb48e889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eff374fd9aa7266504144da861fff9bbd31828e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f07f1f4d879cb14f23e709bd214b55cf5b59c90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24691a00779d375a5447727e1610d327d04b3c5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24eeaa1111dac1c0fe0cf3c03bba03adde1e7fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290a42e913083edf5aefb241f8a12b306c19f8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9ef9f117d9d9fd2ee1f226383718a8fcb8ab84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f0fa054390a74cdde31200f01ea31b3b3ca4bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3051e76a62da91d4ad6be6bd98d8ab26fdaf9d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f5ea4b16101c649cc848a2c699111dc5111114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a763a9db61f4c8b57d033ac11d74e5c9fb3314f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b5ca5de4d808cd793d3a7b3a731d3e67e707b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f07a84ecdf494310d397d24c1c78b041d2fa622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x424ca9f0c9bd2d3b2d0830b62d0cbcae55adb5f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x459d0bc05beacecf9205922656045b7503af67ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4986fd36b6b16f49b43282ee2e24c5cf90ed166d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d1354ee573b11614e2aab4be002a1e03438ac6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4e5610885c6c2c8d9ad92e36945fb7092aadae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f379590c3808978be80d783eb0f8df3d9d30c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x508e6ae090ea92cb90571e4269b799257cd78ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545ce2e5b603c260cc6b2d1b78a66404e12590d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55534e5f1f8dfb4db0f1d2a3a1d241ca5cf0dc62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eb0046669e4b128021913f1578529157d64ddd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x613fd42371e82b6b6bc9bfdb71e024fea63892a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6143f313726e519999f9aad7b27f82557f19edf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63f9817a49547bc003bf8bc2b9386059a5a7eed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650dea34169d2b7002ef66b0be10f82e059a28bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656ebce532fb569dbb00df98d8590bdeb8d24987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6815ecfad767c5dbb6266c80f5b262b4bf5ce808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b7f87279982d919bbf85182ddeab179b366d8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ce314c39f30488b4a86b8892c81a5b7af83e337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e2dac3b9e9adc0cbbae2d0b9fd81952a8d33872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f069f711281618467dae7873541ecc082761b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fb507f2738610a29ee43d85523cbd5f8aeb590d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7286ec6a1425a5a3ec62def2a2cdd2498e07086c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7291960d1e14a4369bcb26df31077d7637491c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a9a6fab61e128246a6a5242a3e96e56198cbdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x763dcfb28d7eac0ba2fa6f6ec62ea2160abafd2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x793648207f4cc6477718a3d28555272b41b0516c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da7e27e4bcc6ec8bc06349e1cef6634f6df7c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fcd3445ca771f915fd092c3947fa68772e94561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x802818408dfc63e67ca4c56e2f5ec37998dd520c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84be95f9fc18598bd98fa65a1beda4f194862156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8510f22bd1932afb4753b6b3edf5db00c7e7a748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ab78b597cf9e25c51ca1fca3f8da723f04dc5ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8adcc8db7d9a0b0265b70cc3fcf41c54acdc41b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bdd3d5b889f3d0d735eb4db5d87782df2b4647d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fbbf5e28837beb54ba9003b974a5ddfb4feb370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932a36c2cf287564fa3a2596875e1c38752b4243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x955a31153e6764fe892757ace79123ae996b0afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95eba84453986a83e01c1584c06692d1012146de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95f0ed6581adf2ee1149fc7830594c7933c876ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x974115e726986e7b69033cecf88e5ca3413fa83a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ba1ef93a5ef0596bb14b45e9d313ed5969bfe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a384df333588428843d128120becd72434ec078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b5cf982d3c6507ae8f68a78da92a54fe2cd5746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2b51ccf371cba0e93d876af3ec67b0fe747558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d30672eed8d514cd1ad009cfe85ea8f0019d37f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e233b57f1560876d394050c2a5d91a5774536dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eeabfff5d15e8cedfd2f6c914c8826ba0a5fbbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ecb6e6e98b7f9b842f5803221e47e00c6baeb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa953f0c594365b821a847e7b9f4722e338526699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa71f75fb6948a6c814a28675241fc5e3bcac355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaf6aad6d44de6206e6940a36c0246ce3d0e64b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac426d67b7540129e93e43209e687d78a20aaba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a37964b9d07ecc3c7fa9e2737cc47e6064a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xada78a5e01325b91bc7879a63c309f7d54d42950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae0e6024972b70601bc35405479af5cd372cc956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1d08c5a1a67a34d9dc6e9f2c5fab797ba4cbbae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb21debd3a10bb545824c3014ab0b1ce5abcf3b64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb65b7e4776c3e5bc8863c357b3192257cef0962b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb75015b59d55a42a9e17e6e78cb0b04c115738cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8714385a74ebfa491929f3b952f7cc1f86db802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8952ce4010cff3c74586d712a4402285a3a3afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e576f06dfc49e5819b82894b244facaae4fdb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb90aeafe6a7516852f6ff3163a7e606b58355ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc5d133107deebc4525b6f8c1b8209e6f34104a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea8578d862b4416ad99ee1c12ab7b869825322e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc413ea6cb68c05deda0d9aa7daf8e51a7dddff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0ab4b2befe87f7eb0dd09786d45f2b0deb574c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc356f0ac3a0d3fc18167d8ee62e0a8fb487d1719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ddf6f2512c16d0780ff03ec621e81a0919f1ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc491b2da919bc37dd83b879953eafc734b9d88a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc57428ba73e8a92afa415e3b44891e00be334bbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5af4b9435bbb978f03c79557437892288d3e204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8a0ca81ebadc043af0ed8c9d96ad80fcbeac53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb38bfebf18246681e9aa3f33930f1c5f51d51c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcee04d9b75c282a630ba10583a3ac2c3c3599939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1c18363f81d8e6260511b38fcf1e8b710e7e31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1d02c16874e0714fd825213e0c13eab6dd9c25f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42b5f0c7865530987842f0cc1a96cf9dbf1d6c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd678ec127490dbe66cbf31199586bafe06257dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8029a05beb0faf1215fbb064d98c39b28d317ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8da505b81045f169e20aa3087b7707bc912ebad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd944d0e62de2ae742c4ca085e80222f58b69b231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb299aff225d84e7c1517ce84219ba84f045ca3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb746e5dc4f0953e854a5ae4e61ab04ce4b3949b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc76fae43a34f9b8355503126f165968fd7d00bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdffa1443a72fd3f4e935b93d0c3bff8fe80ce083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe03b91176b7f109fb32f3c5c507dbf23d85bde95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0534662ff1182a1c32e400d2b64723817344ab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe30574344eb64c7c9012de52d95b0b4f89f2c6d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe316bc45084765d4d3f14e9771f11713b3b1c3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3df032dd9503a70075c8e8444146011f6e22664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4b4610755f36f6ef8cc2426b310e89e71103e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4d59bc8c14574b217cb7bf678bf2b0e38acd9b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe76c6bfdba7e3709f9540e324bf190f19eb9129b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe78d206de3ef350fc66c0933c6c0b5fd16029d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea25f2c6ff83f13eafab64f63fd031bf3776b01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb5c9d3d7c9436c1932644b0e6a95c32e4a791e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec0ed3a94c0abe4cf35dd0abc24cd232f161c2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed8a6fc51e2a7acc899eae3872a572073b7d7502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef841587a70539603ebdcff181eef72652bdda87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeffe069b1c62c2f55f41a501ecc3c6ff4db6d70a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0345f857e7875cf7906734a01cab11ce99fc7ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf260a0cad298bbb1b90c8d3ee24ac896ada65fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4279e93a06f9d4b5d0625b1f471aa99ef9b686b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf463913776319796bd2a6da3002f636acefcd7a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf842b9545102ce21635f9f43bcc462080025de62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8eceaa2dcb8824407563f419362eb40530924b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfced747657acffc6fafacd606e17d0988edf3fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc904c8b4fa9439bc9b26775fe33cd9f1d5d8cc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 131
- Live contracts: 0
- Unknown liveness contracts: 131
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=131

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x09614115685f2cf791cd02fa987885ae6a9bdbce` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x0c6b501c3ee7d26d86633a581434105d40db239b` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x1071b2bfb4c4108086ca350fbf317bd6baf38a15` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x138a6d8c49428d4c71dd7596571fbd4699c7d3da` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x147039ba6a108b72dfba1fce31fc7c5ee23cd8de` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x17fe13616f6f78f586da091f2353318d77e0b28e` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x1b38148b8dfdea0b3d80c45f0d8569889504f0b5` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x1b8180bbe2b14a1b24d759c139668f2dc421d699` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x1bd161ef8ee43e72ce8cfb156c2ca4f64e49c086` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x1d90366b0154fbcb5101c06a39c25d26cb48e889` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x1eff374fd9aa7266504144da861fff9bbd31828e` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x1f07f1f4d879cb14f23e709bd214b55cf5b59c90` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x24691a00779d375a5447727e1610d327d04b3c5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x24eeaa1111dac1c0fe0cf3c03bba03adde1e7fe4` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x290a42e913083edf5aefb241f8a12b306c19f8f9` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x2c9ef9f117d9d9fd2ee1f226383718a8fcb8ab84` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x2f0fa054390a74cdde31200f01ea31b3b3ca4bc6` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x3051e76a62da91d4ad6be6bd98d8ab26fdaf9d08` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x36f5ea4b16101c649cc848a2c699111dc5111114` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x3a763a9db61f4c8b57d033ac11d74e5c9fb3314f` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x3b5ca5de4d808cd793d3a7b3a731d3e67e707b27` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x3f07a84ecdf494310d397d24c1c78b041d2fa622` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x424ca9f0c9bd2d3b2d0830b62d0cbcae55adb5f5` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x459d0bc05beacecf9205922656045b7503af67ce` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x4986fd36b6b16f49b43282ee2e24c5cf90ed166d` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x4d1354ee573b11614e2aab4be002a1e03438ac6e` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x4e4e5610885c6c2c8d9ad92e36945fb7092aadae` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x4f379590c3808978be80d783eb0f8df3d9d30c9f` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x508e6ae090ea92cb90571e4269b799257cd78ca1` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x545ce2e5b603c260cc6b2d1b78a66404e12590d8` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x55534e5f1f8dfb4db0f1d2a3a1d241ca5cf0dc62` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x5eb0046669e4b128021913f1578529157d64ddd6` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x613fd42371e82b6b6bc9bfdb71e024fea63892a1` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x6143f313726e519999f9aad7b27f82557f19edf6` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x63f9817a49547bc003bf8bc2b9386059a5a7eed1` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x650dea34169d2b7002ef66b0be10f82e059a28bf` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x656ebce532fb569dbb00df98d8590bdeb8d24987` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x6815ecfad767c5dbb6266c80f5b262b4bf5ce808` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x6b7f87279982d919bbf85182ddeab179b366d8f2` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x6ce314c39f30488b4a86b8892c81a5b7af83e337` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x6e2dac3b9e9adc0cbbae2d0b9fd81952a8d33872` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x6f069f711281618467dae7873541ecc082761b33` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x6fb507f2738610a29ee43d85523cbd5f8aeb590d` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x7286ec6a1425a5a3ec62def2a2cdd2498e07086c` | non_address_book | unknown | unknown | unverified | n/a | `0x36d6cbd3882deadb90d33913eaf58f78277851b0` |
| unverified unclassified | UnnamedContract<br>`0x7291960d1e14a4369bcb26df31077d7637491c81` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x74a9a6fab61e128246a6a5242a3e96e56198cbdd` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x763dcfb28d7eac0ba2fa6f6ec62ea2160abafd2b` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x793648207f4cc6477718a3d28555272b41b0516c` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x7da7e27e4bcc6ec8bc06349e1cef6634f6df7c5c` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x7fcd3445ca771f915fd092c3947fa68772e94561` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x802818408dfc63e67ca4c56e2f5ec37998dd520c` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x84be95f9fc18598bd98fa65a1beda4f194862156` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x8510f22bd1932afb4753b6b3edf5db00c7e7a748` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x8ab78b597cf9e25c51ca1fca3f8da723f04dc5ec` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x8adcc8db7d9a0b0265b70cc3fcf41c54acdc41b5` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x8bdd3d5b889f3d0d735eb4db5d87782df2b4647d` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x8fbbf5e28837beb54ba9003b974a5ddfb4feb370` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x932a36c2cf287564fa3a2596875e1c38752b4243` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x955a31153e6764fe892757ace79123ae996b0afb` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x95eba84453986a83e01c1584c06692d1012146de` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x95f0ed6581adf2ee1149fc7830594c7933c876ae` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x974115e726986e7b69033cecf88e5ca3413fa83a` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x99ba1ef93a5ef0596bb14b45e9d313ed5969bfe6` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x9a384df333588428843d128120becd72434ec078` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x9b5cf982d3c6507ae8f68a78da92a54fe2cd5746` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x9c2b51ccf371cba0e93d876af3ec67b0fe747558` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x9d30672eed8d514cd1ad009cfe85ea8f0019d37f` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0x9e233b57f1560876d394050c2a5d91a5774536dc` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0x9eeabfff5d15e8cedfd2f6c914c8826ba0a5fbbd` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xa3ecb6e6e98b7f9b842f5803221e47e00c6baeb9` | non_address_book | unknown | unknown | unverified | n/a | `0x36d6cbd3882deadb90d33913eaf58f78277851b0` |
| unverified unclassified | UnnamedContract<br>`0xa953f0c594365b821a847e7b9f4722e338526699` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xaa71f75fb6948a6c814a28675241fc5e3bcac355` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xaaf6aad6d44de6206e6940a36c0246ce3d0e64b6` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xac426d67b7540129e93e43209e687d78a20aaba7` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xac8a37964b9d07ecc3c7fa9e2737cc47e6064a27` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xada78a5e01325b91bc7879a63c309f7d54d42950` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xae0e6024972b70601bc35405479af5cd372cc956` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xb1d08c5a1a67a34d9dc6e9f2c5fab797ba4cbbae` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xb21debd3a10bb545824c3014ab0b1ce5abcf3b64` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xb65b7e4776c3e5bc8863c357b3192257cef0962b` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xb75015b59d55a42a9e17e6e78cb0b04c115738cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xb8714385a74ebfa491929f3b952f7cc1f86db802` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xb8952ce4010cff3c74586d712a4402285a3a3afb` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xb9e576f06dfc49e5819b82894b244facaae4fdb7` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xbb90aeafe6a7516852f6ff3163a7e606b58355ac` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xbc5d133107deebc4525b6f8c1b8209e6f34104a1` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xbea8578d862b4416ad99ee1c12ab7b869825322e` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xbfc413ea6cb68c05deda0d9aa7daf8e51a7dddff` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xc0ab4b2befe87f7eb0dd09786d45f2b0deb574c6` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xc356f0ac3a0d3fc18167d8ee62e0a8fb487d1719` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xc3ddf6f2512c16d0780ff03ec621e81a0919f1ca` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xc491b2da919bc37dd83b879953eafc734b9d88a6` | non_address_book | unknown | unknown | unverified | n/a | `0x36d6cbd3882deadb90d33913eaf58f78277851b0` |
| unverified unclassified | UnnamedContract<br>`0xc57428ba73e8a92afa415e3b44891e00be334bbd` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xc5af4b9435bbb978f03c79557437892288d3e204` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xc8a0ca81ebadc043af0ed8c9d96ad80fcbeac53a` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xcb38bfebf18246681e9aa3f33930f1c5f51d51c7` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xcee04d9b75c282a630ba10583a3ac2c3c3599939` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xd1c18363f81d8e6260511b38fcf1e8b710e7e31d` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xd1d02c16874e0714fd825213e0c13eab6dd9c25f` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xd42b5f0c7865530987842f0cc1a96cf9dbf1d6c8` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xd678ec127490dbe66cbf31199586bafe06257dcb` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xd8029a05beb0faf1215fbb064d98c39b28d317ee` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xd8da505b81045f169e20aa3087b7707bc912ebad` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xd944d0e62de2ae742c4ca085e80222f58b69b231` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xdb299aff225d84e7c1517ce84219ba84f045ca3b` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xdb746e5dc4f0953e854a5ae4e61ab04ce4b3949b` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xdc76fae43a34f9b8355503126f165968fd7d00bd` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xdffa1443a72fd3f4e935b93d0c3bff8fe80ce083` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xe03b91176b7f109fb32f3c5c507dbf23d85bde95` | non_address_book | unknown | unknown | unverified | n/a | `0x36d6cbd3882deadb90d33913eaf58f78277851b0` |
| unverified unclassified | UnnamedContract<br>`0xe0534662ff1182a1c32e400d2b64723817344ab4` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xe30574344eb64c7c9012de52d95b0b4f89f2c6d1` | non_address_book | unknown | unknown | unverified | n/a | `0x36d6cbd3882deadb90d33913eaf58f78277851b0` |
| unverified unclassified | UnnamedContract<br>`0xe316bc45084765d4d3f14e9771f11713b3b1c3a9` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xe3df032dd9503a70075c8e8444146011f6e22664` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xe4b4610755f36f6ef8cc2426b310e89e71103e71` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xe4d59bc8c14574b217cb7bf678bf2b0e38acd9b6` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xe76c6bfdba7e3709f9540e324bf190f19eb9129b` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xe78d206de3ef350fc66c0933c6c0b5fd16029d49` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xea25f2c6ff83f13eafab64f63fd031bf3776b01f` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xeb5c9d3d7c9436c1932644b0e6a95c32e4a791e1` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xec0ed3a94c0abe4cf35dd0abc24cd232f161c2f2` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xed8a6fc51e2a7acc899eae3872a572073b7d7502` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xef841587a70539603ebdcff181eef72652bdda87` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |
| unverified unclassified | UnnamedContract<br>`0xeffe069b1c62c2f55f41a501ecc3c6ff4db6d70a` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xf0345f857e7875cf7906734a01cab11ce99fc7ef` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xf260a0cad298bbb1b90c8d3ee24ac896ada65fa5` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xf4279e93a06f9d4b5d0625b1f471aa99ef9b686b` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xf463913776319796bd2a6da3002f636acefcd7a7` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xf842b9545102ce21635f9f43bcc462080025de62` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xf8eceaa2dcb8824407563f419362eb40530924b7` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xfced747657acffc6fafacd606e17d0988edf3fd9` | non_address_book | unknown | unknown | unverified | n/a | `0x552aca1343a6383af32ce1b7c7b1b47959f7ad90` |
| unverified unclassified | UnnamedContract<br>`0xffc904c8b4fa9439bc9b26775fe33cd9f1d5d8cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbaf7d863b4504d520797efef4434f2067c1142c5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [.css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);}](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Macro_Cellar_CellarStaking_07_2022.pdf) | Macro | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [sommelier-7.html](https://0xmacro.com/library/audits/sommelier-7.html) | 0xMacro | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [sommelier-9.html](https://0xmacro.com/library/audits/sommelier-9.html) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [sommelier-3.html](https://0xmacro.com/library/audits/sommelier-3.html) | 0xMacro | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [sommelier-8.html](https://0xmacro.com/library/audits/sommelier-8.html) | 0xMacro | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [sommelier-14.html](https://0xmacro.com/library/audits/sommelier-14.html) | 0xMacro | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [sommelier-15.html](https://0xmacro.com/library/audits/sommelier-15.html) | 0xMacro | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [sommelier-4.html](https://0xmacro.com/library/audits/sommelier-4.html) | 0xMacro | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [sommelier-12.html](https://0xmacro.com/library/audits/sommelier-12.html) | 0xMacro | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [LeastAuthority_Althea_Gravity Bridge_Final_Audit_Report.pdf](https://leastauthority.com/static/publications/LeastAuthority_Althea_Gravity%20Bridge_Final_Audit_Report.pdf) | Least Authority | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [FYEO_Cellar_07_2022.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/FYEO_Cellar_07_2022.pdf) | FYEO | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [Macro_Sommelier-3_10_2022.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Macro_Sommelier-3_10_2022.pdf) | Macro | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Macro_Sommelier-4_01_2023.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Macro_Sommelier-4_01_2023.pdf) | Macro | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [Sommelier A-10 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-10%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-11%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-12%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-14%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-8%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-9%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18120] .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} — no match: Extracted 19 contracts from the 'Source Code' section table. Audit date from cover page: 'July 7, 2022'.
- [18121] sommelier-7.html — no match: Extracted 21 contracts from the scope table and findings. FeesAndReserves is not in the scope table but is audited in findings H-1 and H-2.
- [18122] sommelier-9.html — no match: All contracts listed in the 'Source Code' section of the audit report are included.
- [18123] sommelier-3.html — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is from the cover page: October 12, 2022.
- [18124] sommelier-8.html — no match: Extracted 18 contracts from two scope tables in the audit report. Date from cover page: June 28, 2023.
- [18125] sommelier-14.html — no match: Extracted 9 contracts from the scope table in the audit report. Audit date from cover page: Dec 15, 2023.
- [18126] sommelier-15.html — no match: Two contracts in scope: PriceRouter and SequencerPriceRouter. Audit date from cover page: January 22, 2023.
- [18127] sommelier-4.html — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is from the cover page: 'January 11, 2023'.
- [18128] sommelier-12.html — no match: Extracted 11 contracts from the scope table in the audit report. The audit date is October 27, 2023 from the cover page.
- [18129] LeastAuthority_Althea_Gravity Bridge_Final_Audit_Report.pdf — no match: The report explicitly lists the Gravity Bridge repository as in-scope. The smart contracts Gravity.sol and CosmosToken.sol are the only Solidity contracts mentioned. The Go and Rust code are modules, not contracts. The audit date is clearly stated on the cover page and throughout.
- [18130] FYEO_Cellar_07_2022.pdf — no match: All .sol files under src/ directory are listed in the scope tree.
- [18131] Macro_Sommelier-3_10_2022.pdf — no match: Extracted 15 contracts from the scope table in the 'Source Code' section. Audit date found on cover page: 'October 12, 2022'.
- [18132] Macro_Sommelier-4_01_2023.pdf — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is from the cover page.
- [18133] Sommelier A-10 _ Macro Audits _ The 0xMacro Library.pdf — no match: Only one contract in scope: CellarAdaptor. Audit date from title and introduction.
- [18134] Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf — no match: All contracts listed in the 'Source Code' section with SHA256 hashes are in scope. The audit date is from the cover page: 'Aug 30, 2023'.
- [18135] Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf — no match: Extracted 11 contracts from the scope table in the audit report. The audit date is October 27, 2023 from the cover page.
- [18136] Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf — no match: All contracts listed in the 'Source Code' section with SHA256 hashes are in scope.
- [18137] Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf — no match: Extracted 18 contracts from two scope tables in the audit report. Date from cover page.
- [18138] Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf — no match: All contracts listed in the 'Source Code' section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | AaveV2StablecoinCellar | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | CellarStaking | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | Errors | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | ERC4626 | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | Multicall | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | IAToken | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | IAaveIncentivesController | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | IAaveProtocolDataProvider | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | IAaveV2StablecoinCellar | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | ICellarStaking | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | ICurveSwaps | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | IERC20 | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | IERC4626 | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | IGravity | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | ILendingPool | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | IMulticall | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | IStakedTokenV2 | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | ISushiSwapRouter | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);} | Math | unmatched — not counted | — | Listed in scope table with SHA256 hash. | no |
| sommelier-7.html | CellarFactory | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | Registry | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | Cellar | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | CellarInitializableV2_2 | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | AaveATokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | AaveDebtTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | AaveV3ATokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | AaveV3DebtTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | BaseAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | CTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | ERC20Adaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | CellarAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | UniswapV3Adaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | UniswapV3PositionTracker | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | VestingSimpleAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | ZeroXAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | SwapRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | OneInchAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | PositionlessAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-7.html | FeesAndReserves | unmatched — not counted | — | mentioned in findings H-1, H-2 | no |
| sommelier-9.html | Deployer | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | Registry | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | Cellar | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | ERC4626SharePriceOracle | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | CellarWithAaveFlashLoans | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | CellarWithBalancerFlashLoans | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | CellarWithOracle | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | CellarWithOracleWithAaveFlashLoans | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | CellarWithOracleWithBalancerFlashLoans | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | CellarWithShareLockPeriod | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | BalancerPoolAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | LegacyCellarAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-9.html | StEthExtension | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | Registry | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | Cellar | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | ERC4626 | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | Multicall | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | IMulticall | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | IChainlinkAggregator | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | IGravity | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | ChainlinkPriceFeedAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | SwapRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | AddressArray | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | Math | unmatched — not counted | — | listed in scope table | no |
| sommelier-3.html | SafeCast | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | AxelarProxy | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | AaveATokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | CTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | FTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | FTokenAdaptorV1 | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | MorphoAaveV2ATokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | MorphoAaveV2DebtTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | MorphoAaveV3ATokenCollateralAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | MorphoAaveV3ATokenP2PAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | MorphoAaveV3DebtTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | MorphoRewardHandler | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | BalancerPoolExtension | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | BalancerStablePoolExtension | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | WstEthExtension | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-8.html | BalancerPoolAdaptor | unmatched — not counted | — | listed in second scope table | no |
| sommelier-8.html | CellarAdaptor | unmatched — not counted | — | listed in second scope table | no |
| sommelier-8.html | RedstonePriceFeedExtension | unmatched — not counted | — | listed in second scope table | no |
| sommelier-14.html | CurveAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-14.html | CurveHelper | unmatched — not counted | — | listed in scope table | no |
| sommelier-14.html | Curve2PoolExtension | unmatched — not counted | — | listed in scope table | no |
| sommelier-14.html | CurveEMAExtension | unmatched — not counted | — | listed in scope table | no |
| sommelier-14.html | ConvexCurveAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-14.html | SimpleSolver | unmatched — not counted | — | listed in scope table | no |
| sommelier-14.html | WithdrawQueue | unmatched — not counted | — | listed in scope table | no |
| sommelier-14.html | ERC20Adaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-14.html | SimpleSlippageRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-15.html | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-15.html | SequencerPriceRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | CellarFactory | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | CellarRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | Registry | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | Cellar | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | CellarInitializable | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | ERC20 | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | ERC4626 | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | Multicall | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | SafeTransferLib | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | ICellarRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | ICellarRouterV1_5 | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | ICellarStaking | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | ICellarV1_5 | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | IMulticall | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | DataTypes | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | IAaveToken | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | IChainlinkAggregator | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | ICurveFi | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | ICurvePool | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | IGravity | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | IPool | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | IPoolAddressesProvider | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | AaveATokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | AaveDebtTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | BaseAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | CTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | ERC20Adaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | CellarAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | UniswapV3Adaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | VestingSimpleAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | SwapRouter | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | VestingSimple | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | Math | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | SigUtils | unmatched — not counted | — | listed in scope table | no |
| sommelier-4.html | Uint32Array | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | AuraERC4626Adaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | RedstoneEthPriceFeedExtension | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | CurveEMAExtension | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | CollateralFTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | CollateralFTokenAdaptorV1 | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | DebtFTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | DebtFTokenAdaptorV1 | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | FTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | FTokenAdaptorV1 | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | ERC4626SharePriceOracle | unmatched — not counted | — | listed in scope table | no |
| sommelier-12.html | ERC4626Adaptor | unmatched — not counted | — | listed in scope table | no |
| LeastAuthority_Althea_Gravity Bridge_Final_Audit_Report.pdf | Gravity.sol | unmatched — not counted | — | Mentioned as the smart contract on Ethereum side, repeatedly referenced in findings and suggestions. | no |
| LeastAuthority_Althea_Gravity Bridge_Final_Audit_Report.pdf | CosmosToken.sol | unmatched — not counted | — | Mentioned in Suggestion 22 as imported in Gravity.sol. | no |
| FYEO_Cellar_07_2022.pdf | ERC4626 | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | IAToken | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | IAaveIncentivesController | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | IAaveProtocolDataProvider | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | IAaveV2StablecoinCellar | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | ICellarRouter | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | ICellarStaking | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | ICurveSwaps | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | IGravity | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | ILendingPool | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | IMulticall | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | IStakedTokenV2 | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | ISushiSwapRouter | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | MockAToken | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | MockERC20 | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | MockERC4626 | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | MockGravity | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | MockIncentivesController | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | MockLendingPool | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | MockStkAAVE | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | MockSwapRouter | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | Math | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | AaveV2StablecoinCellar | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | CellarRouter | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | CellarStaking | unmatched — not counted | — | listed in scope | no |
| FYEO_Cellar_07_2022.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Macro_Sommelier-3_10_2022.pdf | Registry | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | Cellar | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | ERC4626 | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | IMulticall | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | IChainlinkAggregator | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | IGravity | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | ChainlinkPriceFeedAdaptor | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | SwapRouter | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | AddressArray | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-3_10_2022.pdf | SafeCast | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | CellarFactory | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | CellarRouter | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | Registry | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | Cellar | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | CellarInitializable | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | ERC20 | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | ERC4626 | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | SafeTransferLib | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | ICellarRouter | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | ICellarRouterV1_5 | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | ICellarStaking | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | ICellarV1_5 | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | IMulticall | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | IAaveToken | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | IChainlinkAggregator | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | ICurveFi | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | ICurvePool | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | IGravity | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | IPool | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | IPoolAddressesProvider | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | AaveATokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | AaveDebtTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | BaseAdaptor | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | CTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | ERC20Adaptor | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | CellarAdaptor | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | UniswapV3Adaptor | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | VestingSimpleAdaptor | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | SwapRouter | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | VestingSimple | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | SigUtils | unmatched — not counted | — | listed in scope table | no |
| Macro_Sommelier-4_01_2023.pdf | Uint32Array | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-10 _ Macro Audits _ The 0xMacro Library.pdf | CellarAdaptor | unmatched — not counted | — | listed in scope | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | AxelarProxy | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | CollateralFTokenAdaptorV1 | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | CollateralFTokenAdaptorV2 | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | DebtFTokenAdaptorV1 | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | DebtFTokenAdaptorV2 | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | FTokenAdaptor | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | FTokenAdaptorV1 | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | FraxlendHealthFactorLogic | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | UniswapV3Adaptor | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf | UniswapV3PositionTracker | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | AuraERC4626Adaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | RedstoneEthPriceFeedExtension | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | CurveEMAExtension | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | CollateralFTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | CollateralFTokenAdaptorV1 | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | DebtFTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | DebtFTokenAdaptorV1 | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | FTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | FTokenAdaptorV1 | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | ERC4626SharePriceOracle | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf | ERC4626Adaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf | CurveAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf | CurveHelper | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf | Curve2PoolExtension | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf | CurveEMAExtension | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf | ConvexCurveAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf | SimpleSolver | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf | WithdrawQueue | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf | ERC20Adaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf | SimpleSlippageRouter | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | AxelarProxy | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | AaveATokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | CTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | FTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | FTokenAdaptorV1 | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | MorphoAaveV2ATokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | MorphoAaveV2DebtTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | MorphoAaveV3ATokenCollateralAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | MorphoAaveV3ATokenP2PAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | MorphoAaveV3DebtTokenAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | MorphoRewardHandler | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | BalancerPoolExtension | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | BalancerStablePoolExtension | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | WstEthExtension | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | BalancerPoolAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | CellarAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf | RedstonePriceFeedExtension | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | Deployer | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | Registry | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | Cellar | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | ERC4626SharePriceOracle | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | CellarWithAaveFlashLoans | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | CellarWithBalancerFlashLoans | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | CellarWithOracle | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | CellarWithOracleWithAaveFlashLoans | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | CellarWithOracleWithBalancerFlashLoans | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | CellarWithShareLockPeriod | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | BalancerPoolAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | LegacyCellarAdaptor | unmatched — not counted | — | listed in scope table | no |
| Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf | StEthExtension | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 131 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 19
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 292 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=19
- Match method counts: n/a

Zero-match audit list:

- [18120] .css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);}
- [18121] sommelier-7.html
- [18122] sommelier-9.html
- [18123] sommelier-3.html
- [18124] sommelier-8.html
- [18125] sommelier-14.html
- [18126] sommelier-15.html
- [18127] sommelier-4.html
- [18128] sommelier-12.html
- [18129] LeastAuthority_Althea_Gravity Bridge_Final_Audit_Report.pdf
- [18130] FYEO_Cellar_07_2022.pdf
- [18131] Macro_Sommelier-3_10_2022.pdf
- [18132] Macro_Sommelier-4_01_2023.pdf
- [18133] Sommelier A-10 _ Macro Audits _ The 0xMacro Library.pdf
- [18134] Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf
- [18135] Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf
- [18136] Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf
- [18137] Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf
- [18138] Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf

Fork inheritance lineage and inherited audits are included when available.
