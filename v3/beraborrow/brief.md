# Agentic Audit Brief: Beraborrow

## Export Authority

- Production state: **published scope**
- Raw selected rows: 71 across 11 audit(s)
- Eligible audit results: 14 (11 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Beraborrow (`beraborrow`)
- Website: [https://app.beraborrow.com/](https://app.beraborrow.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain
- Contract surface: 172 unique implementations (172 raw deployments)
- Coverage basis: 11/12 confirmed own live verified implementations (91.7%); conservative 91.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $312,961.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Beraborrow. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across berachain. Structural roles: 11 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: core (11), supporting (1)
- Contract kinds: contract (12)
- Detected standards: erc20 (3), erc1967proxy (1), erc20permit (1), erc4626 (1), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (2), solady (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 83 contracts are derived from known codebases. 83 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00c6db55e11bbdd352a76a598bbb6f5723a4f786`, chain 80094)
- UnnamedContract (`0x08feddcbf7ff3462a61dd56016f5297b87c0789f`, chain 80094)
- UnnamedContract (`0x106d00356d6a4793efc6c4deb6df0d5d81f55dd5`, chain 80094)
- UnnamedContract (`0x1d2a3141be9a5d4c785a56a01c53fd02fa4eaa04`, chain 80094)
- UnnamedContract (`0x2016885fc46e879aa3d170c7472ce623090d4c1a`, chain 80094)
- UnnamedContract (`0x20b023a526c08d3ace64cb146b9e845f8bbdd049`, chain 80094)
- UnnamedContract (`0x2ab26fb0774142738a0f79bcc4b80465a5363298`, chain 80094)
- UnnamedContract (`0x33478d8040230e5da3204678a9a5b2a465e21fd8`, chain 80094)
- UnnamedContract (`0x37f556a992ada07d1f0e336310964ad33c2a16b6`, chain 80094)
- UnnamedContract (`0x3981087a892f6c183cad42e1d8993fa46bbed474`, chain 80094)
- UnnamedContract (`0x3d7f3b0ab008a04582a2a37bee150de7c8a37953`, chain 80094)
- UnnamedContract (`0x42ebe55b64bb6fa169518ab1bf1c7fca874e3004`, chain 80094)
- UnnamedContract (`0x45b3b6b28c77dd23a91acc3bd41da436fa6a61ae`, chain 80094)
- UnnamedContract (`0x4a91b96a615d133e4196655bc1735430ec97a391`, chain 80094)
- UnnamedContract (`0x4c0c5ae255a1dcbec206a1cd40a03c60c387dcdd`, chain 80094)
- UnnamedContract (`0x5025b7445d73473bf5373253309fa550f02ad8d1`, chain 80094)
- UnnamedContract (`0x597877ccf65be938bd214c4c46907669e3e62128`, chain 80094)
- UnnamedContract (`0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47`, chain 80094)
- UnnamedContract (`0x62cf6e355c77edb6f5c8eb2085a85cf4de4c1852`, chain 80094)
- UnnamedContract (`0x631395a9c5f79eec521a3eb6b6f968d6528f6d6f`, chain 80094)
- UnnamedContract (`0x65af6d1822f162b2b70395428cc24ff5587c0b02`, chain 80094)
- UnnamedContract (`0x6751c09113a83a83a43829fd0b3bc0d7bdbe07bf`, chain 80094)
- UnnamedContract (`0x696a7a94740ad257902da0ef1ec4a7d06587b14d`, chain 80094)
- UnnamedContract (`0x6f3d61b70824db322d91dfaea819eba11fc86610`, chain 80094)
- UnnamedContract (`0x6f55fcac22678e5faecd96d434fc67ebc25abd75`, chain 80094)
- UnnamedContract (`0x72df3973635eec7274ebae0013feeef0ae4bfbf4`, chain 80094)
- UnnamedContract (`0x7bf774a86f345f5417151ead9f56111d1bcf01b7`, chain 80094)
- UnnamedContract (`0x81c78b2ca50e36c61885745e742d98e8490b6085`, chain 80094)
- UnnamedContract (`0x8343a45d793688410a60d67ea17e8ce0ab3c2c24`, chain 80094)
- UnnamedContract (`0x8ed442f8a10d046b2bd9a5866b2ecd7ee0e2abee`, chain 80094)
- UnnamedContract (`0x9158d1b0c9cc4ec7640eaef0522f710dadee9a1b`, chain 80094)
- UnnamedContract (`0x924d6485583bfe571a03fcb05107e1e6dc44e408`, chain 80094)
- UnnamedContract (`0x9619348203929e6cd4784571ca315d919f25b345`, chain 80094)
- UnnamedContract (`0x965da3f96dcbfccf3c1d0603e76356775b5afd2e`, chain 80094)
- UnnamedContract (`0x9a3549ef882584a687c1ff1843e3b3c07a2a0cb2`, chain 80094)
- UnnamedContract (`0x9b4c7131a60a619199288d2cb5b0414c3b2df512`, chain 80094)
- UnnamedContract (`0x9d74d927b3c8d434c847b62f9af5a1c8a852e1bb`, chain 80094)
- UnnamedContract (`0xa0f32354419c2e02cd5d535edd5fd7f5e81fbe96`, chain 80094)
- UnnamedContract (`0xa7aca740e1ab9196aaf972a88bdee6055db9138a`, chain 80094)
- UnnamedContract (`0xabbf8064047a6ea85169230bf42013da4431659a`, chain 80094)
- UnnamedContract (`0xb2e7b0b609e4d06c19037eebe4cea578000e2dba`, chain 80094)
- UnnamedContract (`0xb318cd79dc0743de041a26d3f0d467d49955e5bc`, chain 80094)
- UnnamedContract (`0xb6ab580b36ed2def692dc608afac0a27c725cd0e`, chain 80094)
- UnnamedContract (`0xb87879ba5100341e6ac19f1e9aa761c3eca8877d`, chain 80094)
- UnnamedContract (`0xb925d5e5ac732c91a15c3cb5440b79f27a4b469b`, chain 80094)
- UnnamedContract (`0xb98bc62ee90749fdbbd9e0632e4f968db60a51db`, chain 80094)
- UnnamedContract (`0xbb0c90857d5d399d578a1243da83397a1d161b16`, chain 80094)
- UnnamedContract (`0xc3ad34f9fe5c4634c9e723682a0fedb5103cd667`, chain 80094)
- UnnamedContract (`0xc67628c6ff76191ba4068b726dcb8024022e0203`, chain 80094)
- UnnamedContract (`0xc6887462a056de08bd2332ecc231ce52b842e635`, chain 80094)
- UnnamedContract (`0xc94cd2adb51e5cbe2d9fa0d09481a24929d7b7ff`, chain 80094)
- UnnamedContract (`0xce1e426e35ebc9f512944f59527304e3b771ea12`, chain 80094)
- UnnamedContract (`0xcedeffec2860409e3ccb0d798c71dd1239259d8a`, chain 80094)
- UnnamedContract (`0xcfb5bdbca05573dbb9ca2be01fde6fc88b3c3d46`, chain 80094)
- UnnamedContract (`0xd650380ab909745c0e9f4591e9e9737f0382e56a`, chain 80094)
- UnnamedContract (`0xd8a8231f78b25de11119b77ae56d3daa84605a64`, chain 80094)
- UnnamedContract (`0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9`, chain 80094)
- UnnamedContract (`0xdc8408870f77b0b99d70779f68fb560b6fe39259`, chain 80094)
- UnnamedContract (`0xe357b38f9871da3f8320e132e272d93721aa6582`, chain 80094)
- UnnamedContract (`0xe59ab0c3788217e48399dae3cd11929789e4d3b2`, chain 80094)
- UnnamedContract (`0xe66e9873e5851b25a3b539879265f554c50f2f8c`, chain 80094)
- UnnamedContract (`0xe992d801a335a93cfe61f4b55f179298876331a9`, chain 80094)
- UnnamedContract (`0xed103b400aa80b71c209769dea0cbdc2aec9c5eb`, chain 80094)
- UnnamedContract (`0xee49c5ff02b70c4099ea63b1792d963abd9947f0`, chain 80094)
- UnnamedContract (`0xf1356cb726c2988c65c5313350c9115d9af0f954`, chain 80094)
- UnnamedContract (`0xf284290577c42d099ab418386ab0bdd7be4f8c82`, chain 80094)
- UnnamedContract (`0xf2a8f62e159ecdeee5ed29e926aaef73676d043b`, chain 80094)
- UnnamedContract (`0xf8519658cff16fa095a8bceb3dcc576d94399e32`, chain 80094)
- UnnamedContract (`0xfa7908287c1f1b256831c812c7194cb95bb440e6`, chain 80094)
- UnnamedContract (`0xfec9f8cd6f7b7a6674cd846938fe44b001f7a568`, chain 80094)
- UnnamedContract (`0xff14de98cc3d5677edd271d788604ca51677405a`, chain 80094)
- BeraborrowCore (`0x12347caf4300b1c4a9bf0ae7de2531a2bcfb93e9`, chain 80094)
- BrimeDen (`0x8faf95fecd6e106808636c767e5c6f8b92dd1363`, chain 80094)
- DebtToken (`0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3`, chain 80094)
- Factory (`0x8c2bc6ed330ce174c27487cc1ea15ba2ace4d3be`, chain 80094)
- IBGTVault (`0x1a29c90fa2f2f8d8744b4a8c2856035c37b772cc`, chain 80094)
- InfraredWrapper (`0x17ecd2889427b90121fc1f3815179d133c2735ff`, chain 80094)
- LSPRouter (`0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446`, chain 80094)
- MultiDenGetter (`0x0690d8b07eac444c76d6a0d8af660f1cc4d1b73c`, chain 80094)
- PermissionedDenManager (`0x359ba3964ed09e9570ce47b56e2d831d503db0a6`, chain 80094)
- PriceFeed (`0xa686dc84330b1b3787816de2daca485d305c8589`, chain 80094)
- SortedDens (`0x312711c156a8808d1bfb09c7d0ca3a553affc3e6`, chain 80094)
- ValidatorPool (`0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 83/83 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/12 (91.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 83 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 89 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 6 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 83 of 172 unique; 89 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/101
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 172
- Raw deployments: 172
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 11 aging, 0 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 16 match-unverified
- Tier 1 coverage: 91.7% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 11 | 10.9% | 2025-05 |
| Halborn | Tier 2 | 7 | 6.9% | 2024-11 |
| Spearbit | Tier 1 | 5 | 5.0% | 2025-07 |
| Recon | Tier 2 | 4 | 4.0% | n/a |
| Unknown | Tier 2 | 3 | 3.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeraborrowCore | unknown | project_anchor | own_supporting | 0 | berachain | unit-380504 | `0x12347caf4300b1c4a9bf0ae7de2531a2bcfb93e9` | ✅ Audited |
| BrimeDen | unknown | project_anchor | own_supporting | 0 | berachain | unit-380540 | `0x8faf95fecd6e106808636c767e5c6f8b92dd1363` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | berachain | unit-380507 | `0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3` | ✅ Audited |
| Factory | unknown | project_anchor | own_supporting | 0 | berachain | unit-380538 | `0x8c2bc6ed330ce174c27487cc1ea15ba2ace4d3be` | ✅ Audited |
| IBGTVault | unknown | project_anchor | own_supporting | 0 | berachain | unit-380506 | `0x1a29c90fa2f2f8d8744b4a8c2856035c37b772cc` | ✅ Audited |
| LSPRouter | unknown | project_anchor | own_supporting | 0 | berachain | unit-380517 | `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` | ✅ Audited |
| MultiDenGetter | unknown | project_anchor | own_supporting | 0 | berachain | unit-380501 | `0x0690d8b07eac444c76d6a0d8af660f1cc4d1b73c` | ✅ Audited |
| PermissionedDenManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-380514 | `0x359ba3964ed09e9570ce47b56e2d831d503db0a6` | ✅ Audited |
| PriceFeed | unknown | project_anchor | own_supporting | 0 | berachain | unit-380549 | `0xa686dc84330b1b3787816de2daca485d305c8589` | ✅ Audited |
| SortedDens | unknown | project_anchor | own_supporting | 0 | berachain | unit-380512 | `0x312711c156a8808d1bfb09c7d0ca3a553affc3e6` | ✅ Audited |
| ValidatorPool | unknown | project_anchor | own_supporting | 0 | berachain | unit-380533 | `0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a` | ✅ Audited |

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ALMGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x97b0cf88e94ba81f42bb3c8934dd78b487d19b28` | ⚠️ Unaudited |
| ALMPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1c1dbcde0a4f9c556f81ca5a9b108cf4f52568a1` | ⚠️ Unaudited |
| AlphaProPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x05bf488e3688dbf220ba8649818bbc7408883913` | ⚠️ Unaudited |
| AlphaProVaultFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x28ebfea8a4ab8149608cc7fb5ca5892fee9869a7` | ⚠️ Unaudited |
| BeraborrowManagedLeveragedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0541603655961aecadfe62972681e458008ff87d` | ⚠️ Unaudited |
| BeraborrowManagedLeveragedVaultGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x27cc7c97485d79ff75d3e77c4ce7c169d1a758e8` | ⚠️ Unaudited |
| BerachainDexAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xddf59f0d4158b63cc656d7f0700ebed86e6dfba9` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29589a06e7fb66204637f9f1b5f32046341ef5e9` | ⚠️ Unaudited |
| BPTStableOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb060ef95aee9f3ac66cf8747ec64644e600d9341` | ⚠️ Unaudited |
| BribeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x61bd35fbec49b144a1953f48f84ef8d2b321da40` | ⚠️ Unaudited |
| CharmDeleverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x04564e95f5349e47220adaf91870600d98135071` | ⚠️ Unaudited |
| CharmLeverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x06aa449c4f9dfbbda11cc87361b41a27f2bc78a8` | ⚠️ Unaudited |
| CharmManagedLeveragedVaultGettersV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x00dfb80df8d1d297e0661894f8177abe69064395` | ⚠️ Unaudited |
| ChronicleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x15fd574fa0410e9d5ffc961e23030b6ca5ff7cbf` | ⚠️ Unaudited |
| CollateralVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xce997ac8fd015a2b3c3950cb33e9e6bb962e35e1` | ⚠️ Unaudited |
| CollRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2bb1fb640c59917d73be47512afa3dde5fedb1d1` | ⚠️ Unaudited |
| CollVaultRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0e74a665ba183ccb60002fed4e30c3bc63cd53b0` | ⚠️ Unaudited |
| DeleverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0c161cb87f8255e76beddfbb8e0036d2fb463313` | ⚠️ Unaudited |
| DenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x43808f9cca7a5a26d101cf36fd9b5acec316fc72` | ⚠️ Unaudited |
| DenManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa2ecbe7a6bbfb0f14abbcfe3c19fe54dc7878588` | ⚠️ Unaudited |
| DLVRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4724654e1b6e663a7bb07cb6edfd5ffc339a35e1` | ⚠️ Unaudited |
| DolomiteERC4626Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4583f6954cb76103ae522f9243c7d876c9037230` | ⚠️ Unaudited |
| EmptySwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3cf60e61251ce82a883a48bf55aa837d6a7dd848` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x04cddc538ea65908106416986adaecefd4cab7d7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x8c0e122960dc2e97dc0059c07d6901dce72818e1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x8d44170e120b80a7e898bfba8cb26b01ad21298c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0xb71b3daea39012fb0f2b14d2a9c86da9292fc126` | ⚠️ Unaudited |
| EverlongALMFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf92d1c97e73e1f087cc8ee9e0e13a207bf219cc6` | ⚠️ Unaudited |
| EverlongCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xba665e5aecd91acf0b03924cb6c825a26341a59a` | ⚠️ Unaudited |
| EverlongDeleverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29b4b632e1ae60ecf21bccd67b675fce3b210321` | ⚠️ Unaudited |
| EverlongLeverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xef8ef3d6cacee43d0e72306049a31ffa7f2faf24` | ⚠️ Unaudited |
| FeeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b3d1f4f567caa0b046c3ed0fa83ddf933b17207` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x088d80a806b015a3047baf3e8d0a391b3d13e0c8` | ⚠️ Unaudited |
| Infrared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x559d1347242f350bdc44f99c729984bfb188092f` | ⚠️ Unaudited |
| InfraredBERA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x94b5d53483117fe3832c8e08d2a71ab8ab546d81` | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xef26bcfb9ce4e807465a46087e9dd73b652fef87` | ⚠️ Unaudited |
| InfraredBERAFeeReceivor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xab2dadd15af962b036d361849c024a3f70b18254` | ⚠️ Unaudited |
| InfraredBERAWithdraworLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x725a5576232220132f129f08e4a9eb7d4be92444` | ⚠️ Unaudited |
| InfraredBGT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b` | ⚠️ Unaudited |
| InfraredWrapper | unknown | project_anchor | own_supporting | 0 | berachain | unit-380505 | `0x17ecd2889427b90121fc1f3815179d133c2735ff` | ⚠️ Unaudited |
| InfraredWrapperFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0be8b01ee2a3a0d6ffcbfaa130d8f995c1296cb3` | ⚠️ Unaudited |
| KodiakIslandFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x160407ee86904e0a83d916e586b8a2fe7c213e6e` | ⚠️ Unaudited |
| KodiakIslandVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0c426f0fbd0dbed3d61e1199b9687822d6b573b1` | ⚠️ Unaudited |
| LeverageHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6251c29f381d8e1881a8a223e5dc819d16bfd245` | ⚠️ Unaudited |
| LeverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x75ebdc9eb1759707cfde27788ba3a00fce3daea3` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3ef448417c5174ca917dc284ffd39b1e30b10b79` | ⚠️ Unaudited |
| LiquidStabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2a63e2b30e5169486c1c1b4356e1ec87be1628bd` | ⚠️ Unaudited |
| LiquidStabilityPoolGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x39cd51974c13f0603e525f01638570aa72d20cb9` | ⚠️ Unaudited |
| LpRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x251161ab4908b10aab540bc495bbb900edacdd83` | ⚠️ Unaudited |
| LSPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x115652923309b78795506a418185ff425c303de2` | ⚠️ Unaudited |
| LSPRouterEnso | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7c4465a43c358dc60f9d9739f9a322a48bd0430c` | ⚠️ Unaudited |
| ManagedLeveragedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0167ee2069cfb3f25cf8f77a2d20e14f655d55eb` | ⚠️ Unaudited |
| ManagedLeveragedVaultGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x06405db1f27c21f088ec77d5f3fa75522c20302b` | ⚠️ Unaudited |
| MetaBeraborrowCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x27393e8a6f8f2e32b870903279999c820e984dc7` | ⚠️ Unaudited |
| MLVRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd1e6070af5d434129fc284894f7cd32a132ec34d` | ⚠️ Unaudited |
| MLVSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5397aa04c3a2109d7fca3646557e3a709f71f7ff` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x27474198c951790b92d02f3aad511ad87bad75c8` | ⚠️ Unaudited |
| NectarFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6cfe96da45275cf8632e84b35c3b49afbe08542e` | ⚠️ Unaudited |
| OriBGTFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xedd33a66f15d66722dde90fc0691ceb7c31f0d14` | ⚠️ Unaudited |
| PermissionlessPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x47877226fd0b1a84649b39db7f1c865dce05c96c` | ⚠️ Unaudited |
| POLLEN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x44b74a70cefdd7f9b26737bc7ab5e05b55175d8d` | ⚠️ Unaudited |
| PollenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x09d076744bdf9baadd96d310e8c527a779e0a165` | ⚠️ Unaudited |
| PollenStakingRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x02b1ecff81c40eeee4b8c9cc80a13ad7921ad54b` | ⚠️ Unaudited |
| PollenSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x805867de0af4affc132e4de2b7966b41ceab6dab` | ⚠️ Unaudited |
| RewardsFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa0b5d546c0a63631b7c5b532ed4a77838de7e624` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x149f8c724b5acf46afb9d30ec266b45b6d34d85d` | ⚠️ Unaudited |
| SolvBTC_BNB_Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x17f57ac0f44e30ecb29400b6ad23b89027f44248` | ⚠️ Unaudited |
| SPollen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9a96efae49d672f63599f99f9ec7fb4388587a60` | ⚠️ Unaudited |
| SPollenRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x068c3c9034ac7c4f6b08362e31f0c1f7d5059221` | ⚠️ Unaudited |
| TargetICRHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2f1309c9160419e6e1f85aee4251e7c7c48a30e4` | ⚠️ Unaudited |
| TriBPTStableOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe121e0e04bf79fdbf6c38fc996d17302b4af4257` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x0314af1a5ba30ed0fed91abdafb46af751e42f74` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x03bbb5bef75e62c8278526c5e49ebfc0b06c433f` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x0430f05228e3a471c8c79b62835b967cf707060f` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x073a8abf476c0cff473300d09dbe411b686ae05b` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x0934de7e66cf6c1c3bcbdb22bfb0dd96737fe086` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x24d46605fb299140c271cfb4dbab1c6f556807ba` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x3a930e253fb0164e4b72c7ce374f2c631a5562fa` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x5623554ece4e1fd78e8a4ce13d588a8e0053825d` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x672bf09ef2cef1a72fdde5dcfc76675e669d4b4c` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x8eb569b75aa34a75e495a4a2783824b025eea0af` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xf37cc04925d20a0a350b3ff77ef35781ea0869e2` | ⚠️ Unaudited |
| VaultFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x747b0316aeeeae3b938ba035a019bbda03d7321c` | ⚠️ Unaudited |
| VePollenFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1d20f90d22cece5113905eb78c60617c3b1a1c0c` | ⚠️ Unaudited |
| VotingEscrowPollen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d08496ea7c3a532e4b434f4f659fe3e9d27426b` | ⚠️ Unaudited |
| WBYUSDFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x78ca38231f49e0509b891f6d5fd1093a7db19270` | ⚠️ Unaudited |
| WrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x021f62d74f97f63575f8c608ab7cc3c591eccb0d` | ⚠️ Unaudited |
| ylstETHFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7cfab014be04d69556950cbdfafa9b5ff8e0e4ef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380500 | `0x00c6db55e11bbdd352a76a598bbb6f5723a4f786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380502 | `0x08feddcbf7ff3462a61dd56016f5297b87c0789f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380503 | `0x106d00356d6a4793efc6c4deb6df0d5d81f55dd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380508 | `0x1d2a3141be9a5d4c785a56a01c53fd02fa4eaa04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380509 | `0x2016885fc46e879aa3d170c7472ce623090d4c1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380510 | `0x20b023a526c08d3ace64cb146b9e845f8bbdd049` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380511 | `0x2ab26fb0774142738a0f79bcc4b80465a5363298` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380513 | `0x33478d8040230e5da3204678a9a5b2a465e21fd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380515 | `0x37f556a992ada07d1f0e336310964ad33c2a16b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380516 | `0x3981087a892f6c183cad42e1d8993fa46bbed474` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380518 | `0x3d7f3b0ab008a04582a2a37bee150de7c8a37953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380519 | `0x42ebe55b64bb6fa169518ab1bf1c7fca874e3004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380520 | `0x45b3b6b28c77dd23a91acc3bd41da436fa6a61ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380521 | `0x4a91b96a615d133e4196655bc1735430ec97a391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380522 | `0x4c0c5ae255a1dcbec206a1cd40a03c60c387dcdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380523 | `0x5025b7445d73473bf5373253309fa550f02ad8d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380524 | `0x597877ccf65be938bd214c4c46907669e3e62128` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380525 | `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380526 | `0x62cf6e355c77edb6f5c8eb2085a85cf4de4c1852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380527 | `0x631395a9c5f79eec521a3eb6b6f968d6528f6d6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380528 | `0x65af6d1822f162b2b70395428cc24ff5587c0b02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380529 | `0x6751c09113a83a83a43829fd0b3bc0d7bdbe07bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380530 | `0x696a7a94740ad257902da0ef1ec4a7d06587b14d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380531 | `0x6f3d61b70824db322d91dfaea819eba11fc86610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380532 | `0x6f55fcac22678e5faecd96d434fc67ebc25abd75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380534 | `0x72df3973635eec7274ebae0013feeef0ae4bfbf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380535 | `0x7bf774a86f345f5417151ead9f56111d1bcf01b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380536 | `0x81c78b2ca50e36c61885745e742d98e8490b6085` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380537 | `0x8343a45d793688410a60d67ea17e8ce0ab3c2c24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380539 | `0x8ed442f8a10d046b2bd9a5866b2ecd7ee0e2abee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380541 | `0x9158d1b0c9cc4ec7640eaef0522f710dadee9a1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380542 | `0x924d6485583bfe571a03fcb05107e1e6dc44e408` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380543 | `0x9619348203929e6cd4784571ca315d919f25b345` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380544 | `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380545 | `0x9a3549ef882584a687c1ff1843e3b3c07a2a0cb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380546 | `0x9b4c7131a60a619199288d2cb5b0414c3b2df512` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380547 | `0x9d74d927b3c8d434c847b62f9af5a1c8a852e1bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380548 | `0xa0f32354419c2e02cd5d535edd5fd7f5e81fbe96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380550 | `0xa7aca740e1ab9196aaf972a88bdee6055db9138a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380551 | `0xabbf8064047a6ea85169230bf42013da4431659a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380552 | `0xb2e7b0b609e4d06c19037eebe4cea578000e2dba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380553 | `0xb318cd79dc0743de041a26d3f0d467d49955e5bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380554 | `0xb6ab580b36ed2def692dc608afac0a27c725cd0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380555 | `0xb87879ba5100341e6ac19f1e9aa761c3eca8877d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380556 | `0xb925d5e5ac732c91a15c3cb5440b79f27a4b469b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380557 | `0xb98bc62ee90749fdbbd9e0632e4f968db60a51db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380558 | `0xbb0c90857d5d399d578a1243da83397a1d161b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380559 | `0xc3ad34f9fe5c4634c9e723682a0fedb5103cd667` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380560 | `0xc67628c6ff76191ba4068b726dcb8024022e0203` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380561 | `0xc6887462a056de08bd2332ecc231ce52b842e635` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380562 | `0xc94cd2adb51e5cbe2d9fa0d09481a24929d7b7ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380563 | `0xce1e426e35ebc9f512944f59527304e3b771ea12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380564 | `0xcedeffec2860409e3ccb0d798c71dd1239259d8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380565 | `0xcfb5bdbca05573dbb9ca2be01fde6fc88b3c3d46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380566 | `0xd650380ab909745c0e9f4591e9e9737f0382e56a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380567 | `0xd8a8231f78b25de11119b77ae56d3daa84605a64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380568 | `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380569 | `0xdc8408870f77b0b99d70779f68fb560b6fe39259` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380570 | `0xe357b38f9871da3f8320e132e272d93721aa6582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380571 | `0xe59ab0c3788217e48399dae3cd11929789e4d3b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380572 | `0xe66e9873e5851b25a3b539879265f554c50f2f8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380573 | `0xe992d801a335a93cfe61f4b55f179298876331a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380574 | `0xed103b400aa80b71c209769dea0cbdc2aec9c5eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380575 | `0xee49c5ff02b70c4099ea63b1792d963abd9947f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380576 | `0xf1356cb726c2988c65c5313350c9115d9af0f954` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380577 | `0xf284290577c42d099ab418386ab0bdd7be4f8c82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380578 | `0xf2a8f62e159ecdeee5ed29e926aaef73676d043b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380579 | `0xf8519658cff16fa095a8bceb3dcc576d94399e32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380580 | `0xfa7908287c1f1b256831c812c7194cb95bb440e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380581 | `0xfec9f8cd6f7b7a6674cd846938fe44b001f7a568` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380582 | `0xff14de98cc3d5677edd271d788604ca51677405a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Beraborrow_Report.pdf](https://github.com/santipu03/santipu03/blob/main/private-audits/Beraborrow_Report.pdf) | Unknown | Audit | 2024-12 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 13 | high |
| [Cantina_Beraborrow.pdf](https://github.com/santipu03/santipu03/blob/main/private-audits/Cantina_Beraborrow.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | address | matched | 7 | 0 | 0 | 5 | medium |
| [Sherlock_Beraborrow_Update.pdf](https://github.com/santipu03/santipu03/blob/main/private-audits/Sherlock_Beraborrow_Update.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [- [Audits](): Beraborrow has undergone several audits fro each part of the protocol, below you can find all the reports for each respective feature:](https://beraborrow.gitbook.io/docs/audits/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Contract address & Audits]()](https://beraborrow.gitbook.io/docs/pollen/vepollen/contract-address-and-audits.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 12 | medium |
| [CDP protocol private audit Halborn .pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FyMggcGsUSRbnQWRepNsS%2FCDP%20protocol%20private%20audit%20Halborn%20.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | matched | 12 | 0 | 0 | 18 | high |
| [CDP protocol private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2F6Dqc3dUpShsp5KUa26IS%2F%20CDP%20protocol%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 12 | high |
| [CDP protocol public audit competition Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FQWVZuONAgFlu6WKnvMD2%2FCDP%20protocol%20public%20audit%20competition%20Sherlock.pdf) | Sherlock | Contest | 2025-01 | aging | Direct | contract_name | matched | 16 | 0 | 0 | 28 | high |
| [CDP protocol public audit competition Cantina (1).pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FmxZQ0WeLKd6haJRL3ohF%2FCDP%20protocol%20public%20audit%20competition%20Cantina%20(1).pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 5 | medium |
| [Invariant Testing CDP protocol Recon.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FNcoDAsYQi9wt7W9eA9wS%2FInvariant%20Testing%20CDP%20protocol%20Recon.pdf) | Recon | Audit | n/a | unknown | Direct | contract_name | matched | 6 | 0 | 0 | 17 | medium |
| [BoycoVault private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FU3O3q3LdCRT0zlsItfKJ%2FBoycoVault%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2025-01 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 21 | high |
| [BoycoVault private audit Cantina.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FuYxauDnQwxY5czbtX5Sk%2FBoycoVault%20private%20audit%20Cantina.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 3 | medium |
| [Managed Leverage Vaults v0 private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FUKDtjc6Dkn6P6i35j5H1%2FManaged%20Leverage%20Vaults%20v0%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Periphery and feeds extension private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FS9FcsWw1G8YNzsJcbXLg%2FPeriphery%20and%20feeds%20extension%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16850] Beraborrow_Report.pdf — matched: Extracted from audit report header and scope section. Date range November 20 - December 27, 2024, end date used.
- [16851] Cantina_Beraborrow.pdf — matched: The report does not have a dedicated scope section; contract names were extracted from findings context and descriptions. The audit date is inferred from the report title 'BeraborrowBlockend Competition July 8, 2025'.
- [16852] Sherlock_Beraborrow_Update.pdf — matched: Extracted 6 contracts from scope section and file paths. Audit date from 'Date Audited: May19-May24,2025' -> end date 2024-05-24 (note: year appears as 2025 in text but likely typo; using 2024 as per context).
- [16854] - [Audits](): Beraborrow has undergone several audits fro each part of the protocol, below you can find all the reports for each respective feature: — no match: The provided text is a documentation index page listing audit report files and a link, but does not contain any contract names, scope sections, or audit dates.
- [16855] - [Contract address & Audits]() — no match: The document lists contract addresses under 'Contract address' but does not explicitly state they are in scope. However, they are the only contracts mentioned and are likely the audited contracts. No audit date found.
- [16856] CDP protocol private audit Halborn .pdf — matched: Extracted 30 contract names from the scope section of the audit report. The audit date is the end date of the engagement period (November 6, 2024).
- [16857] CDP protocol private audit Sherlock.pdf — matched: Extracted contract names from scope section and findings. Audit date from cover page: 'Date Audited: November 20 - December 27, 2024'.
- [16858] CDP protocol public audit competition Sherlock.pdf — matched: Extracted 44 contract names from the scope file listing. Audit date from 'Date Audited: January 13 - January 31, 2025'.
- [16859] CDP protocol public audit competition Cantina (1).pdf — matched: The report does not have a dedicated scope section; contract names were extracted from findings context. The date is inferred from the title 'Beraborrow Blockend Competition July8,2025'.
- [16860] Invariant Testing CDP protocol Recon.pdf — matched: No explicit scope section found; contracts extracted from findings and test files. Audit date not found in provided text.
- [16861] BoycoVault private audit Sherlock.pdf — matched: Extracted 25 contract names from the scope section listing files. Audit date from 'Date Audited: December 24 - January 7, 2025' -> end date 2025-01-07.
- [16862] BoycoVault private audit Cantina.pdf — matched: No explicit scope section found; contract names extracted from findings and context references.
- [16863] Managed Leverage Vaults v0 private audit Sherlock.pdf — no match: Scope section explicitly lists 10 files. Audit date range April 25-30, 2025, using end date.
- [16864] Periphery and feeds extension private audit Sherlock.pdf — matched: Scope section explicitly lists 6 files. Audit date from 'Date Audited: May19-May24,2025' -> end date 2024-05-24 (note year appears as 2025 but likely typo; using 2024 as per context).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Beraborrow_Report.pdf | PythWrapper | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | DenManager | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | StableBexFeed | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | WeightedBexFeed | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | bHONEYFeed | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | InfraredCollateralVault | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95fecd6e106808636c767e5c6f8b92dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | IBGTVault | own contract | IBGTVault (selected) `0x1a29c90fa2f2f8d8744b4a8c2856035c37b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | IInfraredVault | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | IInfraredCollateralVault | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | ISortedDens | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | IBalancerV2Pool | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | IPool | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | VaultMock | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Beraborrow.pdf | InfraredCollateralVault | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | PermissionlessPSM | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | InfraredVault | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | ValidatorPool | own contract | ValidatorPool (selected) `0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | DenManager | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95fecd6e106808636c767e5c6f8b92dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3964ed09e9570ce47b56e2d831d503db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | FeeReceiver | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Beraborrow_Update.pdf | BPTStableFeed | unmatched — not counted | — | listed in scope | no |
| Sherlock_Beraborrow_Update.pdf | BPTWeightedFeed | unmatched — not counted | — | listed in scope | no |
| Sherlock_Beraborrow_Update.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Beraborrow_Update.pdf | DeleverageRouter | unmatched — not counted | — | listed in scope | no |
| Sherlock_Beraborrow_Update.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Beraborrow_Update.pdf | LeverageRouter | unmatched — not counted | — | listed in scope | no |
| - [Contract address & Audits]() | LpAdapterProxy | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollen | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenAdapterProxy | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenRewardDistributor | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | LpRewardDistributor | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | LpVotingEscrowPollen | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenVotingEscrowPollen | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | PollenRouter | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | LpPollenStaking | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenPollenStaking | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | LpVePollenFeeDistributor | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenVePollenFeeDistributor | unmatched — not counted | — | listed in contract address section | no |
| CDP protocol private audit Halborn .pdf | DenManager | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BaseCollateralVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | SortedDens | own contract | SortedDens (selected) `0x312711c156a8808d1bfb09c7d0ca3a553affc3e6` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc84330b1b3787816de2daca485d305c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | KodiakIslandVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | bHONEYVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | PythWrapper | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | MultiDenGetter | own contract | MultiDenGetter (selected) `0x0690d8b07eac444c76d6a0d8af660f1cc4d1b73c` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | iBGTVault | own contract | IBGTVault (selected) `0x1a29c90fa2f2f8d8744b4a8c2856035c37b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BeraWrapper | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | Factory | own contract | Factory (selected) `0x8c2bc6ed330ce174c27487cc1ea15ba2ace4d3be` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | MultiCollateralHintHelpers | own contract | 0x4a91b9… (selected) `0x4a91b96a615d133e4196655bc1735430ec97a391` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BeraborrowCore | own contract | BeraborrowCore (selected) `0x12347caf4300b1c4a9bf0ae7de2531a2bcfb93e9` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BeraborrowMath | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | DenManagerGetters | own contract | 0xfa7908… (selected) `0xfa7908287c1f1b256831c812c7194cb95bb440e6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | EmissionsLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | LiquidStabilityPoolProxy | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | CollateralVaultProxy | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | BeraborrowBase | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | bHoneyHook | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | BeraborrowOwnable | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | DelegatedOps | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | SystemStart | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | GasPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Sherlock.pdf | PythWrapper | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | DenManager | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | StableBexFeed | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | WeightedBexFeed | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | bHONEYFeed | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | InfraredCollateralVault | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95fecd6e106808636c767e5c6f8b92dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | IBGTVault | own contract | IBGTVault (selected) `0x1a29c90fa2f2f8d8744b4a8c2856035c37b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | IInfraredVault | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc84330b1b3787816de2daca485d305c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | BeraborrowMath | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | SortedDens | own contract | SortedDens (selected) `0x312711c156a8808d1bfb09c7d0ca3a553affc3e6` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | CollVault | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | LeverageRouter | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | obRouter | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol public audit competition Sherlock.pdf | BeraborrowCore | own contract | BeraborrowCore (selected) `0x12347caf4300b1c4a9bf0ae7de2531a2bcfb93e9` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | DenManager | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | Factory | own contract | Factory (selected) `0x8c2bc6ed330ce174c27487cc1ea15ba2ace4d3be` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | GasPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | MetaBeraborrowCore | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc84330b1b3787816de2daca485d305c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | SortedDens | own contract | SortedDens (selected) `0x312711c156a8808d1bfb09c7d0ca3a553affc3e6` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | UpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BoycoVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PSMBond | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3964ed09e9570ce47b56e2d831d503db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | DenManagerGetters | own contract | 0xfa7908… (selected) `0xfa7908287c1f1b256831c812c7194cb95bb440e6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | LiquidStabilityPoolGetters | own contract | 0xf85196… (selected) `0xf8519658cff16fa095a8bceb3dcc576d94399e32` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | MultiCollateralHintHelpers | own contract | 0x4a91b9… (selected) `0x4a91b96a615d133e4196655bc1735430ec97a391` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | MultiDenGetter | own contract | MultiDenGetter (selected) `0x0690d8b07eac444c76d6a0d8af660f1cc4d1b73c` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | KodiakIslandFeed | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BaseCollateralVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | InfraredCollateralVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | KodiakIslandVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | UsdcVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | bHONEYVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | iBGTVault | own contract | IBGTVault (selected) `0x1a29c90fa2f2f8d8744b4a8c2856035c37b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | PollenToken | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BeraborrowBase | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BeraborrowMath | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BeraborrowOwnable | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | DelegatedOps | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | SystemStart | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | EmissionsLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | FeeLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LSPStorageLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | ReentrancyGuardLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | TokenValidationLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | UtilsLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | ChronicleWrapper | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | LSPOracle | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | ValidatorPool | own contract | ValidatorPool (selected) `0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | InfraredCollateralVault | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | PermissionlessPSM | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | InfraredVault | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | ValidatorPool | own contract | ValidatorPool (selected) `0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | DenManager | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3964ed09e9570ce47b56e2d831d503db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | FeeReceiver | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95fecd6e106808636c767e5c6f8b92dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | BaseCollateralVault | unmatched — not counted | — | Listed in scope and findings (H-01, M-03, M-05, Q-05) | no |
| Invariant Testing CDP protocol Recon.pdf | USDCVault | unmatched — not counted | — | Used in POC for H-01 | no |
| Invariant Testing CDP protocol Recon.pdf | PSMBond | unmatched — not counted | — | Listed in H-02 and Q-03 | no |
| Invariant Testing CDP protocol Recon.pdf | PythWrapper | unmatched — not counted | — | Listed in H-03 | no |
| Invariant Testing CDP protocol Recon.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc84330b1b3787816de2daca485d305c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | InfraredCollateralVault | unmatched — not counted | — | Listed in M-03, I-01 | no |
| Invariant Testing CDP protocol Recon.pdf | bHONEYVault | unmatched — not counted | — | Listed in M-06 | no |
| Invariant Testing CDP protocol Recon.pdf | PollenToken | unmatched — not counted | — | Listed in Q-02 | no |
| Invariant Testing CDP protocol Recon.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | DenManager | unmatched — not counted | — | Listed in Q-11 | no |
| Invariant Testing CDP protocol Recon.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3964ed09e9570ce47b56e2d831d503db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | LSPStorageLib | unmatched — not counted | — | Listed in Q-06 | no |
| Invariant Testing CDP protocol Recon.pdf | LspRouter | own contract | LSPRouter (selected) `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | LiquidStabilityPool | unmatched — not counted | — | Listed in Q-06 | no |
| Invariant Testing CDP protocol Recon.pdf | IBGTVault | own contract | IBGTVault (selected) `0x1a29c90fa2f2f8d8744b4a8c2856035c37b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | InfraredVault | unmatched — not counted | — | Listed in M-01, I-01 | no |
| Invariant Testing CDP protocol Recon.pdf | FeeLib | unmatched — not counted | — | Listed in H-01 traces | no |
| Invariant Testing CDP protocol Recon.pdf | Math | unmatched — not counted | — | Listed in H-01 traces | no |
| Invariant Testing CDP protocol Recon.pdf | MockERC20 | unmatched — not counted | — | Test contract in POC | no |
| Invariant Testing CDP protocol Recon.pdf | MockBeraborrowCore | unmatched — not counted | — | Test contract in POC | no |
| Invariant Testing CDP protocol Recon.pdf | MockPriceFeed | unmatched — not counted | — | Test contract in POC | no |
| Invariant Testing CDP protocol Recon.pdf | BaseCollateralVaultTests | unmatched — not counted | — | Test contract in POC | no |
| BoycoVault private audit Sherlock.pdf | MockDeployment | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | DeployBBIBGTDenManager | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | DeployBBbHoneyDenManager | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | UpgradeBoycoVaults | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BeraborrowCore | own contract | BeraborrowCore (selected) `0x12347caf4300b1c4a9bf0ae7de2531a2bcfb93e9` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Sherlock.pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Sherlock.pdf | DenManager | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BoycoVault | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3964ed09e9570ce47b56e2d831d503db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Sherlock.pdf | UsdcPSMBond | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BaseCollateralVault | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | InfraredCollateralVault | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | UsdcVault | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BeraborrowBase | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BeraborrowMath | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BeraborrowOwnable | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | DelegatedOps | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | SystemStart | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | EmissionsLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | FeeLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | TokenValidationLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | UtilsLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Cantina.pdf | BoycoVault | unmatched — not counted | — | mentioned in findings and context | no |
| BoycoVault private audit Cantina.pdf | PSMBond | unmatched — not counted | — | mentioned in findings | no |
| BoycoVault private audit Cantina.pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Cantina.pdf | DenManager | unmatched — not counted | — | mentioned in findings | no |
| BoycoVault private audit Cantina.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | ManagedLeveragedVault | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | BeraborrowMath | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | IBorrowerOperations | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | ILiquidStabilityPool | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | IMetaBeraborrowCore | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | IPriceFeed | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | IInfraredCollateralVault | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | ICollVaultRouter | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | EmissionsLib | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| Periphery and feeds extension private audit Sherlock.pdf | BPTStableFeed | unmatched — not counted | — | listed in scope | no |
| Periphery and feeds extension private audit Sherlock.pdf | BPTWeightedFeed | unmatched — not counted | — | listed in scope | no |
| Periphery and feeds extension private audit Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Periphery and feeds extension private audit Sherlock.pdf | DeleverageRouter | unmatched — not counted | — | listed in scope | no |
| Periphery and feeds extension private audit Sherlock.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Periphery and feeds extension private audit Sherlock.pdf | LeverageRouter | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x17ecd2889427b90121fc1f3815179d133c2735ff` | InfraredWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 95 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 71 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 152 unmatched
- Matched-own operational status: 71 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=1, medium=5
- Match method counts: address=1, unique_name=70

Zero-match audit list:

- [16854] - [Audits](): Beraborrow has undergone several audits fro each part of the protocol, below you can find all the reports for each respective feature:
- [16855] - [Contract address & Audits]()
- [16863] Managed Leverage Vaults v0 private audit Sherlock.pdf

Fork inheritance lineage and inherited audits are included when available.
