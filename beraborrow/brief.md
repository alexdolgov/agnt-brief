# Agentic Audit Brief: Beraborrow

## Export Authority

- Production state: **published scope**
- Raw selected rows: 71 across 11 audit(s)
- Eligible audit results: 14 (11 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Beraborrow (`beraborrow`)
- Website: [https://app.beraborrow.com/](https://app.beraborrow.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: berachain
- Contract surface: 775 unique implementations (783 raw deployments)
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
- Outside the address book: 692 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 83 of 775 unique; 692 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/101
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 674
- Unique implementations: 775
- Raw deployments: 783
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
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6`; berachain `0x742ebbf91a37064e89e5628d139070b73aa90247` | ⚠️ Unaudited |
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
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x073a8abf476c0cff473300d09dbe411b686ae05b`; berachain `0xb9acad23d0968d684fb76cbf31981c998063332c` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0934de7e66cf6c1c3bcbdb22bfb0dd96737fe086`; berachain `0x87f45f84a60686f01cd49cba723256e03154015f` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x24d46605fb299140c271cfb4dbab1c6f556807ba`; berachain `0x5804f80dec054816673d73cc1754d8bf8c21cc25` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x3a930e253fb0164e4b72c7ce374f2c631a5562fa`; berachain `0xce3ab0a62a78f4855ea529bc94736d9cdc3c1961` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x5623554ece4e1fd78e8a4ce13d588a8e0053825d`; berachain `0xf55382e6ec6c156c55be65db3950a6d09bf666ca` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x672bf09ef2cef1a72fdde5dcfc76675e669d4b4c`; berachain `0xe8a8152399a7fdb6c17084d8b5e1706f6e2eb4e7` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x8eb569b75aa34a75e495a4a2783824b025eea0af` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0xf37cc04925d20a0a350b3ff77ef35781ea0869e2`; berachain `0xf5c54560930fb5e6d0552dd2b77ff14de7a1aa95` | ⚠️ Unaudited |
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

### ❓ Unverified (674)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380500 | `0x00c6db55e11bbdd352a76a598bbb6f5723a4f786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x011f194170e0193e0a9ec72fe1c0aa86d0635c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x01b775b353176bb1b9075c5d344c2b689285282a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x023e5d8740823bb19401cbf561bf322ef93124f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x03c2ef90ec1f5deab5a16accfb49c42ac602ba65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x04bd6ed6408cb573419fd763e3b7ced57de69bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x04edcc9715445dd38f9fb327af8740bdfb81b739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x05648ea668e5696dfd038cf264a947b13e8a457c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0642e5ea445b5e572e95c381ef67ef3160572f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0712e857b880a6024778de35ca4dafaedf7504a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x08cdab555e4519d02bc9431dfe01463613d3123b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380502 | `0x08feddcbf7ff3462a61dd56016f5297b87c0789f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x097fd0b50a30008cf9af06b0077b446205ce75f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0cb3e2482357d1ac7df0f9ac2df776717142d009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d1177de4c98140c8de12bfde63a851fc80e29d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d4abb6198e3f7f2ab40977063790dc17b630948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d740d94cb88c872a0ebc695b84d55ca892bd7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d81fd615b94b32c1c91356a1f607ab7df637c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0f03136c4dae15bf7a1f36211e3bc56c3a42d0c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0fff6d1907eced46bc660643f022ddc1db9ddc97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x104e92e8f7aa38a6e2f5f52adff357ab05738d71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380503 | `0x106d00356d6a4793efc6c4deb6df0d5d81f55dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1109bf8125a52fb8a92f1ee5cd3d9f988a80f954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x11cf8eb76845f1df26d2a84d1b9d14d1408e11ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x11e8a0644b6f985a6f2f928356ce6e10ff764bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1286c8454ebb18bf863a7ebe3ef7b1dac2613fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x12ef93824705dec3be7a77f7b9d1902177b96ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1340666c29bbe2f0d84a7b4e17be2d45487b8091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1453c6883c3492654757fe9ac048f98c69eba339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x14f6fe6b774cc54309523a799906851e262dc4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x150b277e5fbc08850d62fea3a51a7a139fa75f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x16275c1cae13131b153cec4f8178304c7ae730f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x167d0dec26e2e9702bac049df18c195042ece77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1721045442ca002c8ac7415ab2479aac0d374cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1722f5edc171f7e80dfda07ea7ef5bac63482121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x17832bc0077357b985a728c8272f4acdec1d7016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1797a7f165a1b8a2e922ceab700f48c2a589c9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1a18f5546ddd417933db08bdb7325916d71a2241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1b32e789b32291316004e3df70c3351b240db6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1c34280ccd4a2c2f7197dfc9117a3137cd6cbe1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1c623632389af58d1aaee406dcc323726f1a83d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1c88f7a190e28ebbd2eb2adcbc68ade1d90fd5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1d22592f66fc92e0a64ee9300eaeca548cd466c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380508 | `0x1d2a3141be9a5d4c785a56a01c53fd02fa4eaa04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1df8b89ad8b8bc6f9aefcdd11913feb72f1b1001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1ec060987ffed97ab51a4050ccda53c009499863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1ece52a596c2cbef7b71fa8fa8fc738aa7ad441f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1fd38d0118f73e0d4ecebfbc85a68336b9c1b53d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380509 | `0x2016885fc46e879aa3d170c7472ce623090d4c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x206df2d4d2282a21163fcf59f1705abb6ec3baf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380510 | `0x20b023a526c08d3ace64cb146b9e845f8bbdd049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2131dfefae96405f29ababa4361e4219a98a4db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2154a5e7ff4912afe793215fd8d3b3e2288e8406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x22a3fb83478b2c4aa4b166dda78192284a488715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x22bc84a1c69af5b3b4583f1fd715481946860b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x22ff9d61edb59ae55b2a4648e30a7724934b945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2354801363308e95b45e417334667908da723524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x23d7ddce723531be8f2d26d2539d672bd30f4ce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x23ed71a0d5a1583233115d25a22e96cd30fd8864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2415fee8af7c121e17ae1b78e0891a8c6112cf8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x24a0bf3e21cf827811ea785acf1a60d1f65638db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x24b949f42c651a32d232e60d90594ad746868f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2509710322dc52cd4dc5e88fce1e5b556a913977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x25d4c505a5bfb3fba150696116adf1210d0618e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x26666a82cfe70e1ad048939708ca3acc4982cf9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x270c6e5b4726efdc422902b83a98a329f424cb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x279bdd39ea7f1243044e61e14404b9cc0c0b466f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x27b03a57418dd0d827ac99d279a1bf3bd89086db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x27d04dbb573334da004434e69c4b919c6ba5ec07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x28acfbaa61b41cbfe78839cf9aaed39c5480c9ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x28fff698c6e1ef9e07057ddd7e125e7274b2a640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x295b12a74e913815deb6c70405c7f4a848eeaf75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2a447fe46490b5086557ce6e7b0609f845e69ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2a6c8a564aed5f67883555f1b5e03447f265cd39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2a7782a965d5e9a3fb07a4eca28fc3cd3486a66b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380511 | `0x2ab26fb0774142738a0f79bcc4b80465a5363298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2abceba025542f13d8aabe00c0b8090ff3e2e15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2b3a296114aa0e42dfa194cc05eb253746783fc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2b6fc3b19a8a479f0ae7b45b19bf5cc43cd3d037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2b9371e53b5301b517c772e117616a5c165081f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2c166b619583a18be105347fb107bf3bc3cbdd56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2cc8bad38699bd1cd5ed08a044b67528a3db1355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2d0c324e532fadfe53f65de0442ea11dccbd55fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2d3169fda1a8ff50d3305d9209044d1e2706237c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2e113998f4561cc15543c380b0a92c60657ae031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2e32ddd251bdbc0daf272c703ed04e306fe2b00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2f2ab3d40c96e924cf18d15c50af45cdbcf4cf45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2f511975290121b5937a1bbc836c256244723c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x310fd7968daa1cf6e5cebb58228c79b53e9f82d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x320afa109c6fa895ba00e8aef57565a7c927ef0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3239cdda1aa0004e5e9857781fda30de0b59ba67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x32ff3ced25b916d52641d4081753f8951faa7249` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380513 | `0x33478d8040230e5da3204678a9a5b2a465e21fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x33ad23316a0c3dd999d4aede4fe99074de42324b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x33b476252194bbd63dbc345952979fb45a3de901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x340054e98de86d582b74ba74a9de8bd7921235ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3428d92c5c33b99ebf324c889742c3b6773b6967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x34742d1dd012951008b751a62df31da2b7f3ccb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x34e8d7308f424a30dd870711e0b6c2fb1e165c7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x35401a02c67e2a22c34f9c763360977f42ac26c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380515 | `0x37f556a992ada07d1f0e336310964ad33c2a16b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x38f296a0aa11d71e494c1d6c3dd0ffcf7670ddaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3904aaa585d846096fcdb38ef516c3ebace1ab84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3915643756652580907d6ef9dce0798801d8617b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380516 | `0x3981087a892f6c183cad42e1d8993fa46bbed474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3a427d3a7842e83e0514cf017ab4735a5e443c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3a6b1778a27b4a33271b4c080f161df6fde6dc56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3a6e624c162133d318476863a5f28e50bcedc9c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3a749031efcf3c28970b19f61f81f680a50e312a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3a87c5fa1316b0ea170b732aa0c8fd2c0f0a63a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3b1f324946d8d2e4c5500e54a5437cb49366fad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3b43d2c548038167da3351318aae879af60462b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3bb082ee32b7ff019b9767212c88cb8df1781cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3c5249843f558024586759b4e1dcc05f95b84be3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380518 | `0x3d7f3b0ab008a04582a2a37bee150de7c8a37953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3da36a4c86ed9a4ce6408838128c50eb05df43b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3dfebfc084da9c8749ef06839f399867c3448fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3e3a4df55be28919b9cfc1f6f7cf57db92165506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3ea93cc48fdcd18468e7f8171f7579a74a08652c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3fc37a9989520747df339c7928f569f9bf798d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4069a3f38d76190bc2af5324a2a0efa81bc52d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x41b01ce4e72a1d1aa2bbb7a88030ca92f5933d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x421927a662609698adbeeb752fda1ae55ef011f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x42448f31de1de7f1f75e0dfd4815f03b0b6acd4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x42b82586c4a1e5e0bfe99356916d5c1fb82d0926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x42cd67e9aecd4bc18a8b63750811092f367262b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380519 | `0x42ebe55b64bb6fa169518ab1bf1c7fca874e3004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x43752b1046decda948c7b34c4c4417beb619a9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x43dd12b65130e03a28208691192809b58c814ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4419a7f7e89a91d7e44c81645fa08a5194234e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4487ec9c11dc6b6a0c0d70b19334fa1651bf778f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4494c2db7f807e51af71517b3c463ed652e3b243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x44a0bde7ad41d91f7a78df576d28080829cb44b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4506c9152b30e5c315c80c1e197470aa362e6878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x458cba0d42896659fbb69872212ec7aa01b8dbef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380520 | `0x45b3b6b28c77dd23a91acc3bd41da436fa6a61ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x468bd5b553eb04e3e9a56a43617fede612492b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4722faad72845a2bc1c8d36ce1926d081d312f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4723010a89ff159c913137ce58c1d9aaf9a7ec97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x47590f8c83bb99ff9c9d6640f007722a79f0ab02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x482390c5aa02c99e7a7c0a28df52d9239f18f4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x49e59579f3aa2ce7907c05179e0a95220edb77c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x49efe8c8bb38bfba30e943a2789de9d8adaffc53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4a32c9b289a22a011725e5ab46135a282dfb8f56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380521 | `0x4a91b96a615d133e4196655bc1735430ec97a391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4ab34c52008d23ea0facdcb539c24c6249b0bfb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4aef5413d1a6283569efbd877859dbf79899f141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4b0a6dff4c6f28016cda0e09980ba6276da4d916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4b9a6d7eb298e25e88c00d031a414367fac8625a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4ba75fa9e660a3de916ab250c7cb7685541f1926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4ba839c5c3710bfd2ef4d5107dfa16283f4b32c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380522 | `0x4c0c5ae255a1dcbec206a1cd40a03c60c387dcdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4d22ad31a15fac0786d1a80d7797c7f4812e6da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4d2a84f18604e6c59b0818d4e7a474f8b5be837f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4d5a064f60fa9421ada2b7141e1f731a4db8d49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4e458ad3193181447b5c59411a5ef2780843cfdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4e7e2deaedb362ca81a5ab94619dc18e8c342a7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4ed05ed1e15d5946a5c03b0f9e1282b22d2a344d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4fc31479fbd5588342e0b4f39886ba9ba95bdaf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4fce306384228d708e63b6300f4ee3357cf64444` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380523 | `0x5025b7445d73473bf5373253309fa550f02ad8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x502bdc62fe7718726a0e025aa772d36fe6546e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x504d34bbd6cc0334ee3227e5660f42d5ebb06dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x50b0e0ad4522e03c2bc0023b8c0018bf32985628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x510af54439b74e716a5e6a1660a69d8d3b84989a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x51247c5b085ae6132df6180ddb7d93e8a0b2d57d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5172e17650a64ea005cee586d7765be27d3975a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x51c06919c0a3eb8a3dd1339c5ccf67f80eddf199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x51e577fbf16ee1fb4d8d7c7742cd470dbe041b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5338f2fc660f6bb112c1658a61b83253331425ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x54855bca0d91a35caaa83fb947c777d405b28d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x54f85ac31e832e83faddf8509f4fa0f25f21221d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x56d1fc06b06af67e2b56e9e1fc28278139ad1ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x56e14118034c7307a636a6d9ecef57f75b747231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x57684b647d4cc6b151e7476355fcfdc174da7ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5782d6f9b7cba0a0e9151aecbd26acdc64d5aaa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x579ab067b45eaef275ac0598a3d2dc000d10262b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x58368419b09da15b82fe94801839e2b5f59a4439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x583b0f2325a11f52b5c0c937abb4f2407168ccbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x583cc8a82b55a96a9ded97f5353397c85ee8b60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x58457c601d7acc3a312ad6f4e0527d23bd50e2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x58b34e79d53cacbbc9920477c5bea55a832871fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x58b61ed5c1657e78ffc7e574e8ac42c6f20ebe1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x58bbbf2721b6674ee8c6d86fc3f7add40dbc8a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5929fa7f900c2ec72c45df985508ce1ac3b54c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5975f027ddb74a3c84832584c4fb7a608b71d220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380524 | `0x597877ccf65be938bd214c4c46907669e3e62128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5a6468647260f4ed0d5f4d34a9f8903c657ac52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5a9c464fcc5d6c61cc1b98349e58d18989253f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5b927eeb3004e3bf031eae96ef7c0086471ad6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5be9b97da519609f1c8263fad913819ddb3481d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5d51a2034c3a830b6e50620f210e6882d3620224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5ddb6eb4a322fe3031e3c39c6d40aa3f46725934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5e30554b5a7f91f351d6d31926ac15cd8538e441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5e40d2f4e748875595ab37b88bfc705de8edc0fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380525 | `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5f891ff1ab3a8320a821f177d3a2b97e603afda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x608107444cbeb0fc2efb87fa101683b4ae93f2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x60aff0ff28f54ead6b2cc676206fe329b645b1cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x60d682b4d72b1691ca999422c403efa2d6b33330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6146e4f29d0983f7021e63163b856b3749462cbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x61556b0112f0643dac96168930b980818412a592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6194e284ac66e122f4999e31e1eba4b685dfd416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x61c6e61444626271d0621f9918a88b2a662197f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6202ad693af41a2227ab10663bbc7cc13394766f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380526 | `0x62cf6e355c77edb6f5c8eb2085a85cf4de4c1852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380527 | `0x631395a9c5f79eec521a3eb6b6f968d6528f6d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x63e80a78c7f41c1b519758ae0a32295ad4068d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x640313d11e6d8d068a345928241340e9a9b11adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x642f19cb7b42051b213176abc51c8e222aba6ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x64a98bbf54ca9476215b2452ef2838854723a4dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6503a84a4b64db7d0617ed200328562c3e1796c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6512c9f8e91762527af1c256598b3a720be8deff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380528 | `0x65af6d1822f162b2b70395428cc24ff5587c0b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x66edb52da8def8d1a93808a369a3f9a67e064965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6715631ab26372080c81df0212599596a819aa20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380529 | `0x6751c09113a83a83a43829fd0b3bc0d7bdbe07bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x679a32db107d900f07dbe6efbcc93d2f7f7c0d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x67e96bfd53cb10c0ff048106045d7a5735e67d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x68c761eeb006d91d0e6efcb8bc490a22d8d95010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6961b6e3d75544b2ee92c8ab60df18f11b544bea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380530 | `0x696a7a94740ad257902da0ef1ec4a7d06587b14d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6983e589e57e244b4e42fa8293b4128d15d4aac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x699cd511cc200e1ccf6048ef2361ef870c712a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x69ca150370f4393593251070f479d0ba9ec7a0a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6a90f6de966c3da4a1a6e1c4d83b47997199bd51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6aa5387fead68606c4c5d98997705c5ebede1520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6ab25e22b87ebe518861a57f008c8916bb3106ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6ad537088eab6328bbb5baeb82efbe6afb93e48f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6af9c31695b0861cfcebbf97a50fd14b4ee1ccf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6b84dbc7614fd3e75c2357be72378b744d852c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6cf2dc9c0dedb04df98a5c20f60cd9f76e0c433d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6d4b34f66c47c6ff761edefd544be1df292f68d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6ddbc255bffd2d394f3b31c543283c01d69d4ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6e0d09b502c6e561b287cd4e66c8ef879c86e20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6e147b9de87ad7cbbce256b8596494332a1b0d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6e3423f1bc68deaad1ccc5b469788b527d592fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6e44a5a969197fa17c89c4c0a6ed503a11b36786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6e9c731c6144ac51dd583194ab3fb21efa2ddf42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6eb5957d33c49531ad94e05e7354a8c145899093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6efe58ffdfb972290863874702330fd42befefae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380531 | `0x6f3d61b70824db322d91dfaea819eba11fc86610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380532 | `0x6f55fcac22678e5faecd96d434fc67ebc25abd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6fe54698cb9f0ed60083201fb94600ccdcd64554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x707ed276f67357c96bf713035054fdc82ca448ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7081d2702aca3db2b5fc01f715b837c9961f00fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x70d6cf978364543b5fc48107b513da65ed1ad2ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x718874a9402f8e5802607d4d1cc008274f0bd3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x72903d6ea8f0185b5ffc9ae6fb400ab25634c7a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x72bc8209ecfec365cb9cf2438914ca7adfb78be8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380534 | `0x72df3973635eec7274ebae0013feeef0ae4bfbf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x732dfb929cdea0b05508f8f9d9695b88f9987a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x73349367c10f27a4ddd7ec77b8a5f15f730fdffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x737947a9df2e253544fc74dca78e6f89ff071b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x74063cc516332c902e786d2920e60b5d9596f9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x74279c26cdeb2d7f4f740bc89e9c770123c90a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x74519ebe08dc5edb34276182699e01124f8c673b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x746efdcf6f589293bf4f0f48d1164947bfd92d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x74ce9cec247cc51f52275bd7ecc461eb8062948e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x75ad932e19928aee49e76fe47d4c7220b50b448b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x765d38a431e7df9188354812f8436f3a29c5bb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x76e959c6af1507100d8d8ac4478a80a807258980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x778e9294af38dfc8b92e8969953eb559b47e896e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x77a0f11926faaebe041d723f5b20069fcb4c4c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x78808a499e163a5a88499f4f0d1f1457489f503c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7916033b1c4dfd83db7104c85947b61ba40e4c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x79a27a5b2a84b60e2869dd09c46d537b1a6f4ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7a12ad4107c088effd930db90fea12e92f7a2e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7a4156c01da62a8836bebddbc1517fd5cfacd7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7b3487ffe71110a636e318f9e7a330f15fd5436f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7b8f8edb1ed74cd25df52468ced4e64768c3dc05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7bc28c1bf423fd364994815bc4e82c596a5a375a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380535 | `0x7bf774a86f345f5417151ead9f56111d1bcf01b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7c010b2f8e994bc86827a1fc7122792e2bc5b5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7c164044f63a4df7f00151ff0c390040555afa92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7c62017958ab9878eb1782afe34d365fd5c229e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7c6e3a560056a84e78cbc2862d8a949ff7940b84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7cacbbe2d5e2f4f117d12d1882bfc9eb40560697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7cc2485c334a9c04f40cfc6e36ca8be7f2a4efe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7cde0a989c97a15b6f2b63f0b7582d40a4e86d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7d558b917a8f925cbe2463180dc7a51161062d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7d763143a5c037a03d29b4f7049fe71b197fec40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7db78352f2a89a959f64f3c16dfe543f6415dd5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7de65e4fcc6a0b411b90a24cc33741ab3cd00262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7e312939980b2842b524d3418aa9b7498054e39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7e571726fa7e734d8c6bfc335df860f5b9286355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7e5b9d2a462e87e5cb73f6ddd9a8cf37f7446244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7eb62661b60f1f0d15d294c37aca1f9145600730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7ef1f9f4e6e2f8f112b953f3b0a71ed1311f4730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7f6ed59799d4cfac23d20b623974e9fca287da17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7fc7124da628a6224c4161614d74448080f230f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7fe3393350815d93ce4e23776fdf2b0ce2fb9a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7fff0dd5a729e89c31e8407a304914c390c94776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x81ba24b92b162ba56c622b4b80e4ce26426f490a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380536 | `0x81c78b2ca50e36c61885745e742d98e8490b6085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x81e6333a4947a0ff5bd140babe38f3a5e9992edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x81fb2a522cef613da927eb2e7899b8c1a6893a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x82609f09fbc441d1cbbed47a4479ea33d062f587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8283288ea2f898711d456a94b348ee4223526830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x82ae172f91756a355d2911f5ac5221f2673f9427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x82d7503225f98b999cafdfbaab803d52f122dd2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380537 | `0x8343a45d793688410a60d67ea17e8ce0ab3c2c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x83b6ab825ab4f24148a85f87b4ad5b268ac65e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x83d23e4e5cea50e723bba63da4207dd5fa6e9d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x840539e5bb3d664d53f4387ae009a2eb23b0fccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x849232e2144bd5118b5e4a070fe15035cc07b388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x853784dc856f6e691b9d6dae8833a6dc22d18c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x854591613cbf08b34a42322014913908f3636d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x85550269f0ed260a6603a3502e805fc2099034bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x85c41a60f1dcb8ad2d8e00aa25ae3c96880b693b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8628e618b66e7cddbe0adc84b96bea3977954507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x868b5fce92a6d3a46dda3d24f7b3436837506c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x869502991f6f490b8dd2b6b3fb89040211ff784d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x86a9dcbbf816a99e0422143a8e4a326f6811fb01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x86aeccc50dd0a75a0373fa8684e09f28ccb2ebe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x86d662dad49d7584caee6839e01d15b05fa01204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x86fee05992b8bcccf4d46160beca0daba90ac240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x88bf7d22c1abb2d878291371de3ccf1df77a57c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x89abb59ba060534d6ea90066213cf98c4e20d1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8a407c56e7ba5b6c929099013c071a7ebd44c654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8b3ab9e6cd6d93c9202535b7047e142982c4bbe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8b492ee2fbc146ed845cbd05e4e2eb59bfe030f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8b64f00e39b21510871300b76a60f7e32b275da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8c4a9f5b00b9069ee2fa786835184b82ca38da90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8c8c6c6f79ef2ea172754e0dd15e5dc8a30c328f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8d8b1815f664095ca92bbf660e2794b7e8a9386b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8d8d8c7a83d39e5d46580aef9a1d2c71fd5032f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8daf4be6e2b522901129a39b532e0c120b12a892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8dcb18b561ce7e7b309a2d172bdc2633266dfc85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8dcc949338441d67b6e98ecb6ec88a14cfb20f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8e612c7c9dc03ef8068588d4a2090ba62918c2fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8e669500abf7990215f522cee0f903aeff337097` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380539 | `0x8ed442f8a10d046b2bd9a5866b2ecd7ee0e2abee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8ef0e2497befc135a0e44a744834b4aa471a4e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8fa466485d7faa7798fca6028e4d2121521ae017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9052c126d25c203f7dfeefcb249ec50ad8725362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9093725403bb72c79944c06e134307dce5205f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x90cb777f620729567cf581a26171d626753b2621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x90f2ea42b3ccdcd1c3a95e405be9a3bc96fda0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x91147eb644ef3af8cd894523800b6205f46c0878` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380541 | `0x9158d1b0c9cc4ec7640eaef0522f710dadee9a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x91f34e3555b3ba8c77eb644272b40d67a4eb9ef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x920598318d0c48a19a9cbd26d86aa0d8079b139a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380542 | `0x924d6485583bfe571a03fcb05107e1e6dc44e408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x92948efecf11c87c21583091a781fa33d42f088f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x92ad5701b5249e9f397470d998d33ed876a47fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9312e77aba5e97c3b6b2fbb3da8f949764abd264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9335b678179d433588a16065c4016133e3c2f523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x933bd39cedb5947523110c33e98bea8480978adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9347a4b74885da7189724bec26d37c81076e954e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x93b02d6f3b0f4a9c9b935a01f2c298cd51056ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x93d6087e93322ea8e2e4409a83528b52ca9c971d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x93e39028f76b572702a29e43c9996a5be0cb7bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9413ab1a948f261f8ada13c5827289a93c77af14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9433ccf93ac084f7191b78d7bd0e7d64ed344e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x94f2355552b7442a70d6ca16b82a0795ae35e717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x94fd12e118e3fa8944018dd8869a0290418d22c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x95066fff5a4044f951a1ddca60cd201af7323e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x955386aff3f42c86f304c3ec9fe053d27ec429a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9556343014e2b896c6fe6091b31898a46eff3220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x95b72b9b60d965c1a9b0d11f3daead708b3beb1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x95c1f2e36ca90898c893ab4caa4aff79ab14ebf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x95f2b92bd425c8e0ca1055f546c3a3eb061343c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380543 | `0x9619348203929e6cd4784571ca315d919f25b345` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380544 | `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x967216939e6018d4292247b408f16d5746826e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x973db4928c1209385c58b9df7c20d88fb70001e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x97450a7dcdc0ae2b1871ad4499218de42292dd42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x97c04c345b82761f84f15c47eec81a34eb741c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x98837b3d4f8a66bbecdeb176a6d0559561d53fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x98bf803828e61a232029e948dae24c6b03766db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x99267ff4d753f9498620464f2fdb93b88a2c33c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x99f5ca0f00b258b67922c7b2c53694ab301d6d4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380545 | `0x9a3549ef882584a687c1ff1843e3b3c07a2a0cb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9aa807f26e42260d7e11a2c9578ae39d721bb685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9af2e95b88f964fbfcc4d4715428c5f2fa1ec614` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380546 | `0x9b4c7131a60a619199288d2cb5b0414c3b2df512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9b6cf6ab16c409b3a2c796211c274c8a8da28d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9bb48cafaa79d0fe066a64c962c3d96160e39812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9bd444f41d58491ee7d4e1059ea514cbd4739cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9c00b9cb89ec7b547dbb00c6939299a564ff4e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9c86c966c5eeda9b702ffb59609f1629edfb705c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9ccc5d9f94eeef4834507365d56e59ae82b5690f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9cd9759688728f53dbdb4a95623f40f03803051c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9ce81bc708d6f846e4fa64891982f069941df0c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9d6a82e212c9319cd41c2e34fb282d03550791d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9d6cfd786b959ec0aac0d23086747b2cdc6bb0e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380547 | `0x9d74d927b3c8d434c847b62f9af5a1c8a852e1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9e19a0c9b431da47265907551f49c09d378fb461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9eddbbfa3e968577e17a07e49e8f20701b664175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9f1d09c970c4a6272579c730a4caf49f9d0703d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9f4756ee370fe85e927593790d40e939e10bc20c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9f47f2b56a2767e01d15ed3c8d3fb5283c5d5c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9f898e9c5863a13f68a714044d380e9ffff7b732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa0afb94366e84db67fa93e6e8a04e40e3715cb2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380548 | `0xa0f32354419c2e02cd5d535edd5fd7f5e81fbe96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa179aa53ab1e1edf41973b2f92b2da1fcb14ad7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa179cd95ea0bde07e36dbcc50acd1d7656445e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa18012c56d38075474dee4b634b12a1a28fd5731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa185ac6e2238997004cd3b91f3010f86eb95bb56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa18f535f47d7a4695fb906a1135b21946c374e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa1b630ac027cee384b1adbf432c71bfad2b15274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa2b10d1ee0c0f715ef0694e25984d01ac8bf83d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa2bf73f696fecb3da6f23257aa4a403350233666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa2e5e46b0d13bf5534d204f8a49a099e47559ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa3a376e370666d0c3e10a5b1067095f2f080f26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa3fd520cba6f44ffc4437a74865cea5d2f93ce06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa43890ac77885f1ff6ff77f9a03c3003076063d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa57c3a94678dbd4fb8aa0f7e4b85f909690d5084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa5af9b238b985f22b178184029c2f42723d33222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa63ff996cc93bd4e0623f5038ad31d1146ae4f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa67ec92d6305c9bd85b3c3fa761af9dd6bd8a6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa6899cce1cea2c2c921ccbcbad296fefd0c7a955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa6c421b014da704be66bc541773b7fec5b05b2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa71a87537e83c185422cc02ec1fe4b53193ae0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa739f9439a5d0842f0e6e2065902c2c2965149d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa78dddac180f912a0748f10a2f3da58114225457` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380550 | `0xa7aca740e1ab9196aaf972a88bdee6055db9138a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa7dfa250ea71ee410c3deeaf1599cc864b958b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa7e950827603b1a2bf1d8c7bf0ac5df098fff02f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa81dde743030592237c6b3b6b3e55a9bf15abee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa83a84293379ec9961be3b8308527fa3b1ad5ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa8a3dc9a75ec56c99287ad2fd3b5e5f236d40dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaa2cbde9f11f09ee9774d6d6c98dbb4792d9549a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaa3821669c157cc25aa90f3249311cf9c4514fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaae8bf0daef720572951bb3d445395115933ebe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xab29540e192772afa0b5b3de2bacb9f3f8085e83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xab71f6637623e3310940e6624355a094cc7c42e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380551 | `0xabbf8064047a6ea85169230bf42013da4431659a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xac0c931c038fc1241dad6cae9eba4c54f5951807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xac1efcd139f921358dd7d4c950173e0e53d25ee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xac36a93737cd4ca67fbea7a826a45098afe53529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xadbcb90783dbd2e7679ef856cb99a17c7a06d58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xae263a3f079730a5c30f1d494173257fb9033ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaf4b3bb2302c69c96242588414e44eaa41d4a445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xafa4ece0e45b227d78e4cd05e7aa7cace5ff89bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb0292fff5c5544ffa3e6a362d622b0f4eda535ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb04372503e5b4f1d56e5c831f780368be4876593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb04a2a6059ee328ad740b8c66b4cd69716ad3839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb065f887f23d3707386b3fdfecb252e3c50f5088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb0c54d599b033b8293fa2c38b71a659f480c1e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb13a7d1361bd6f6734078654047daae210f2d4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb17f63aed263d6be67d817053d664190fba15a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb17fc59263ecf1ab3bb54466d07475ab30b5e91e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb198aa9451fe61278add5b2abd0c3e502270cd5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb1e6cbb9cd6f7a774503623c23f76acef5eba56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb27f59585106e645cac116eac2ff85f525794b8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380552 | `0xb2e7b0b609e4d06c19037eebe4cea578000e2dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb2f796fa30a8512c1d27a1853a9a1a8056b5cc25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380553 | `0xb318cd79dc0743de041a26d3f0d467d49955e5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb368db9ec65c2bd17c11766a63005203103726f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb38b0d08965654f11377c0c90f2338d63926c9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb3ad30a453358f5871b84a43e36dea0cea326e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb3e57d4787995347cff1b28bcda1a0e9ba916482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb40ba041200d82f3249b96a4246204740d20a9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb497961524556ac67bf89c08458c276ab85526dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb4a174290420498c8ac9179557d253bdcbb9863c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb59aa6e935c66eea5dedc0eb385ceb62fbe85757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380554 | `0xb6ab580b36ed2def692dc608afac0a27c725cd0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb7f97546e4683741c73ec5e3166d4add2c1acd81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb812ddc848d14d041f4c2d0caedc413f308bc146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb8437b2c6162105a0fc84c1cf00293cef2c447eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380555 | `0xb87879ba5100341e6ac19f1e9aa761c3eca8877d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb8d17199f58df90af367cf48a677a845237dc3dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380556 | `0xb925d5e5ac732c91a15c3cb5440b79f27a4b469b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb941c1c3974de5d4c2f669be0daebc2de2b6e26c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380557 | `0xb98bc62ee90749fdbbd9e0632e4f968db60a51db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xba385d8722e3d35d3c7ffc80441ebda315cae39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xba6dbdf59f8ba4d11a4c0ccf11af928c1030689d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xba7f7d6a07ae4f42f4add5d360d9ca6d41825073` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380558 | `0xbb0c90857d5d399d578a1243da83397a1d161b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbb71fc55796540ffb574442a1f664d9db99f02a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbbc241e8a61206e60170be38d71b0863aa301cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbbc52de3fcbc2f0d9e99674ee5ef25906454d936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbbc6dc8e6247f4f7eec0c5a664a3b54e3bf843a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc44617088aeaafacdeb6de68cfa287fb2cda130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc750d416a1391274d4f6a9650afd2fd761ac260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc82396f53bd66617c905b9224647dbe6f29dc3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc99e3d1bfa3d1957b13787e167b234faf09c425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbcd6819a00df6e7f7e6d5e073ff00a91bc876a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbcf6206f646920a3add515bd5906ed1a80625871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbd784c18ae1e8ca833ade5dcc724f130f9e8a581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbd952265724bd0b4641c2f0dad073886c06b927c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbdc6d8481ba06fa7bb043ab0fb74bae9e774bf12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbdcd947782cceba1cd95430cd6e403e898342962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbed39dcf883c9824a34e8273dd77d5596398d72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbefb54fbba63c8a5a6a96e1e817ce61aac1d8fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbf00992197f8c748cb07f6b20448e0f0c213a054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbf19612f6ef35fe411801509e4c284647213f5fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbfb32b0ee236a467924c43f91c4d3d3e836d50d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc02cdfae3a8625df52f73e2716b93e7e75bd1dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc03605680e61681091726b14b5a315e5084167de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc111d9bbf4fc2b98bd2ac7e97b1a34cfde062c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc14c24d1f89bf4dd5e488ba94de2fed4de6127b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc2e7082edaa85884ebe556a8149fcb73ef5c00aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc2ef26873999235c5444aa31b1002363ff329bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc2f57489a989c41bf3f5db00d7ccda3639eee206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc3574b725f60a2a60ccff04e65d4f050c07b07a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc3a240dd374fc53c32b5c6ea9e74d8dda9a0611e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380559 | `0xc3ad34f9fe5c4634c9e723682a0fedb5103cd667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc411c24d5238e9285c1e2d3f7f7b53f2c416828a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc58135becd790d1479efd59a650cc69cf781d530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc5ea6d45866040ac7bfcfe1b93bcb01ea90e064e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc64a7c6767460e20066ee4878b187a30e40f9567` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380560 | `0xc67628c6ff76191ba4068b726dcb8024022e0203` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380561 | `0xc6887462a056de08bd2332ecc231ce52b842e635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc698533c4e08980ff1b04e613df71da923923e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc6987b8d5f1680bb64f2eeb208030e66ab3a3a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc6b6b099cfbcbc3d23ea9abfe4da500134479a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc6cff91fae96ac93de25a735d2877614522cbc02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc76e4b56910052c282ecb501bf5faa82016876cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc7b3aff9e7a29d9b043d8f6116b69d8922b59f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc7c261824fc8442f88532c7a627568adcb2fae3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc814918d29b3eaaf431d48813f6d33d8bbe34834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc837e31a5440a294a8296237986afec64c43da75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc8ad939b5e8e60d4e340a30d1a754f0c8b07b74a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380562 | `0xc94cd2adb51e5cbe2d9fa0d09481a24929d7b7ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc99404c10efd0bb10184e03b1a06a5ea1cfdb875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc99e948e9d183848a6c4f5e6c1d225f02f171d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc9adf89f108992af6094d0d217e09e54237250db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc9dd6792768d1a72dc75891549b0301e18f702aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc9f71e31b3191d5b5114a792c9627f4a89d6da4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcab847887a2d516dfa690fa346638429415c089b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcae754d689ed45644df908539009c4becf11b14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcb3aa9978dadcd9792c30d57d39acb8a722c1e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcc0c3f6c8c7a9a7c7788d85ff720830f8af6d05c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcc824b6b022e53c564c60d16b1a4e4bb93851a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcc912dc6a39c5c08512f70b15ddd6b253b99b9f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcd6b1e0f86cb2848a61021510ef7cf59e15e5a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcd6e82dc0a62489688f8ab5dd4414d085c9ba4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcdd92670befe8ba758cbfbf8291b302c4974e731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcdf812105d61466b4e0636bff61392003a95e58d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380563 | `0xce1e426e35ebc9f512944f59527304e3b771ea12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380564 | `0xcedeffec2860409e3ccb0d798c71dd1239259d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcf009f98dd5344210725a6486b5d338c2ad9a152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcf2787690cd7d00f2ab90022339492bf21e1dbd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380565 | `0xcfb5bdbca05573dbb9ca2be01fde6fc88b3c3d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcfd291c8577eb6fc11dd6b54d5e93cb249f1abb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcfda4cdf3a27a3bd8757361a425083bca2ebe69e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd058e3fcf6e0aa0536105152792885ab48a4633b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd068aaa85f209be8047a519c24238a8f24e3a8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd08be9db61798fbe8a5f10c01e31c39956ad545b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd10759bd1ebd69a4e0873dc3c08c43cff1f166f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd190e3f0e174b5869d10d3d02af4e6d1fdeaf0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd1e45d53b6c91399903ad8eb714fcc07ad39fd3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd23ce4659ef32c84f3b4f9c9cb91c70da6c1efa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd39b77918d1897b900490f3e519350cc2a09f907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd3a4c745ddc383edf81de669eb4d8bd4a5cdbf0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd3db8e699415d8f1569c94a61c702b5f765240f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd4264c46f76f0241ff8b606f6d97da9e4b34624e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd452dd6424d78a0a12bd0462ae6868e7da28e5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd475f9efd82a393425cc83c8f457a66e234a844f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd4b8dd2c8371e3a4c75ce96860351840638abb50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd4dc46a797739622c049478da4f524f0539d602e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd4faa03faf612f3b90ad77b6b9371690cea07387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd5ae03140fcbccbde82756489d5b13f46a37d25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd5dadbcf0448fb6e5de5b3a014199220f425a6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd5e03b37f9d62686d9de7d67a3d3c044777dd690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd60c309053d75bcf939bb0762f9f011096c929de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd6242d28f71800c4bdacd858c699575cb46714c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd625bdccce1a6f99f54fde6f3131b61aba43d858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd62fb1785dc26514657a165be71e4f8b14a74a44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380566 | `0xd650380ab909745c0e9f4591e9e9737f0382e56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd69341ffa2e8741564dccfaf80007959d77a19e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd7111491130770b2e3bab6edb803793dbb161772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd76707ffb9feb81eda0d6d0ea56d4eb0325d5673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd81fb97ebd6c5074e30d639b66ab2c16da0009dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd866fe944b552d9d091058fdc4cccc4c5089fad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd88f93c21716e9b7ecb9aabae62f263a435813bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380567 | `0xd8a8231f78b25de11119b77ae56d3daa84605a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd971cda7fe5952d7c6aa1f50e2808cd1e5346177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd9ad491acca136cbc338ac18f55721f9bac10354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xda1d957029733829b2a41c16dc1d52bc94b3c765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xda1e93df1c01dde64be0376862a1e80bbd021893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xda44bbfab6f5d0e209923d853c3e65a424e52f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xda4e3bafa9eec316c4c2b3f299586eea0db7fc75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xda88d9de27015834c57329e8c08d2f13aa0aab5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdb036335fd7479988afc73e3378c12fbaa69db3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdb23a8b0f2e97d2e69dabf7d5bbf815cfa2cc540` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380568 | `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdc6db7f2d80cccc8f7a575d849d8ab1799197551` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380569 | `0xdc8408870f77b0b99d70779f68fb560b6fe39259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdc9feebb34811b275de324f27f324567120bb606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdcadf8575bb8834676fa968b1df13daf61fc4205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdd0a77eb6235d714d612a4f3f5d2185874c3ee39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdd0ef3d23e48c0cb7d0f4b58b78549c1e1c1bd72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdd0fafa8f81a2d33d0ca0fb6aa988989aaf43597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xde747203c338993fbea53c61e5b2f558c4687958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdf1955f71d5e07029dfe7d4bb8e0de826ad6543d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdf3f6abba9cb5ba375ffec89bf246800b4aed3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdfa9f813acb06e8578ecb271ee43506cbeabd9e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdfd21d8190f444437a5f791ef920b57ac43184ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe009900ee3012e2a22cbd1ff943d44395468366e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe0f738c359e6916e7efa44e689395fee013c2903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe1338852298e404ec1d5f15aff0b4a2e7a69a93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe172891f5b4507e9eb925cd9d52208646a64a5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe193336621b91d9034a7668fd5fe0065ad84f34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe194397a1e86bafdbee3e98728fd93e8c9080433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe22909ec2f414a96c0316d8bf3000b6f7143180f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380570 | `0xe357b38f9871da3f8320e132e272d93721aa6582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe3725857dc865358e01451318caaa4fe9e662e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe432a0c908ef53cfa2b42f80f248855304a0993b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe546db2db964aa454115d467ff1e14b6170d2abd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380571 | `0xe59ab0c3788217e48399dae3cd11929789e4d3b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe5adf6c47f3370e5de0f8381ddf4219b8e1216eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe61cc6f7c980e246077ee4bc7979a73bb2d3ecb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe62954577718cb92d59236da8c483a8b44f83eed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380572 | `0xe66e9873e5851b25a3b539879265f554c50f2f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe858b08feff4932a3515c85c4d0af230f84030ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe86fc4fdae1e4b0a36302a2c0e6dd2f708f0fa53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe93e5b263834be8006a981e0031d549d0967b4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe974057adc8237802e5bd61cb1b676de333cdd6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380573 | `0xe992d801a335a93cfe61f4b55f179298876331a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xea5207b2d0c394b804cfa6f822ee07046bddee59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeb4ee3e7731baeb5c9f8d5a96c348ad365fb7f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeb6e02ad20e35ad1f2266b98f703757b493bbcce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeb7870bedc228aed30e3c4f7ca4727295822ee60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xebb62c2fc21881a5a2ed53172a797283d7ba8839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xebb8152a4e5bd5db71eacebc5239a414d46e9c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec12d27d38abff40479692be8a85e443971e74aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec281a74d037a4f8b2eee6e5cf4ff80aa75bacab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec59c31914940770d25da2cd4c377caf74c26487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec5cb1b6849258eeab0613139dff7698ae256997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec5f6cf02731b1a76cdf11e83bc8ca9922ef9439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec8da2be515cb46b55446a39e46912115eccf8b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380574 | `0xed103b400aa80b71c209769dea0cbdc2aec9c5eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xedc08900e943bc3e051efe497a6b379f31952cbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380575 | `0xee49c5ff02b70c4099ea63b1792d963abd9947f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeebe09b1fe186dc0f5ae87855bef7c27e6be46d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeee1b9837a8ad531af8a304a967d1249d6ad334f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeee3b850da9ae1f5e7323c55ef25dbb4347eb287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xef395786e48e1296500e6b74c8dc3e5f057123ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf057f2e674af8b87fae900924abbe1c82e66053e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf0669d26b147552e3aaca8e2877ad9aa6d33b3c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf11bac7a3d823af17d78ceade9baed35f3c2bfe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380576 | `0xf1356cb726c2988c65c5313350c9115d9af0f954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf1b4dc0143c9d928afee170f524384af48d877a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380577 | `0xf284290577c42d099ab418386ab0bdd7be4f8c82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380578 | `0xf2a8f62e159ecdeee5ed29e926aaef73676d043b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf2f907bcd9bb3007804e0dd96392f376546b9cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf35982078563f90efefb2197c87e4e7e0dde1afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf39b05922c7240cc14ec5882c2c21a34ff86551c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf3a956b2c29f5c1216a72c88259db9e66e1f3aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf3cbc6876bc2b364eca48295f17c87c821ad8c7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf490599df85fe0183c846b2cc61fa50a30593f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf4c35f3a334ca73a229d9d416924f51675240796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf4d1c92e1b4c333a4a9264601ad937c9371d41be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf4fb771b7507fccbc393d3d8f7c848403583b1a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf5630e9c0d72a6d2dbded268b83fd4d888e198db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf5f3d317989ae988e94cb85fb4dd0cb445089ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf62fcd59c92f07220a948f4fcbbc6179ab817a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf69cf3afc2aa3d58b32fe365e6c47cafb42f18a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf6a4a6acecd5311327ae3866624486b6179fef97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf6f65d71f2a6763a347a7c8a6f98142ef5d30fcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380579 | `0xf8519658cff16fa095a8bceb3dcc576d94399e32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf893ce7259229e85333ca753e6ce1cd0640185e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf9184e730c32729cb0afd1689252d330442fa342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf95cc6e77d7c55ec7a17db6c7f2b6e05888a4f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfa3d80b3e3674274f8087f98a64eba6eb1364564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380580 | `0xfa7908287c1f1b256831c812c7194cb95bb440e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfb28f3b193e820e66381696b6e483cc0493c4538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfb80c62024c397c11cbae1c5fc7c6ebb9142be63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfbe10b5f5d1de61a33d97790b4db859e1270e201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfbee201e32c776eef30715bfe632b5544d2dbe93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfc3111435c6d4cd1431862346ac9646d21752bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfcc9fdeb7e9450ccfbc3a3d52c1b42c26e2f8121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfd82ebdec02c804938ad10977db925efb01c39ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfe7a781914525e7e7c93b30c213fbfcde1c5f575` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380581 | `0xfec9f8cd6f7b7a6674cd846938fe44b001f7a568` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380582 | `0xff14de98cc3d5677edd271d788604ca51677405a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xff256c5158e59290581a0adb7ee919028718f107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xff343f31a6e327a6d52f7d4125e1b6f4054deaa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xffebc167c9470c79085746cfdba7ac637bb11ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfff9a1dffcc6e9d38f3ef703246ecf0fcdeb1873` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 611
- Live contracts: 0
- Unknown liveness contracts: 611
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=611

Showing first 200 of 611 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| berachain | unverified unclassified | UnnamedContract<br>`0x01b775b353176bb1b9075c5d344c2b689285282a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x023e5d8740823bb19401cbf561bf322ef93124f0` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x03c2ef90ec1f5deab5a16accfb49c42ac602ba65` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x04bd6ed6408cb573419fd763e3b7ced57de69bd5` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x04edcc9715445dd38f9fb327af8740bdfb81b739` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0cb3e2482357d1ac7df0f9ac2df776717142d009` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0fff6d1907eced46bc660643f022ddc1db9ddc97` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x104e92e8f7aa38a6e2f5f52adff357ab05738d71` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1109bf8125a52fb8a92f1ee5cd3d9f988a80f954` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1453c6883c3492654757fe9ac048f98c69eba339` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x16275c1cae13131b153cec4f8178304c7ae730f4` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1a18f5546ddd417933db08bdb7325916d71a2241` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1ece52a596c2cbef7b71fa8fa8fc738aa7ad441f` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x22a3fb83478b2c4aa4b166dda78192284a488715` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x23ed71a0d5a1583233115d25a22e96cd30fd8864` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2415fee8af7c121e17ae1b78e0891a8c6112cf8f` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x27b03a57418dd0d827ac99d279a1bf3bd89086db` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2a447fe46490b5086557ce6e7b0609f845e69ac2` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2e113998f4561cc15543c380b0a92c60657ae031` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2e32ddd251bdbc0daf272c703ed04e306fe2b00f` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2f511975290121b5937a1bbc836c256244723c9b` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3904aaa585d846096fcdb38ef516c3ebace1ab84` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3b43d2c548038167da3351318aae879af60462b5` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3fc37a9989520747df339c7928f569f9bf798d00` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x42cd67e9aecd4bc18a8b63750811092f367262b6` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x47590f8c83bb99ff9c9d6640f007722a79f0ab02` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x4fce306384228d708e63b6300f4ee3357cf64444` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x57684b647d4cc6b151e7476355fcfdc174da7ece` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x5782d6f9b7cba0a0e9151aecbd26acdc64d5aaa5` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x58b34e79d53cacbbc9920477c5bea55a832871fd` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x58b61ed5c1657e78ffc7e574e8ac42c6f20ebe1e` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x5d51a2034c3a830b6e50620f210e6882d3620224` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x6503a84a4b64db7d0617ed200328562c3e1796c8` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x6e0d09b502c6e561b287cd4e66c8ef879c86e20d` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x70d6cf978364543b5fc48107b513da65ed1ad2ad` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x718874a9402f8e5802607d4d1cc008274f0bd3d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x732dfb929cdea0b05508f8f9d9695b88f9987a42` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x742ebbf91a37064e89e5628d139070b73aa90247` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x778e9294af38dfc8b92e8969953eb559b47e896e` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x78808a499e163a5a88499f4f0d1f1457489f503c` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x79a27a5b2a84b60e2869dd09c46d537b1a6f4ef8` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7bc28c1bf423fd364994815bc4e82c596a5a375a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7c010b2f8e994bc86827a1fc7122792e2bc5b5c6` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7cc2485c334a9c04f40cfc6e36ca8be7f2a4efe1` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7cde0a989c97a15b6f2b63f0b7582d40a4e86d23` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7d763143a5c037a03d29b4f7049fe71b197fec40` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7de65e4fcc6a0b411b90a24cc33741ab3cd00262` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7e312939980b2842b524d3418aa9b7498054e39a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7e571726fa7e734d8c6bfc335df860f5b9286355` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7ef1f9f4e6e2f8f112b953f3b0a71ed1311f4730` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7f6ed59799d4cfac23d20b623974e9fca287da17` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x81ba24b92b162ba56c622b4b80e4ce26426f490a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x81fb2a522cef613da927eb2e7899b8c1a6893a1b` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x82609f09fbc441d1cbbed47a4479ea33d062f587` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x82d7503225f98b999cafdfbaab803d52f122dd2b` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x85550269f0ed260a6603a3502e805fc2099034bc` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x86fee05992b8bcccf4d46160beca0daba90ac240` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x8b492ee2fbc146ed845cbd05e4e2eb59bfe030f9` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x920598318d0c48a19a9cbd26d86aa0d8079b139a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x9433ccf93ac084f7191b78d7bd0e7d64ed344e27` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x95c1f2e36ca90898c893ab4caa4aff79ab14ebf7` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x9f47f2b56a2767e01d15ed3c8d3fb5283c5d5c80` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x9f898e9c5863a13f68a714044d380e9ffff7b732` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa2b10d1ee0c0f715ef0694e25984d01ac8bf83d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa2e5e46b0d13bf5534d204f8a49a099e47559ed4` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa3a376e370666d0c3e10a5b1067095f2f080f26f` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa3fd520cba6f44ffc4437a74865cea5d2f93ce06` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa63ff996cc93bd4e0623f5038ad31d1146ae4f88` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa6899cce1cea2c2c921ccbcbad296fefd0c7a955` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa81dde743030592237c6b3b6b3e55a9bf15abee4` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xab71f6637623e3310940e6624355a094cc7c42e6` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xac36a93737cd4ca67fbea7a826a45098afe53529` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb0292fff5c5544ffa3e6a362d622b0f4eda535ed` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb04a2a6059ee328ad740b8c66b4cd69716ad3839` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb065f887f23d3707386b3fdfecb252e3c50f5088` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb13a7d1361bd6f6734078654047daae210f2d4d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb17f63aed263d6be67d817053d664190fba15a50` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb38b0d08965654f11377c0c90f2338d63926c9b9` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xb59aa6e935c66eea5dedc0eb385ceb62fbe85757` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xba7f7d6a07ae4f42f4add5d360d9ca6d41825073` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xbc44617088aeaafacdeb6de68cfa287fb2cda130` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xbcd6819a00df6e7f7e6d5e073ff00a91bc876a9d` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xbdc6d8481ba06fa7bb043ab0fb74bae9e774bf12` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xbf19612f6ef35fe411801509e4c284647213f5fe` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xc2f57489a989c41bf3f5db00d7ccda3639eee206` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xc6b6b099cfbcbc3d23ea9abfe4da500134479a29` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xc9adf89f108992af6094d0d217e09e54237250db` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xcc0c3f6c8c7a9a7c7788d85ff720830f8af6d05c` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xcc824b6b022e53c564c60d16b1a4e4bb93851a75` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xd10759bd1ebd69a4e0873dc3c08c43cff1f166f4` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xd39b77918d1897b900490f3e519350cc2a09f907` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xd452dd6424d78a0a12bd0462ae6868e7da28e5cb` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xd5ae03140fcbccbde82756489d5b13f46a37d25a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xd76707ffb9feb81eda0d6d0ea56d4eb0325d5673` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xdd0a77eb6235d714d612a4f3f5d2185874c3ee39` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xde747203c338993fbea53c61e5b2f558c4687958` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xdfd21d8190f444437a5f791ef920b57ac43184ca` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xe193336621b91d9034a7668fd5fe0065ad84f34f` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xeb6e02ad20e35ad1f2266b98f703757b493bbcce` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xf3a956b2c29f5c1216a72c88259db9e66e1f3aa1` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xf3cbc6876bc2b364eca48295f17c87c821ad8c7b` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xf4c35f3a334ca73a229d9d416924f51675240796` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xf69cf3afc2aa3d58b32fe365e6c47cafb42f18a5` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xf6a4a6acecd5311327ae3866624486b6179fef97` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xfe7a781914525e7e7c93b30c213fbfcde1c5f575` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0xff343f31a6e327a6d52f7d4125e1b6f4054deaa6` | non_address_book | unknown | unknown | unverified | n/a | `0x5ce3a6569de2dfb4eb5a1cfe873e0694ff494c8b` |
| berachain | unverified unclassified | UnnamedContract<br>`0x011f194170e0193e0a9ec72fe1c0aa86d0635c49` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x05648ea668e5696dfd038cf264a947b13e8a457c` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0642e5ea445b5e572e95c381ef67ef3160572f43` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0712e857b880a6024778de35ca4dafaedf7504a4` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x08cdab555e4519d02bc9431dfe01463613d3123b` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x097fd0b50a30008cf9af06b0077b446205ce75f7` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0d1177de4c98140c8de12bfde63a851fc80e29d9` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0d4abb6198e3f7f2ab40977063790dc17b630948` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0d740d94cb88c872a0ebc695b84d55ca892bd7bc` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0d81fd615b94b32c1c91356a1f607ab7df637c4a` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0f03136c4dae15bf7a1f36211e3bc56c3a42d0c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x11cf8eb76845f1df26d2a84d1b9d14d1408e11ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x11e8a0644b6f985a6f2f928356ce6e10ff764bb5` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1286c8454ebb18bf863a7ebe3ef7b1dac2613fe0` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x12ef93824705dec3be7a77f7b9d1902177b96ef1` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1340666c29bbe2f0d84a7b4e17be2d45487b8091` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x14f6fe6b774cc54309523a799906851e262dc4e6` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x150b277e5fbc08850d62fea3a51a7a139fa75f1b` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x167d0dec26e2e9702bac049df18c195042ece77c` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1721045442ca002c8ac7415ab2479aac0d374cd6` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1722f5edc171f7e80dfda07ea7ef5bac63482121` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x17832bc0077357b985a728c8272f4acdec1d7016` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1797a7f165a1b8a2e922ceab700f48c2a589c9a0` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1b32e789b32291316004e3df70c3351b240db6b2` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1c34280ccd4a2c2f7197dfc9117a3137cd6cbe1a` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1c623632389af58d1aaee406dcc323726f1a83d1` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1c88f7a190e28ebbd2eb2adcbc68ade1d90fd5e7` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1d22592f66fc92e0a64ee9300eaeca548cd466c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1df8b89ad8b8bc6f9aefcdd11913feb72f1b1001` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1ec060987ffed97ab51a4050ccda53c009499863` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1fd38d0118f73e0d4ecebfbc85a68336b9c1b53d` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x206df2d4d2282a21163fcf59f1705abb6ec3baf1` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2131dfefae96405f29ababa4361e4219a98a4db4` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2154a5e7ff4912afe793215fd8d3b3e2288e8406` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x22bc84a1c69af5b3b4583f1fd715481946860b95` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x22ff9d61edb59ae55b2a4648e30a7724934b945c` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2354801363308e95b45e417334667908da723524` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x23d7ddce723531be8f2d26d2539d672bd30f4ce1` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x24a0bf3e21cf827811ea785acf1a60d1f65638db` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x24b949f42c651a32d232e60d90594ad746868f66` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2509710322dc52cd4dc5e88fce1e5b556a913977` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x25d4c505a5bfb3fba150696116adf1210d0618e1` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x26666a82cfe70e1ad048939708ca3acc4982cf9f` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x270c6e5b4726efdc422902b83a98a329f424cb2a` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x279bdd39ea7f1243044e61e14404b9cc0c0b466f` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x27d04dbb573334da004434e69c4b919c6ba5ec07` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x28acfbaa61b41cbfe78839cf9aaed39c5480c9ad` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x28fff698c6e1ef9e07057ddd7e125e7274b2a640` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x295b12a74e913815deb6c70405c7f4a848eeaf75` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2a6c8a564aed5f67883555f1b5e03447f265cd39` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2a7782a965d5e9a3fb07a4eca28fc3cd3486a66b` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2abceba025542f13d8aabe00c0b8090ff3e2e15f` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2b3a296114aa0e42dfa194cc05eb253746783fc5` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2b6fc3b19a8a479f0ae7b45b19bf5cc43cd3d037` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2b9371e53b5301b517c772e117616a5c165081f2` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2c166b619583a18be105347fb107bf3bc3cbdd56` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2cc8bad38699bd1cd5ed08a044b67528a3db1355` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2d0c324e532fadfe53f65de0442ea11dccbd55fc` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2d3169fda1a8ff50d3305d9209044d1e2706237c` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2f2ab3d40c96e924cf18d15c50af45cdbcf4cf45` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x310fd7968daa1cf6e5cebb58228c79b53e9f82d3` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x320afa109c6fa895ba00e8aef57565a7c927ef0a` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3239cdda1aa0004e5e9857781fda30de0b59ba67` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x32ff3ced25b916d52641d4081753f8951faa7249` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x33ad23316a0c3dd999d4aede4fe99074de42324b` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x33b476252194bbd63dbc345952979fb45a3de901` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x340054e98de86d582b74ba74a9de8bd7921235ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3428d92c5c33b99ebf324c889742c3b6773b6967` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x34742d1dd012951008b751a62df31da2b7f3ccb7` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x34e8d7308f424a30dd870711e0b6c2fb1e165c7b` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x35401a02c67e2a22c34f9c763360977f42ac26c7` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x38f296a0aa11d71e494c1d6c3dd0ffcf7670ddaf` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3915643756652580907d6ef9dce0798801d8617b` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3a427d3a7842e83e0514cf017ab4735a5e443c25` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3a6b1778a27b4a33271b4c080f161df6fde6dc56` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3a6e624c162133d318476863a5f28e50bcedc9c3` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3a749031efcf3c28970b19f61f81f680a50e312a` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3a87c5fa1316b0ea170b732aa0c8fd2c0f0a63a1` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3b1f324946d8d2e4c5500e54a5437cb49366fad5` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3bb082ee32b7ff019b9767212c88cb8df1781cea` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3c5249843f558024586759b4e1dcc05f95b84be3` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3da36a4c86ed9a4ce6408838128c50eb05df43b1` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3dfebfc084da9c8749ef06839f399867c3448fdd` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3e3a4df55be28919b9cfc1f6f7cf57db92165506` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x3ea93cc48fdcd18468e7f8171f7579a74a08652c` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x4069a3f38d76190bc2af5324a2a0efa81bc52d3c` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x41b01ce4e72a1d1aa2bbb7a88030ca92f5933d19` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x421927a662609698adbeeb752fda1ae55ef011f1` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x42448f31de1de7f1f75e0dfd4815f03b0b6acd4f` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x42b82586c4a1e5e0bfe99356916d5c1fb82d0926` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x43752b1046decda948c7b34c4c4417beb619a9eb` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x43dd12b65130e03a28208691192809b58c814ccc` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x4419a7f7e89a91d7e44c81645fa08a5194234e9d` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |
| berachain | unverified unclassified | UnnamedContract<br>`0x4487ec9c11dc6b6a0c0d70b19334fa1651bf778f` | non_address_book | unknown | unknown | unverified | n/a | `0xc4a104d658d99e5c61767555b1ae6119114ccaaa` |

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
| Beraborrow_Report.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Cantina_Beraborrow.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | InfraredVault | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | ValidatorPool | own contract | ValidatorPool (selected) `0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | DenManager | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95fecd6e106808636c767e5c6f8b92dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3964ed09e9570ce47b56e2d831d503db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | FeeReceiver | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Beraborrow_Update.pdf | BPTStableFeed | unmatched — not counted | — | listed in scope | no |
| Sherlock_Beraborrow_Update.pdf | BPTWeightedFeed | unmatched — not counted | — | listed in scope | no |
| Sherlock_Beraborrow_Update.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| CDP protocol private audit Halborn .pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| CDP protocol private audit Halborn .pdf | MultiCollateralHintHelpers | own contract | 0x4a91b9… (selected) `0x4a91b96a615d133e4196655bc1735430ec97a391` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BeraborrowCore | own contract | BeraborrowCore (selected) `0x12347caf4300b1c4a9bf0ae7de2531a2bcfb93e9` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BeraborrowMath | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | DenManagerGetters | own contract | 0xfa7908… (selected) `0xfa7908287c1f1b256831c812c7194cb95bb440e6` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| CDP protocol private audit Sherlock.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| CDP protocol public audit competition Sherlock.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | DenManager | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | Factory | own contract | Factory (selected) `0x8c2bc6ed330ce174c27487cc1ea15ba2ace4d3be` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | GasPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | MetaBeraborrowCore | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc84330b1b3787816de2daca485d305c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | SortedDens | own contract | SortedDens (selected) `0x312711c156a8808d1bfb09c7d0ca3a553affc3e6` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | UpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BoycoVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PSMBond | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3964ed09e9570ce47b56e2d831d503db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | DenManagerGetters | own contract | 0xfa7908… (selected) `0xfa7908287c1f1b256831c812c7194cb95bb440e6` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | LiquidStabilityPoolGetters | own contract | 0xf85196… (selected) `0xf8519658cff16fa095a8bceb3dcc576d94399e32` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | MultiCollateralHintHelpers | own contract | 0x4a91b9… (selected) `0x4a91b96a615d133e4196655bc1735430ec97a391` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| CDP protocol public audit competition Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | LSPOracle | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | ValidatorPool | own contract | ValidatorPool (selected) `0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | InfraredCollateralVault | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | PermissionlessPSM | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3f96dcbfccf3c1d0603e76356775b5afd2e` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | InfraredVault | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | ValidatorPool | own contract | ValidatorPool (selected) `0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | DenManager | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3964ed09e9570ce47b56e2d831d503db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | FeeReceiver | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95fecd6e106808636c767e5c6f8b92dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | BaseCollateralVault | unmatched — not counted | — | Listed in scope and findings (H-01, M-03, M-05, Q-05) | no |
| Invariant Testing CDP protocol Recon.pdf | USDCVault | unmatched — not counted | — | Used in POC for H-01 | no |
| Invariant Testing CDP protocol Recon.pdf | PSMBond | unmatched — not counted | — | Listed in H-02 and Q-03 | no |
| Invariant Testing CDP protocol Recon.pdf | PythWrapper | unmatched — not counted | — | Listed in H-03 | no |
| Invariant Testing CDP protocol Recon.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc84330b1b3787816de2daca485d305c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | InfraredCollateralVault | unmatched — not counted | — | Listed in M-03, I-01 | no |
| Invariant Testing CDP protocol Recon.pdf | bHONEYVault | unmatched — not counted | — | Listed in M-06 | no |
| Invariant Testing CDP protocol Recon.pdf | PollenToken | unmatched — not counted | — | Listed in Q-02 | no |
| Invariant Testing CDP protocol Recon.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| BoycoVault private audit Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Cantina.pdf | BoycoVault | unmatched — not counted | — | mentioned in findings and context | no |
| BoycoVault private audit Cantina.pdf | PSMBond | unmatched — not counted | — | mentioned in findings | no |
| BoycoVault private audit Cantina.pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Cantina.pdf | DenManager | unmatched — not counted | — | mentioned in findings | no |
| BoycoVault private audit Cantina.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca8f3bb099a76d4ec713a2c2aacb3d8e84b9` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Periphery and feeds extension private audit Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619ffaefde17f7e54f850fe90ad5ee44dbf47` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| needs_review | 674 |

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
