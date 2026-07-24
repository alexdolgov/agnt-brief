# Agentic Audit Brief: Geode

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Geode (`geode`)
- Website: [https://www.geode.fi/](https://www.geode.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, goerli
- Contract surface: 77 unique implementations (79 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $346,887.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Geode in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 76 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 77
- Raw deployments: 79
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0220ba3dcecf50fa376cce84d1d9ecc0bee9b72b` | ⚠️ Unaudited |
| DataStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb25a4298f51d6028b50df845c3cbf49f4cfdc570` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x115fe12263515047d2f87f1a04870f33afa07e63`; avalanche `0xd8cd2c8850400953a8b91da8de3aaebb4b313de6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x204bc008ac374f355ae43bb2fb11e21b951dfb98`; avalanche `0x4948d893b6c71fc1736789b8fef90907ef2284fa` | ⚠️ Unaudited |
| ERC20InterfaceUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08b201c31201e1b75ad6c18a8d70492259fa4142` | ⚠️ Unaudited |
| gAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1cfbdc5468f7d10d136c3d92317d50294127b24b` | ⚠️ Unaudited |
| GeodeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76e42b4c138e03f4e1719ca5cd1fec13e459fa5b` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71b0cd5c4db483ae8a09df0f83f69bac400dbe8c` | ⚠️ Unaudited |
| StakeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ea72390e12cbe0da8304ab19b6e521a31692332` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x577a73075f35a0a013afc651126f714284355f09` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29be4798db7eb77d20ed35ad642da852ae702c09` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-240960 | `0xb0334f08dec465ec180f1af04c6d7d3737407083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00b421304b547993f445c1000367ff3e28ab49f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05b254635403767c9ce5fcc59c587ac0b210f3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1254f55a474b06d2f1821a5f57d1806e40b389a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f3b517a87c408653f82430b48c133adbdfa8015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x220f1c38e3eeca607c3c2d228baabda2e9da9882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x280b6475be9a67df23b0ef75d00c876a74bfc4b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c5f49fdc2b8b2bed939d0260c88c59f8869d361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36041054adfba98f9b2a429a2ae075f7bfbcb073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x370a64bc2b18d85fd2fc984505be9a3471e46603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c6166758f2b14ade4d41e7a6a3becc27ca65444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x431ebde030183fc68ecd13164919e7e5991bf077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x452fe6fc99e259205dfbaca92fe55da7c98e8bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47d3f56ee25a42ccf923b611df5040a7d578ef1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b181ca3d150f60333058b7d74909c04cabd0909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fe8c658f268842445ae8f95d4d6d8cfd356a8c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5935333f1d49173d5e382f101afff441dfbdcfb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59e3dca656918dfd6bd746d7bfa8adc6de57f730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a08ac205653d8337c992edb4c0856a9af66afba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c46bf53743f6769b4ddc11c0810f9577ee824e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6026a85e11bd895c934af02647e8c7b4ea2d9808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6478453a746a5c385bdf77862548ce9f4913dbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x667f9dfffef1f29c68dd04ac317ab6a68738e1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d90385ed577df2a04e8c23746a0f743ebcf5860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72cf493684cc67fc8e50d426f2266d6c7e01a064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a0568a297f1377a79725e4b940a39af525c8406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x831c845481b21a54afd169d0ca2a5dab4cfbdd30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x892573f3f23756dc29772e33800f84fabe3b9770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89cb6a69a9baa9c2a614f626a61250f204acfb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8edd2a29aa57d948b1b720eaae0e6bec5da4f791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ef0bffd16ff76ff97fe028817f9b6283835be8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9835c0148f83994d54b3f4626015206868653d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a85a2b1ee51444c596cb0986a2a65bccf296baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7f6dbe62cf204134866a49fdf131aafcdd1ce55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad9b123c098dae0c294ae64c952100d6433597ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0334f08dec465ec180f1af04c6d7d3737407083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb28094826477d080bae0d84ae3ce600997563697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb72e3bacac35eb5b7d04675945b028cc0a2b85b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8355670a663cbdece5341584ca5c136ee5fdae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb4c9b63586101c3b816a4437f8e5ceb9400daa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd80ea549f88b946fe87e275c9839eadf240862f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf4c04ab17dcf072246fdefe054c5fb6be46f218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4233d135dc341f41486b2c950df12f755b28395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7332d9abef755c42b4df9d9db09beef15f8f9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc86ce0ca23f5060efc57e63250705a7bb90b7fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca4e4229a0aa81a4bf7abc291f94f34b38726b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc7eb8880c125247f86d83c0c93288e538b6f887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd8951a040ce2c2890d3d92ea4278ff23488b3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce74a51a995b9bf249602916081a5c25aebcca50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce7cb20ef71341b4654ee0bbcbc92a33d5f1c6af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf0b89976525674a0d08ae3a1028a7e10bc82ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf5162a33b05bf45020a2f047d28c2e47e93958b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf92165b8db02c519e03d1ce3ca0fe99e54af488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7415c7736ccae6cc518c785a7c3fc0881489982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7c3ec3d272601e60356ed4d02c756b6e7a33227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8d00f145856197dd7d54fe2e9296dbbffa3fb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd63efcf7c2d04e5110d04dca671508897e87815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd9f6e8e9787df3b366a56b5c7367a2100789b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde324fac86d8d6007d6c89c6bf2d60c8efa4dc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe36d712718c5bd517ad55da3f1c058ca22471e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf15bf8d39a6462c5328ed6908a8d9f2c7f327e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf945347822d3be244a412cb3a4d482326ed65390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfbddb3647b3c0833f81776e5525adcaa0c4e418a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe2fd34b4a4739428b8417b55143fc48cf7d3316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff250c59235318856eedca56f018b2a333737d98` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 66
- Live contracts: 0
- Unknown liveness contracts: 66
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=66

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00b421304b547993f445c1000367ff3e28ab49f4` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x05b254635403767c9ce5fcc59c587ac0b210f3f9` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x1254f55a474b06d2f1821a5f57d1806e40b389a3` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x1f3b517a87c408653f82430b48c133adbdfa8015` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x204bc008ac374f355ae43bb2fb11e21b951dfb98` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x220f1c38e3eeca607c3c2d228baabda2e9da9882` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x280b6475be9a67df23b0ef75d00c876a74bfc4b7` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x2c5f49fdc2b8b2bed939d0260c88c59f8869d361` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x36041054adfba98f9b2a429a2ae075f7bfbcb073` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x370a64bc2b18d85fd2fc984505be9a3471e46603` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x3c6166758f2b14ade4d41e7a6a3becc27ca65444` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x431ebde030183fc68ecd13164919e7e5991bf077` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x452fe6fc99e259205dfbaca92fe55da7c98e8bf1` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x47d3f56ee25a42ccf923b611df5040a7d578ef1f` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x4b181ca3d150f60333058b7d74909c04cabd0909` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x4fe8c658f268842445ae8f95d4d6d8cfd356a8c8` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x5935333f1d49173d5e382f101afff441dfbdcfb7` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x59e3dca656918dfd6bd746d7bfa8adc6de57f730` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x5a08ac205653d8337c992edb4c0856a9af66afba` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x5c46bf53743f6769b4ddc11c0810f9577ee824e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x6026a85e11bd895c934af02647e8c7b4ea2d9808` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x6478453a746a5c385bdf77862548ce9f4913dbd0` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x667f9dfffef1f29c68dd04ac317ab6a68738e1b5` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x6d90385ed577df2a04e8c23746a0f743ebcf5860` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x72cf493684cc67fc8e50d426f2266d6c7e01a064` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x7a0568a297f1377a79725e4b940a39af525c8406` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x831c845481b21a54afd169d0ca2a5dab4cfbdd30` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x892573f3f23756dc29772e33800f84fabe3b9770` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x89cb6a69a9baa9c2a614f626a61250f204acfb8c` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x8edd2a29aa57d948b1b720eaae0e6bec5da4f791` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x8ef0bffd16ff76ff97fe028817f9b6283835be8a` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x9835c0148f83994d54b3f4626015206868653d20` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0x9a85a2b1ee51444c596cb0986a2a65bccf296baf` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xa7f6dbe62cf204134866a49fdf131aafcdd1ce55` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xad9b123c098dae0c294ae64c952100d6433597ee` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xb28094826477d080bae0d84ae3ce600997563697` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xb72e3bacac35eb5b7d04675945b028cc0a2b85b9` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xb8355670a663cbdece5341584ca5c136ee5fdae2` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xbb4c9b63586101c3b816a4437f8e5ceb9400daa8` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xbd80ea549f88b946fe87e275c9839eadf240862f` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xbf4c04ab17dcf072246fdefe054c5fb6be46f218` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xc4233d135dc341f41486b2c950df12f755b28395` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xc7332d9abef755c42b4df9d9db09beef15f8f9fb` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xc86ce0ca23f5060efc57e63250705a7bb90b7fe8` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xca4e4229a0aa81a4bf7abc291f94f34b38726b51` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xcc7eb8880c125247f86d83c0c93288e538b6f887` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xcd8951a040ce2c2890d3d92ea4278ff23488b3ac` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xce74a51a995b9bf249602916081a5c25aebcca50` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xce7cb20ef71341b4654ee0bbcbc92a33d5f1c6af` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xcf0b89976525674a0d08ae3a1028a7e10bc82ee8` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xcf5162a33b05bf45020a2f047d28c2e47e93958b` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xcf92165b8db02c519e03d1ce3ca0fe99e54af488` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xd310f5a2964b01ffac2baa19ba7d9a6bfbf759ef` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xd7415c7736ccae6cc518c785a7c3fc0881489982` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xd7c3ec3d272601e60356ed4d02c756b6e7a33227` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xd8cd2c8850400953a8b91da8de3aaebb4b313de6` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xd8d00f145856197dd7d54fe2e9296dbbffa3fb11` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xdd63efcf7c2d04e5110d04dca671508897e87815` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xdd9f6e8e9787df3b366a56b5c7367a2100789b39` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xde324fac86d8d6007d6c89c6bf2d60c8efa4dc13` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xe36d712718c5bd517ad55da3f1c058ca22471e10` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xf15bf8d39a6462c5328ed6908a8d9f2c7f327e2a` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xf945347822d3be244a412cb3a4d482326ed65390` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xfbddb3647b3c0833f81776e5525adcaa0c4e418a` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xfe2fd34b4a4739428b8417b55143fc48cf7d3316` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |
| unverified unclassified | UnnamedContract<br>`0xff250c59235318856eedca56f018b2a333737d98` | non_address_book | unknown | unknown | unverified | n/a | `0x1b007c50e78ed35fdfad395bc41c1dbd8bb9e385` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2022-10-Diligence-Audit-Report-v1.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2FgXfJDYahjqo7b24xjtqY%2F2022-10-geodefi-audit-v1.pdf) | Consensys Diligence | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [2023-03-Diligence-Audit-Response.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2FnzbntAjkNqkgkZNowPAe%2F2023-03-Diligence-Audit-Response-2.pdf) | Consensys Diligence | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 37 | high |
| [2023-03-Internal-Audit-Report.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2F6wmagkLikYak3zZ8uTki%2F2023-03-Internal-Audit-Report.pdf) | Internal | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2023-05-Diligence-Audit-Report-v2.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2Fh2dsHDg3kte5W3nIkXCY%2F2023-05-geode-staking-v2-audit.pdf) | Consensys Diligence | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2023-07-Shieldify-Audit-Report.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2Fhmp5fqU9OPtw3tYVv3Iu%2F2023-07-Shieldify-Audit-Report.pdf) | Shieldify | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2F8Cpu7l9588XuD6hPRvO6%2F2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf) | Consensys Diligence | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20424] 2022-10-Diligence-Audit-Report-v1.pdf — no match: Extracted 16 contract names from the scope table in Appendix 2. Audit date from executive summary: review conducted Nov 1 to Dec 9, 2022, so end date is Dec 9, 2022.
- [20425] 2023-03-Diligence-Audit-Response.pdf — no match: Extracted from the Audit Findings scope table and the Summary table. The audit date is from the statement 'This version of the report is finalized on March 22, 2023.'
- [20426] 2023-03-Internal-Audit-Report.pdf — no match: Extracted 8 contracts from the Files in Scope appendix. Audit date is the end date of the audit period (March 6 to March 31, 2023).
- [20427] 2023-05-Diligence-Audit-Report-v2.pdf — no match: Only two libraries are in scope: OracleExtensionLib.sol and StakeModuleLib.sol. The audit date is May 2023, interpreted as end of month.
- [20428] 2023-07-Shieldify-Audit-Report.pdf — no match: Extracted 17 contract names from the scope table in section 5.2. Audit date from cover page.
- [20429] 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf — no match: Scope section lists three files: WithdrawalModule.sol, WithdrawalModuleLib.sol, WithdrawalContract.sol. Audit date is October 2023, mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022-10-Diligence-Audit-Report-v1.pdf | MiniGovernance | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | Portal | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | gETH | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | ERC20InterfacePermitUpgradable | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | ERC20InterfaceUpgradable | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | ERC1155SupplyMinterPauser | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | DataStoreUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | GeodeUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | MaintainerUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | OracleUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | StakeUtilsLib | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | LPToken | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | Swap | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | AmplificationUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | MathUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-Diligence-Audit-Report-v1.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-Diligence-Audit-Response.pdf | MiniGovernance | unmatched — not counted | — | listed in scope table with SHA1 hash 3ef6d711e | no |
| 2023-03-Diligence-Audit-Response.pdf | Portal | unmatched — not counted | — | listed in scope table with SHA1 hash 3e2fddb0a | no |
| 2023-03-Diligence-Audit-Response.pdf | gETH | unmatched — not counted | — | listed in scope table with SHA1 hash 0c149c8ee | no |
| 2023-03-Diligence-Audit-Response.pdf | ERC20InterfacePermitUpgradable | unmatched — not counted | — | listed in scope table with SHA1 hash 1aa5cf595 | no |
| 2023-03-Diligence-Audit-Response.pdf | ERC20InterfaceUpgradable | unmatched — not counted | — | listed in scope table with SHA1 hash 8bf2ca0ab | no |
| 2023-03-Diligence-Audit-Response.pdf | ERC1155SupplyMinterPauser | unmatched — not counted | — | listed in scope table with SHA1 hash d228841d7 | no |
| 2023-03-Diligence-Audit-Response.pdf | DataStoreUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash 680b86043 | no |
| 2023-03-Diligence-Audit-Response.pdf | GeodeUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash db36c1cd3 | no |
| 2023-03-Diligence-Audit-Response.pdf | MaintainerUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash f171c4ea1 | no |
| 2023-03-Diligence-Audit-Response.pdf | OracleUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash 7b606059b | no |
| 2023-03-Diligence-Audit-Response.pdf | StakeUtilsLib | unmatched — not counted | — | listed in scope table with SHA1 hash dd33fa886 | no |
| 2023-03-Diligence-Audit-Response.pdf | LPToken | unmatched — not counted | — | listed in scope table with SHA1 hash 66124ef6d | no |
| 2023-03-Diligence-Audit-Response.pdf | Swap | unmatched — not counted | — | listed in scope table with SHA1 hash ca1fad6d3 | no |
| 2023-03-Diligence-Audit-Response.pdf | AmplificationUtils | unmatched — not counted | — | listed in scope table with SHA1 hash f5afa0fb6 | no |
| 2023-03-Diligence-Audit-Response.pdf | MathUtils | unmatched — not counted | — | listed in scope table with SHA1 hash 897743675 | no |
| 2023-03-Diligence-Audit-Response.pdf | SwapUtils | unmatched — not counted | — | listed in scope table with SHA1 hash 2736852fd | no |
| 2023-03-Diligence-Audit-Response.pdf | globals | unmatched — not counted | — | mentioned as added file in summary table and in section 1 | no |
| 2023-03-Diligence-Audit-Response.pdf | WithdrawalContract | unmatched — not counted | — | listed in summary table as added contract and in scope table | no |
| 2023-03-Diligence-Audit-Response.pdf | DepositContractUtilsLib | unmatched — not counted | — | listed in summary table as refactored library | no |
| 2023-03-Diligence-Audit-Response.pdf | IgETHInterface | unmatched — not counted | — | listed in summary table as added interface | no |
| 2023-03-Diligence-Audit-Response.pdf | IGeodeModule | unmatched — not counted | — | listed in summary table as added interface | no |
| 2023-03-Diligence-Audit-Response.pdf | IWhiteList | unmatched — not counted | — | listed in summary table as added interface | no |
| 2023-03-Diligence-Audit-Response.pdf | IPortal | unmatched — not counted | — | listed in summary table as refactored interface | no |
| 2023-03-Diligence-Audit-Response.pdf | ILPToken | unmatched — not counted | — | listed in summary table as refactored interface | no |
| 2023-03-Diligence-Audit-Response.pdf | ISwap | unmatched — not counted | — | listed in summary table as cleaned up interface | no |
| 2023-03-Diligence-Audit-Response.pdf | OwnerPausableUpgradeable | unmatched — not counted | — | listed in summary table as helper with no changes | no |
| 2023-03-Diligence-Audit-Response.pdf | TestMathUtils | unmatched — not counted | — | listed in summary table as helper with no changes | no |
| 2023-03-Diligence-Audit-Response.pdf | TestSwapReturnValues | unmatched — not counted | — | listed in summary table as helper with no changes | no |
| 2023-03-Diligence-Audit-Response.pdf | TestDepositContractUtils | unmatched — not counted | — | listed in summary table as refactored helper | no |
| 2023-03-Diligence-Audit-Response.pdf | TestDataStoreUtils | unmatched — not counted | — | listed in summary table as improved helper | no |
| 2023-03-Diligence-Audit-Response.pdf | TestGlobals | unmatched — not counted | — | listed in summary table as added helper | no |
| 2023-03-Diligence-Audit-Response.pdf | TestGeodeUtils | unmatched — not counted | — | listed in summary table as removed helper | no |
| 2023-03-Diligence-Audit-Response.pdf | TestStakeUtils | unmatched — not counted | — | listed in summary table as removed helper | no |
| 2023-03-Diligence-Audit-Response.pdf | WhiteListHelper | unmatched — not counted | — | listed in summary table as added helper | no |
| 2023-03-Diligence-Audit-Response.pdf | ERC1155ReceiverMock | unmatched — not counted | — | listed in summary table as refactored helper | no |
| 2023-03-Diligence-Audit-Response.pdf | nonERC1155Receiver | unmatched — not counted | — | listed in summary table as refactored helper | no |
| 2023-03-Diligence-Audit-Response.pdf | DepositContract | unmatched — not counted | — | listed in summary table as removed helper | no |
| 2023-03-Internal-Audit-Report.pdf | gETH | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | Portal | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | globals | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | DataStoreUtilsLib | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | GeodeUtilsLib | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | OracleUtilsLib | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | StakeUtilsLib | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-03-Internal-Audit-Report.pdf | withdrawalContract | unmatched — not counted | — | listed in Files in Scope | no |
| 2023-05-Diligence-Audit-Report-v2.pdf | OracleExtensionLib | unmatched — not counted | — | listed in scope table | no |
| 2023-05-Diligence-Audit-Report-v2.pdf | StakeModuleLib | unmatched — not counted | — | listed in scope table | no |
| 2023-07-Shieldify-Audit-Report.pdf | gETH | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | ERC20PermitMiddleware | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | ERC20Middleware | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | DataStoreModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | DataStoreModule | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | GeodeModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | GeodeModule | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | DepositContractLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | StakeModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | OracleExtensionLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | StakeModule | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | LiquidityModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | AmplificationLib | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | LiquidityModule | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | WithdrawalContract | unmatched — not counted | — | listed in scope | no |
| 2023-07-Shieldify-Audit-Report.pdf | Portal | unmatched — not counted | — | listed in scope | no |
| 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf | WithdrawalModule | unmatched — not counted | — | listed in scope | no |
| 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf | WithdrawalModuleLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf | WithdrawalContract | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 67 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 83 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [20424] 2022-10-Diligence-Audit-Report-v1.pdf
- [20425] 2023-03-Diligence-Audit-Response.pdf
- [20426] 2023-03-Internal-Audit-Report.pdf
- [20427] 2023-05-Diligence-Audit-Report-v2.pdf
- [20428] 2023-07-Shieldify-Audit-Report.pdf
- [20429] 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf

Fork inheritance lineage and inherited audits are included when available.
