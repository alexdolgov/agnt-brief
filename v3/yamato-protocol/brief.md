# Agentic Audit Brief: Yamato Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Yamato Protocol (`yamato-protocol`)
- Website: [https://app.yamato.fi/#/](https://app.yamato.fi/#/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 76 unique implementations (123 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,058,179.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yamato Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 3 core, 1 infra, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (1), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: erc20 (2), erc20permit (2), erc1967proxy (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CJPY (`0x1cfa5641c01406ab8ac350ded7d735ec41298372`, chain 1)
- ERC1967Proxy (`0x02fe72b2e9ff717ebf3049333b184e9cd984f257`, chain 1)
- veYMT (`0x9e3ce75131bd03ef6ea79e5ed68e889cc9b66a0c`, chain 1)
- YMT (`0x0f4fc7d24f28c4373097733aae53f0025d4c9c09`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 72 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 27
- Confirmed-live implementations: 4 of 76 unique; 72 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/59
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 76
- Raw deployments: 123
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockApex | Tier 2 | 3 | 5.1% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| veYMT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262585 | `0x9e3ce75131bd03ef6ea79e5ed68e889cc9b66a0c` | ✅ Audited |
| YamatoV4 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262587 | 2 deployments: ethereum `0x02fe72b2e9ff717ebf3049333b184e9cd984f257`; ethereum `0x0bfa59f9fbe9565c240cd64311c86e90e59a4838` | ✅ Audited |
| YMT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262582 | `0x0f4fc7d24f28c4373097733aae53f0025d4c9c09` | ✅ Audited |

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CJPY | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262583 | `0x1cfa5641c01406ab8ac350ded7d735ec41298372` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x254b8d016463966f178e523a7b8ff669bb18db1a`; ethereum `0x612a7db2167e5886cbb8a6e4e275c4ef39dfb49e`; ethereum `0x89610bdba222a3e219b65f885d5e07aec8ece558`; ethereum `0xc617997be4a5676f60e4fd1744c560c047a2ecb6`; ethereum `0xd0e5a7cf47128d5779e6d9c92011db9a888442fc` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d458530da3c4a4f0ed26bec5e6cde6ad0b7ac4` | ⚠️ Unaudited |
| CurrencyOSV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85cb27b3720d6ec23bb99b3378e6cb5c1418acd` | ⚠️ Unaudited |
| CurrencyOSV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x811ce73639a05f436a56ea71480cd921a4039542`; ethereum `0xe69c6bf0a6ea2f12abe054988a3e2091a8a3784f` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x592878b920101946fb5915ab97961bc546f211cc` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90a01242c2966ee761c130a260ceb9d9a793b5f` | ⚠️ Unaudited |
| DistributorReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x17e0a06efe428be9f052973057f3128bead49c0a`; ethereum `0x3d095553fe2a3b138b31f9d47a26e2adf340c6a5` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3ee0952314739e2c4270f0ece989cf73f5891243`; ethereum `0xe48acbc3cf4b833b4df248296ba0ac8af20fa44a` | ⚠️ Unaudited |
| FeeDistributorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d99bfc6367add8b199fa530168dcd893317a0c9`; ethereum `0x1d3d353382540ce14ec850d0920648d9ceb8eebf` | ⚠️ Unaudited |
| FeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x03b24fa2e286e26d98deef4eb58d33f16748168a`; ethereum `0x9823e00b87367bb7b461bd5ec22dc1eb0064c869`; ethereum `0xf99e78dd0ca08c31d712521c2c75e85c91408924` | ⚠️ Unaudited |
| FeePoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x070877ae8297725e53c9fbf649afb5093d6582bf`; ethereum `0x290e5684c47b6dc42c67ec0870b74fae16204c3c` | ⚠️ Unaudited |
| GaugeControllerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x54cc8fceffb8bb908baac0cc6aa61b39963e6b44`; ethereum `0xc1a82ff719d4e3dec1a96dfea4ecb8f292346722` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x16c95aa72248c2dbef4c496bd19a85d9a0599724`; ethereum `0x47affd2fc543880ade70632c1ad812667ce6babf`; ethereum `0x997d45e40e021f5d5835241edd447a56eb297e8b`; ethereum `0xa55b5674711487752885f0f00ae32c9e3cc6dd13`; ethereum `0xadc2f69d62223cffcae4ab6e18aaee3738fa6360`; ethereum `0xb694418f96d59bba9910d6da661dcd610837cec8`; ethereum `0xe2854ac6d69bc1265b49ba1dd7c2907c31620636`; ethereum `0xe9b683341483a98789dc6183e57d7255fbf743fb` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2bf8b07e41572fb09d9f002b2500e3eedc5d7922`; ethereum `0xf667e359bb5c33399d7d5116daa2c69ab4f0544a` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x34acede456e3b79aecd23ac5582125d964f68e1a`; ethereum `0xaa59f501c92092e624d30cff77eaff5ea4e7bfa2` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3e7d9c4a4ef4d9e1f36156a4d3e009d500d26954`; ethereum `0x7a997e2d7c84abb219832d944141de210e2840e1` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5f3321e56020e30f0a9eb5fe1a5c36e005074780`; ethereum `0xe0e2d860797ef02f18c474847787a6c8f8389044` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x68cbe77063dbcf7de7f59cd8c0051e0b2a23bf75`; ethereum `0x8badedcce21070c59cb4031f4d61c1699b811ab0` | ⚠️ Unaudited |
| LinearVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188a9a506686d1b8dd475d7bf6fdba9ea26fcdbe` | ⚠️ Unaudited |
| MainnetBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7d5a4af7dfb3bd265bfb0153254d91c2ee4e47b9`; ethereum `0x8a140f95ce959d5ebc6e8945636716c1a9e4700e` | ⚠️ Unaudited |
| MinterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5d0da8882f95dc27eba915f3ea266bcc3d6bade4`; ethereum `0x803935ec52044c6ac3e0f6e0bb0a2be57249c9da` | ⚠️ Unaudited |
| MultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96cf272b16d3aec1933b593b25e3c60f173390ee` | ⚠️ Unaudited |
| MultiTransfers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca078e865792904ab6ce51447c74a997a10311c1` | ⚠️ Unaudited |
| PledgeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x25026b8e547500c57ba63596de177da0808aad07`; ethereum `0x364c7fe685d241d22de8f4aeaeda1443fe464b69`; ethereum `0xfd5fca2f1c9e47e88d0f2defe526439c6ece86bf` | ⚠️ Unaudited |
| PND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fff1443cb859e17e9a6786f7e24c369f22fd002` | ⚠️ Unaudited |
| PoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d6cdade756ce8eec74c2037bb88323f8d6638ea`; ethereum `0x9c1f0e3d4bd4a513721c028e1d4610cd17745f0b` | ⚠️ Unaudited |
| PriceFeedV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f4e4dad0ac01da50a774f3389b70506c96fff2f`; ethereum `0x7d8b9ebfc8bb3d42099cd8cd86b4376e49df3275` | ⚠️ Unaudited |
| PriorityRegistryV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c9bdf09de9eacbe692db2c17a75bfdb5ff4190b`; ethereum `0xac9f416e9ec659319c2be9421e2b3eb3df019d2d` | ⚠️ Unaudited |
| RewardGaugeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x772b86f1afa923908ba8e8f27e8acba6a01b1118`; ethereum `0xb075e39594c3c4b397e11c537ae4e5d18235ef10` | ⚠️ Unaudited |
| ScoreRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x02f2ceb46aa1b499ba0df22e55d6e97e73aefbeb`; ethereum `0x683da00a929c983a2d92c49a68fdc89c9506b3b7`; ethereum `0x85d813a9c5e51825f596de41fafa13285cb36abe` | ⚠️ Unaudited |
| ScoreWeightController | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x6f2d29dfb597fcddce8f85c671fcc332196f63e4`; ethereum `0x9e6e3257956bec140deded09094a16a8a4d769d4`; ethereum `0xcb0c89ffeb38d5d52be51fa37ce369aa7dffecee` | ⚠️ Unaudited |
| Standard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df8b693bb67093838c13e841fe3424b4f7ed3ef` | ⚠️ Unaudited |
| TemplateV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x526b335a114fda6caefa8f74a32d874fb8b0d646`; ethereum `0x59884000f564d752e89f6a2e0f77e3cacdd0ed1d` | ⚠️ Unaudited |
| TemplateV1_5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cfb70dd50baa538bfcd1749f56e8ae0563c96f1` | ⚠️ Unaudited |
| TemplateYMWKWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f651aab647411b7a621ea5d4919215591a11b1c` | ⚠️ Unaudited |
| veYMT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf13fa0c3564db9b2aa8a0651d05f96e5af3cb016` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168c2f7d4924bd6e4282f7edbb0cfdcca1c7d113` | ⚠️ Unaudited |
| YamatoBorrower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7edfd33fc389c9b9c0e3350ac618912053cb4cc1` | ⚠️ Unaudited |
| YamatoBorrowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb469db779832a36cdbb092faf1950c75803621d2`; ethereum `0xf63271eefc761dcace3d22137b513941dc8dba54` | ⚠️ Unaudited |
| YamatoDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe24ab7bf7885acde4343b0ce90d79d1623aa69` | ⚠️ Unaudited |
| YamatoDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf421237f7651787153511fdf0ca6d8de8ad0ae33` | ⚠️ Unaudited |
| YamatoDepositorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x011d338006b3c189aa4e86a8703114e2c82b9881`; ethereum `0x511b45d7ce2a0345b2ae8e9386956d59e32b5937` | ⚠️ Unaudited |
| YamatoRedeemerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97150fbfc8819e712999cf0609e58e3ca0a5f60d` | ⚠️ Unaudited |
| YamatoRedeemerV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x04983321d9f61de47ed5bcc3b20bef638c1d8e81`; ethereum `0xd869dd57566daf8f160090fc0f3ff362f953a019` | ⚠️ Unaudited |
| YamatoRepayerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x955b82f4dd992a75d454265ed9337036d881bb88` | ⚠️ Unaudited |
| YamatoRepayerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9ab920c44c0bc5b8afc4437c004d985364aedae8`; ethereum `0xac235ba57513c8392014d62638b9946191e6cfe8` | ⚠️ Unaudited |
| YamatoSweeperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a7619e0cac10847279d17c43cc6bbbda413389` | ⚠️ Unaudited |
| YamatoSweeperV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x528406c3ec81dc030798246f70df999d6831ec27`; ethereum `0x91dc6c1463889d90dcb6cc8629e9db6b20bd253c` | ⚠️ Unaudited |
| YamatoV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7cdec9c2485ead231d9184ea650439b42f9da7` | ⚠️ Unaudited |
| YamatoWithdrawerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1988b06eae3a742f3128f6e65fa50efe594a45ea` | ⚠️ Unaudited |
| YamatoWithdrawerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5d1094ef89179b87e4852df7ccc9b43d2b36ecc4`; ethereum `0x84c854552ef439ad28a25d328156a05c2e197505` | ⚠️ Unaudited |
| YMT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a232b18e26b6c84573c1aa118916bdbfb16f20e` | ⚠️ Unaudited |
| YmtMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x7d70597d468c7553f793eedafd87ddbd87d43fff`; ethereum `0x81930e8b36079cc3e7a64bbbc25296fd1d29529a`; ethereum `0xbf86a00778c414d6e3a2287bf298caf2f400f516` | ⚠️ Unaudited |
| YmtVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ed64bf0764202be868b5df2deda467ae12c925f`; ethereum `0x6d66765f18af1ca307e0cfd6ad01afed6b05ebae` | ⚠️ Unaudited |
| YMWK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15dac05c93e1c5f31a29547340997ba9f6ec4f87` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12318f2b350f93605b75a557faa501adb3f6112b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2170f35f6370c8bb82379a31fea35b8b39c97b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296ec37bff10cd73fc606136dfa675efc1a9c3b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2eaa420127cbdd6151f1f17ba50d2479604cb469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b4040947a670f4b96565257ed3146325b33add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d1e11ecac91edf0cab4b371e3075f252bee10c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9c83b0d06defa7fec8a73a79de43a48c15b64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x565b10180bbfa8ec228f2764057862b54e1e6dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bed97aaff71fdb17533a940e052712f07f1363c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817ffe93f1258383dd1a42900ca02106644af9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a979cb9ffc9eda421a9ee7a2fd9d89430cc907f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5398c3bfeeea44b52537795749ddec3ba8ca550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb4025015bcb374820ee04e9907d30ef39cf4e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c89ef9b3035adda0a6d5b81e32f2594930500d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf9b0f618444b0b7bf1b3fad479d16996a31e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18035ece77a7fd23f52d54711a53fc53e7700ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf48ac47f8090d600819e3906d8b8b804ef36e1fe` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 100
- Live contracts: 2
- Unknown liveness contracts: 98
- Source-verified contracts: 98
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=29, contamination review=11, source verified unclassified=57, unverified unclassified=2

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | currently scope matched | ERC1967Proxy<br>`0x02fe72b2e9ff717ebf3049333b184e9cd984f257` | project_anchor | unknown | live | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | CurrencyOSV2<br>`0xe85cb27b3720d6ec23bb99b3378e6cb5c1418acd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | CurrencyOSV3<br>`0x811ce73639a05f436a56ea71480cd921a4039542` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | ERC1967Proxy<br>`0x0c9bdf09de9eacbe692db2c17a75bfdb5ff4190b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | ERC1967Proxy<br>`0x3f4e4dad0ac01da50a774f3389b70506c96fff2f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | ERC1967Proxy<br>`0x9c1f0e3d4bd4a513721c028e1d4610cd17745f0b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | PledgeLib<br>`0x25026b8e547500c57ba63596de177da0808aad07` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | PledgeLib<br>`0x364c7fe685d241d22de8f4aeaeda1443fe464b69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | PledgeLib<br>`0xfd5fca2f1c9e47e88d0f2defe526439c6ece86bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | PoolV2<br>`0x2d6cdade756ce8eec74c2037bb88323f8d6638ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | PriceFeedV3<br>`0x7d8b9ebfc8bb3d42099cd8cd86b4376e49df3275` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | PriorityRegistryV6<br>`0xac9f416e9ec659319c2be9421e2b3eb3df019d2d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | ScoreRegistry<br>`0x02f2ceb46aa1b499ba0df22e55d6e97e73aefbeb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | veYMT<br>`0xf13fa0c3564db9b2aa8a0651d05f96e5af3cb016` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoBorrower<br>`0x7edfd33fc389c9b9c0e3350ac618912053cb4cc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoBorrowerV2<br>`0xf63271eefc761dcace3d22137b513941dc8dba54` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoDepositor<br>`0x3fe24ab7bf7885acde4343b0ce90d79d1623aa69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoDepositorV2<br>`0xf421237f7651787153511fdf0ca6d8de8ad0ae33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoDepositorV3<br>`0x011d338006b3c189aa4e86a8703114e2c82b9881` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoRedeemerV4<br>`0x97150fbfc8819e712999cf0609e58e3ca0a5f60d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoRedeemerV5<br>`0xd869dd57566daf8f160090fc0f3ff362f953a019` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoRepayerV2<br>`0x955b82f4dd992a75d454265ed9337036d881bb88` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoRepayerV3<br>`0x9ab920c44c0bc5b8afc4437c004d985364aedae8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoSweeperV2<br>`0x01a7619e0cac10847279d17c43cc6bbbda413389` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoSweeperV3<br>`0x91dc6c1463889d90dcb6cc8629e9db6b20bd253c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoV3<br>`0xdc7cdec9c2485ead231d9184ea650439b42f9da7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoV4<br>`0x0bfa59f9fbe9565c240cd64311c86e90e59a4838` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoWithdrawerV2<br>`0x1988b06eae3a742f3128f6e65fa50efe594a45ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YamatoWithdrawerV3<br>`0x84c854552ef439ad28a25d328156a05c2e197505` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | candidate review | YMT<br>`0x4a232b18e26b6c84573c1aa118916bdbfb16f20e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | CometExt<br>`0x254b8d016463966f178e523a7b8ff669bb18db1a` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | CometRewards<br>`0xa1d458530da3c4a4f0ed26bec5e6cde6ad0b7ac4` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | Distributor<br>`0xa90a01242c2966ee761c130a260ceb9d9a793b5f` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | Kompu<br>`0x16c95aa72248c2dbef4c496bd19a85d9a0599724` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | LinearVesting<br>`0x188a9a506686d1b8dd475d7bf6fdba9ea26fcdbe` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | MainnetBulker<br>`0x7d5a4af7dfb3bd265bfb0153254d91c2ee4e47b9` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | MultiTransfers<br>`0xca078e865792904ab6ce51447c74a997a10311c1` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | Standard<br>`0x3df8b693bb67093838c13e841fe3424b4f7ed3ef` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | TemplateV1<br>`0x526b335a114fda6caefa8f74a32d874fb8b0d646` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | TemplateV1_5<br>`0x7cfb70dd50baa538bfcd1749f56e8ae0563c96f1` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | contamination review | TemplateYMWKWithdraw<br>`0x3f651aab647411b7a621ea5d4919215591a11b1c` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | CometExt<br>`0x612a7db2167e5886cbb8a6e4e275c4ef39dfb49e` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | CometExt<br>`0x89610bdba222a3e219b65f885d5e07aec8ece558` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | CometExt<br>`0xc617997be4a5676f60e4fd1744c560c047a2ecb6` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | CometExt<br>`0xd0e5a7cf47128d5779e6d9c92011db9a888442fc` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | DistributorReceiver<br>`0x17e0a06efe428be9f052973057f3128bead49c0a` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x04983321d9f61de47ed5bcc3b20bef638c1d8e81` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x070877ae8297725e53c9fbf649afb5093d6582bf` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x0d99bfc6367add8b199fa530168dcd893317a0c9` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x511b45d7ce2a0345b2ae8e9386956d59e32b5937` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x528406c3ec81dc030798246f70df999d6831ec27` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x5d0da8882f95dc27eba915f3ea266bcc3d6bade4` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x5d1094ef89179b87e4852df7ccc9b43d2b36ecc4` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x683da00a929c983a2d92c49a68fdc89c9506b3b7` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x6f2d29dfb597fcddce8f85c671fcc332196f63e4` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x772b86f1afa923908ba8e8f27e8acba6a01b1118` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x7d70597d468c7553f793eedafd87ddbd87d43fff` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x85d813a9c5e51825f596de41fafa13285cb36abe` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xac235ba57513c8392014d62638b9946191e6cfe8` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xb469db779832a36cdbb092faf1950c75803621d2` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xbf86a00778c414d6e3a2287bf298caf2f400f516` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xc1a82ff719d4e3dec1a96dfea4ecb8f292346722` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xcb0c89ffeb38d5d52be51fa37ce369aa7dffecee` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xe69c6bf0a6ea2f12abe054988a3e2091a8a3784f` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Factory<br>`0x3ee0952314739e2c4270f0ece989cf73f5891243` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Factory<br>`0xe48acbc3cf4b833b4df248296ba0ac8af20fa44a` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | FeeDistributorV1<br>`0x1d3d353382540ce14ec850d0920648d9ceb8eebf` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | FeePool<br>`0x03b24fa2e286e26d98deef4eb58d33f16748168a` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | FeePool<br>`0x9823e00b87367bb7b461bd5ec22dc1eb0064c869` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | FeePool<br>`0xf99e78dd0ca08c31d712521c2c75e85c91408924` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | FeePoolV2<br>`0x290e5684c47b6dc42c67ec0870b74fae16204c3c` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | GaugeControllerV1<br>`0x54cc8fceffb8bb908baac0cc6aa61b39963e6b44` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0x34acede456e3b79aecd23ac5582125d964f68e1a` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0x3e7d9c4a4ef4d9e1f36156a4d3e009d500d26954` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0x47affd2fc543880ade70632c1ad812667ce6babf` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0x5f3321e56020e30f0a9eb5fe1a5c36e005074780` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0x8badedcce21070c59cb4031f4d61c1699b811ab0` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0x997d45e40e021f5d5835241edd447a56eb297e8b` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0xa55b5674711487752885f0f00ae32c9e3cc6dd13` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0xadc2f69d62223cffcae4ab6e18aaee3738fa6360` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0xb694418f96d59bba9910d6da661dcd610837cec8` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0xe2854ac6d69bc1265b49ba1dd7c2907c31620636` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0xe9b683341483a98789dc6183e57d7255fbf743fb` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | Kompu<br>`0xf667e359bb5c33399d7d5116daa2c69ab4f0544a` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | MainnetBulker<br>`0x8a140f95ce959d5ebc6e8945636716c1a9e4700e` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | MinterV1<br>`0x803935ec52044c6ac3e0f6e0bb0a2be57249c9da` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | MultiplicativePriceFeed<br>`0x96cf272b16d3aec1933b593b25e3c60f173390ee` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | PND<br>`0x5fff1443cb859e17e9a6786f7e24c369f22fd002` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | RewardGaugeV1<br>`0xb075e39594c3c4b397e11c537ae4e5d18235ef10` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | ScoreWeightController<br>`0x9e6e3257956bec140deded09094a16a8a4d769d4` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | TemplateV1<br>`0x59884000f564d752e89f6a2e0f77e3cacdd0ed1d` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x2bf8b07e41572fb09d9f002b2500e3eedc5d7922` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x68cbe77063dbcf7de7f59cd8c0051e0b2a23bf75` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x7a997e2d7c84abb219832d944141de210e2840e1` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0xaa59f501c92092e624d30cff77eaff5ea4e7bfa2` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0xe0e2d860797ef02f18c474847787a6c8f8389044` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | YmtMinter<br>`0x81930e8b36079cc3e7a64bbbc25296fd1d29529a` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | source verified unclassified | YmtVesting<br>`0x6d66765f18af1ca307e0cfd6ad01afed6b05ebae` | non_address_book | unknown | unknown | verified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5398c3bfeeea44b52537795749ddec3ba8ca550` | non_address_book | unknown | unknown | unverified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf48ac47f8090d600819e3906d8b8b804ef36e1fe` | non_address_book | unknown | unknown | unverified | n/a | `0xdb951423188b9cbe6293937edb2303dcecfe559c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Yamato Protocol Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit.pdf) | BlockApex | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Yamato Protocol Final Audit (Extended).pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit%20(Extended).pdf) | BlockApex | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Yamato Protocol V2 - Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20V2%20-%20Final%20Audit.pdf) | BlockApex | Audit | 2024-08 | aging | Direct | n/a | matched | 3 | 1 | 0 | 11 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3069] Yamato Protocol Final Audit.pdf — no match: Extracted contract names from findings and informatory sections; audit date from 'Final Audit Completed: Sep 5th, 2022'.
- [3070] Yamato Protocol Final Audit (Extended).pdf — no match: Main contract PriceFeedV3 and interfaces IPriceFeedV3, IPriceFeedFlexV3, IPriorityRegistryFlexV6, IPriorityRegistryV6 are in scope. Audit date from 'Final Audit (Fixed): July 24th, 2023'.
- [3071] Yamato Protocol V2 - Final Audit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Yamato Protocol Final Audit.pdf | Currency | unmatched — not counted | — | Critical-risk issue 1 | no |
| Yamato Protocol Final Audit.pdf | UUPSBase | unmatched — not counted | — | High-risk issue 2 | no |
| Yamato Protocol Final Audit.pdf | PoolV2 | unmatched — not counted | — | Medium-risk issue 3 | no |
| Yamato Protocol Final Audit.pdf | YamatoDepositorV2 | unmatched — not counted | — | Medium-risk issues 4 and 5 | no |
| Yamato Protocol Final Audit.pdf | PledgeLib | unmatched — not counted | — | Low-risk issue 6 | no |
| Yamato Protocol Final Audit.pdf | YamatoWithdrawerV2 | unmatched — not counted | — | Low-risk issues 7 and 12 | no |
| Yamato Protocol Final Audit.pdf | YamatoRedeemerV4 | unmatched — not counted | — | Low-risk issues 8 and 9 | no |
| Yamato Protocol Final Audit.pdf | Ownable | unmatched — not counted | — | Low-risk issue 11 | no |
| Yamato Protocol Final Audit.pdf | YamatoStore | unmatched — not counted | — | Low-risk issue 11 and informatory | no |
| Yamato Protocol Final Audit.pdf | YamatoBase | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | YamatoV3 | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | PriorityRegistryV6 | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | PriceFeedV2 | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | CurrencyOSV2 | unmatched — not counted | — | Informatory: Mark Function Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | YamatorRepayerV2 | unmatched — not counted | — | Informatory: In YamatorRepayerV2.sol | no |
| Yamato Protocol Final Audit (Extended).pdf | PriceFeedV3 | unmatched — not counted | — | listed in scope and findings | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriceFeedV3 | unmatched — not counted | — | listed in scope and findings | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriceFeedFlexV3 | unmatched — not counted | — | mentioned in system architecture | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriorityRegistryFlexV6 | unmatched — not counted | — | mentioned in system architecture | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriorityRegistryV6 | unmatched — not counted | — | mentioned in system architecture | no |
| Yamato Protocol V2 - Final Audit.pdf | CurrencyOSV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | FeePoolV2 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | ScoreRegistry | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | ScoreWeightController | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YMT | own contract | YMT (selected) `0x0f4fc7d24f28c4373097733aae53f0025d4c9c09` — deployed 2025-05-26 14:42:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yamato Protocol V2 - Final Audit.pdf | YamatoBorrowerV2 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoDepositorV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoRedeemerV5 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoRepayerV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoSweeperV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoV4 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x02fe72b2e9ff717ebf3049333b184e9cd984f257` — deployed 2023-07-27 04:06:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yamato Protocol V2 - Final Audit.pdf | YamatoWithdrawerV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YmtMinter | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | veYMT | own contract | veYMT (selected) `0x9e3ce75131bd03ef6ea79e5ed68e889cc9b66a0c` — deployed 2025-05-26 14:43:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1cfa5641c01406ab8ac350ded7d735ec41298372` | CJPY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Zero-match audit list:

- [3069] Yamato Protocol Final Audit.pdf
- [3070] Yamato Protocol Final Audit (Extended).pdf

Fork inheritance lineage and inherited audits are included when available.
