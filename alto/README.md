# Agentic Audit Brief: Alto

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 18 (0 matched; 18 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Alto (`alto`)
- Website: [https://www.altofoundation.org/](https://www.altofoundation.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 94 unique implementations (94 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $274,256.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Alto. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x133cf03d2a7a87b9239b1a3a8dd62f3f27c46788`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 93 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 94 unique; 93 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 94
- Raw deployments: 94
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 8 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressChange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cf6f8d0201f38fa3e6f21c1f4803f4eb40c0bb2` | ⚠️ Unaudited |
| AltoAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x241aa0ac561a5c210a86fecc82f45d2713f59c0c` | ⚠️ Unaudited |
| AltoLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e64cc242fa7a7a294efc29b0ca08daa6bf98a33` | ⚠️ Unaudited |
| AltoLeverageSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e635f6529d37ecad98b5d709beb479cdc101941` | ⚠️ Unaudited |
| AltoMintMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x195b11839e371bd25346f14158f6c51f733e866e` | ⚠️ Unaudited |
| AltoReferralWhitelistAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766d36c3e140a29bd47390958939ed7f7239513d` | ⚠️ Unaudited |
| AltoTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f06fefc4c53ded77a90cb798ed08dc068bb6dd` | ⚠️ Unaudited |
| AltoTimelockControllerMintMarketFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f80c18b6b73b1c4f06fa5233de32778ec90fa96` | ⚠️ Unaudited |
| Bundler3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac80387009231b4d55b85df27924b85f2ed6823d` | ⚠️ Unaudited |
| DlbDcfPriorityLiquidationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3fb51184183405c975bd8b355d4dc43209f45b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-266808 | `0x133cf03d2a7a87b9239b1a3a8dd62f3f27c46788` | ⚠️ Unaudited |
| FixedRateIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4065c4db1802d3f24d538c8f685571c7f83896` | ⚠️ Unaudited |
| MarketRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd45d50611c38e35dd1d1119077de1e988ed2257` | ⚠️ Unaudited |
| UsmRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad5620e10c33918e2c6a2e8e53325bf98c548e5e` | ⚠️ Unaudited |
| UsmSellAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaac86f77eb51fa1d565b743c43dece2cef90af24` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x696e7b1d5d11e2cf7f7b970acf54cf1491f17a47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4e16e97b4f9c303e354d61c10715b05f64c0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd2b15690219c3460f057f6b44f5782d4ad53a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a26d840cbfae671663177f2008499b08bf22d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11aa112f624d9c365a44260d4ee37facd9228b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17571ee471c23b29174b3e79f2af7d28dbca3cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8d22cdbc8b0fadc1e909c412f556497859652f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef7694adc1b3478536a98c092be274970e58663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210bf54092b66443fddfec0f3f156e74b04cd2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223566c6b2d0706cd9cd75f628cc9ec6889f9ca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266e5fb314ba71bba7d1bb830f527acd5c143675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e986795689554b8b869ccb8490c0bb7b1a45434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33b24510233281350bf8679a7c427d04db0ed208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388fc9d91074f2e5ca0ca36c761ad24733401130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a48d1600a33e58cb124fc7688f0c5b7a9336a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1b400d44389cdac84803e836e2bcdd7e3bbef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4354e3e89aa6f86ac6b53eb45a10134f48569169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4838477c7cc8044a319040acee751d6e3295d0ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1eafcf7b45927adbd546dbee5c9d25a12fea01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f46bb6948190edd091c3a4f47dc2946ae627369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x520e2607c4a47b8e80c0e695b5a8c712f5b5299f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d333fdf687121a0718d02d8a0eb6346d07ffa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ede9e93ce0fc73f87d4b5e5cc54546d45ad294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b7a27b467c4b111c780210475d527ad91e30277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61786d966f3fe8c4a83317af680ea8b0ef70f4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x623e9278ab11e816ad05a220e58be102dca84afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f3ef92ff08e4e528d2eeffe5ebb84542aabb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68d83e51a0883201b1ba19ed7ab06580f06da2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7010fe96936bf4a1486d96438adf7e548f6dbc7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716e204beb3037e97fc6c8c7ceeadb520df4dcaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x729432307ea5413acd5b9559201d48776d635907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74eaab99cc141b7b91f1f3b326bcf1270b03df3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780e079e0da30988df128350d46398997e01d384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8714cc923aaa7dfd37264f91c82a33454cd41efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9b32bbc6b857ec4afefc94dbdee8be3721c5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ded9e2b8bc5128b862dd534b97c8a32991959ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7638f2c0107f6ff766f79f68e084078fa56c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9331a9bebad3fab1b55ca717328a1e6610ae79b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93b227f37819d147ad31589c686fbfe654657503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95a6b36bcb3e18cd55f0ff4c655f61aa301f4845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x984e3d783e78ac5c5192caeb562be84306724a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x988a01e35a924e13bd3a297d9b0521ba2feb17f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f538ec7c840197dcaf30a25b635482ba9e8817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa22bacc5bc9c1011854afbe9a9cc2beebefe5238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30fbc6847e27f795c33c8e298aad9136a08da87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6c519d3ec7763ea21f77a83017618cd51c0d118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84dc3263d89de7852c861000540804ecd651611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9648f1bc911518506c55836efca919ec192574a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa97b7bdb1e060c7f428105760351ed8b72d3d7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae4f2b998783e2041e87e08da73985e4e0420159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafe82dad7ee47e8c050046b723ccc11def9ad7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb60c669e9831adf1d202d28fc2acd91e1db0cfe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7efffab2a68055571513ba9a04fa04991f054d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9724552a774369e8319d8edc00a7cb95fc5dde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce13995dd705cb18d85eaa02655ad05162343b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd284dd74479f3cbf4b59ee8479ece2bb48f96a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0e2ddb06bb034c1f980531ec5cad944d71affbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ee67f860f7f7f0bc95cf40e403e5f4728747a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc882dbc9f17123186a4aae8f3b73440a489b7b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb28c27539d7b57e802b9bc6e58501b8f2d6d898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb330548c8c9a2edafde7bbb49b3c4ab139246d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc51acb1d625f06487d7d568e7e8f9620ec6b082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2ea320713158a7b7eae46025b8ad4cbf3cdc87e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd395291a84938b8d142a85c1db95af1ae381ed39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ff4c427664645d357d3e6dc0fd6f52df1d3005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64d46c313258d248ae7870c64edf1eccde72906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda06d3d0d20a837f3e12d178551f962d7c01fb47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde5602faada45b3d815107079b25fd39fd4a14c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe17f10f8535336143d4f2fe304f3dcf7b23671e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe318d8f0dc3c10f507ab7a199e4511fb09737bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4491ad8cfdd1d974865295fbe63b5e3fa8777b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe670757b4d1a9ead3af30a225446162a14667ee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81419819a776404d318864c3a462e5cdac783fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefd78a5970a43e25b30426c3952065217c55e5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86fc229a93692cdeefc82a3d9bdb6656a71e9a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf897188dcd300fa80a2f7f0f0290f9ef64f2d47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfae841679dc1a93d225ecc827e4bbf3e8d703f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8c25047f4397dc5461b919999585a2a3eac2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe245d39b21fe5696f1c7e740b103448d9fc4ef8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 78
- Live contracts: 0
- Unknown liveness contracts: 78
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=78

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0b4e16e97b4f9c303e354d61c10715b05f64c0a4` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x0cd2b15690219c3460f057f6b44f5782d4ad53a9` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x11a26d840cbfae671663177f2008499b08bf22d3` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x11aa112f624d9c365a44260d4ee37facd9228b8f` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x17571ee471c23b29174b3e79f2af7d28dbca3cd1` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x1c8d22cdbc8b0fadc1e909c412f556497859652f` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x1ef7694adc1b3478536a98c092be274970e58663` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x210bf54092b66443fddfec0f3f156e74b04cd2a2` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x223566c6b2d0706cd9cd75f628cc9ec6889f9ca3` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x266e5fb314ba71bba7d1bb830f527acd5c143675` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x2e986795689554b8b869ccb8490c0bb7b1a45434` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x33b24510233281350bf8679a7c427d04db0ed208` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x388fc9d91074f2e5ca0ca36c761ad24733401130` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x3a48d1600a33e58cb124fc7688f0c5b7a9336a5c` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x3e1b400d44389cdac84803e836e2bcdd7e3bbef8` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x4354e3e89aa6f86ac6b53eb45a10134f48569169` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x4838477c7cc8044a319040acee751d6e3295d0ce` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x4e1eafcf7b45927adbd546dbee5c9d25a12fea01` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x4f46bb6948190edd091c3a4f47dc2946ae627369` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x520e2607c4a47b8e80c0e695b5a8c712f5b5299f` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x52d333fdf687121a0718d02d8a0eb6346d07ffa3` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x53ede9e93ce0fc73f87d4b5e5cc54546d45ad294` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x5b7a27b467c4b111c780210475d527ad91e30277` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x61786d966f3fe8c4a83317af680ea8b0ef70f4a9` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x623e9278ab11e816ad05a220e58be102dca84afb` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x65f3ef92ff08e4e528d2eeffe5ebb84542aabb6c` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x68d83e51a0883201b1ba19ed7ab06580f06da2f8` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x7010fe96936bf4a1486d96438adf7e548f6dbc7c` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x716e204beb3037e97fc6c8c7ceeadb520df4dcaa` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x729432307ea5413acd5b9559201d48776d635907` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x74eaab99cc141b7b91f1f3b326bcf1270b03df3c` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x780e079e0da30988df128350d46398997e01d384` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x8714cc923aaa7dfd37264f91c82a33454cd41efc` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x8d9b32bbc6b857ec4afefc94dbdee8be3721c5df` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x8ded9e2b8bc5128b862dd534b97c8a32991959ff` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x8f7638f2c0107f6ff766f79f68e084078fa56c0e` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x9331a9bebad3fab1b55ca717328a1e6610ae79b4` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x93b227f37819d147ad31589c686fbfe654657503` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x95a6b36bcb3e18cd55f0ff4c655f61aa301f4845` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x984e3d783e78ac5c5192caeb562be84306724a86` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x988a01e35a924e13bd3a297d9b0521ba2feb17f2` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0x99f538ec7c840197dcaf30a25b635482ba9e8817` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xa22bacc5bc9c1011854afbe9a9cc2beebefe5238` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xa30fbc6847e27f795c33c8e298aad9136a08da87` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xa6c519d3ec7763ea21f77a83017618cd51c0d118` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xa84dc3263d89de7852c861000540804ecd651611` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xa9648f1bc911518506c55836efca919ec192574a` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xa97b7bdb1e060c7f428105760351ed8b72d3d7a3` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xae4f2b998783e2041e87e08da73985e4e0420159` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xafe82dad7ee47e8c050046b723ccc11def9ad7cb` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xb60c669e9831adf1d202d28fc2acd91e1db0cfe2` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xb7efffab2a68055571513ba9a04fa04991f054d9` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xb9724552a774369e8319d8edc00a7cb95fc5dde2` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xbce13995dd705cb18d85eaa02655ad05162343b1` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xbd284dd74479f3cbf4b59ee8479ece2bb48f96a7` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xc0e2ddb06bb034c1f980531ec5cad944d71affbf` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xc3ee67f860f7f7f0bc95cf40e403e5f4728747a6` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xc882dbc9f17123186a4aae8f3b73440a489b7b85` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xcb28c27539d7b57e802b9bc6e58501b8f2d6d898` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xcb330548c8c9a2edafde7bbb49b3c4ab139246d9` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xcc51acb1d625f06487d7d568e7e8f9620ec6b082` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xd2ea320713158a7b7eae46025b8ad4cbf3cdc87e` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xd395291a84938b8d142a85c1db95af1ae381ed39` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xd4ff4c427664645d357d3e6dc0fd6f52df1d3005` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xd64d46c313258d248ae7870c64edf1eccde72906` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xda06d3d0d20a837f3e12d178551f962d7c01fb47` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xde5602faada45b3d815107079b25fd39fd4a14c4` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xe17f10f8535336143d4f2fe304f3dcf7b23671e1` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xe318d8f0dc3c10f507ab7a199e4511fb09737bdf` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xe4491ad8cfdd1d974865295fbe63b5e3fa8777b4` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xe670757b4d1a9ead3af30a225446162a14667ee3` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xe81419819a776404d318864c3a462e5cdac783fa` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xefd78a5970a43e25b30426c3952065217c55e5e4` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xf86fc229a93692cdeefc82a3d9bdb6656a71e9a4` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xf897188dcd300fa80a2f7f0f0290f9ef64f2d47b` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xfae841679dc1a93d225ecc827e4bbf3e8d703f86` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xfd8c25047f4397dc5461b919999585a2a3eac2ef` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |
| unverified unclassified | UnnamedContract<br>`0xfe245d39b21fe5696f1c7e740b103448d9fc4ef8` | non_address_book | unknown | unknown | unverified | n/a | `0xba5ed2b1234274a0ffe44e717119c0eca04703ed` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-07_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-07_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2025-09_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-09_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025-11_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-11_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Bailsec - ALTO - Lending Market - Final Report.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/Bailsec%20-%20ALTO%20-%20Lending%20Market%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Bailsec - ALTO - Staking Rewards - Final Report.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/Bailsec%20-%20ALTO%20-%20Staking%20Rewards%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [report-cantinacode-alto-money-1124.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cantinacode-alto-money-1124.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [report-cantinacode-alto-money-solo-1204.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cantinacode-alto-money-solo-1204.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [report-cli-cantina-altomoney-0114.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cli-cantina-altomoney-0114.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19420] 2025-07_Managed_Security_Review_Alto_foundation.pdf — no match: Contracts extracted from findings context; no explicit scope section found.
- [19421] 2025-09_Managed_Security_Review_Alto_foundation.pdf — no match: Contracts extracted from findings context; no explicit scope section but contracts are clearly audited targets.
- [19422] 2025-11_Managed_Security_Review_Alto_foundation.pdf — no match: Contracts extracted from finding contexts in the audit report. No explicit scope table, but contracts are clearly referenced in findings.
- [19423] Bailsec - ALTO - Lending Market - Final Report.pdf — no match: The report explicitly lists six contracts in scope: AltoBaseMarket, AltoBorrowMarket, AltoLeverage, AdaptiveCurveIRM, FixedRateIRM, and AssetShareConversionMath. The audit date is derived from 'October ‘2025' in the header, interpreted as the last day of October 2025.
- [19424] Bailsec - ALTO - Staking Rewards - Final Report.pdf — no match: The report explicitly lists contracts in scope: AltoStaking, TVLWeightedContainers, AltoRewardsDistributor, AltoReferralWhitelistAdapter, MerkleRootManager. The audit date is October 2025, interpreted as 2025-10-31.
- [19425] report-cantinacode-alto-money-1124.pdf — no match: Scope section explicitly lists four contracts under contracts/usm/. Audit date is December 8, 2025 from the cover page.
- [19426] report-cantinacode-alto-money-solo-1204.pdf — no match: Extracted 16 contract names from the scope section (page 3) of the audit report. The audit date is December 9, 2025, as stated on the cover page.
- [19427] report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf — no match: Scope section explicitly lists contracts and libraries under contracts/lending/libraries/, contracts/lending/vault/, and contracts/utils/. Audit date is June 18, 2026 from the cover page.
- [19428] report-cli-cantina-altomoney-0114.pdf — no match: Extracted contract names from context references in findings. No explicit scope section found; contracts are inferred from file paths and imports in PoC code.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AltoBaseMarket | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AltoMintMarket | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | FixedPointMath | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | Auth | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AuthUpgradeable | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | FixedRateIrm | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AdaptiveCurveIrm | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AltoAdapter | unmatched — not counted | — | mentioned in findings context | no |
| 2025-09_Managed_Security_Review_Alto_foundation.pdf | AltoRewardsDistributor | unmatched — not counted | — | listed in findings context | no |
| 2025-09_Managed_Security_Review_Alto_foundation.pdf | AltoReferralWhitelistAdapter | unmatched — not counted | — | listed in findings context | no |
| 2025-09_Managed_Security_Review_Alto_foundation.pdf | MerkleRootManager | unmatched — not counted | — | listed in findings context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | ERC4626RatioChainlinkOracleWSTETH | unmatched — not counted | — | M-01 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | AltoStaking | unmatched — not counted | — | L-01, I-02, I-03 finding contexts | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | ModuleERC4626Ratio | unmatched — not counted | — | L-02 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | AltoRewardsOracle | unmatched — not counted | — | L-03, I-04, I-06 finding contexts | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | AltoRewardsDistributor | unmatched — not counted | — | L-03 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | TVLWeightedContainers | unmatched — not counted | — | I-01 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | OracleMath | unmatched — not counted | — | I-05 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | AltoLeverageSwapper | unmatched — not counted | — | I-07 finding context | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AltoBaseMarket | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AltoBorrowMarket | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AltoLeverage | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AdaptiveCurveIRM | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | FixedRateIRM | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AssetShareConversionMath | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | AltoStaking | unmatched — not counted | — | Explicitly described as in scope: 'The AltoStaking contract allows users to lock their LOCK_TOKEN...' | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | TVLWeightedContainers | unmatched — not counted | — | Explicitly described as in scope: 'The TVLWeightedContainers contract is inherited by the AltoStaking contract...' | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | AltoRewardsDistributor | unmatched — not counted | — | Explicitly described as in scope: 'The AltoRewardsDistributor contract is a sale contract...' | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | AltoReferralWhitelistAdapter | unmatched — not counted | — | Explicitly described as in scope: 'The AltoReferralWhitelistAdapter contract is a simple referral storage contract...' | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | MerkleRootManager | unmatched — not counted | — | Explicitly described as in scope: 'The MerkleRootManager contract is inherited by the AltoRewardsDistributor contract and by the AltoReferralWhitelistAdapter contract.' | no |
| report-cantinacode-alto-money-1124.pdf | DUSDUsm | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-alto-money-1124.pdf | FixedFeeStrategy | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-alto-money-1124.pdf | FixedPriceStrategy | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-alto-money-1124.pdf | Usm | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoLeverageSwapper | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoERC4626RatioChainlinkOracle | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ERC4626RatioChainlinkOracleMETH | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ERC4626RatioChainlinkOracleRETH | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ERC4626RatioChainlinkOracleSUSDE | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ERC4626RatioChainlinkOracleWSTETH | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoMultiChainlinkLendingOracle | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoRewardsOracle | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ModuleChainlink | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ModuleCurve | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ModuleERC4626Ratio | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | FullMath | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ModuleUniswap | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | OracleMath | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | DUSD | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoVesting | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | AltoBalancesLib | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | MarketLib | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | PendingLib | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | AltoVault | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | AltoAdapter | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-altomoney-0114.pdf | AltoMintMarket | unmatched — not counted | — | Context:AltoMintMarket.sol#L155-L160, L162-L168 | no |
| report-cli-cantina-altomoney-0114.pdf | AltoBaseMarket | unmatched — not counted | — | Context:AltoBaseMarket.sol#L377-L386, L117-L119, L626-L651 | no |
| report-cli-cantina-altomoney-0114.pdf | AltoBorrowMarket | unmatched — not counted | — | Context:AltoBorrowMarket.sol#L142-L151 | no |
| report-cli-cantina-altomoney-0114.pdf | DlbDcfPriorityLiquidationEngine | unmatched — not counted | — | Context:DlbDcfPriorityLiquidationEngine.sol#L245-L248, L279 | no |
| report-cli-cantina-altomoney-0114.pdf | IDcfDlbPriorityLiquidationEngine | unmatched — not counted | — | import in PoC | no |
| report-cli-cantina-altomoney-0114.pdf | IMintableERC20 | unmatched — not counted | — | import in PoC | no |
| report-cli-cantina-altomoney-0114.pdf | IOracle | unmatched — not counted | — | import in PoC | no |
| report-cli-cantina-altomoney-0114.pdf | IAltoLiquidationEngine | unmatched — not counted | — | referenced in AltoBorrowMarket | no |
| report-cli-cantina-altomoney-0114.pdf | Uint128Converter | unmatched — not counted | — | import in PoC | no |
| report-cli-cantina-altomoney-0114.pdf | ExpLib | unmatched — not counted | — | referenced in DlbDcfPriorityLiquidationEngine | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9
- Match method counts: n/a

Zero-match audit list:

- [19420] 2025-07_Managed_Security_Review_Alto_foundation.pdf
- [19421] 2025-09_Managed_Security_Review_Alto_foundation.pdf
- [19422] 2025-11_Managed_Security_Review_Alto_foundation.pdf
- [19423] Bailsec - ALTO - Lending Market - Final Report.pdf
- [19424] Bailsec - ALTO - Staking Rewards - Final Report.pdf
- [19425] report-cantinacode-alto-money-1124.pdf
- [19426] report-cantinacode-alto-money-solo-1204.pdf
- [19427] report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf
- [19428] report-cli-cantina-altomoney-0114.pdf

Fork inheritance lineage and inherited audits are included when available.
