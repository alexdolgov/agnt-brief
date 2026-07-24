# Agentic Audit Brief: Liquid Collective

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 5 audit(s)
- Eligible audit results: 19 (5 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Liquid Collective (`liquid-collective`)
- Website: [https://liquidcollective.io](https://liquidcollective.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum
- Contract surface: 80 unique implementations (80 raw deployments)
- Coverage basis: 2/4 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $545,655,958.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Liquid Collective. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across base, ethereum. Structural roles: 3 supporting, 1 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (3), core (1)
- Contract kinds: abstract (3), contract (1)
- Detected standards: erc1967proxy (4), pausable (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7d16d2c4e96bcfc8f815e15b771ac847ecbdb48b`, chain 1)
- UnnamedContract (`0x895a57ed71025d51fe4080530a3489d92e230683`, chain 1)
- UnnamedContract (`0x8c1bed5b9a0928467c9b1341da1d7bd5e10b6549`, chain 1)
- UnnamedContract (`0xb5fe6946836d687848b5abd42dabf531d5819632`, chain 1)
- UnnamedContract (`0xebc83bb472b2816ec5b5de8d34f0efc9088bb2ce`, chain 1)
- CoverageFundV1 (`0x32aac358b627b9feaa971cc33304027a41e49a81`, chain 1)
- RedeemManagerV1 (`0x080b3a41390b357ad7e8097644d1dedf57ad3375`, chain 1)
- TUPProxy (`0x1235f1b60df026b2620e48e735c422425e06b725`, chain 1)
- WithdrawV1 (`0x0afd81862eea47322cf85db39d3d07e8a3c25154`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/4 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 71 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 9 of 80 unique; 71 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/22
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 80
- Raw deployments: 80
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 15 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 50.0% (Certora, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 9.1% | 2023-10 |
| Certora | Tier 1 | 1 | 4.5% | 2024-11 |
| Halborn | Tier 2 | 1 | 4.5% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoverageFundV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244840 | `0x32aac358b627b9feaa971cc33304027a41e49a81` | ✅ Audited |
| TUPProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244838 | `0x1235f1b60df026b2620e48e735c422425e06b725` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllowlistV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8892daf1fcd24b2e8a3c6194d297aaab04e493f2` | ⚠️ Unaudited |
| BurnMintERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2af9ee712a72bb1e7f4f51dacad827bf24f1f8a8` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a4e3b9a4fb73a4015b4afe1efe02214b614d591` | ⚠️ Unaudited |
| ConfigManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2f1230b2958feeca02bcd41a6a127612fde032e` | ⚠️ Unaudited |
| ELFeeRecipientV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x108a04f7a181a1e0a58bdb1772707aee88294e13` | ⚠️ Unaudited |
| Firewall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1de267015a75f5069fd1c9ed382210b3002ceb` | ⚠️ Unaudited |
| ImmutableBeaconFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb33ec2a84e556de6b7c379dd2ed26f3855bea808` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a02473e57902fd7764e6e952e2962763045b404` | ⚠️ Unaudited |
| OperatorsRegistryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7adbc0bd23ab71b1dc8c946c0550ff87c9841008` | ⚠️ Unaudited |
| OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485ade5b7f66eccad4583862bc5c2aa838720aa0` | ⚠️ Unaudited |
| OrchestratorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083f8ada3849ce97fee777cec6324277d4e8a7b8` | ⚠️ Unaudited |
| OrchestratorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a1dc9f6f9af9799354fe9c717fb84f5664a031` | ⚠️ Unaudited |
| ProtocolMetricsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fe3e83dbb646ad9050f89ab44425fbd7177a77` | ⚠️ Unaudited |
| RedeemManagerV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244839 | `0x080b3a41390b357ad7e8097644d1dedf57ad3375` | ⚠️ Unaudited |
| RiverV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179d669ac78896f970040e57cb297582b50de4f2` | ⚠️ Unaudited |
| TlcMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f90147165326f6b7acc297b2e9ef977730a4bd9` | ⚠️ Unaudited |
| TLCV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d628949c6c59ebc69563ca94bcbcb4cba58fde4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xec3f66d7fac189ed83593c730ef46b67a9d2d455` | ⚠️ Unaudited |
| TVSUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe40c54b39e811ab85a19ed783b91fa10acbb7b8a` | ⚠️ Unaudited |
| WithdrawV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244841 | `0x0afd81862eea47322cf85db39d3d07e8a3c25154` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0056f9ed62daa4dc3f972340c92326accddd1a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0170aeab7b86805d5e7ff19fcddf62f19575c37b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3c4b761ab0d6ff500bc9a49f5ea2f7b79af4f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d1fd2d8c87fed864708bbab84c2da54254f5a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fea87dbc20f8c4846ac7d69f48d379da8be91f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b4597fd1d493c0bd970277ebeb5a6348efec24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a0cd2854d1f20b93487f438012d7045e398880d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fdef0b5e87cf840ffe46e3a5318b1d59960dfcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34e4617764cc94620170aa0e6652ad328d196d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x362c04e4001197c19ce63aae825d14bb39bb15c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a5b4db174a3cc17d8ce40c5b04272737195151b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe10fd2ce1f492ede1266a50f6451bc1d8af9b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x423ce5282c460eed5fe0786b4d47d2c2a4ef3721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d93d8c45fb25125f13cdd40529bbeaa97a6565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b846e38a3ca71de4fce093ec6778c61e326ccea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cf3341e1be254c5229e8bcd05b8233a2b60940a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ed9a72b256e3857c3be89ec8ec91a826ad97531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb46d0b7668fc5ee27a37979579a3c254c70f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50189672a80c988f01db5f7d08cef739f2051f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5154b94466a73a64b3f13ccb1bf0d7a5a48ba24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e09ed43f5658a77428e6419aea83d769c9b2fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x660bd93e6c149e2e0af1963e2bdf362087792824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b747258a0e926de1f5c2a54fe92514706cce2d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72418a3e96e482e0ef8ebdfbbe6f270af86f8620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b2518de3dbb0f6b287c9979cf713603f7f7f238` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244833 | `0x7d16d2c4e96bcfc8f815e15b771ac847ecbdb48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e49eb4699313ae05009b98672bcd7c9ca55f2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x854e42a12ed8bbafb75f99d4a1499e219947c70a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244834 | `0x895a57ed71025d51fe4080530a3489d92e230683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244835 | `0x8c1bed5b9a0928467c9b1341da1d7bd5e10b6549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9842a4ef1968b7fcb0eb970d6b9840cd061f2ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99dd9f8d3a62cb416f6ef5abbc90185c4162f8d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c07cd07cc097ead6ebd7f7d17e6b38ff08e3b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f74eed39dc48d55ebd0a7a6799fbce0bb344ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa56e13712436189f61ab9fda1292b26cf9fef9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6276596259dc7ad5764b11a20f677ae79adfddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf5ae0768291c4adc57cb7e1482f336b4faa4291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb54cdb51e2b86c7f37b35558eed87e6206457a98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244836 | `0xb5fe6946836d687848b5abd42dabf531d5819632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbda8cc728b0bc6fe634b9d26667f6cf4b03f73aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0b440ab737c8aff8cdad580a886d0b8f7c9f0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92a612ec60a8e948d6677cd0e6f836145679705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb2ae4ad13da800373d7161431b373940b7cb05d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc1c4c94f0df9b4930f8acf6c92f92e2e36f151d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd859343d6c95e3791b389b63225794db98e7f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfa8cf872f0b8ce15c175a8eb13688d5c69e9cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb80b9cee524550e3806d9dcd6eba5297e12ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08b360b3663495b89be3631da97db2ce6badd39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4067a7d6b3e0fec19307e7b89b4fc38867765e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd745a68c705f5aa75dff528540678288ed2ad9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb1113f3b8cbfce82d83085c629614d2b658beb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9acbdc593b6cbb059b31b1a1859e5e704add46c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb6e193b9b9f0d677890f7b614283e45adf37874` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244837 | `0xebc83bb472b2816ec5b5de8d34f0efc9088bb2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf19345eabc46adf82e85cc2293a657a2dba5c7d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1b958564edf538dda1302d3d81eb58ee204b87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8745c392fef5c91fa1cdb0202eff7ca08df55ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb29749498954a3a821ec37bde86e386df3ce30b6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 53
- Live contracts: 0
- Unknown liveness contracts: 53
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=53

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | unverified unclassified | UnnamedContract<br>`0xb29749498954a3a821ec37bde86e386df3ce30b6` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0056f9ed62daa4dc3f972340c92326accddd1a9d` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0170aeab7b86805d5e7ff19fcddf62f19575c37b` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c3c4b761ab0d6ff500bc9a49f5ea2f7b79af4f6` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d1fd2d8c87fed864708bbab84c2da54254f5a12` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1fea87dbc20f8c4846ac7d69f48d379da8be91f2` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21b4597fd1d493c0bd970277ebeb5a6348efec24` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a0cd2854d1f20b93487f438012d7045e398880d` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fdef0b5e87cf840ffe46e3a5318b1d59960dfcd` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34e4617764cc94620170aa0e6652ad328d196d58` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x362c04e4001197c19ce63aae825d14bb39bb15c0` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a5b4db174a3cc17d8ce40c5b04272737195151b` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3fe10fd2ce1f492ede1266a50f6451bc1d8af9b0` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x423ce5282c460eed5fe0786b4d47d2c2a4ef3721` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48d93d8c45fb25125f13cdd40529bbeaa97a6565` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b846e38a3ca71de4fce093ec6778c61e326ccea` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4cf3341e1be254c5229e8bcd05b8233a2b60940a` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ed9a72b256e3857c3be89ec8ec91a826ad97531` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fb46d0b7668fc5ee27a37979579a3c254c70f54` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50189672a80c988f01db5f7d08cef739f2051f57` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5154b94466a73a64b3f13ccb1bf0d7a5a48ba24f` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51e09ed43f5658a77428e6419aea83d769c9b2fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x660bd93e6c149e2e0af1963e2bdf362087792824` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b747258a0e926de1f5c2a54fe92514706cce2d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72418a3e96e482e0ef8ebdfbbe6f270af86f8620` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b2518de3dbb0f6b287c9979cf713603f7f7f238` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e49eb4699313ae05009b98672bcd7c9ca55f2e0` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x854e42a12ed8bbafb75f99d4a1499e219947c70a` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9842a4ef1968b7fcb0eb970d6b9840cd061f2ab7` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99dd9f8d3a62cb416f6ef5abbc90185c4162f8d0` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c07cd07cc097ead6ebd7f7d17e6b38ff08e3b5c` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f74eed39dc48d55ebd0a7a6799fbce0bb344ffb` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa56e13712436189f61ab9fda1292b26cf9fef9f8` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6276596259dc7ad5764b11a20f677ae79adfddc` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf5ae0768291c4adc57cb7e1482f336b4faa4291` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb54cdb51e2b86c7f37b35558eed87e6206457a98` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbda8cc728b0bc6fe634b9d26667f6cf4b03f73aa` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0b440ab737c8aff8cdad580a886d0b8f7c9f0f8` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc92a612ec60a8e948d6677cd0e6f836145679705` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb2ae4ad13da800373d7161431b373940b7cb05d` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc1c4c94f0df9b4930f8acf6c92f92e2e36f151d` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd859343d6c95e3791b389b63225794db98e7f6c` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfa8cf872f0b8ce15c175a8eb13688d5c69e9cee` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfb80b9cee524550e3806d9dcd6eba5297e12ff7` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd08b360b3663495b89be3631da97db2ce6badd39` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4067a7d6b3e0fec19307e7b89b4fc38867765e3` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd745a68c705f5aa75dff528540678288ed2ad9ee` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb1113f3b8cbfce82d83085c629614d2b658beb2` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe9acbdc593b6cbb059b31b1a1859e5e704add46c` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb6e193b9b9f0d677890f7b614283e45adf37874` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf19345eabc46adf82e85cc2293a657a2dba5c7d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1b958564edf538dda1302d3d81eb58ee204b87f` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8745c392fef5c91fa1cdb0202eff7ca08df55ce` | non_address_book | unknown | unknown | unverified | n/a | `0xbfa8549887e6ddef8cdf83cda1ad24856496fd00` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.certora.com/reports/alluvialfinance-liquidcollective](https://www.certora.com/reports/alluvialfinance-liquidcollective) | Certora | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [index.html](https://certificate.quantstamp.com/full/liquid-collective-lceth/727416a8-3cf6-46fb-a103-701d5c94649e/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf) | Spearbit | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [LiquidCollectivePR-Spearbit-Security-Review-July.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollectivePR-Spearbit-Security-Review-July.pdf) | Spearbit | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [LiquidCollectivePR-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollectivePR-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [LiquidCollective3-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollective3-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [LiquidCollective2-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollective2-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2023-01 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 14 | high |
| [LiquidCollective-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollective-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf) | Halborn | Audit | 2022-08 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 9 | high |
| [security (GitHub directory)](https://github.com/liquid-collective/security) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [202207_Halborn.md](https://github.com/liquid-collective/security/blob/main/audits/202207_Halborn.md) | Halborn | Audit | 2022-08 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [202209_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202209_Spearbit.md) | Spearbit | Audit | 2022-09 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 9 | high |
| [202211_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202211_Spearbit.md) | Spearbit | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [202303_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202303_Spearbit.md) | Spearbit | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [202305_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202305_Spearbit.md) | Spearbit | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [202307_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202307_Spearbit.md) | Spearbit | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [202309_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202309_Spearbit.md) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [202402_Certora.md](https://github.com/liquid-collective/security/blob/main/audits/202402_Certora.md) | Certora | Audit | 2024-02 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 13 | high |
| [VULNERABILITY_DISCLOSURE.md](https://github.com/liquid-collective/security/blob/main/VULNERABILITY_DISCLOSURE.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20792] www.certora.com/reports/alluvialfinance-liquidcollective — no match: The provided text is a cover page or summary with no scope section or contract names.
- [20793] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [20794] LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf — no match: No explicit scope section found; contract names extracted from findings context and file references. Audit date from report date on cover page.
- [20795] LiquidCollectivePR-Spearbit-Security-Review-July.pdf — no match: No contracts explicitly listed in scope; only PR changes reviewed.
- [20796] LiquidCollectivePR-Spearbit-Security-Review.pdf — no match: The report covers three PRs (211, 206, 202) but only explicitly names OperatorsRegistry.1.sol in findings. No other contract files are mentioned.
- [20797] LiquidCollective3-Spearbit-Security-Review.pdf — no match: Extracted contract names from findings context and remediation table. Audit date from cover page.
- [20798] LiquidCollective2-Spearbit-Security-Review.pdf — matched: Extracted contract names from findings context and file paths mentioned throughout the report. No explicit scope section found, but contracts are clearly audited targets.
- [20799] LiquidCollective-Spearbit-Security-Review.pdf — no match: Extracted contract names from findings and remediation table. No explicit scope section found, but contracts are clearly audited targets.
- [20800] Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf — matched: Scope section lists 'Liquid Collective Contracts Security Audit Test Scope' with repository 'River Contracts' and commit ID. Out-of-scope excludes mock and test files. Contract names extracted from findings code locations and appendix.
- [20801] security (GitHub directory) — no match: The provided text is a GitHub repository README listing past audits with links, but does not contain the actual audit report content or a scope section with contract names.
- [20802] 202207_Halborn.md — matched: Extracted 9 contract names from the scope section. Audit date is the end date of the audit period (August 2nd, 2022).
- [20803] 202209_Spearbit.md — matched: Scope section explicitly lists 10 smart contracts. Audit dates: August 29 to September 30, 2022. Using end date.
- [20804] 202211_Spearbit.md — no match: Scope mentions 'New smart contract: TLC' and two new features (Protocol Metadata, Slashing Coverage) but no specific contract files. Only TLC is explicitly named as a contract.
- [20805] 202303_Spearbit.md — no match: Only one contract name explicitly mentioned in scope; other contracts are implied but not named.
- [20806] 202305_Spearbit.md — no match: The audit scope mentions fixes on validator counts but does not list specific contract names or file paths. No contracts are explicitly named as in scope.
- [20807] 202307_Spearbit.md — no match: No specific contract names mentioned in scope; only a PR reference and generic description.
- [20808] 202309_Spearbit.md — no match: Scope explicitly mentions TLC contract upgrade and RedeemManager addition.
- [20809] 202402_Certora.md — matched: Scope section explicitly lists 14 contracts. Audit dates range from Dec 3, 2023 to Feb 8, 2024; end date used.
- [20810] VULNERABILITY_DISCLOSURE.md — no match: The document is a vulnerability disclosure policy, not an audit report. No contracts in scope or audit date found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf | TLC_globalUnlockScheduleMigration | unmatched — not counted | — | Context references in findings (e.g., TLC_globalUnlockScheduleMigration.sol#L62-L72) | no |
| LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf | ERC20VestableVotesUpgradeable.1 | unmatched — not counted | — | Context references in findings (e.g., ERC20VestableVotesUpgradeable.1.sol#L432-L434) | no |
| LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf | TlcMigration | unmatched — not counted | — | Finding 5.1.5: TlcMigration.migrate: Missing input validation | no |
| LiquidCollectivePR-Spearbit-Security-Review.pdf | OperatorsRegistry.1 | unmatched — not counted | — | Referenced in findings context (e.g., OperatorsRegistry.1.sol#L541-L546) | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | OperatorsRegistry | unmatched — not counted | — | mentioned in findings context and remediation table | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | Oracle | unmatched — not counted | — | mentioned in findings context and remediation table | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | RedeemManager | unmatched — not counted | — | mentioned in findings context and remediation table | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | River | unmatched — not counted | — | mentioned in findings context and remediation table | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | OracleManager | unmatched — not counted | — | mentioned in findings context and remediation table | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | SharesManager | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | UserDepositManager | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | ConsensusLayerDepositManager | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | ValidatorKeys | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | CoverageFund | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | ELFeeRecipient | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | Withdraw | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | OperatorsV2 | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | OperatorsV1 | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | TotalRequestedExits | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | CLValidatorCount | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | CLValidatorTotalBalance | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | LastOracleRoundId | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | ReportVariants | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | IOracleManager | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | IOracle | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | LibUint256 | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective3-Spearbit-Security-Review.pdf | LibBasisPoints | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | TLCV1 | unmatched — not counted | — | mentioned in findings context and remediation | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | ERC20VestableVotesUpgradeableV1 | unmatched — not counted | — | mentioned in findings context and remediation | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | CoverageFundV1 | own proxy deployment | CoverageFundV1 (proxy) (selected) `0x32aac358b627b9feaa971cc33304027a41e49a81` — deployed 2022-12-02 14:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| LiquidCollective2-Spearbit-Security-Review.pdf | RiverV1 | unmatched — not counted | — | mentioned in findings context and remediation | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | OracleManagerV1 | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | OracleV1 | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | AllowlistV1 | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | CoverageFundAddress | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | MetadataURI | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | IVestingScheduleManagerV1 | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | ICoverageFundV1 | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | IRiverV1 | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | VestingSchedules | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | LibAllowlistMasks | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective2-Spearbit-Security-Review.pdf | TLC | unmatched — not counted | — | mentioned in findings context | no |
| LiquidCollective-Spearbit-Security-Review.pdf | AllowlistV1 | unmatched — not counted | — | mentioned in findings and remediation table | no |
| LiquidCollective-Spearbit-Security-Review.pdf | ApprovalsPerOwner | unmatched — not counted | — | mentioned in finding 6.6.2 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | BytesLib | unmatched — not counted | — | mentioned in findings 6.3.4, 6.5.6, 6.5.8 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | ConsensusLayerDepositManagerV1 | unmatched — not counted | — | mentioned in findings 6.3.10, 6.5.6 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | Firewall | unmatched — not counted | — | mentioned in finding 6.3.10 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | LibOwnable | unmatched — not counted | — | mentioned in findings 6.3.11, 6.3.10 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | Operators | unmatched — not counted | — | mentioned in findings 6.1.2, 6.2.3, 6.4.1, 6.5.9, 6.5.10, 6.5.11 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | OperatorsRegistryV1 | unmatched — not counted | — | mentioned in findings 6.1.3, 6.2.2, 6.2.4, 6.3.2, 6.3.8, 6.3.10, 6.3.13, 6.4.3, 6.4.4, 6.5.1, 6.5.2, 6.5.3, 6.5.4, 6.5.13 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | OracleV1 | unmatched — not counted | — | mentioned in findings 6.2.1, 6.3.1, 6.3.5, 6.3.10, 6.3.12 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | RiverV1 | unmatched — not counted | — | mentioned in findings 6.3.6, 6.3.7, 6.3.10, 6.3.14 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | SharesManager | unmatched — not counted | — | mentioned in findings 6.1.1, 6.3.9, 6.3.15, 6.4.5 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | Uint256Lib | unmatched — not counted | — | mentioned in finding 6.5.7 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | ValidatorKeys | unmatched — not counted | — | mentioned in findings 6.5.2, 6.5.12 | no |
| LiquidCollective-Spearbit-Security-Review.pdf | WLSETH | unmatched — not counted | — | mentioned in findings 6.3.3, 6.3.9, 6.4.5, 6.5.5 | no |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | River | unmatched — not counted | — | Listed in scope as part of River Contracts repository; referenced in findings (e.g., River.1.sol) | no |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | Oracle | unmatched — not counted | — | Referenced in findings (e.g., Oracle.1.sol) | no |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | WLSETH | unmatched — not counted | — | Referenced in findings (e.g., WLSETH.1.sol) | no |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | TransferManager | unmatched — not counted | — | Referenced in findings (e.g., TransferManager.1.sol) | no |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | DepositManager | unmatched — not counted | — | Referenced in findings (e.g., DepositManager.1.sol) | no |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | OperatorsManager | unmatched — not counted | — | Referenced in findings (e.g., OperatorsManager.1.sol) | no |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | TUPProxy | own proxy deployment | TUPProxy (proxy) (selected) `0x1235f1b60df026b2620e48e735c422425e06b725` — deployed 2022-10-04 20:58:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | Firewall | unmatched — not counted | — | Referenced in finding HAL-09 | no |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | ELFeeRecipient | unmatched — not counted | — | Referenced in finding HAL-09 as ELFeeRecipientV1 | no |
| Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf | SharesManager | unmatched — not counted | — | Referenced in appendix as SharesManager contract | no |
| 202207_Halborn.md | River | unmatched — not counted | — | listed in scope | no |
| 202207_Halborn.md | Oracle | unmatched — not counted | — | listed in scope | no |
| 202207_Halborn.md | Allowlist | unmatched — not counted | — | listed in scope | no |
| 202207_Halborn.md | Withdraw | unmatched — not counted | — | listed in scope | no |
| 202207_Halborn.md | ELFeeRecipient | unmatched — not counted | — | listed in scope | no |
| 202207_Halborn.md | WLSETH | unmatched — not counted | — | listed in scope | no |
| 202207_Halborn.md | Firewall | unmatched — not counted | — | listed in scope | no |
| 202207_Halborn.md | TUPProxy | own proxy deployment | TUPProxy (proxy) (selected) `0x1235f1b60df026b2620e48e735c422425e06b725` — deployed 2022-10-04 20:58:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202207_Halborn.md | Initializable | unmatched — not counted | — | listed in scope | no |
| 202209_Spearbit.md | River | unmatched — not counted | — | listed in scope | no |
| 202209_Spearbit.md | OperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| 202209_Spearbit.md | Oracle | unmatched — not counted | — | listed in scope | no |
| 202209_Spearbit.md | Allowlist | unmatched — not counted | — | listed in scope | no |
| 202209_Spearbit.md | Withdraw | unmatched — not counted | — | listed in scope | no |
| 202209_Spearbit.md | ELFeeRecipient | unmatched — not counted | — | listed in scope | no |
| 202209_Spearbit.md | WLSETH | unmatched — not counted | — | listed in scope | no |
| 202209_Spearbit.md | Firewall | unmatched — not counted | — | listed in scope | no |
| 202209_Spearbit.md | TUPProxy | own proxy deployment | TUPProxy (proxy) (selected) `0x1235f1b60df026b2620e48e735c422425e06b725` — deployed 2022-10-04 20:58:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202209_Spearbit.md | Initializable | unmatched — not counted | — | listed in scope | no |
| 202211_Spearbit.md | TLC | unmatched — not counted | — | listed in scope as 'New smart contract: TLC' | no |
| 202303_Spearbit.md | Redeem Manager | unmatched — not counted | — | listed in scope as 'New smart contract: Redeem Manager' | no |
| 202309_Spearbit.md | TLC | unmatched — not counted | — | mentioned as the contract being upgraded | no |
| 202309_Spearbit.md | RedeemManager | unmatched — not counted | — | added getRiver() view function | no |
| 202402_Certora.md | River | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | Oracle | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | Allowlist | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | Withdraw | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | ELFeeRecipient | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | WLSETH | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | Firewall | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | TUPProxy | own proxy deployment | TUPProxy (proxy) (selected) `0x1235f1b60df026b2620e48e735c422425e06b725` — deployed 2022-10-04 20:58:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402_Certora.md | Initializable | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | TLC | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | OperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | CoverageFund | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | Administrable | unmatched — not counted | — | listed in scope | no |
| 202402_Certora.md | RedeemManager | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x080b3a41390b357ad7e8097644d1dedf57ad3375` | RedeemManagerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0afd81862eea47322cf85db39d3d07e8a3c25154` | WithdrawV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 58 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 98 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=7, medium=2
- Match method counts: unique_name=5

Zero-match audit list:

- [20792] www.certora.com/reports/alluvialfinance-liquidcollective
- [20793] index.html
- [20794] LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf
- [20795] LiquidCollectivePR-Spearbit-Security-Review-July.pdf
- [20796] LiquidCollectivePR-Spearbit-Security-Review.pdf
- [20797] LiquidCollective3-Spearbit-Security-Review.pdf
- [20799] LiquidCollective-Spearbit-Security-Review.pdf
- [20801] security (GitHub directory)
- [20804] 202211_Spearbit.md
- [20805] 202303_Spearbit.md
- [20806] 202305_Spearbit.md
- [20807] 202307_Spearbit.md
- [20808] 202309_Spearbit.md
- [20810] VULNERABILITY_DISCLOSURE.md

Fork inheritance lineage and inherited audits are included when available.
