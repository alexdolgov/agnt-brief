# Agentic Audit Brief: Opyn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Opyn (`opyn`)
- Website: [https://www.opyn.co](https://www.opyn.co)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, ethereum, polygon
- Contract surface: 290 unique implementations (374 raw deployments)
- Coverage basis: 2/9 confirmed own live verified implementations (22.2%); conservative 22.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,501,501.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Opyn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across arbitrum, avalanche, ethereum, polygon. Structural roles: 10 unclassified, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: unclassified (10), core (2)
- Contract kinds: contract (12)
- Detected standards: none
- Frameworks: openzeppelin (2), foundry (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 49 contracts are derived from known codebases. 49 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0890e86f880ed85cf821a448e707d47715dd4378`, chain 1)
- UnnamedContract (`0x11ac0c63d64cdd95c593322b8381aaff9c086a04`, chain 1)
- UnnamedContract (`0x1e31f2dcbad4dc572004eae6355fb18f9615cbe4`, chain 1)
- UnnamedContract (`0x27a8ee0eb39aee580490da00ab60ecfab2a02c40`, chain 1)
- UnnamedContract (`0x2d483f9a49dc31471f3bb50b8ebf097e3ec06f8c`, chain 1)
- UnnamedContract (`0x30b3059b1e870203aef55b071110b49b22341fc6`, chain 1)
- UnnamedContract (`0x32485c33378a1a866c0bd2085bf622ab2784cfef`, chain 1)
- UnnamedContract (`0x3923ae26fcc641bfbdbbeb37fd31420597954bfb`, chain 1)
- UnnamedContract (`0x3b43044cb8b0171290eb87c80b15d132b09e9e84`, chain 1)
- UnnamedContract (`0x3c0638bb4b2bec6d89c09ab4a7f9e21e4586189b`, chain 1)
- UnnamedContract (`0x45fdc9ccbb385c6c921f7085b91edecbb5cfa95a`, chain 1)
- UnnamedContract (`0x4661951d252993afa69b36bcc7ba7da4a48813bf`, chain 1)
- UnnamedContract (`0x4ccc2339f87f6c59c6893e1a678c2266ca58dc72`, chain 1)
- UnnamedContract (`0x5934807cc0654d46755ebd2848840b616256c6ef`, chain 1)
- UnnamedContract (`0x733171b59ed3839481cd0066076de2c3404ee66a`, chain 1)
- UnnamedContract (`0x7c06792af1632e77cb27a558dc0885338f4bdf8e`, chain 1)
- UnnamedContract (`0x7c91794b65eb573c3702229009acd3cde712146d`, chain 1)
- UnnamedContract (`0x8f7dd610c457fc7cb26b0f9db4e77581f94f70ac`, chain 1)
- UnnamedContract (`0x908fa5e6f8e997c32a15ebdbe7377a5a4321918c`, chain 1)
- UnnamedContract (`0xa0647d32dea8bf50bb4cc6d96a91f9f2bbe43efd`, chain 1)
- UnnamedContract (`0xa5ea18ac6865f315ff5dd9f1a7fb1d41a30a6779`, chain 1)
- UnnamedContract (`0xab8724a8b7aa145863382fe075bbc325145c1e6b`, chain 1)
- UnnamedContract (`0x1f89774f01a2786bcccfba9af92e53b0b43c743e`, chain 137)
- UnnamedContract (`0x30ae5debc9edf60a23cd19494492b1ef37afa56d`, chain 137)
- UnnamedContract (`0x4b119a1198915612ff568f283f1931349297eef6`, chain 137)
- UnnamedContract (`0x5c16b2fae97ab59814f34632202d7de69c45c057`, chain 137)
- UnnamedContract (`0x7a1d9aa191ad4e5bc337b2c7eb50229391c00fd0`, chain 137)
- UnnamedContract (`0x7a23c712bddde52b22d8ff52e4cdadb1bcb0b203`, chain 137)
- UnnamedContract (`0x9e435a5cb48aee2c156a8e541ee645e1c171d012`, chain 137)
- UnnamedContract (`0xa87ecdaea486bb0baeeb77ff0630364772a6bbfe`, chain 137)
- UnnamedContract (`0xb03036798511912359edfff10c54e29db718f658`, chain 137)
- UnnamedContract (`0xc7a02ef0afb8b5d57a3f2ebef7560320539b8fa3`, chain 137)
- UnnamedContract (`0xc88bd7ed473b7f6f10e71894c66ebebd467eba93`, chain 137)
- UnnamedContract (`0xedd70e045903d34fba7302b5094d37eaceb1397c`, chain 137)
- UnnamedContract (`0x4d3a52a0e98144caf46ac226d83e8f144b5c654d`, chain 42161)
- UnnamedContract (`0x52b93393be3600d489c7d3aa74f78516713cd40a`, chain 42161)
- UnnamedContract (`0x63d8d20606c048b9b79a30ea45ca6787f8aeb051`, chain 42161)
- UnnamedContract (`0x7a1e6f0f07ee2ddde14cd4b8eb582bad065357c5`, chain 42161)
- UnnamedContract (`0x91332064b2ab742efbb0ee416895dffb5fa85053`, chain 42161)
- UnnamedContract (`0x9a33230f59cc7cc9a084e0098a2b2934fc7bf7c0`, chain 42161)
- UnnamedContract (`0xb8f0ac1ab70643ebe8103db3618ea5ed6901b458`, chain 42161)
- UnnamedContract (`0xc9f007d6f0aa2b6c5f0e4c0ff79273227c2100a9`, chain 42161)
- UnnamedContract (`0xcfbaaf567b7b64bf129f02db7360ecd795b67f4a`, chain 42161)
- UnnamedContract (`0xee30f92cc9bf896679567d1acd551f0e179756fc`, chain 42161)
- UnnamedContract (`0x17300f7e8f061b84ebd795d7a224e2875734b11b`, chain 43114)
- UnnamedContract (`0x5eb6782b62bae3801332214a3b0d26eaf8ca2c45`, chain 43114)
- UnnamedContract (`0x9e3b94819aaf6de606c4aa844e3215725b997064`, chain 43114)
- UnnamedContract (`0xc8698bee361b479de6683f34883798ef34e29873`, chain 43114)
- StakedaoPricer (`0xaf751edcbb35beb33c945bd625eb008cd37b35d3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (10 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 58/68 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/9 (22.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 57 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 222 discovered implementations shown in the inventory but excluded from coverage (11 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 58 of 290 unique; 232 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/53
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 237
- Unique implementations: 290
- Raw deployments: 374
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 22.2% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 2 | 3.8% | 2021-05 |
| Akira | Tier 2 | 1 | 1.9% | 2021-08 |
| OpenZeppelin | Tier 1 | 1 | 1.9% | 2020-11 |
| PeckShield | Tier 2 | 1 | 1.9% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Controller | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250473 | `0xeadf3d94b902c06c13a2e64b223b1df5057aa23d` | ✅ Audited |
| MarginCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250434 | `0xfaa67e3736572645b38af7410b3e1006708e13f4` | ✅ Audited |

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ABDKMath64x64 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21a8d15322c257abd2b22a56edde758398be0f32`; ethereum `0x64187ae08781b09368e6253f9e94951243a493d5` | ⚠️ Unaudited |
| AddressBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: avalanche `0x27d60b89e1a104cef79b3e40ead1374bb75ac87d`; avalanche `0x3ab3ff5501e900f81b6c6a7c556391d155cba7b6`; avalanche `0x58d6bd9c46a98608a328178f154b585e79e40854`; avalanche `0x5a2e8777c72dd59f24b4221a2eeac5c68e94e9a6`; avalanche `0x63e48ae3b63a6cf2b749379dc5d468db5dbe7310`; avalanche `0x8b5bffcbd5a9170839fe27f5d75915de847aa0eb`; avalanche `0xac289a6ac2ddc56f5acde4cff5f3a3174d481ed4`; avalanche `0xef3b91345dd7be2c5c1f95c40545e9bf274ee698` | ⚠️ Unaudited |
| AddressBook | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250469 | `0xbca124824326cf8abc5e2e569fff3a6f17110510` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x1e5341cb798864e2f979d4679de35646d9fbdb5c`; avalanche `0x4375e9b9a0edf950897a0c4d21ada6ce874dc234`; avalanche `0x62e04b116fcaa9731ede396b85ba190852bc05e4`; avalanche `0xabd2a94dbcb8dcf8f40413b8174a4e3452f567dc`; avalanche `0xafe24b15ced56c7b99fe8f272100764c8df3b1c7`; avalanche `0xee5b96b402bf853a6f1308739b019b269994785c` | ⚠️ Unaudited |
| AllowListOffChainManaged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ae9b340a98085d0fc25ae98a5eb704ba08e0df8` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0x7c19858f2f317ccf413b3046c2bed49f346b7d0f`; ethereum `0xcc2fd280a669a4453b30b5e72871ad3e2a2663d0`; avalanche `0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18` | ⚠️ Unaudited |
| CrabMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1cab67a4383312718a5799eaa127906e9d4b19e` | ⚠️ Unaudited |
| CrabStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf205ad80bb86ac92247638914265887a8baa437d` | ⚠️ Unaudited |
| CrabStrategyV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b960e47784150f5a63777201ee2b15253d713e8` | ⚠️ Unaudited |
| DeltaStrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x431058f0eef3833b9a73bce19ba35c23d47e1bb9`; avalanche `0xb00b898246f88425443da581ea7bf77658301290`; avalanche `0xbf96a7fe233c2d5c6838ab1f8474292b2cfd1d58`; avalanche `0xc16a88bda30c3a2dab8ba0239b87db09be135379` | ⚠️ Unaudited |
| DepositAndPlaceOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x193c8993480df4c1dbbdb39db07511f7d789cedb`; avalanche `0xe0fdbad497898e3a75d550102e1961c489729698` | ⚠️ Unaudited |
| EasyAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x33b1fa3f012cd72988a35bad87339eb3e48e836f`; avalanche `0xb5d00f83680ea5e078e911995c64b43fbfd1ee61`; avalanche `0xc23b9269970d8ae096bc95599d779c9999b9709a` | ⚠️ Unaudited |
| ManualVolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x175bcf06ef1120a432ea3f7cdf33fc0af980bc39`; avalanche `0x9e5e8d3b1dc92c4b840150ff243a176ba2ed05dd`; avalanche `0xfda869c4a950bfd2e393ddd45d2062dd4aee0bb3` | ⚠️ Unaudited |
| MarginCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0x9a33230f59cc7cc9a084e0098a2b2934fc7bf7c0`; avalanche `0x2c726a7da5500bd59a488e0065c41822bb46b337`; avalanche `0xbd5a1dc654b5476b94f81755e68d1c8f0aac2afd` | ⚠️ Unaudited |
| MarginPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0`; avalanche `0x52751426a3043dd7a27ddb534eb090018866d50e`; avalanche `0x5b42893f5da151872bc84f2be48ee5f97ec5708b`; avalanche `0x9c7918f3bd12d3eb1fc58e418fd5a6f75b48017a`; avalanche `0xb628d6341492f87f3895b167a95ba9936bb15024`; avalanche `0xfe9c8549d2b6b308baf71e0267bec14fb6f5591f` | ⚠️ Unaudited |
| MarginPool | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250471 | `0xccf6629aeab734e621cc59ebb0297196774fdb9d` | ⚠️ Unaudited |
| MarginVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4d3a52a0e98144caf46ac226d83e8f144b5c654d`; ethereum `0x90b7d718477cc835fbf8330fdaef47cb2173caa7`; avalanche `0x8b5685586f43c07aa0f911bb5d5db8b56252858a`; avalanche `0x9b011cb12899ce70b8bb59fc3f324d1d7888912f` | ⚠️ Unaudited |
| OptionsExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1460771b713e8e58e350f9d82f7b83acb6b2e75f`; ethereum `0x39246c4f3f6592c974ebc44f80ba6dc69b817c71`; ethereum `0x5778f2824a114f6115dc74d432685d3336216017` | ⚠️ Unaudited |
| OptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb529964f86fbf99a6aa67f72a27e59fa3fa4feac`; ethereum `0xcc5d905b9c2c8c9329eb4e25dc086369d6c7777c` | ⚠️ Unaudited |
| OptionsPremiumPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e`; avalanche `0x54daf3a63a6cc2e2079031e70b2d35b6083cab89`; avalanche `0xbd51039959a136d7bf7cdce956ad42fe03805b21` | ⚠️ Unaudited |
| OptionsPremiumPricerInStables | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9c31f6fafda0b9cd762f2850c3438d20a87464e8`; avalanche `0xa2466926c9974e2b5621c6bd7c3520c478b7ce9f` | ⚠️ Unaudited |
| Oracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250423 | `0x789cd7ab3742e23ce0952f6bc3eb3a73a0e08833` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 10 deployments: ethereum `0x414b66ce4f304385edd47d372fcc4a11dde7d16e`; ethereum `0x65d66c76447ccb45daf1e8044e918fa786a483a1`; ethereum `0x7054e08461e3ecb7718b63540addb3c3a1746415`; avalanche `0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d`; avalanche `0x454a11d657c83643a04d30f148fb03d6c1405bd0`; avalanche `0x47a8fa114036c50765eabb110d7a21e648c1a89a`; avalanche `0x5c76e757138379e376d1cb9c18723f884df5e8eb`; avalanche `0x6f010d2fc520b710f707157c26acc18d4ebd7c9f`; avalanche `0x72c959244bb8c953aacefe6e7b20d727b91d45ad`; avalanche `0xa7516c430024366aa5b0cafd8dfcfeecb5ece8bb` | ⚠️ Unaudited |
| Oracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-250462 | `0x108abfba5ad61bd61a930bfe73394558d60f0b10` | ⚠️ Unaudited |
| Otoken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: ethereum `0x3035b72d76d06ff66114e9a8d2fc5035f8828005`; avalanche `0x03b28469a3f5cbdcba91485b82de17d64b9ed931`; avalanche `0x0fd7e1d4cdb5ab29a3f972505472afc636cfc823`; avalanche `0x3c19ddc6f1b9c4501a2d141c2dec59bc5f351c29`; avalanche `0x9d7915bbeeb48f511bcff079e6649609fd4fe904`; avalanche `0xbc2804ca9436a74e11ff60b8b20a157b85c21425`; avalanche `0xe0ebdd9c29d5724385136fecc3dec5fdd60c7bfe` | ⚠️ Unaudited |
| Otoken | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250466 | `0x459a8ba81a0f0ea672856d2415e25e50d4224677` | ⚠️ Unaudited |
| OtokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: avalanche `0x0dc3197fdd54cf5e8f8961bbf626be320160c3d2`; avalanche `0x215967eebb43f37bd76f4b36974b1bc868725505`; avalanche `0x6fb3f1d106540184d35abb1c614a80600c3b0b14`; avalanche `0x90fcbde91805b8d32b51bcc674a56bde09249eae`; avalanche `0xc0cf10dd710aefb209d9dc67bc746510ffd98a53`; avalanche `0xf9745ad6c6ff4fe9d8a0a2668a7f9e2944ea0955`; avalanche `0xfc8c5928e1eec38d0df511483b11592483e98060` | ⚠️ Unaudited |
| OtokenFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250465 | `0x25bc1cd298512885f0e452833198bcbb149f66a5` | ⚠️ Unaudited |
| RibbonDeltaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x551c441d05e81e5a43cfd5afa7e9589039d67625`; avalanche `0x9d725c6d242e816da485d676056466e18cb52b13` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | avalanche | n/a | 8 deployments: avalanche `0x0f403289ed880a2edb21cfc6927d5950c6d54684`; avalanche `0x10b87d9cf6892a1951c453a0842d4a5ca70cd00c`; avalanche `0x16b08b3c95881f6043bcd9ec6ce9b02cb28f588b`; avalanche `0x243dd88af54f9522ca3b5fb4251f5e8d53cb3ffb`; avalanche `0x87e94618b305c5305b4502807c86b6c28ad5b592`; avalanche `0xb7ec3becb9ea9946f4c055f6de73e7638ce4f480`; avalanche `0xd00a29f73aaf6fc5cdadae9cc64adc880f98fa65`; avalanche `0xdcfd145b79f07a558d380c75d3ae6be74d5b926e` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f00bb1c0a2b7db66f9a93c8356fd1af93ae9c83` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x6bf686d99a4ce17798c45d09c21181fac29a9fb3` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x98d03125c62dae2328d9d3cb32b7b969e6a87787` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x9dd6be071b4292cc88b8190ab718329adea3e3a3` | ⚠️ Unaudited |
| SAVAXDepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x084a82fe209f014b3cb6d5986b2c65b584168303`; avalanche `0x1decc75f4903f3993cedcfae98222dfb67264d3c`; avalanche `0x33b395a1346fad0c9287a528a1fd1c9257f587d7`; avalanche `0xadcadfa827b3ffa096c1860820608a39e777f176` | ⚠️ Unaudited |
| SAvaxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6cd4515759a91cc577ac9595c209cf94e551c922`; avalanche `0x8f17165de054d6266b44fb162153ad43266b89fb` | ⚠️ Unaudited |
| SAvaxPricer | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-250461 | `0x0a59f35f00a482bb04d95428e1ec051cbac216c9` | ⚠️ Unaudited |
| ShortHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b4095d5ff0e629972caaa50bd3004b09a1632c5` | ⚠️ Unaudited |
| ShortPowerPerp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa653e22a963ff0026292cc8b67941c0ba7863a38` | ⚠️ Unaudited |
| SqrtPriceMathPartial | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460` | ⚠️ Unaudited |
| StakedaoPricer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250419 | `0x4c65680554c35c27dddb2f276f95225953513401` | ⚠️ Unaudited |
| StakedaoPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4d6e00c28090a40f6c9c8aa386bc21ccbb566d8f`; ethereum `0x642b994887be211d76bb3f87450b5ebe3ee4caed`; ethereum `0xb4cbbd4b1f8b9c4abf3ab1e144afd1d2151b39c3` | ⚠️ Unaudited |
| StakedaoPricer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250432 | `0xaf751edcbb35beb33c945bd625eb008cd37b35d3` | ⚠️ Unaudited |
| StrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x00d27cbb90ae158f2db39c899e006a05df960d81`; avalanche `0x05351bd699860ce7c7282eb4ac3c92f188e3dbed`; avalanche `0x4fc945f00a7a7cd2b1d7422c913e4ab002f7ba3e`; avalanche `0x67ea3de575eeccef15a941bab9b5c78700ea84ac`; avalanche `0x6c2bd3ff7c5d7c3cf782860fc1d88cdf438ccf7b` | ⚠️ Unaudited |
| TickMathExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67c083ae303741372f0f321bf9cad567cfefe2dc` | ⚠️ Unaudited |
| VaultLifecycle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0854ddd162ffe4e2ff1db6e62b544521cb9223e` | ⚠️ Unaudited |
| VaultQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2986e874370a1398807d76d70c73e7ec7db14648`; avalanche `0xe6325f8465dd875be46c6997f955d6615766d8be` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x4980d7757098a80deb6893d4384ec014212289d0`; avalanche `0x4c659888cd942a6feb2306c05a631c9cdfba4904`; avalanche `0x9395889ba1131a2bd70beffdcaeddf487b32fa93`; avalanche `0xa839416d0311248dcd9af7fe9918410fa5ea6b4f`; avalanche `0xd79756a7869f6a27c52f9550eda9b4e7baadd13c`; avalanche `0xe3243bbc363486be2f3f4e5fbd17f16b8ed2c1fe` | ⚠️ Unaudited |
| Whitelist | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250472 | `0xe9963affc9a53e293c9bb547c52902071e6087c9` | ⚠️ Unaudited |
| WPowerPerp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (237)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003991b685820b491552fa1f52e79ec7e1cc7e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01cc03e55d64f1ce3cd9a47a4987f88e897d2e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027d66918f9c3daa157a78c2119b7f1ef695e4e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f01bb55543a13a9b63fa78bbdb12eb1bf12e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x048e2f1f937b1b98efa7765b3060dee0a2adf33a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250406 | `0x0890e86f880ed85cf821a448e707d47715dd4378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb5bdbf1726f7cc720b21ea910aceda9fddf680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb9cc35cefa5622e8d25af36dd56de142ef6415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d888174341dcc950937896c2cec0cc2d1728c44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250407 | `0x11ac0c63d64cdd95c593322b8381aaff9c086a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144cc4644abfd8c4c879bd2996b732740ca976e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1929605b714517b76bb733198e0f3c3d4ab08608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250408 | `0x1e31f2dcbad4dc572004eae6355fb18f9615cbe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20cb32e8989eaffe7cfeeedbcda4d33ea6549093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21bfdeadfc8cb2393de824c5c4da1f7f522e8e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2244364c94a9fcb6f9ae3a4cf38f279706011882` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250409 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d6f5dbe152bf5e91dbac3384e23500afaa92d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x270f4a26a3fe5766ccef9608718491bb057be238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27499432808f901fde539c32d288557f7d1f1db0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250410 | `0x27a8ee0eb39aee580490da00ab60ecfab2a02c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29893bcd1fda6da4f29d0e21edc55abc3a29a202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6b048eb15c7d4ddca27db4f9a454196898a0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b8f0f5a8fd551e160692226fb3695bd85eaef7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba08c08fc0ad74202c4828e6fb24b60432c8836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d02c18904988d2d123a103fcc80634ac44046df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250411 | `0x2d483f9a49dc31471f3bb50b8ebf097e3ec06f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de82e7c77defe0bb7578b5f4d4473c4a2dba40d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250412 | `0x30b3059b1e870203aef55b071110b49b22341fc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250413 | `0x32485c33378a1a866c0bd2085bf622ab2784cfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33fff86016fcd6c696f5f8bfdbd5b106db22f6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3636f78215c547cbfb45a0b3b48ac5e60e8b5d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36880a4da4069ccdf6f31e25e7d8ed64080c9645` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250414 | `0x3923ae26fcc641bfbdbbeb37fd31420597954bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3af23f1d713628c17be55f8d0049c6ae5535aa2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250415 | `0x3b43044cb8b0171290eb87c80b15d132b09e9e84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250416 | `0x3c0638bb4b2bec6d89c09ab4a7f9e21e4586189b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ca3ce4d1992aed14999340ab1305ec9d1dca398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d85513e5a222bf1b525e6582c329106ddc8a423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43277c92f9936aeb5d6a2713a44cd2f096f171cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x448608b92e4f988d98ffbc0d93717be4245e23d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44f181412166c26897532ffb31b2a4e32d5a3bdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250417 | `0x45fdc9ccbb385c6c921f7085b91edecbb5cfa95a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250418 | `0x4661951d252993afa69b36bcc7ba7da4a48813bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48828a15f7bd0a7703be316294d71a147c43c064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48dad1a9e38ff941429f1542e1cf552e647306bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x498daab7a32256d027dc76d7bbebf7f2aaa13e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ba4afa8071b0a9fe3097700cdade02dd0e16fd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250420 | `0x4ccc2339f87f6c59c6893e1a678c2266ca58dc72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e079dca26a4fe2586928c1319b20b1bf9f9be72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f6f0e5a62dde05bc7329c7905d874a1c928e3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50388c7046cbec2e71fdbcd75f9cbc52e84be3cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57ade7d5e9d2f45a07f8039da7228acc305fbeaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250421 | `0x5934807cc0654d46755ebd2848840b616256c6ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a75241952daf7d12293d36cff4ccd0d19078d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0655f938a72052c46d2e94d206ccb6ff625a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f55e419d7ca4c34d607a42f6c3771918a1ff90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a40e8bbc2ad3ed1c600abc0e01a8fef7a9fd47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a8e6912232eb20681c9fdf8b7e4dc3c251c67d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6789db944e35653d07f67eaf4db4e42adf2f0457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aaebff3858c914eb226d33907b0898e231d0cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6babb7b61134545e9ab6375b4697cb00f8021d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cabcff713f4887220e6715c5fb07af0df64207c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7087ef6878a4557b86e8140de664bf82f75d38ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73098340df7ee29fa4f0965159d91a5b17dd0261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250422 | `0x733171b59ed3839481cd0066076de2c3404ee66a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x749b33ab87ad5ff20213cff25a8ba6ee7616dd5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x769a8d3b4cceaf7c231d2c4035d3c9519e2e55e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792ecacb6f0c5dedafb7132ba9b35299a7e5607a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a48d10f372b3d7c60f6c9770b91398e4ccfd3c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bdca441e2542cfe25fe0ee1975fab3f399f4a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7be5eda5aa58936ae6a1e1f6258172a68cd715a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250424 | `0x7c06792af1632e77cb27a558dc0885338f4bdf8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250425 | `0x7c91794b65eb573c3702229009acd3cde712146d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7db1614710866899d3d99de44c27b460db0c35ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eaebc642af4e92245105de1958b87bf8ee89757` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x802f0bea3f02a8063a33a855fde24c0a8ad8badd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82d89ec90f645aaa7147cccf353685aec98f61f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f0110e9fa61aaca84cce7203c8a702681ab33e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8913eab16a302de3e498bba39940e7a55c0b9325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ba5e744e9ea885e81922d2e958aa4156d1850ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f5cacb222490c90ac7a81b849623b27882a6ae2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250426 | `0x8f7dd610c457fc7cb26b0f9db4e77581f94f70ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f92cfb1bf6ed1ce79f2e8eb0dc96e0f3b61276d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9038403c3f7c6b5ca361c82448daa48780d7c8bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250427 | `0x908fa5e6f8e997c32a15ebdbe7377a5a4321918c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a6a793bbb5ecf4dcb5c1422bdc9a08378fb049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93c3b7e5e47a454658ae16573b1804bd370e50fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x952419f5ed0bc732a86f2f770bf9b4486921cc08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95b49aa2bc21562d57a96e84c821e35ed2e5a1c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9674126ff31e5ece36de0cf03a49351a7c814587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98c371567b8a196518dcb4a4383387a2c7339382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d02f161aba36ec1fe150ef97949c0a27b007977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa05157b27b7db2eb63bb0c11412b71e7de027f89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250428 | `0xa0647d32dea8bf50bb4cc6d96a91f9f2bbe43efd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250429 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0d59794cb930e50ccfc2f4a3b827e2b36b0d1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1da0580fa96129e753d736a5901c31df5ec5edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2a5ef27499e72b9e8be2b0a38061bb6f58fe8df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250430 | `0xa5ea18ac6865f315ff5dd9f1a7fb1d41a30a6779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7df5be533579b27cb6820af7ebd7468e3b667e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8a9699161f266f7e79080ca0b65210820be8732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab4ea17ee729d54dde81946dbdb92226f5ee1d35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250431 | `0xab8724a8b7aa145863382fe075bbc325145c1e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacabf807515c85c7ff05498ff00e4d27491d82ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad4611e142238cd9f9e2999b37e5c668f1b605bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad4dbd3be46f7bdab82702b581b1d4c5f584741a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae1e3ac020ddec3d20c8da5532002fdac62e9f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae67dc3d09b9a83cf7651aa2f1ab712500ff522d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb433452142a05dc37aba0b70da0de428ac4c751b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb53c2ee92a24b08521912e1687bc8142a7e6a9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb56ba2cc3e6e51eb408499de0519317d0a1e8b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb611a364a7ce5e6188f7201ae10c3f714b76579b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7fd36eb847c04a144fab717e85b94da1d8c9b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9127f2e97f6816dcd7b85d8617b7acfe5e15419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb913090f0fcc2473dfcceaf41653a806bcb85fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd9817f9d72a61d939b1e74b67750047e15537cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf20939250629cec76ae8dd6717fa68e4bb77b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbff91e59336cf98334dc3ea4370316abffc2e565` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250433 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc14a21bc1a73e80ce0b254b82504bfab58eea400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc497f40d1b7db6fa5017373f1a0ec6d53126da23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc953fb453489d74400e5846513023b5a4e59b88b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb4d1dfe9907235a1527b529ec5e550cf3457a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd6265c7f5f77ad94b7b24e13f5157227bdc3980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd086c9356a5683192b10d93d4d92d8fcba705692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c9caeda2c2ba49a82369f7d971b0400b4b8711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37752fd2976335fddb2e6a2cf5ffbfa88bf5f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd493f949c1e8e007df3d80f5abd6c53db0446e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd499209b6e6c7d5ff43fcec824bfac603a426861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ccccf32721f2ba15e834439b60ce87ec24590d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9972139312508dc9cca36b9f3359bc095b96dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbd3dd06d25f417df82da7d714f3212886be26d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd7eca264fe1e3335f246c22e3c634022ac479ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe01e815d26e852eefcdcae6d72c5bb2df83a96f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0319d892d9181bc6ed2a8cdf7accb10a64fcabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe21127f47b365d3b1467746804f32bf8dcf47e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55231ec85b88521415ce62a6d950e0323835adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5ad6986ab5c36906ec30ff5c1ad51ccf3bb3529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6bcefc66d6cbc4c555d53b817e738577477031e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8303f688190eeade7927c09072c7b21869d4b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe86ed59e7ccc44e545d2fc4b100cc0349f153469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec19e052e7a5c1fd6cd85a3d57814527facb59bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec1a342f436fbce8e714c789902baa18fc096a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec44e339962a3bc2bc051e964ae7e3f1a66c6c34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef196aa0e3cb8ea6d5720557c3b611eff6777670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef298fa9c1f443df21e145f20fd2e5f5955e9fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf25ff25edea27b65928716b4a0501c3ae0b5d3b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2e186d6f3cafe17bcc89c50133cfbc2db6cf55a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e87f16d51879261a2b87f89aa1bd2c418660b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95872663376d51dbb5c6056927bbd62aa59aade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa86d43b41fa7a759c606130cc81970a955ff816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4a0041ee5c63c82151252ccb89b95bbc270394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffa31b7c784463efd661785f1261a653f41cbd29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00a79bad2b3f06c70053c3a99f5be9b8f2e8b558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c03be2abfcf077a9be2df999c13f908a9593e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17492ab397e255610275755166f1395f467d8ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x189faee986a546780bb31ebf2842a264e6bdffc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250435 | `0x1f89774f01a2786bcccfba9af92e53b0b43c743e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250436 | `0x30ae5debc9edf60a23cd19494492b1ef37afa56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x351a5444da55e289f0a8d9da5833a22f5c664f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x352f908c9c58ab34d475c2c98683d58e58700235` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-250437 | `0x3d561c832706e6e0b485a7a78958982e782e8e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4127f158deb80f1db33cc97158e42d7e644edbe9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250438 | `0x4b119a1198915612ff568f283f1931349297eef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4cad820205a7008dc7b983e544abb877fd845cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x54b0aa67351f2ec5aafa90af66d5e4f4238ba7c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250439 | `0x5c16b2fae97ab59814f34632202d7de69c45c057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79feac254097dca4ffb9220a552c2fb79ab29692` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250440 | `0x7a1d9aa191ad4e5bc337b2c7eb50229391c00fd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250441 | `0x7a23c712bddde52b22d8ff52e4cdadb1bcb0b203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7be555be1b715cce760e30734d7af38188b8b9cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x865fbd22e763ac9f379fe55b007479240985788b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x875c1e7e65f72f303e6d288eab02782568d1876a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93c0c624930af1c9c401f021bf1265961414a06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9cb93eacaee6b4496921e0fa7ef844e7ff7f4083` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250442 | `0x9e435a5cb48aee2c156a8e541ee645e1c171d012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa32a3ff76b0bdd112f1272387acee5094eb70f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa588c194bdca802888981798a333fe318c680630` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250443 | `0xa87ecdaea486bb0baeeb77ff0630364772a6bbfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250444 | `0xb03036798511912359edfff10c54e29db718f658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb241e4697cb55621ec342954cb404b9b696153e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3ddb5a0746856c3d635f51a401022a8d0801220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6e042545c78ffe900dc4b8097ac8e6ec27496ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4e4b564fd0c27548aa4420fda242e2928adbceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250445 | `0xc7a02ef0afb8b5d57a3f2ebef7560320539b8fa3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250446 | `0xc88bd7ed473b7f6f10e71894c66ebebd467eba93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1e93adf59eed3c06393f15741c2ed10ea8aef33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9550f400aecef3b4a33cbbc6c8d81540af0a651` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250447 | `0xedd70e045903d34fba7302b5094d37eaceb1397c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf00ad49cf7006000ee6e1ba58ae47ae6a6872956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf48e6248a595c4ddbc74676f37427c93f5b08aa9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-250448 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250449 | `0x4d3a52a0e98144caf46ac226d83e8f144b5c654d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250450 | `0x52b93393be3600d489c7d3aa74f78516713cd40a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250451 | `0x63d8d20606c048b9b79a30ea45ca6787f8aeb051` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250452 | `0x7a1e6f0f07ee2ddde14cd4b8eb582bad065357c5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-250453 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250454 | `0x91332064b2ab742efbb0ee416895dffb5fa85053` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250455 | `0x9a33230f59cc7cc9a084e0098a2b2934fc7bf7c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250456 | `0xb8f0ac1ab70643ebe8103db3618ea5ed6901b458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250457 | `0xc9f007d6f0aa2b6c5f0e4c0ff79273227c2100a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250458 | `0xcfbaaf567b7b64bf129f02db7360ecd795b67f4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250459 | `0xee30f92cc9bf896679567d1acd551f0e179756fc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-250460 | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04c75fed758eb1aa50d045465ac31ae400aeadc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cd322e9a6031f27627cd1af9c4ac006bf927abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1627b54aa04010c123b8f77d8d9fa0939f84292b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250463 | `0x17300f7e8f061b84ebd795d7a224e2875734b11b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ce1fe3944653a8d7e793240adbe9858d8c94d39` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-250464 | `0x1e5e27df661323fba0068028a8d1110a3030f34e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f89774f01a2786bcccfba9af92e53b0b43c743e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2156b61681b323e7d4c4ed50df0b83d608298906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ba283a4a88362704004e7cfdac6039b6ac02326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31e6ad61908f060ad89786ece37b2498b2f1ad45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3284949736d55faf3706ec167f4d51f1afc6c6ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3405ad3afbd981e5545308168e33be24aeee0021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34c737f8bafb9e97ce8f4c702101f7878cc41103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b69a34bfa22162036f10bb352c7e9377758f01d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250467 | `0x5eb6782b62bae3801332214a3b0d26eaf8ca2c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b859b9e6df4130e1822dd076af479e56d49c39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c4fd210b4a432652f02af641b7140f545b4f6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f49d8b93e0e25e892be65a921c2b0226689df66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a0b5e34eff0ec5a3476a915f35c800f8abeb3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a66a6d01af96efb36e7db47be759d9d87c066d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250468 | `0x9e3b94819aaf6de606c4aa844e3215725b997064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf6183697d87cb064d9fe56210ca4d240cf4fef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1b7b1fc9b34ce51a432f1dbbcd2120db3016371` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250470 | `0xc8698bee361b479de6683f34883798ef34e29873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc88bd7ed473b7f6f10e71894c66ebebd467eba93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed386690377a2b455c0c7c5cdcc90a41d6405e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef0ac6fa11fb4e0446c02c5455b63163b05a9631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfce6a25b07c20bd601114e79c21fab4dae18448c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 312
- Live contracts: 11
- Unknown liveness contracts: 301
- Source-verified contracts: 130
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, candidate review=66, contamination review=9, exact address book overlap=2, source verified unclassified=52, unverified unclassified=181

Showing first 200 of 312 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x1f89774f01a2786bcccfba9af92e53b0b43c743e` | non_address_book | unknown | unknown | unverified | n/a | `0x26f779e1d0b0d98220a6bb81684300ddc0605de2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc88bd7ed473b7f6f10e71894c66ebebd467eba93` | non_address_book | unknown | unknown | unverified | n/a | `0x26f779e1d0b0d98220a6bb81684300ddc0605de2` |
| avalanche | currently scope matched | Controller<br>`0xeadf3d94b902c06c13a2e64b223b1df5057aa23d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | AddressBook<br>`0x27d60b89e1a104cef79b3e40ead1374bb75ac87d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | AddressBook<br>`0x3ab3ff5501e900f81b6c6a7c556391d155cba7b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | AddressBook<br>`0x58d6bd9c46a98608a328178f154b585e79e40854` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | AddressBook<br>`0x5a2e8777c72dd59f24b4221a2eeac5c68e94e9a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | AddressBook<br>`0x63e48ae3b63a6cf2b749379dc5d468db5dbe7310` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | AddressBook<br>`0x8b5bffcbd5a9170839fe27f5d75915de847aa0eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | AddressBook<br>`0xac289a6ac2ddc56f5acde4cff5f3a3174d481ed4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | AddressBook<br>`0xbca124824326cf8abc5e2e569fff3a6f17110510` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | AddressBook<br>`0xef3b91345dd7be2c5c1f95c40545e9bf274ee698` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Controller<br>`0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginCalculator<br>`0x2c726a7da5500bd59a488e0065c41822bb46b337` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginCalculator<br>`0xbd5a1dc654b5476b94f81755e68d1c8f0aac2afd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginPool<br>`0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginPool<br>`0x52751426a3043dd7a27ddb534eb090018866d50e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginPool<br>`0x5b42893f5da151872bc84f2be48ee5f97ec5708b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginPool<br>`0x9c7918f3bd12d3eb1fc58e418fd5a6f75b48017a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginPool<br>`0xb628d6341492f87f3895b167a95ba9936bb15024` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginPool<br>`0xccf6629aeab734e621cc59ebb0297196774fdb9d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginPool<br>`0xfe9c8549d2b6b308baf71e0267bec14fb6f5591f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginVault<br>`0x8b5685586f43c07aa0f911bb5d5db8b56252858a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | MarginVault<br>`0x9b011cb12899ce70b8bb59fc3f324d1d7888912f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Oracle<br>`0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Oracle<br>`0x108abfba5ad61bd61a930bfe73394558d60f0b10` | external_dependency_or_infra | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Oracle<br>`0x454a11d657c83643a04d30f148fb03d6c1405bd0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Oracle<br>`0x47a8fa114036c50765eabb110d7a21e648c1a89a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Oracle<br>`0x5c76e757138379e376d1cb9c18723f884df5e8eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Oracle<br>`0x6f010d2fc520b710f707157c26acc18d4ebd7c9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Oracle<br>`0x72c959244bb8c953aacefe6e7b20d727b91d45ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Oracle<br>`0xa7516c430024366aa5b0cafd8dfcfeecb5ece8bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Otoken<br>`0x03b28469a3f5cbdcba91485b82de17d64b9ed931` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Otoken<br>`0x0fd7e1d4cdb5ab29a3f972505472afc636cfc823` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Otoken<br>`0x3c19ddc6f1b9c4501a2d141c2dec59bc5f351c29` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Otoken<br>`0x459a8ba81a0f0ea672856d2415e25e50d4224677` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Otoken<br>`0x9d7915bbeeb48f511bcff079e6649609fd4fe904` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Otoken<br>`0xbc2804ca9436a74e11ff60b8b20a157b85c21425` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Otoken<br>`0xe0ebdd9c29d5724385136fecc3dec5fdd60c7bfe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | OtokenFactory<br>`0x215967eebb43f37bd76f4b36974b1bc868725505` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | OtokenFactory<br>`0x25bc1cd298512885f0e452833198bcbb149f66a5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | OtokenFactory<br>`0x6fb3f1d106540184d35abb1c614a80600c3b0b14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | OtokenFactory<br>`0x90fcbde91805b8d32b51bcc674a56bde09249eae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | OtokenFactory<br>`0xc0cf10dd710aefb209d9dc67bc746510ffd98a53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | OtokenFactory<br>`0xf9745ad6c6ff4fe9d8a0a2668a7f9e2944ea0955` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | OtokenFactory<br>`0xfc8c5928e1eec38d0df511483b11592483e98060` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Whitelist<br>`0x4980d7757098a80deb6893d4384ec014212289d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Whitelist<br>`0x4c659888cd942a6feb2306c05a631c9cdfba4904` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Whitelist<br>`0x9395889ba1131a2bd70beffdcaeddf487b32fa93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Whitelist<br>`0xa839416d0311248dcd9af7fe9918410fa5ea6b4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Whitelist<br>`0xd79756a7869f6a27c52f9550eda9b4e7baadd13c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Whitelist<br>`0xe3243bbc363486be2f3f4e5fbd17f16b8ed2c1fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | candidate review | Whitelist<br>`0xe9963affc9a53e293c9bb547c52902071e6087c9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | contamination review | AllowListOffChainManaged<br>`0x5ae9b340a98085d0fc25ae98a5eb704ba08e0df8` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | contamination review | DepositAndPlaceOrder<br>`0x193c8993480df4c1dbbdb39db07511f7d789cedb` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | contamination review | OptionsPremiumPricer<br>`0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | contamination review | OptionsPremiumPricerInStables<br>`0x9c31f6fafda0b9cd762f2850c3438d20a87464e8` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | contamination review | OtokenFactory<br>`0x0dc3197fdd54cf5e8f8961bbf626be320160c3d2` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | contamination review | SAvaxPricer<br>`0x0a59f35f00a482bb04d95428e1ec051cbac216c9` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | exact address book overlap | UnnamedContract<br>`0xc8698bee361b479de6683f34883798ef34e29873` | project_anchor | unknown | live | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0x0f403289ed880a2edb21cfc6927d5950c6d54684` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0x10b87d9cf6892a1951c453a0842d4a5ca70cd00c` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0x16b08b3c95881f6043bcd9ec6ce9b02cb28f588b` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0x1e5341cb798864e2f979d4679de35646d9fbdb5c` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0x243dd88af54f9522ca3b5fb4251f5e8d53cb3ffb` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0x4375e9b9a0edf950897a0c4d21ada6ce874dc234` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0x62e04b116fcaa9731ede396b85ba190852bc05e4` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0x9d725c6d242e816da485d676056466e18cb52b13` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0xabd2a94dbcb8dcf8f40413b8174a4e3452f567dc` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0xafe24b15ced56c7b99fe8f272100764c8df3b1c7` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0xb7ec3becb9ea9946f4c055f6de73e7638ce4f480` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0xd00a29f73aaf6fc5cdadae9cc64adc880f98fa65` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0xdcfd145b79f07a558d380c75d3ae6be74d5b926e` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | AdminUpgradeabilityProxy<br>`0xee5b96b402bf853a6f1308739b019b269994785c` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | DeltaStrikeSelection<br>`0x431058f0eef3833b9a73bce19ba35c23d47e1bb9` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | DeltaStrikeSelection<br>`0xb00b898246f88425443da581ea7bf77658301290` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | DeltaStrikeSelection<br>`0xbf96a7fe233c2d5c6838ab1f8474292b2cfd1d58` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | DeltaStrikeSelection<br>`0xc16a88bda30c3a2dab8ba0239b87db09be135379` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | DepositAndPlaceOrder<br>`0xe0fdbad497898e3a75d550102e1961c489729698` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | EasyAuction<br>`0x33b1fa3f012cd72988a35bad87339eb3e48e836f` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | EasyAuction<br>`0xb5d00f83680ea5e078e911995c64b43fbfd1ee61` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | EasyAuction<br>`0xc23b9269970d8ae096bc95599d779c9999b9709a` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | ManualVolOracle<br>`0x175bcf06ef1120a432ea3f7cdf33fc0af980bc39` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | ManualVolOracle<br>`0x9e5e8d3b1dc92c4b840150ff243a176ba2ed05dd` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | ManualVolOracle<br>`0xfda869c4a950bfd2e393ddd45d2062dd4aee0bb3` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | OptionsPremiumPricer<br>`0x54daf3a63a6cc2e2079031e70b2d35b6083cab89` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | OptionsPremiumPricer<br>`0xbd51039959a136d7bf7cdce956ad42fe03805b21` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | OptionsPremiumPricerInStables<br>`0xa2466926c9974e2b5621c6bd7c3520c478b7ce9f` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | RibbonDeltaVault<br>`0x551c441d05e81e5a43cfd5afa7e9589039d67625` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | RibbonThetaVault<br>`0x7f00bb1c0a2b7db66f9a93c8356fd1af93ae9c83` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | RibbonThetaVault<br>`0x87e94618b305c5305b4502807c86b6c28ad5b592` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | SAVAXDepositHelper<br>`0x084a82fe209f014b3cb6d5986b2c65b584168303` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | SAVAXDepositHelper<br>`0x1decc75f4903f3993cedcfae98222dfb67264d3c` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | SAVAXDepositHelper<br>`0x33b395a1346fad0c9287a528a1fd1c9257f587d7` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | SAVAXDepositHelper<br>`0xadcadfa827b3ffa096c1860820608a39e777f176` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | SAvaxOracle<br>`0x6cd4515759a91cc577ac9595c209cf94e551c922` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | SAvaxOracle<br>`0x8f17165de054d6266b44fb162153ad43266b89fb` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | StrikeSelection<br>`0x00d27cbb90ae158f2db39c899e006a05df960d81` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | StrikeSelection<br>`0x05351bd699860ce7c7282eb4ac3c92f188e3dbed` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | StrikeSelection<br>`0x4fc945f00a7a7cd2b1d7422c913e4ab002f7ba3e` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | StrikeSelection<br>`0x67ea3de575eeccef15a941bab9b5c78700ea84ac` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | StrikeSelection<br>`0x6c2bd3ff7c5d7c3cf782860fc1d88cdf438ccf7b` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | VaultLifecycle<br>`0xe0854ddd162ffe4e2ff1db6e62b544521cb9223e` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | VaultQueue<br>`0x2986e874370a1398807d76d70c73e7ec7db14648` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | source verified unclassified | VaultQueue<br>`0xe6325f8465dd875be46c6997f955d6615766d8be` | non_address_book | unknown | unknown | verified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x04c75fed758eb1aa50d045465ac31ae400aeadc0` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0cd322e9a6031f27627cd1af9c4ac006bf927abc` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1627b54aa04010c123b8f77d8d9fa0939f84292b` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1ce1fe3944653a8d7e793240adbe9858d8c94d39` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2156b61681b323e7d4c4ed50df0b83d608298906` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ba283a4a88362704004e7cfdac6039b6ac02326` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x31e6ad61908f060ad89786ece37b2498b2f1ad45` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3284949736d55faf3706ec167f4d51f1afc6c6ba` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3405ad3afbd981e5545308168e33be24aeee0021` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x34c737f8bafb9e97ce8f4c702101f7878cc41103` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5b69a34bfa22162036f10bb352c7e9377758f01d` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7b859b9e6df4130e1822dd076af479e56d49c39e` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8c4fd210b4a432652f02af641b7140f545b4f6ae` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8f49d8b93e0e25e892be65a921c2b0226689df66` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9a0b5e34eff0ec5a3476a915f35c800f8abeb3bd` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9a66a6d01af96efb36e7db47be759d9d87c066d0` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaf6183697d87cb064d9fe56210ca4d240cf4fef4` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc1b7b1fc9b34ce51a432f1dbbcd2120db3016371` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xed386690377a2b455c0c7c5cdcc90a41d6405e6b` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xef0ac6fa11fb4e0446c02c5455b63163b05a9631` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfce6a25b07c20bd601114e79c21fab4dae18448c` | non_address_book | unknown | unknown | unverified | n/a | `0xd4816d144c005b29df24c8eb1865fb8a1e79fdde` |
| ethereum | currently scope matched | MarginCalculator<br>`0xfaa67e3736572645b38af7410b3e1006708e13f4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | candidate review | Controller<br>`0x7c19858f2f317ccf413b3046c2bed49f346b7d0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | candidate review | Controller<br>`0xcc2fd280a669a4453b30b5e72871ad3e2a2663d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | candidate review | CrabMigration<br>`0xa1cab67a4383312718a5799eaa127906e9d4b19e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | candidate review | MarginCalculator<br>`0x9a33230f59cc7cc9a084e0098a2b2934fc7bf7c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | candidate review | MarginVault<br>`0x4d3a52a0e98144caf46ac226d83e8f144b5c654d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | candidate review | MarginVault<br>`0x90b7d718477cc835fbf8330fdaef47cb2173caa7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | candidate review | Oracle<br>`0x414b66ce4f304385edd47d372fcc4a11dde7d16e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | candidate review | Oracle<br>`0x789cd7ab3742e23ce0952f6bc3eb3a73a0e08833` | external_dependency_or_infra | unknown | live | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | candidate review | Otoken<br>`0x3035b72d76d06ff66114e9a8d2fc5035f8828005` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | source verified unclassified | Timelock<br>`0x67c083ae303741372f0f321bf9cad567cfefe2dc` | non_address_book | unknown | unknown | verified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ba08c08fc0ad74202c4828e6fb24b60432c8836` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3af23f1d713628c17be55f8d0049c6ae5535aa2b` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d85513e5a222bf1b525e6582c329106ddc8a423` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64a8e6912232eb20681c9fdf8b7e4dc3c251c67d` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f92cfb1bf6ed1ce79f2e8eb0dc96e0f3b61276d` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb53c2ee92a24b08521912e1687bc8142a7e6a9ee` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9127f2e97f6816dcd7b85d8617b7acfe5e15419` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd6265c7f5f77ad94b7b24e13f5157227bdc3980` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa86d43b41fa7a759c606130cc81970a955ff816` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xffa31b7c784463efd661785f1261a653f41cbd29` | non_address_book | unknown | unknown | unverified | n/a | `0x5599b4eaddd319e2f462b27fc8378b0bfad309ca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x003991b685820b491552fa1f52e79ec7e1cc7e86` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0cb5bdbf1726f7cc720b21ea910aceda9fddf680` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20cb32e8989eaffe7cfeeedbcda4d33ea6549093` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2244364c94a9fcb6f9ae3a4cf38f279706011882` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ca3ce4d1992aed14999340ab1305ec9d1dca398` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x448608b92e4f988d98ffbc0d93717be4245e23d7` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x57ade7d5e9d2f45a07f8039da7228acc305fbeaf` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a75241952daf7d12293d36cff4ccd0d19078d3b` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7087ef6878a4557b86e8140de664bf82f75d38ee` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x769a8d3b4cceaf7c231d2c4035d3c9519e2e55e9` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a48d10f372b3d7c60f6c9770b91398e4ccfd3c7` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ba5e744e9ea885e81922d2e958aa4156d1850ed` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xacabf807515c85c7ff05498ff00e4d27491d82ac` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae1e3ac020ddec3d20c8da5532002fdac62e9f86` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc497f40d1b7db6fa5017373f1a0ec6d53126da23` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe21127f47b365d3b1467746804f32bf8dcf47e26` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe86ed59e7ccc44e545d2fc4b100cc0349f153469` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef196aa0e3cb8ea6d5720557c3b611eff6777670` | non_address_book | unknown | unknown | unverified | n/a | `0x8c8b4c5caeaf1a6fb8308a6336932b3e3419704c` |
| ethereum | candidate review | Oracle<br>`0x7054e08461e3ecb7718b63540addb3c3a1746415` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | contamination review | OptionsExchange<br>`0x1460771b713e8e58e350f9d82f7b83acb6b2e75f` | non_address_book | unknown | unknown | verified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | contamination review | StakedaoPricer<br>`0x4c65680554c35c27dddb2f276f95225953513401` | project_anchor | unknown | live | verified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | exact address book overlap | StakedaoPricer<br>`0xaf751edcbb35beb33c945bd625eb008cd37b35d3` | project_anchor | unknown | live | verified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | source verified unclassified | OptionsExchange<br>`0x39246c4f3f6592c974ebc44f80ba6dc69b817c71` | non_address_book | unknown | unknown | verified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | source verified unclassified | OptionsFactory<br>`0xb529964f86fbf99a6aa67f72a27e59fa3fa4feac` | non_address_book | unknown | unknown | verified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | source verified unclassified | OptionsFactory<br>`0xcc5d905b9c2c8c9329eb4e25dc086369d6c7777c` | non_address_book | unknown | unknown | verified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | source verified unclassified | StakedaoPricer<br>`0x4d6e00c28090a40f6c9c8aa386bc21ccbb566d8f` | non_address_book | unknown | unknown | verified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | source verified unclassified | StakedaoPricer<br>`0x642b994887be211d76bb3f87450b5ebe3ee4caed` | non_address_book | unknown | unknown | verified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | source verified unclassified | StakedaoPricer<br>`0xb4cbbd4b1f8b9c4abf3ab1e144afd1d2151b39c3` | non_address_book | unknown | unknown | verified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01cc03e55d64f1ce3cd9a47a4987f88e897d2e7b` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x027d66918f9c3daa157a78c2119b7f1ef695e4e4` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d888174341dcc950937896c2cec0cc2d1728c44` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26d6f5dbe152bf5e91dbac3384e23500afaa92d6` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33fff86016fcd6c696f5f8bfdbd5b106db22f6e5` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3636f78215c547cbfb45a0b3b48ac5e60e8b5d87` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44f181412166c26897532ffb31b2a4e32d5a3bdf` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48828a15f7bd0a7703be316294d71a147c43c064` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x498daab7a32256d027dc76d7bbebf7f2aaa13e51` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f6f0e5a62dde05bc7329c7905d874a1c928e3e4` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50388c7046cbec2e71fdbcd75f9cbc52e84be3cb` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62f55e419d7ca4c34d607a42f6c3771918a1ff90` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6aaebff3858c914eb226d33907b0898e231d0cdb` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6babb7b61134545e9ab6375b4697cb00f8021d01` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x792ecacb6f0c5dedafb7132ba9b35299a7e5607a` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7be5eda5aa58936ae6a1e1f6258172a68cd715a2` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x802f0bea3f02a8063a33a855fde24c0a8ad8badd` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82d89ec90f645aaa7147cccf353685aec98f61f6` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91a6a793bbb5ecf4dcb5c1422bdc9a08378fb049` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93c3b7e5e47a454658ae16573b1804bd370e50fd` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x952419f5ed0bc732a86f2f770bf9b4486921cc08` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95b49aa2bc21562d57a96e84c821e35ed2e5a1c1` | non_address_book | unknown | unknown | unverified | n/a | `0x9e68b67660c223b3e0634d851f5df821e0e17d84` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[**Akira Audit Report - Aug 2021**]()](https://github.com/akiratechhq/review-opyn-gamma-2021-08) | Akira | Audit | 2021-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 5 | high |
| [**Trail of Bits Audit Report - May 2021**](https://github.com/trailofbits/publications/blob/master/reviews/Opyn-Gamma-Protocol.pdf) | Trail of Bits | Audit | 2021-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 8 | high |
| [**Peckshield Audit Report - Feb 2021**](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-Opyn-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [[**OpenZeppelin Audit Report - Nov 2020**]()](https://www.openzeppelin.com/news/opyn-gamma-protocol-audit) | OpenZeppelin | Audit | 2020-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 28 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17869] [**Akira Audit Report - Aug 2021**]() — matched: Scope section explicitly lists core/AddressBook.sol, core/Controller.sol, core/MarginCalculator.sol, core/MarginPool.sol, core/Otoken.sol, external/callees/PermitCallee.sol, libs/MarginVault.sol. Date is August 2021, interpreted as end of month.
- [17870] **Trail of Bits Audit Report - May 2021** — matched: Extracted contracts from findings targets and coverage sections. Audit date from cover page.
- [17871] **Peckshield Audit Report - Feb 2021** — matched: Extracted contract names from findings targets and file paths. Audit date from cover page and latest audit report date.
- [17872] [**OpenZeppelin Audit Report - Nov 2020**]() — matched: All contracts listed in the scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [**Akira Audit Report - Aug 2021**]() | AddressBook | ambiguous — not counted | 0x1e31f2… (alternative) `0x1e31f2dcbad4dc572004eae6355fb18f9615cbe4` — deployed 2020-12-28 22:49:17+03 — liveness: live (current_address_book_code)<br>AddressBook (alternative) `0xbca124824326cf8abc5e2e569fff3a6f17110510` — deployed 2021-11-24 00:45:12+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**Akira Audit Report - Aug 2021**]() | Controller | own contract | Controller (selected) `0xeadf3d94b902c06c13a2e64b223b1df5057aa23d` — deployed 2021-11-24 00:47:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [**Akira Audit Report - Aug 2021**]() | MarginCalculator | ambiguous — not counted | 0xc8698b… (alternative) `0xc8698bee361b479de6683f34883798ef34e29873` — deployed 2021-12-17 16:09:49+03 — liveness: live (current_address_book_code)<br>MarginCalculator (alternative) `0xfaa67e3736572645b38af7410b3e1006708e13f4` — deployed 2021-06-29 12:12:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**Akira Audit Report - Aug 2021**]() | MarginPool | ambiguous — not counted | 0x593480… (alternative) `0x5934807cc0654d46755ebd2848840b616256c6ef` — deployed 2020-12-28 22:54:59+03 — liveness: live (current_address_book_code)<br>MarginPool (alternative) `0xccf6629aeab734e621cc59ebb0297196774fdb9d` — deployed 2021-11-24 00:46:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**Akira Audit Report - Aug 2021**]() | Otoken | ambiguous — not counted | Otoken (alternative) `0x459a8ba81a0f0ea672856d2415e25e50d4224677` — deployed 2021-11-24 00:45:37+03 — liveness: live (current_address_book_code)<br>0x7c9179… (alternative) `0x7c91794b65eb573c3702229009acd3cde712146d` — deployed 2021-04-19 04:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**Akira Audit Report - Aug 2021**]() | PermitCallee | own contract | 0xc7a02e… (selected) `0xc7a02ef0afb8b5d57a3f2ebef7560320539b8fa3` — deployed 2022-01-17 07:54:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [**Akira Audit Report - Aug 2021**]() | MarginVault | unmatched — not counted | — | listed in scope | no |
| **Trail of Bits Audit Report - May 2021** | TradeCallee | unmatched — not counted | — | Target in finding TOB-OPYN-002 | no |
| **Trail of Bits Audit Report - May 2021** | Controller | own contract | Controller (selected) `0xeadf3d94b902c06c13a2e64b223b1df5057aa23d` — deployed 2021-11-24 00:47:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Trail of Bits Audit Report - May 2021** | MarginCalculator | own contract | 0xc8698b… (alternative) `0xc8698bee361b479de6683f34883798ef34e29873` — deployed 2021-12-17 16:09:49+03 — liveness: live (current_address_book_code)<br>MarginCalculator (selected) `0xfaa67e3736572645b38af7410b3e1006708e13f4` — deployed 2021-06-29 12:12:03+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-06-29 was 32d from audit; next candidate 203d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Trail of Bits Audit Report - May 2021** | MarginPool | ambiguous — not counted | 0x593480… (alternative) `0x5934807cc0654d46755ebd2848840b616256c6ef` — deployed 2020-12-28 22:54:59+03 — liveness: live (current_address_book_code)<br>MarginPool (alternative) `0xccf6629aeab734e621cc59ebb0297196774fdb9d` — deployed 2021-11-24 00:46:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **Trail of Bits Audit Report - May 2021** | Oracle | unmatched — not counted | — | Target in finding TOB-OPYN-010 | no |
| **Trail of Bits Audit Report - May 2021** | MarginVault | unmatched — not counted | — | Target in finding TOB-OPYN-008 | no |
| **Trail of Bits Audit Report - May 2021** | FixedPointInt256 | unmatched — not counted | — | Target in finding TOB-OPYN-012 | no |
| **Trail of Bits Audit Report - May 2021** | SignedConverter | unmatched — not counted | — | Target in finding TOB-OPYN-012 | no |
| **Trail of Bits Audit Report - May 2021** | YearnPricer | unmatched — not counted | — | Target in findings TOB-OPYN-016, TOB-OPYN-017 | no |
| **Trail of Bits Audit Report - May 2021** | Actions | unmatched — not counted | — | Referenced in Controller.sol as Actions.CallArgs | no |
| **Peckshield Audit Report - Feb 2021** | MarginPool | ambiguous — not counted | 0x593480… (alternative) `0x5934807cc0654d46755ebd2848840b616256c6ef` — deployed 2020-12-28 22:54:59+03 — liveness: live (current_address_book_code)<br>MarginPool (alternative) `0xccf6629aeab734e621cc59ebb0297196774fdb9d` — deployed 2021-11-24 00:46:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **Peckshield Audit Report - Feb 2021** | Controller | own contract | Controller (selected) `0xeadf3d94b902c06c13a2e64b223b1df5057aa23d` — deployed 2021-11-24 00:47:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Peckshield Audit Report - Feb 2021** | MarginCalculator | ambiguous — not counted | 0xc8698b… (alternative) `0xc8698bee361b479de6683f34883798ef34e29873` — deployed 2021-12-17 16:09:49+03 — liveness: live (current_address_book_code)<br>MarginCalculator (alternative) `0xfaa67e3736572645b38af7410b3e1006708e13f4` — deployed 2021-06-29 12:12:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **Peckshield Audit Report - Feb 2021** | Otoken | ambiguous — not counted | Otoken (alternative) `0x459a8ba81a0f0ea672856d2415e25e50d4224677` — deployed 2021-11-24 00:45:37+03 — liveness: live (current_address_book_code)<br>0x7c9179… (alternative) `0x7c91794b65eb573c3702229009acd3cde712146d` — deployed 2021-04-19 04:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **Peckshield Audit Report - Feb 2021** | PayableProxyController | unmatched — not counted | — | Target in findings PVE-006, PVE-007 | no |
| **Peckshield Audit Report - Feb 2021** | MPHIssuanceModel01 | unmatched — not counted | — | Target in finding PVE-005 (mentioned as target) | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | AddressBook | ambiguous — not counted | 0x1e31f2… (alternative) `0x1e31f2dcbad4dc572004eae6355fb18f9615cbe4` — deployed 2020-12-28 22:49:17+03 — liveness: live (current_address_book_code)<br>AddressBook (alternative) `0xbca124824326cf8abc5e2e569fff3a6f17110510` — deployed 2021-11-24 00:45:12+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Controller | own contract | Controller (selected) `0xeadf3d94b902c06c13a2e64b223b1df5057aa23d` — deployed 2021-11-24 00:47:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginCalculator | ambiguous — not counted | 0xc8698b… (alternative) `0xc8698bee361b479de6683f34883798ef34e29873` — deployed 2021-12-17 16:09:49+03 — liveness: live (current_address_book_code)<br>MarginCalculator (alternative) `0xfaa67e3736572645b38af7410b3e1006708e13f4` — deployed 2021-06-29 12:12:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginPool | ambiguous — not counted | 0x593480… (alternative) `0x5934807cc0654d46755ebd2848840b616256c6ef` — deployed 2020-12-28 22:54:59+03 — liveness: live (current_address_book_code)<br>MarginPool (alternative) `0xccf6629aeab734e621cc59ebb0297196774fdb9d` — deployed 2021-11-24 00:46:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Oracle | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Otoken | ambiguous — not counted | Otoken (alternative) `0x459a8ba81a0f0ea672856d2415e25e50d4224677` — deployed 2021-11-24 00:45:37+03 — liveness: live (current_address_book_code)<br>0x7c9179… (alternative) `0x7c91794b65eb573c3702229009acd3cde712146d` — deployed 2021-04-19 04:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OtokenFactory | ambiguous — not counted | OtokenFactory (alternative) `0x25bc1cd298512885f0e452833198bcbb149f66a5` — deployed 2021-11-24 00:45:21+03 — liveness: live (current_address_book_code)<br>0x7c0679… (alternative) `0x7c06792af1632e77cb27a558dc0885338f4bdf8e` — deployed 2020-12-28 22:49:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OtokenSpawner | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Whitelist | ambiguous — not counted | 0xa5ea18… (alternative) `0xa5ea18ac6865f315ff5dd9f1a7fb1d41a30a6779` — deployed 2020-12-28 22:52:06+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xe9963affc9a53e293c9bb547c52902071e6087c9` — deployed 2021-11-24 00:46:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | PayableProxyController | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | AddressBookInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | AggregatorInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | CalleeInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | CTokenInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | ERC20Interface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginCalculatorInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginPoolInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OpynPricerInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OracleInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | OtokenInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | WhitelistInterface | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Actions | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | FixedPointInt256 | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | MarginVault | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | SignedConverter | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | Spawn | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | CompoundPricer | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | ChainlinkPricer | unmatched — not counted | — | listed in scope | no |
| [**OpenZeppelin Audit Report - Nov 2020**]() | USDCPricer | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xbca124824326cf8abc5e2e569fff3a6f17110510` | AddressBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xccf6629aeab734e621cc59ebb0297196774fdb9d` | MarginPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x459a8ba81a0f0ea672856d2415e25e50d4224677` | Otoken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x25bc1cd298512885f0e452833198bcbb149f66a5` | OtokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c65680554c35c27dddb2f276f95225953513401` | StakedaoPricer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf751edcbb35beb33c945bd625eb008cd37b35d3` | StakedaoPricer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe9963affc9a53e293c9bb547c52902071e6087c9` | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 237 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 14 ambiguous, 32 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: temporal_name=1, unique_name=5

Fork inheritance lineage and inherited audits are included when available.
