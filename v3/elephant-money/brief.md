# Agentic Audit Brief: Elephant Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Elephant Money (`elephant-money`)
- Website: [https://elephant.money](https://elephant.money)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 407 unique implementations (633 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $70,398,487.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Elephant Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 64 contract row(s) across bsc, ethereum. Structural roles: 35 unclassified, 22 core, 7 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 64
- Structural roles: unclassified (35), core (22), supporting (7)
- Contract kinds: contract (64)
- Detected standards: ownable (19), erc20 (9), erc20permit (3), accesscontrol (1), chainlinkaggregator (1), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (25)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 64; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 98 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 309 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/192
- Verified + Unaudited implementations: 192
- Verified by bytecode match: 0
- Unverified implementations: 215
- Unique implementations: 407
- Raw deployments: 633
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (192)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0d52d2dcf58d25fd17a526874fade9d35cdd9144`; bsc `0x4fdbdf64f9db00331bea08c43e6d34831f4bbace`; bsc `0x944b319cb0326887c39a851813186273846dae7b` | ⚠️ Unaudited |
| AdministrativeNFTMinter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236774 | `0xa9421179abe9faa3ab01d9086ff6da0cd82a8ee4` | ⚠️ Unaudited |
| AprForwardingTreasuryStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236726 | `0x01fb3809de463d114b66d7e428035196cd6ae484` | ⚠️ Unaudited |
| AprForwardingTreasuryStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3750a4a5e7d7198163df95d436b8d5ea7e64f326`; bsc `0x6349cbe970863ebcf864b375d50bf3bc77f4a101` | ⚠️ Unaudited |
| autoBsw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97a16ff6fd63a46bf973671762a39f3780cda73d` | ⚠️ Unaudited |
| BackedForwardingPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236768 | `0x99c9196f2bcb898f94a346b27cde7ce305ea8f05` | ⚠️ Unaudited |
| BakeryAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x08e358a23decff37efca1d3c9e0e43a3e9c6c61b`; bsc `0x17307da6c27beaadccc1c7ca7456ca1fba10b9cf`; bsc `0xbe24a05a317ed701630ee503f0c59a01e4b0c88c` | ⚠️ Unaudited |
| BankrollNetworkStack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec10059ba900883ed6154883e9f3a1c24fce1eb7` | ⚠️ Unaudited |
| BatchERC721Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7776b8e7b9228eb030d2e18e30d8adbbd1cdd9dc` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ⚠️ Unaudited |
| BEP20Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236796 | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ⚠️ Unaudited |
| BiswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x173661c75895b15fae9ffc91210017cf6e9f1285`; bsc `0x858e3312ed3a876947ea49d572a7c42de08af7ee` | ⚠️ Unaudited |
| BiswapRouter02 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236741 | `0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8` | ⚠️ Unaudited |
| BNBReserveStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb74e9677bdfeabbf33614d468a74b502bc4ff897` | ⚠️ Unaudited |
| BNBReserveStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236786 | `0xcccc27bafb2008f800c918ab2cd260a3b051b43c` | ⚠️ Unaudited |
| BotGasStation | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236783 | `0xc4d9b08d0d7632f8e1a0f07f91e10f0c4a6778b9` | ⚠️ Unaudited |
| BSWMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2a539a4189b23c15a7ccfdeadb56c62b8cb1f522`; bsc `0xaec140e5c9f946e3e1489573797bc9f4633f0fbf` | ⚠️ Unaudited |
| BSWToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x965f527d9159dce6288a2219db51fc6eef120dd1` | ⚠️ Unaudited |
| BTCBTurbine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e74b429836d7357348b520139a3a6145441858c` | ⚠️ Unaudited |
| BulkNFTMinter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236727 | `0x029a8915cb63cbb28dcd1195ce6a00596bfb606a` | ⚠️ Unaudited |
| BulkNFTMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x112492a074e9d6b84fe73d2c76ee9be9497f7269`; bsc `0xd606ec65f3c4f9ee892665b8a5d69ce940e1444b` | ⚠️ Unaudited |
| BuyoutModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea1acad77f64bf6e933635ed078e63d22484197` | ⚠️ Unaudited |
| CloneFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7865a5cee051d35b09a48b624d7057d3362655a` | ⚠️ Unaudited |
| ConstOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa952f8716a753d9e094c4041febd163e38b21edb` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4187aab02f9e3abdeb9a6cc71397a7a839113634` | ⚠️ Unaudited |
| CP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5d6e6a0bfb2176afcc4fb809822d8e009216b245`; bsc `0x6a3c8ba322f3afe6550fec27fb17b119070f12e5`; bsc `0xd1aacd1d23d220768592307f8a9abdc15e0a53bf` | ⚠️ Unaudited |
| CrowdPoolingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x778df5b12170e8af8df94356bfc864e57ce185dc`; bsc `0x9c9ef6820a1aa0e25770ccde4e974f81cb28debc`; bsc `0xd5a7e197bace1f3b26e2760321d6ce06ad07281a` | ⚠️ Unaudited |
| CustomERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2aabd11fd4f681636e38c2ee3ca785603598051b`; bsc `0x4777a6f28c8bb260d9a945dddefabb942ae10f1f`; bsc `0xb71c2441e5dc562eb03ec13d7132718b6c17ced2` | ⚠️ Unaudited |
| CustomMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff739f9743e14f8846452690f669f730b97eaff3` | ⚠️ Unaudited |
| Depot | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236732 | `0x1a6a71f07d85f3aa76baa5616a7bda3ccf7e68a5` | ⚠️ Unaudited |
| Depot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6da24602756d5c6177dd3090953f8e2e9e39f42b` | ⚠️ Unaudited |
| DODO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x47520b1e49e252d5a79c3f6a241ae95b0f80fec2`; bsc `0x77106d0f8c5b8adf95a7feaae5bea130b1d2d748`; bsc `0x99ba96650fd159db5760b54c899ec16db648515b` | ⚠️ Unaudited |
| DODOBscToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2` | ⚠️ Unaudited |
| DODOCalleeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2673e5333620bb22bd1bfb3af9fc7012008e3b4b` | ⚠️ Unaudited |
| DODOCpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x7831d8f71b9d1aa0204564d19d5e23777357f08d`; bsc `0xa867241cdc8d3b0c07c85cc06f25a0cd3b5474d8`; bsc `0xbb8680ef53c52c001c04ce2a7abc6c3bb497f28c` | ⚠️ Unaudited |
| DODODppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x624fc8368fe11be00d8b2f3fe0b9d0053bec21b9` | ⚠️ Unaudited |
| DODODropsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc05a30468d039381aabab6dcac31078db2c3323b` | ⚠️ Unaudited |
| DODODspProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2442a8b5cdf1e659f3f949a7e454caa554d4e65a` | ⚠️ Unaudited |
| DODOIncentive | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ee6398898f7fc3e648b3f6ba458310ac29cd352` | ⚠️ Unaudited |
| DODOLimitOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa68d055e4ad41a59b4f27226b6b8b9ad798240c1`; bsc `0xdc5e86654e768d21f7d298690687ea02db7b2a04` | ⚠️ Unaudited |
| DODOLimitOrderBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x187da347debf4221b861eeafc9808d8cf89cf5fe`; bsc `0xd4edd352a340671681c2d778be93e4264d43f083` | ⚠️ Unaudited |
| DODOLimitOrderProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e6c9f63e0ccf68d98bd14fef83a708f1ea03322` | ⚠️ Unaudited |
| DODOMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01f9bfac04e6184e90bd7eafd51999ce430cc750` | ⚠️ Unaudited |
| DODOMineReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf94435ad7edc3d5add1c1345622bb745d0387416` | ⚠️ Unaudited |
| DODOMineV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4e306abc37724f006b216b802408340bf2a8b641`; bsc `0xf998ffee6b2acf414e298b042181a9eb9d6fd217` | ⚠️ Unaudited |
| DODOMineV3Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c39dcb3630d305530a30419b3deecea629597ac`; bsc `0x8f3fb1f9148dc473453163bf31de1d830eb5c590` | ⚠️ Unaudited |
| DODOMineV3Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2a5aa99095e3724b8955bf7b5e47dbe2730dabd8`; bsc `0xf1ed17f78dad13f3b9caad90b9af18b94e0c6d6a` | ⚠️ Unaudited |
| DODONFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ed972c0a7f8d0c4dedf6a37848a297b67489888` | ⚠️ Unaudited |
| DODONFT1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc9224cbc4b1826bb74ff383ff1ce94de1f56119` | ⚠️ Unaudited |
| DODONFTApprove | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f697865fb43236683a174fee87fd84db64c7a6c` | ⚠️ Unaudited |
| DODONFTPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x509d3775f684fa4d19c9c99b961202e309b5b965` | ⚠️ Unaudited |
| DODONFTProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0d224a4a6da3cfb360b9879965b1f78865798c71`; bsc `0x4852394ecc099f13bdc44764fa34deb26d8131fa`; bsc `0xb9c408574393487bfb95c0e7e94f0d76e1e6fcde` | ⚠️ Unaudited |
| DODONFTRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c0dd764a0be8a7e747cb0765e268d576edce31a` | ⚠️ Unaudited |
| DODONFTRouteHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d8349e957a69e4cc7b4ef225a4b6a85be57fbf3` | ⚠️ Unaudited |
| DODORecharge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x61b21603a527b487c4a3a80a69224b87751d0f6a`; bsc `0xf7c5311b618e6dfbbc34210c92d2c9675d7eddca` | ⚠️ Unaudited |
| DODORouteProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x38a92ddec6c204cba947e91ee856ce57d65b3b12`; bsc `0x6b3d817814eabc984d51896b1015c0b89e9737ca`; bsc `0xea872a5ed4c50e51af65cdff25ceb3e0ba53671b` | ⚠️ Unaudited |
| DODOStarterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79624977c8065650f03c38d5bc0f03a6f929ecb9` | ⚠️ Unaudited |
| DODOStarterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81521b0e899112b36fe7218954a81b7fe8ffe8d1` | ⚠️ Unaudited |
| DODOUpCpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x01d3e7271c278aa3aa56eeba6a109b2c200679fa`; bsc `0x39eb553b85be6757038ca01e18194a7072173d03` | ⚠️ Unaudited |
| DODOV2CuttingRouteHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9d39391959e281284512b71bf79e0c88e9c4468` | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3a343f2e4e142412c5dd130359edb765a6054965`; bsc `0xd56281ef996b6b29874c77d2e1464216e8043127` | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236766 | `0x8f8dd7db1bda5ed3da8c9daf3bfa471c12d58486` | ⚠️ Unaudited |
| DODOV2RouteHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1dc8d1f1600b7c1d39e6b60fbc7b021bc4f9c993`; bsc `0xb48ee7b874af8bc0e068036e55e33b5dc91c3a65`; bsc `0xc1cce4c003b10052f168072a4c3c02051053d957`; bsc `0xf2cd74a4206e6a4281c709c0274e2d0e286cd617` | ⚠️ Unaudited |
| DPPAdvanced | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x0fe261aee0d1c4dfddee4102e82dd425999065f4`; bsc `0x3a60a76acae8feec74d6b5b665d4dbaab2abc406`; bsc `0x5a2e2278a0faccf224ced1ce809ec4e4b1708759`; bsc `0x64b2e6bba89e5c9788a4fb238694055a16c2f1e3`; bsc `0x7f60701206f85354147806a846ce59bb7467ac53`; bsc `0x88cbf433471a0cd8240d2a12354362988b4593e5`; bsc `0xa7e60e63560c36d81d5cf80e175941a6a80e6a3d`; bsc `0xf718dde3c891be22631a58cc03e8483c871ac38e` | ⚠️ Unaudited |
| DPPAdvancedAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2ae3df375042e0ec192a6e629359885995afed36`; bsc `0x4796dbbbe0da8fad93bb805033ad9e526d10dd5f`; bsc `0x68b3ad77432b0b175993edc787001518c85ad28d`; bsc `0x69856df6770950c44eafebc694e706cd05efaf4b`; bsc `0xbb23ffae6618a8431375b4ec02689a01c3964aa5`; bsc `0xcdfd45f965de9932367833ca7187e4c9c43a2380`; bsc `0xff133a6d335b50bdaa6612d19e1352b049a8ae6a` | ⚠️ Unaudited |
| DPPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xafe0a75dffb395eaabd0a7e1bbbd0b11f8609eef`; bsc `0xd9cac3d964327e47399aebd8e1e6dcc4c251daae` | ⚠️ Unaudited |
| DPPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x03e794b315f01744cbfa995fbdc9e871e835b1a0`; bsc `0x3024a86dc38002f7df9387a8522c92799bc2d633` | ⚠️ Unaudited |
| DPPOracleAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9743cc05141b3798709c555384f1101252bc59c` | ⚠️ Unaudited |
| DropsFeeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6de96b1a41ff2e8264925b4c5c0564c46dc0c67d` | ⚠️ Unaudited |
| DSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x392b2ae9ab6161591582c4724ca9a89c0cc1cab6`; bsc `0xe3c91fdce30dd5aa95138d6c4d63f43a26e9066e` | ⚠️ Unaudited |
| DSPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0fb9815938ad069bf90e14fe6c596c514bede767`; bsc `0xbb245f54569841906ec7edfff72a910557b81378` | ⚠️ Unaudited |
| DVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x02607600407329389c2912f46dd357d7fa33d901`; bsc `0x409e377a7affb1fd3369cfc24880ad58895d1dd9`; bsc `0xe44f14bfde673b7339734a28152ccd6b821753c9` | ⚠️ Unaudited |
| DVMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x790b4a80fb1094589a3c0efc8740aa9b0c1733fb`; bsc `0xa1254ee5c6d6616904a82c55c6e134557096b6d4` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236728 | `0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236735 | `0x264990fbd0a4796a3e3d8e37c4d5f87a3aca5ebf` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ef1b8c0e4f7dc8bf5719ea496883dc6401d5b2e` | ⚠️ Unaudited |
| Elephant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd96ec811359bfd94d2dfe2a3bd8da68bf262be1a` | ⚠️ Unaudited |
| Elephant | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236795 | `0xe283d0e3b8c102badf5e8166b73e02d96d92f688` | ⚠️ Unaudited |
| ElephantDollar | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236793 | `0xdd325c38b12903b727d16961e61333f4871a70e0` | ⚠️ Unaudited |
| ElephantDollarDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x00c66cf7b0e38d4eb528c81c28b55ca589da2cd2`; bsc `0x8655e8f5febef300645d2cabad84a1fda72eee3b`; bsc `0x9462e7d37c7765a5acbb55cd3eebeabe9f46de89`; bsc `0xb702b3df8a4ae675c4dd392f8f44a08321c9529c`; bsc `0xdb2c2741542e37bda373be49605cb8efc5440455` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2390901198838aabbb383ce0ac215ad9e05e2a66` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236744 | `0x4d1e19b5a6e68abe4dc5ce35f161070692802b7c` | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236780 | `0xb6c05cfe10c5dae4fa8d97f14f0161e978ae42ea` | ⚠️ Unaudited |
| ElephantMoneyUnlimitedNFT | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236781 | `0xb92afedc8f8618be4198fbe5d97adb7c60ab3198` | ⚠️ Unaudited |
| ElephantNFTBulkSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2286be1974995b2568cd9e82727fc22bbb6a544a` | ⚠️ Unaudited |
| ElephantNFTMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x811d1b27a18383b7421bdde1cb81c55609f1da38`; bsc `0x846f61b03d9d498bef621b2912bfa39a04c6ce9a`; bsc `0xb6f387a199fa98a9f7e4544a1fbd416cd2b11972` | ⚠️ Unaudited |
| ElephantNFTStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x95beb12924e565e9b1f57d86d8fd848fa52706ce`; bsc `0xd357def4cbcdcf11a7c89bfffd36af38f0f261e0` | ⚠️ Unaudited |
| ElephantNFTStaking | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236769 | `0x9a372caefe9534dc09b87a8d99fe7c23508ec4da` | ⚠️ Unaudited |
| ElephantNFTStaking | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236779 | `0xb2b1d88aa427c2e1849e6d9ab2169d57f91c4fb3` | ⚠️ Unaudited |
| ElephantNFTTraitTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d8c5882110909505faa8407d168a7b7a0eb9eff` | ⚠️ Unaudited |
| ElephantNFTTraitTracker | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236787 | `0xce1b79d33602ede3aa8585ea4f5073f26b2824f1` | ⚠️ Unaudited |
| ElephantPoolDistributor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236749 | `0x612ce90180ec0185ad1aa09c74704a048a4cccba` | ⚠️ Unaudited |
| ElephantPoolDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed551486af4fb6472867a8f5e2fabc4b19208843` | ⚠️ Unaudited |
| ElephantRouterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf522ff5c3d1820ac7d54f580017899a7c5ab1cc` | ⚠️ Unaudited |
| ElephantRouterProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236797 | `0xeaad13cee0bd03efb52e10430475298abf253fa9` | ⚠️ Unaudited |
| ElephantYieldEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2689e35a22b750c046faeb892eb3868a408c5efd` | ⚠️ Unaudited |
| ERC20Mine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x1322315622bf090e0c20f82ab1351f6f6db6a630`; bsc `0x2b40bc6c9c12c18787436aa1e2b761f684f42999`; bsc `0x2c29cb46449335181ec055a1184d4201a6aa4c47`; bsc `0x322b43e406d1b4df9bc36d058317dd1cd3b0385f`; bsc `0x38e02c8ab552dee3a79e32eb4665ceae538fd145`; bsc `0x3b6067d4caa8a14c63fdbe6318f27a0bbc9f9237`; bsc `0x7b6bbc2943989a4e4ce24b43a6e730c754a0f695`; bsc `0x9a74b169798be874ef1c23b4092e5689969ef45e`; bsc `0xc1ba6bd60c6790b751ec2d90288b6cbf87d4f032`; bsc `0xf6585fe94f2147682723fcdffb973757bcdb608f`; bsc `0xf7ac92ab504390b577d6bb3352313d76d09f8e18` | ⚠️ Unaudited |
| ERC20MineV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xba428fc3c5ce457c236869787c26f725ff5168d8`; bsc `0xd123175c928a8bb8630f00b79be142b274ae1e4d` | ⚠️ Unaudited |
| ERC20V2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x652c09785c15db4adace871ed8874b8968a19a4d` | ⚠️ Unaudited |
| ERC20V3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ed22a48fee263207f5caae1a1f1a27011e7dc92` | ⚠️ Unaudited |
| FairFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x18b60f1d852636b8ed24da2b682c0bc60dd6bc31`; bsc `0xa0744f21a43bcc537c26f182b80df012abf68502` | ⚠️ Unaudited |
| FarmEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236771 | `0xa3473fcea7c6cbdfad6326351e07d93f1bab3281` | ⚠️ Unaudited |
| Fear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e629332c51046a17ec236553cb931cf0548b5e1` | ⚠️ Unaudited |
| FeeRateDIP3Impl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x06c19e1d97aadd6f30a8a2be4c5defa30976322b`; bsc `0x81899531487932b090e27206be04c0b993b03e45`; bsc `0xafb8ec1c7f9e4e2757e5bc7c9a9aef08dd07ecc2`; bsc `0xe5e9b0cab984b58b7e7ae17707d633295d5a4c4d` | ⚠️ Unaudited |
| FeeRateImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b0d94eb7a63b8a2909de1cb3951ecf7ae76d2fe` | ⚠️ Unaudited |
| FilterAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde8a380e84998986a59be6519ff172d40c0f9d41` | ⚠️ Unaudited |
| FilterERC1155V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7635694249b1bb39476a6ab28cc6b17c1e3caee1` | ⚠️ Unaudited |
| FilterERC721V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33364198d93648d3e976aa8625097567791c301f` | ⚠️ Unaudited |
| FlowEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x202b8d57709a03d1f9a78c9a034786f5fb8576ab` | ⚠️ Unaudited |
| Fragment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x9542f458b7003e7c8e938c6a87161d410243b419`; bsc `0xa8f057fdb35d8ebe1039d77f88c6f8575a839b14` | ⚠️ Unaudited |
| FuturesActionVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236748 | `0x5c5778073e9207ce1479276724fc31757ed436ae` | ⚠️ Unaudited |
| FuturesEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x155479d35a6d544268db8f5919c24c1b6cd7c791`; bsc `0x1f61a437645b403c15775184a91a6d98ed3fdaeb`; bsc `0x5b24f7645eec47edd997bf8fadf3e340518af11b`; bsc `0x5d87d8131b2582d385c45d86e461ab61b876237a`; bsc `0x778c191ecc493fe03a0a2364cfea264cb5e38440`; bsc `0x8a3955e475426fd81e4e2f5e9c90b8e3fc19ec06`; bsc `0x9a37fa4da95a0656dbb026b79b258558e5ceed56`; bsc `0x9ecde1e7e4e5d2ff05d8c7da34f7c850ae2cd68e`; bsc `0xa29004c5d8c2efae284195d8059131ee821f3381`; bsc `0xc22e924b10e75045c943a2d950f44a89bc208573`; bsc `0xe98529190706fdedaef1ad3f5dce1515601dcead` | ⚠️ Unaudited |
| FuturesEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236755 | `0x6c81fd141d97edbeda047a7694b63637e0e1a1ee` | ⚠️ Unaudited |
| FuturesNFTMigrationVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236770 | `0x9ae4de43feb64e85698dd3c66b0666448a8ff408` | ⚠️ Unaudited |
| FuturesRDFVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236773 | `0xa8e3ee88a52644edfd50d4f5527641f5f0535b3e` | ⚠️ Unaudited |
| FuturesVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236776 | `0xaeb9b31b9728a2c3d4df59748442d27f2277fcd2` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-236800 | `0xd5d3711939d88322a7dceeb529ace4bac3bac644` | ⚠️ Unaudited |
| InitializableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c5509cc5212c62f77e36126efec7adb75c830a5` | ⚠️ Unaudited |
| InitializableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99155e68ac1523b6f461f6427a90607eccf7bdf5` | ⚠️ Unaudited |
| InitializableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd0ed394042ae14a1d6b7478386cdffd9d1ea188` | ⚠️ Unaudited |
| InstantFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcc60a464c0be32a96706078ad886947488dced8` | ⚠️ Unaudited |
| InvestorMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbfa00a7d60df1a7fe4ac3f900d59a98622678ff7`; bsc `0xf723ec1d11a2116100f22be1ca01b98cd0b1d2a4` | ⚠️ Unaudited |
| LockedTokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x36b6731ec0992a1c042e9354f85e4f9a586110df`; bsc `0xc6894b763651511b69ce10ede156a4e4f67d834c`; bsc `0xe077ce9e58bb53b2231e5718a55f853bbaf4df9d` | ⚠️ Unaudited |
| MarketingTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x706d4d4e49a2608d2e0088075b67da5dbc4f40d0` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdbc1a13490deef9c3c12b44fe77b503c1b061739`; bsc `0xfb9b2d8b0e709713326f04e15668d8b1bce6308e` | ⚠️ Unaudited |
| MysteryBoxKAKA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4` | ⚠️ Unaudited |
| MysteryBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8` | ⚠️ Unaudited |
| NFTCollateralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0dd95ce685b8b101c52b43b203c351cf2d3a1deb`; bsc `0xd66b8b705d270767cc9d25400ce61198da1e3629` | ⚠️ Unaudited |
| NFTMarketplaceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x22a46d2da104b9bfc8c6b2dfd2a8c0632432c150`; bsc `0x36239e0913c94872f727557d10534a5496f1e30d`; bsc `0x3f3badb33a2d23e05736ba42da9e8f87f12130e0`; bsc `0xf57cadec454e335f7088c8348fe542c77f6fceb3` | ⚠️ Unaudited |
| NFTMarketplaceHelper | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236757 | `0x6f43186b7c5fc85a058d96984ad7947492ca3248` | ⚠️ Unaudited |
| NFTSalesTracker | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236737 | `0x2aefa3eb03f12eb93d6868fc5cbb250b9cd8ce12` | ⚠️ Unaudited |
| NFTSalesTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe896646f0f7d65f5c793e356f6093f0afe07871` | ⚠️ Unaudited |
| NFTTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e08eaafea48c147e8d092a7979d7b266f16b8fa` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2f48cde4cfd0fb4f5c873291d5cf2dc9e61f2db0`; bsc `0x742e7442e7c14d45569dc3b2d07600f6f94d3736` | ⚠️ Unaudited |
| PancakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca143ce32fe78f1f7019d7d551a6402fc5350c73` | ⚠️ Unaudited |
| PancakePair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236733 | `0x1cea83ec5e48d9157fcae27a19807bef79195ce1` | ⚠️ Unaudited |
| PancakePair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236745 | `0x4e90f5696f0c3c2a03cdbd3b41d0f683df4b861b` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x647bc907d520c3f63be38d01dbd979f5606bec48` | ⚠️ Unaudited |
| PancakePair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236799 | `0xf15a72b15fc4caed6fadb1ba7347f6ccd1e0aede` | ⚠️ Unaudited |
| PancakeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236731 | `0x10ed43c718714eb63d5aa57b78b54704e256024e` | ⚠️ Unaudited |
| PancakeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ad2c5314028897aecfcf37fd923c079beeb2c56` | ⚠️ Unaudited |
| PcsPeriodicTwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28fafc6ff614e6c2d7ca95959a3c0881fd5679e3` | ⚠️ Unaudited |
| PcsSnapshotTwapOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236746 | `0x5606ee12d741716c260fda2f6c89efdf60326d3c` | ⚠️ Unaudited |
| PcsSnapshotTwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9394b2dd11115721d93a6f05215f81c54893861` | ⚠️ Unaudited |
| PegSupportTreasuryStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b5eeb214a87d1d296652dec8c48bbdd1590e567` | ⚠️ Unaudited |
| PerformanceFund | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236789 | `0xd23d87a44977b0d77a8f8ca70e037b9001d412ac` | ⚠️ Unaudited |
| PerformanceFundV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236729 | `0x0600445ac4e20f1668556e0e058b3dc369d96162` | ⚠️ Unaudited |
| PoolHeartBeat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5cbfa41c00005562560d6e7a9e3d6a028ed46e5` | ⚠️ Unaudited |
| RandomGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7c062b9c584fa6ec2504270790d38240a2c5fe72`; bsc `0xefda126191d461858fdce83debaea2a561efc758` | ⚠️ Unaudited |
| ReferralData | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236750 | `0x6248d9a3dff17dcda92141aa1e8f1e9d6fe1ea4a` | ⚠️ Unaudited |
| SafeElephantNFTMinter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236736 | `0x29a8336a58e9b65b5bbc6f626b5b855cdaa45c06` | ⚠️ Unaudited |
| SafeElephantNFTMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x825055a405d88cf2a844db3e3dae6da53774d875`; bsc `0xb3a23fcdb4165e1bbef5263546e653b58c8fbacd` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 116 deployments: bsc `0x00a142210f6b3bb3f78751dcd7b589e9e7b39346`; bsc `0x00d2d8352fb688d8d60ae128cb171ef2ecfff1d4`; bsc `0x015c8be8d944b0190a8c7280ca874169713a44c1`; bsc `0x0189521e47093a317568055452ff66ebd3b731a9`; bsc `0x0999758d218987296c798326a0378995340c1e1b`; bsc `0x0c1e98645a1ee7f7a72e7491d77ae39676e457c9`; bsc `0x109eaa8b5ea469fb5ace0647a93695d8dcd5e836`; bsc `0x112ff6a467da8b70578d5c74f88fe22c5d6d4eef`; bsc `0x12e5b44374d4cc032800f87af9c3671ba2d93c3f`; bsc `0x131010022654b57b0c39c918ef8313ce79fa04b8`; bsc `0x1362b362d49c4b393a1ad2bbde4718366df3ba65`; bsc `0x13ca6a2c8d8d1382cc4deab5cd0a558cf54bb845`; bsc `0x13e9031133e901d5214fb4d593df8ecc034c8237`; bsc `0x1beb5ab88d20fddd8b318c5b0a05a38187f4d995`; bsc `0x1c3c5c8f97cad892a71ad090b5f8a161e4661492`; bsc `0x1edb72fa3ed9c730b5f3a3b8c7ed991409a0ced5`; bsc `0x1f337dea1679730906f46a06fd6034054bd32970`; bsc `0x263678375b93b839e7ed315a1fd69cd8cb24303d`; bsc `0x2792ccd3f02a22beba49f28f3ab0b52df18bd280`; bsc `0x28944eec2156e9a1a994e1082b1c806f9e673801`; bsc `0x2968daed4da7f9fa3edb63bf64b1c924aead6a46`; bsc `0x2a979fec60c9441c3dca5ce089dfe208d30d7ecd`; bsc `0x339c7c8005f592e76c0d2f45825d251994721d69`; bsc `0x34265c2d8458e80f18ea4465a98d8efe7ff67006`; bsc `0x36fc9ceadab79156e39f164cc7f7fe987128860f`; bsc `0x3e776fe9a9346714cb93a12cd3e8b1616786f08b`; bsc `0x3e963d74ef054f8e0914a4e92a7bef15754d547b`; bsc `0x44eece1e9ccbaa5ad0b8c14192467ab83be0ba51`; bsc `0x4540769e3970befd1c175f1822db45a308ece61a`; bsc `0x50945a039421ebb59ed119b0d25ffd007f0358ac`; bsc `0x5215d073bc8fc8f0d41cd26bfce89e8a00c18dd2`; bsc `0x53c60a2a4154065111119ebc78265dcac7bd9891`; bsc `0x57393b491a658e912ae895cde3cde7aa79c90411`; bsc `0x5f1b5b1e443cc8fabaa0d7972a78e8ee98f414a3`; bsc `0x61330d8fd89f0a5216ae07beb07ce4842fce5862`; bsc `0x62204ed8dbdbab4cd956202c31b0c58cf980378e`; bsc `0x62cfcc37ec021bd245e8307e839d62b30d258373`; bsc `0x631b87789c4e44fbdb028ab782c5bc3d6b90bca0`; bsc `0x6653c3c4cd2083febff49a52f9a5ce4c30978a25`; bsc `0x66ac2add22e63fa351344430b942b9368dd955ae`; bsc `0x683963df7331c65df8ace6818651a7611bdc39e5`; bsc `0x69c4c9cf979431da6c4b4a2f3874e6378dfc8157`; bsc `0x6c00f2ee6a79fd083de6ecf541fa59a5cbe5dff4`; bsc `0x6cbba2f3bd677da630aed2311253713e8ba1394d`; bsc `0x6d4067c53888cfefd0ad8fd0c7c99a6a5325fd4d`; bsc `0x6e31dad921e3c8be1059ed4432c8714da9c1df38`; bsc `0x724b71cb032a33db0b3364e4fb9f4bbb93dcfa1d`; bsc `0x72a79ae14cfb139f9c52b304da2e42a683109cc9`; bsc `0x7468aff7cff81ec2391b73e91cfda3a68833bebd`; bsc `0x7517c3d01e931062b7cb2155ccc75e5b29358dc6`; bsc `0x78f8184a387612576761af7d0dfa57f9ce0aa38e`; bsc `0x7951bc4f2bee7a642a8b3cf7d34c398e8e6fafc0`; bsc `0x7d621c9f70b3743cbab15c22d781754fcd7c9589`; bsc `0x81af4b68bca0b5a631e60aa69f678a0e0ebc5d61`; bsc `0x84f41cd419f8a89cfecad8443acfdf407655c859`; bsc `0x85028191179610cf7fcb780d0431921409de5bbb`; bsc `0x858d2cb50b69a71b36253274d34b7b21864a4832`; bsc `0x868cd888310fe749211b8eff7e348c0a6848536a`; bsc `0x8b10e6959f2915f532fe142b9c53b167eec42ff4`; bsc `0x8bb11860ef14fb467c837678d15b64f0dbd94d4b`; bsc `0x8d87f0282218f9e6fcdb5567c506f97d44105e71`; bsc `0x8dde1ad86d35fea96b7444e0003671517d3056d4`; bsc `0x8ddfcdca3019518feb2a06d42748869b2c916f2d`; bsc `0x973304a8e7b13dc9a26769e85d7cc945f4fda649`; bsc `0x994f7b32eea35ade9b8bfd3cef19e9b6efe0cb24`; bsc `0x9b0111326b87d4ff67542c5a5fd719e506892c03`; bsc `0x9b9f3f1112e74765518ce93b1489c70f6db52bff`; bsc `0xa1684bfc7a7b632a59b4bfdb18d9f90caa57ff15`; bsc `0xa320dbb75d76eaf1e05b8d195b64c5a2c172382f`; bsc `0xa394dd5adc4aaf41aa1f9cff28158a6af2823459`; bsc `0xa3a911033af250f7013597a6af6a719906ac4444`; bsc `0xa5aa3832474ab883d6aaa35e99e556d847aee8c2`; bsc `0xa6c2f2c62e9fee6cf27256d76a21bc59bf577c8f`; bsc `0xaa2b37d023ffa244022a9aa60eeb351cc79fd4e5`; bsc `0xaa9947f8b81c4d8078a6c120bf135afa777ff3e4`; bsc `0xab4592fc5a7f4f0f1829338a2dc85b4ad28a4784`; bsc `0xacb2f1d90bd3d182bdc9b9fce799efbe18e496f2`; bsc `0xb12c5543a277bd3c6190753474db4e04412f57b6`; bsc `0xb23b56c1e25537adcc81c76a850f242574391ce9`; bsc `0xbbbc00db00141948ed407c1e2605e9ec72c1d10c`; bsc `0xbd09d5e5dcc904bbf8649af78d323eefdf7b0d1d`; bsc `0xc1519acf5a108893c1831001c8d9490f29b52d21`; bsc `0xc506769a21ecccd719c89fc44e31b1ecdc81e920`; bsc `0xc6a5773c9925779704560e41982acf5c2ec5f3eb`; bsc `0xc7019fb00dc2b080dcb45a7b0a3d09b230fdb84a`; bsc `0xc7313ccf02f30dab4649415a72e56ded06823fa7`; bsc `0xc7ba45cb131c93816fa03e4c03da22b22f2ac468`; bsc `0xc941b28b9b62c6f3fe0a194c54e13608751676a3`; bsc `0xcc1b012ad72736653e1e5043d902a4081f3f6a73`; bsc `0xcdebe059cfd7df5d210927b6b8cb8fa1c51c22fa`; bsc `0xcf505cf97087562971e0e77913959742316bd5fa`; bsc `0xd3b649349e62e658cb6a42ac829a5309a29d09d4`; bsc `0xd4855892a3188da76da0066b9e4918939511e67a`; bsc `0xd59227c5fb89e812c42a5ed12c71de83dc5f3161`; bsc `0xd86e4788dd0b59ce1d7e42a2916fceea0ce0b4c4`; bsc `0xda730dc51c5c6c3fcbfc00676df795c358458187`; bsc `0xe018d66f21c6f2ac93b652428df9d1755401831d`; bsc `0xe02f6684bd918c750ba6ba58efcbf366d451dc98`; bsc `0xe056fb8ce6a3437530b1aff799185a009b25990b`; bsc `0xe09d1db8d23dfccf938785f40c43ac5e82ac20a0`; bsc `0xe42d17b1a734e04d2e0cb33234ab074e21c175a7`; bsc `0xe63967d4278316e9a54b6be5270c29e7416e6f74`; bsc `0xe6c58b1626c2960d334c7996c999450d6dcb9cc5`; bsc `0xe737edf3de0ace760d5497610ef2f317a43673a8`; bsc `0xeaebd168575f2ab39bd2907489afca11e014e4b1`; bsc `0xeb81346e00aba3d5b90ad42c1f02bd3c200540b7`; bsc `0xedb96389acf57e2c3dbe6ec9c6bfa4bd1a1e6879`; bsc `0xeeee294dcad6fe1f213988b82f45718d95d8e193`; bsc `0xf2db343c091c26d59e9f1761416e23a276186dda`; bsc `0xf31f62a6afb0546771a821e0f98fd187ee7f7d4c`; bsc `0xf4540b8dd7b957ca9b1acdbf75ec6b6f17950f0d`; bsc `0xf4af1ab163ca02040d66055fd49d905e4fa1637c`; bsc `0xf54c23398fdbd72ab1d1708099d5faad84cd9ff1`; bsc `0xf62e2321b04248a381bbac9ed2ac788775d1c899`; bsc `0xfd6820eca12a8dd9e92b1bbb7dfc9f4afa367275`; bsc `0xfd8fce6fa15067efa886ce9b678a5cf1e851755d` | ⚠️ Unaudited |
| StampedeEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x7c4dad1b249efdc998f3569c8537866639b914b7`; bsc `0x7f6cecdd1b779e11e892643863fd5bae8da171ce`; bsc `0xac029255e8ed91cca690df20b6dc89ba10d65c14` | ⚠️ Unaudited |
| StampedeEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236794 | `0xdd8ad431c5143e06c68d35dad1974ce3987b68a8` | ⚠️ Unaudited |
| StampedeMigrationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24f1c78008afea4e1a2639db62a2b9d17ef99c58` | ⚠️ Unaudited |
| StampedeMigrationEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236742 | `0x49241ea8ec03ffa5521ad8717579e396ceb02400` | ⚠️ Unaudited |
| SuperCharger | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236798 | `0xec8c93d29418b4d3e13edb18cc6dbc24606d7305` | ⚠️ Unaudited |
| SwapFeeReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2810b4f1172e0dccbc226d8c716534ff9c552dd8`; bsc `0x41bde09be6958027adf80d91636a2921e24aaf83`; bsc `0x7039321ddb9110b0f395b2bd246f2bde278f9ee8`; bsc `0x92437a6743e304f4ea6719b08d057be5dfc31d2c`; bsc `0xc8d5d4f3dcbdfaad3a161843ab9e679688e4ea51`; bsc `0xcfb4503041d7cffc5b2d2ff0e630be4e24223800`; bsc `0xf6af641a2399972bd89e3d261bb8bad0a237aedb` | ⚠️ Unaudited |
| TeamTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x513d1500c5a18816bfed5d78dc4859d831b6b036` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5d6fed0f4735ff2036ce4be535bd32e77dae9fe` | ⚠️ Unaudited |
| Treasury | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236738 | `0x2da1a94e7bda3a71342a19643f94443641b5267d` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236767 | `0x98f6c7c953cf4cef0fd632b2509c9e349687fc92` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236775 | `0xacef13009d7e5701798a0d2c7cc7e07f6937bfdd` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236777 | `0xaf0980a0f52954777c491166e7f40db2b6fbb4fc` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236784 | `0xc6a42b74867d1f7049192ffb6d0a9d77696d18bb` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236785 | `0xcb5a02bb3a38e92e591d323d6824586608ce8ce4` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236791 | `0xd3b4fb63e249a727b9976864b28184b85abc6fdf` | ⚠️ Unaudited |
| Treasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236792 | `0xd9de89efb084fff7900eac23f2a991894500ec3e` | ⚠️ Unaudited |
| Trumpet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236747 | `0x574a691d05eee825299024b2de584b208647e073` | ⚠️ Unaudited |
| Trumpet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6a68ae7defe1f0ba7e02c0fa0864e68367ef81c` | ⚠️ Unaudited |
| TrunkElephantLiquidityBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x470cb1f8addb6476c420d0e35744842eeff1f1de` | ⚠️ Unaudited |
| TrunkElephantLiquidityBridge | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236762 | `0x7cb957002d1d898b602c9a0a65555acadab64b04` | ⚠️ Unaudited |
| TRUNKSupportTreasuryStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236788 | `0xcecba44ce9ee16948551e85864f3eef652174587` | ⚠️ Unaudited |
| Turbine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236752 | `0x69c714f868855ec3f24dfff0fd5f1805642f2d86` | ⚠️ Unaudited |
| Turbine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236756 | `0x6de7dee23b27a6abd1b3a1a4c0c40b128620a51d` | ⚠️ Unaudited |
| Turbine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7018214322208ef79ebf697f95a5bee71edd874e`; bsc `0xb4fbd2c7307d91fbd9d751844d687f69bd2c9db8` | ⚠️ Unaudited |
| TurbineProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236739 | `0x2e390c82116870f5f59b48cdd05ead3063a2cb89` | ⚠️ Unaudited |
| TurbineProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236754 | `0x6beadd1bc88c0caad109f46ba72e5842e442ded1` | ⚠️ Unaudited |
| UpCrowdPoolingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3e64f18168651d140aae57e0cf325874d066ba9e`; bsc `0x4f57f6929e58ae564f6ab090fe0aeecb39b0f270`; bsc `0x69f52ac40185a2a005d49114f0b77b7ba856f0a0`; bsc `0xeceade494fd5f913fd937c5cac4577236395dc32` | ⚠️ Unaudited |
| UserQuota | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x695d7be43ab10d9226d7dd1bae26ac1d883887d7`; bsc `0xae71861fd532d29e1a8a6059937b7242e16f0e12` | ⚠️ Unaudited |
| UserQuotaFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e467aa3a9c33957dc34a04f64fb0be32f80cbdd` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5457877200e4ed4c07acee8b274b0a65c042d0fb` | ⚠️ Unaudited |
| Vault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236759 | `0x71b00a9c9cc1902efddd6ba28850f6f34f5938ed` | ⚠️ Unaudited |
| vDODOMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f` | ⚠️ Unaudited |
| WBNB | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236782 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ⚠️ Unaudited |
| WELEPHANT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236734 | `0x241f21df529c05289a00dafecea10139a287cdca` | ⚠️ Unaudited |
| WELEPHANT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60fc2634e212e553cce47627f1bcc7da84fd4de3` | ⚠️ Unaudited |
| WELEPHANT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236772 | `0xa546d072bf7656d10bfedacd4b93a5358c4d8e47` | ⚠️ Unaudited |
| WElephantRouterProxy | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2`; bsc `0xba532fc1e804ffe4b771f1ec544acea6b63a963a` | ⚠️ Unaudited |
| WElephantRouterProxy | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236778 | `0xb247c1d9e9380a970d317420ed14d21b41422d15` | ⚠️ Unaudited |
| Whitelist | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236740 | `0x3064cda024b921f83e72c996bc06982a5885ed97` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (215)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0d8775f648430679a709e98d2b0cb6250d2887ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x10ed43c718714eb63d5aa57b78b54704e256024e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3d76cd9723e0cc8875907cf944c147ee4bafb29e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x45b7a724dadb55fae51319184ad6e2323287959e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x514910771af9ca656af840dff83e8264ecf986ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6b785a0322126826d8226d77e173d75dafb84d11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7a40ab4b8d016e4e76faea844543b033a00ab54d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7b3611b0affc27d212a68293831d3b55354b802f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x84a4eccb81a1fd0867c7682e2c85ffef4538a2f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x85cddce5c1889d84e10d97074b7af007f2cadcc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x966053ca4fca049173eb1f27e4cb168ccb794534` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd46ba6d942050d489dbd938a2c909a5d5039a161` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd5d3711939d88322a7dceeb529ace4bac3bac644` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf164fc0ec4e93095b804a4795bbe1e041497b92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00c093e166fbcf30e7b7fcd0632dafe9d096b9f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00f73680f3faccc5fe51c681a1498f777c80053c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x029aa738a2524f806be7b6332732cf75908851ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03533f4686403292f0acac189020be53187b5a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04a774ae354e0521f3dea6d8081cb57620cf2532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05588d865f4b924db54e23d9c8de5ac3fac284ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07a7c3719a47983d5749318ac2d303c353e250c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08406b76fedab423d171249cb33335cd4be60a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0990d4dd26e856a378bb8e5d6bce182c758990ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09fc7c5719c6177d51ef8e69b1493aa7a897f817` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236730 | `0x0b3ddbf30ff7da933c8b247c276db0af093ffe11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ccf304e04915f64772b4e19b78abb6dd52557db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x101d6598400194b51e1ff3dbfb16147feec49c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x107f56bac4e3aa8b010a296eb3645dc63cad096f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x116eeb23384451c78ed366d4f67d5ad44ee771a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11dfa8301169754a5c020ac6c57519f4c8198d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x125593e7d9816cbeccb56812f96725dac38e95bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13abe39f7b877bc3022746da88423e291269bc6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14bc99875e0d4cc2d178ac3543c439de95483c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x165ba87e882208100672b6c56f477ee42502c820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16c1bc94205f962bb9fa1b4a1110faf7c451c8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17ebc315760bb47384224a5f3bf829222fbd3aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2dde46c5528acd0b1657eca1446467095edf00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e0d4043c0cd3ed15f3c2afe60b0f213c9b5e30d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e2c67a54376df5943b53ac2f9b9019b764e4f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eb6cc182184007265e826beeb16103174fdbcee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2037b74c8c509a30b9f5509bab8b58e9dc7657f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20e64a35688b1e98219733cb55d8efe40ac179e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x213cc0bd53cf8a02870e91b378f9ee79c987321b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22013ef52a27b079cec4ae8b98cf490f3ea04b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x221e4c29cb9ba2424b25f3b98306663886afd1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2753cd9687fba4e9504ec45bfe911589c25fabd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27896749b31b1e1464611b13ea9b97dde50ff468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29828b3f65c2b55a79fd620ff511b9638d76be02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c6c726b9932d7982a7b94b70b288dd5edaeb226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d5e8ec85fd1f89e7865c2ef909c64f17edf943d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ef706bb5dc297001f24f08c06fba466ab1f1be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2efff893b6fc0bff779d5448fa0c361975f0961c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3000d21de4b0a6c503f3bf4f6a1b2829f4fa35e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30c72672d07ce393412b99a690b6c2e49cc07d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30d4d880ccca00c508d1269ddb8668dd7ffc8732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30ead2c7910499fed5e794df9756b879529c5b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31239b51f7066414b7ca3608c782e3778ca37de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31d23e6b78d3b87fa3a3888ed8bc284b0ec87f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34cb11167a13ee61113e04d7dd7893e0bd9fcf03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x351738f68cd5e515e647e636222975f505afa644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x366ad3118f5f29c3db290a9d30e9ffbecc9fddcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3685407aabf9a0ab54ed39168733b1e2d2a80e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ac762ab27d59fd1389f1c709d515c223c344af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aec8fc4fba90ef8155d872fd9bd23053da3ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3af527fc332d819b1dbace4bdcae2c617b303e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2a8656c8a1df0dfdd8d2ffc73e30d3af67563f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b53aa80dd213f430007fa81995aadf7ee1bd4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b545bc1200e0952868f4e90a7f2930ff8547f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c05bf419e9ccd606dbf76254fc89e78789582b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c117303322cbb76fc56ea684780e7d197660d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c1336d70972f55c2b78e515ce2730691ad07ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dfd47868067600445f36e8c33951b7f6ce314d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f29046bf2e1ef4f310e58778da1857e4b56cef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fcf08747e78eac249a39a15b2932a3d2e88c074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x410ea72f5c66fc23bb0fbd87c77991d032d244c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44224764a1728a47ed5f93282b9417788b6f225d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47a49626e4cd1b361c72a73472d91eb8556180a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48d5a4d3f2cb06ed807f9ca550200ddb1bf3cd50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49a984a5da6bcccd72874f698c01638fdf0de166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a8aeffdaf052204c8cb7e21c89e10b8c0af2115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b735d5d68d61c46af6189b8842b8cc2dcfc1423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c4f8050e5de8560016a3bbe501ffad4b3853f2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236743 | `0x4c64719e524383662232fdb50dfdadefb15c09d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e6465c96456f39dc7124dbade53d6aa03ca71e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fcd6994a0261ac91d6cc05be50be4c381523a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x501bce6700d80b2d40d45474f13e17213363d04d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51147bdee0415b0a309ee156e74354118b326699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5310dff3557c9f13b72806d523fcb5c384dafcf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x553a68b3865764a59bfc58adc9bbcfb1b092eb18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5687ceea2c311aab6ae089be84fabd9ae1967ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c18ff96ce149971ad9587711d8e707c51332171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x601cc4c85eb692b9067c51f3ce32447955a79d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64f674a2c5e6c833e9a5862839956e4f40e2ff84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6576e3c1a52f9c22119316c104d7ef7803fc783b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x674bb9d97f0c41bb41ecfcb50fab1fedcbc7cae1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236751 | `0x6839e295a8f13864a2830fa0dcc0f52e71a82dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x691c421cbf47774f2ae7efd3f901080320a18325` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236753 | `0x6b50811cd8a084ab1c99c6003ba6df0eda74c181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9cd0d89ec79f662a694b97a7d9ae81484693fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dfaaacc4385c2e080a45a9aebe92c94237572d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e7995da9b8707cb68fa0c5632981f01870f8434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f052e85197e4b2c6f306fee01f25a5355722ef8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236758 | `0x708115e21b72eab22de31458b7b3a791c45813d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70e61aceacc37502ab49aa8914a4b66842b1255f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77197af2830321ee5a874ab7a0b074f6cb469def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7811849a0524c12a5b1e54beb5050b8a6df913c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x799c6e12160ec2e5e47046e0875c799d2f0d8515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a0d7b36b02dde3eff947e9b6cea97851a68e5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a62f3686bc633dd950d7c2c3ca3f2568f169b57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236760 | `0x7b68a2b312b1f69b8f255af585e17a7c00278018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7bcb412f80234aaf9186e66b3e65eaa61a7a0411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c073b1c1a7e68ffbccca4e49c0592407380022a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236761 | `0x7c7990f9049a079d19e31b65df2a3fcf385a5569` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236763 | `0x7d908cd5dcb03c2d57184da91445c9235f385043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f73dec2e4b9c5fedfc2f8f3882b6791a1d157f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fcb0ce0257a0af533552143b0cf2dfc10788b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82e6354a55b9fbb382abca2189bdaea4b1dbb3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86a1096e32f6663033a267295bf1419846298b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86b332e0ca21fd2c0636822fbaa2d14d5834fab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86c4da96d8a9d6307dec26d937b2cc9044690883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8796f86bb9b876384497894122e860cadfc48a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88d32f1af8c9f9bb4586d1bc892fe39104cc8e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cde0d63810a9bbb6bb458ca988c68b006af3085` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236764 | `0x8ce535728c72fda6ada9449faf31184674f48da5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236765 | `0x8cf0a553ab3896e4832ebcc519a7a60828ab5740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dad7dbf5950c3fec9e1a5e8ad28214074d57d82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e4842d0570c85ba3805a9508dce7c6a458359d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e5248dba8e766075295308bed7e8cdc7d1a05e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9182fd7a4ad0a2f7d7a33090da2d0f5670d38d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x924c26737c083cb1f067efbfdda97251da55a7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92dade9ab801c29008b4109d93dceb51ca4e162b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x962b70e532370de831a64ed8b40f92dcf05a32ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9806abcbe3216b11fba951e5bd34ff7c5b304dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ab212cce5802c6ee9d430e82eccf62e5fdb9f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b8ea559ac48121ad04d12d3cb759f9783cdb593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d392308902cfe87fcd947e64e98e2269f07af34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa03e0dc689a219a0f237a82387b90edf2fcbb598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0cb2da6d5abe4c192ab0d5353077c90261a260b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa70a8dc7bdf000c8f9374c5b4a542b3656ebad79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7473c70b233597eb41381486374bf2b0c4040fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa86f3161b419b0e518991df1db836cca6c36414a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaffad1017d6a13e026a00121bf258c616b25f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac0b6a958099aaae873898e09ed11a66d1a06ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf0a362a96d6e2585160db5bf31c6b8601cbb968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf47e90481c5dbc3e84c9589ffd819c4acb23d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf860f521867bc0f060fba492bb8841fdbeeab3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2f8f2aff700e3a44c947ef03b577e5d59d12cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb629acf187d6f8f1a3a76047981e6936e141f8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba8562a7e90244c8db4134101261e5433ece7b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb947c796d7578a9d5fec2442bc529421546a353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc99f612af5abf549594d6febe3c65c6bfae517c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbee8d37cae21faae5e8dff37123c07f8cac2b702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc04c9c6a677117aa85b0fff9e8bb747686a9e48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc274f0e93fac9932364281e5c5f2c99201f15eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc342f872cb0c43ece902a3c1cef27006346aabef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc48aa997f9f382c6c056b3cf1217586cdf36c596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5b7fd327428b4ebeaaefcb2b9557ac29cd8ae15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6f6f5dcaccd7866ea57128c56a853fdc5fb5302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6fa53e67f4bc733bbfaff0dc31c265b6e760968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7e2dff6e3ea2bfb587d4900e38d49dacff97d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8b18b81631dea1f7e4f810946854456d7c4e79a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8fe2440744dcd733246a4db14093664defd5a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc99426958c6eedf4562f566b5f5cc7bb9cdd47c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9d455c1b1074a69f9f1c6287ee71127e1b49099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc5dcfafdfafb78df69443048be26f07f9dd21a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xceef7924ae0f3e97d6d689983c2a3b4156e7fcd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0ae248d97a5b2d8ac3c0323ff72990d03dc8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0ff24622a0b235664682944a113f5cd25c1016a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd13ab98293f7ffebdb8e2ab2ca75df60ca3dd813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1d23167b521dc8b249f14db8eeaa70438455876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd23112a7659aa55a5d5e4cdfb6a76cce23f9c099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3477cedc1671cb1b18899b0dc0a8c1bd52fe4d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-236790 | `0xd35c54a918717eb51d21ce95d80f3c17b0943e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4fb0df9936d1b0aae52af53b5813fe1ca6dd053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd520a3b47e42a1063617a9b6273b206a07bdf834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5a7c9b326db400b77dc378d9ff2ef5e8ffeb529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6ac57891d663bf9fefe618e2c7f5754cd086135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd72b354bd39f8f11d0ca07bd5724896bb1a42707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd925154517d08ab42b28e5149c43bf63950e5268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd96d9c16ca78029fd24b0e843d89b259e6c17151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb964b780ae0911fea14721339caa1b619363bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbd20ffbec087c7572de3a4db0420ae711c88852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcb5034fb25a5e88b124658be468ff55ed52e264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd171a92252d305351311fa400dec5bcd70325d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde3ea63c00229b9713bb625dddd9da1255c4ffa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdea860ae76aa2a19e1cbb4d41173741289353e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfc11af49bc972a7d13e3dceb47d57cbb882ec33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe18735e53f0a1fdc2c19a5f46cc3d1631a0e7c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1cac597ffb58dd588ba68f2bbf3d2a91175388d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe223acd7cbafabcffcafec5e69877424c4760ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe30daca050bc2a030617ba82b7febdd81ac1d3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5a7bee989470c0e118665e28e0c257faa955660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5cbd990458465bf202720b1d2f89a7091c36c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe60e4326b1d9125e096ce60f86f73a53ded9b32e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9bcd0228af9719db4518de40060fad585d5f3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xede9099d7b3e771471a364100b6d4a8ca77b8141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf16cd6de037c65f27ecac92edeaf1b37958555c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf43910aa4aea08df973edcd6c6949a725336f6f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf60d3c1bdecb27bb2785196e98246b6f8e6f752a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf74d1e4ebd7cb565edd695fb6529ff66e91a61eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7c1014892647890a8121dd072585a1344f4d21d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf7cc784bd260eafc1193d337ffcea4d6dda0dd71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7f376ea0584ae97706b78cc1b320cb7c811c10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf907e1b83fefa577bb1050361310777130d9e806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf90f267814ec8e3252d3eebf7b69e6b9d00da6f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf9d64317d4cda0a6b4ef41a32e301ea64f8b5cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbf9a25db5561ff77d25d2d5c5cd87f90caa0282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc3a92072bf845a02dd103937b8d3d1a6f8bde30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc586091bc059ede2dcdfbffa40af2419842bb5e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 495
- Live contracts: 0
- Unknown liveness contracts: 495
- Source-verified contracts: 305
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=69, exact address book overlap=18, source verified unclassified=229, unverified unclassified=179

Showing first 200 of 495 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | candidate review | AdministrativeNFTMinter<br>`0xa9421179abe9faa3ab01d9086ff6da0cd82a8ee4` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | AprForwardingTreasuryStrategy<br>`0x01fb3809de463d114b66d7e428035196cd6ae484` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | AprForwardingTreasuryStrategy<br>`0x3750a4a5e7d7198163df95d436b8d5ea7e64f326` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | AprForwardingTreasuryStrategy<br>`0x6349cbe970863ebcf864b375d50bf3bc77f4a101` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | BackedForwardingPool<br>`0x99c9196f2bcb898f94a346b27cde7ce305ea8f05` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | BNBReserveStrategy<br>`0xb74e9677bdfeabbf33614d468a74b502bc4ff897` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | BNBReserveStrategy<br>`0xcccc27bafb2008f800c918ab2cd260a3b051b43c` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | BotGasStation<br>`0xc4d9b08d0d7632f8e1a0f07f91e10f0c4a6778b9` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | BTCBTurbine<br>`0x2e74b429836d7357348b520139a3a6145441858c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Depot<br>`0x1a6a71f07d85f3aa76baa5616a7bda3ccf7e68a5` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Depot<br>`0x6da24602756d5c6177dd3090953f8e2e9e39f42b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantDollarDistributor<br>`0x00c66cf7b0e38d4eb528c81c28b55ca589da2cd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantDollarDistributor<br>`0x8655e8f5febef300645d2cabad84a1fda72eee3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantDollarDistributor<br>`0x9462e7d37c7765a5acbb55cd3eebeabe9f46de89` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantDollarDistributor<br>`0xb702b3df8a4ae675c4dd392f8f44a08321c9529c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantDollarDistributor<br>`0xdb2c2741542e37bda373be49605cb8efc5440455` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantMarketPlace<br>`0x2390901198838aabbb383ce0ac215ad9e05e2a66` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantNFTStaking<br>`0x95beb12924e565e9b1f57d86d8fd848fa52706ce` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantPoolDistributor<br>`0x612ce90180ec0185ad1aa09c74704a048a4cccba` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantPoolDistributor<br>`0xed551486af4fb6472867a8f5e2fabc4b19208843` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ElephantYieldEngine<br>`0x2689e35a22b750c046faeb892eb3868a408c5efd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FarmEngine<br>`0xa3473fcea7c6cbdfad6326351e07d93f1bab3281` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FlowEngine<br>`0x202b8d57709a03d1f9a78c9a034786f5fb8576ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesActionVault<br>`0x5c5778073e9207ce1479276724fc31757ed436ae` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0x155479d35a6d544268db8f5919c24c1b6cd7c791` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0x1f61a437645b403c15775184a91a6d98ed3fdaeb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0x5b24f7645eec47edd997bf8fadf3e340518af11b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0x5d87d8131b2582d385c45d86e461ab61b876237a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0x778c191ecc493fe03a0a2364cfea264cb5e38440` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0x8a3955e475426fd81e4e2f5e9c90b8e3fc19ec06` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0x9a37fa4da95a0656dbb026b79b258558e5ceed56` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0xa29004c5d8c2efae284195d8059131ee821f3381` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0xc22e924b10e75045c943a2d950f44a89bc208573` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesEngine<br>`0xe98529190706fdedaef1ad3f5dce1515601dcead` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesNFTMigrationVault<br>`0x9ae4de43feb64e85698dd3c66b0666448a8ff408` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesRDFVault<br>`0xa8e3ee88a52644edfd50d4f5527641f5f0535b3e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | FuturesVault<br>`0xaeb9b31b9728a2c3d4df59748442d27f2277fcd2` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | NFTMarketplaceHelper<br>`0x22a46d2da104b9bfc8c6b2dfd2a8c0632432c150` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | NFTMarketplaceHelper<br>`0x36239e0913c94872f727557d10534a5496f1e30d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | NFTMarketplaceHelper<br>`0x3f3badb33a2d23e05736ba42da9e8f87f12130e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | NFTMarketplaceHelper<br>`0xf57cadec454e335f7088c8348fe542c77f6fceb3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | NFTSalesTracker<br>`0x2aefa3eb03f12eb93d6868fc5cbb250b9cd8ce12` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | NFTSalesTracker<br>`0xbe896646f0f7d65f5c793e356f6093f0afe07871` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | PcsPeriodicTwapOracle<br>`0x28fafc6ff614e6c2d7ca95959a3c0881fd5679e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | PcsSnapshotTwapOracle<br>`0xb9394b2dd11115721d93a6f05215f81c54893861` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | PegSupportTreasuryStrategy<br>`0x6b5eeb214a87d1d296652dec8c48bbdd1590e567` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | PerformanceFund<br>`0xd23d87a44977b0d77a8f8ca70e037b9001d412ac` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | PerformanceFundV3<br>`0x0600445ac4e20f1668556e0e058b3dc369d96162` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | ReferralData<br>`0x6248d9a3dff17dcda92141aa1e8f1e9d6fe1ea4a` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | StampedeEngine<br>`0x7c4dad1b249efdc998f3569c8537866639b914b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | StampedeEngine<br>`0x7f6cecdd1b779e11e892643863fd5bae8da171ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | StampedeEngine<br>`0xac029255e8ed91cca690df20b6dc89ba10d65c14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | StampedeEngine<br>`0xdd8ad431c5143e06c68d35dad1974ce3987b68a8` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | StampedeMigrationEngine<br>`0x24f1c78008afea4e1a2639db62a2b9d17ef99c58` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | StampedeMigrationEngine<br>`0x49241ea8ec03ffa5521ad8717579e396ceb02400` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Treasury<br>`0x98f6c7c953cf4cef0fd632b2509c9e349687fc92` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Treasury<br>`0xacef13009d7e5701798a0d2c7cc7e07f6937bfdd` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Treasury<br>`0xaf0980a0f52954777c491166e7f40db2b6fbb4fc` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Treasury<br>`0xc6a42b74867d1f7049192ffb6d0a9d77696d18bb` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Treasury<br>`0xcb5a02bb3a38e92e591d323d6824586608ce8ce4` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Treasury<br>`0xd3b4fb63e249a727b9976864b28184b85abc6fdf` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Treasury<br>`0xd9de89efb084fff7900eac23f2a991894500ec3e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | TrunkElephantLiquidityBridge<br>`0x470cb1f8addb6476c420d0e35744842eeff1f1de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | TRUNKSupportTreasuryStrategy<br>`0xcecba44ce9ee16948551e85864f3eef652174587` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Turbine<br>`0x7018214322208ef79ebf697f95a5bee71edd874e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Turbine<br>`0xb4fbd2c7307d91fbd9d751844d687f69bd2c9db8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Vault<br>`0x5457877200e4ed4c07acee8b274b0a65c042d0fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Vault<br>`0x71b00a9c9cc1902efddd6ba28850f6f34f5938ed` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | candidate review | Whitelist<br>`0x3064cda024b921f83e72c996bc06982a5885ed97` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | BulkNFTMinter<br>`0x029a8915cb63cbb28dcd1195ce6a00596bfb606a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | ElephantNFTTraitTracker<br>`0xce1b79d33602ede3aa8585ea4f5073f26b2824f1` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | ElephantRouterProxy<br>`0xeaad13cee0bd03efb52e10430475298abf253fa9` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | SafeElephantNFTMinter<br>`0x29a8336a58e9b65b5bbc6f626b5b855cdaa45c06` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | TurbineProxy<br>`0x2e390c82116870f5f59b48cdd05ead3063a2cb89` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | TurbineProxy<br>`0x6beadd1bc88c0caad109f46ba72e5842e442ded1` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x0b3ddbf30ff7da933c8b247c276db0af093ffe11` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x4c64719e524383662232fdb50dfdadefb15c09d9` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x6839e295a8f13864a2830fa0dcc0f52e71a82dbf` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x6b50811cd8a084ab1c99c6003ba6df0eda74c181` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x708115e21b72eab22de31458b7b3a791c45813d2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x7b68a2b312b1f69b8f255af585e17a7c00278018` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x7c7990f9049a079d19e31b65df2a3fcf385a5569` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x7d908cd5dcb03c2d57184da91445c9235f385043` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x8ce535728c72fda6ada9449faf31184674f48da5` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0x8cf0a553ab3896e4832ebcc519a7a60828ab5740` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | exact address book overlap | UnnamedContract<br>`0xd35c54a918717eb51d21ce95d80f3c17b0943e43` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | BulkNFTMinter<br>`0x112492a074e9d6b84fe73d2c76ee9be9497f7269` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | BulkNFTMinter<br>`0xd606ec65f3c4f9ee892665b8a5d69ce940e1444b` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | ElephantNFTBulkSender<br>`0x2286be1974995b2568cd9e82727fc22bbb6a544a` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | ElephantNFTMinter<br>`0x811d1b27a18383b7421bdde1cb81c55609f1da38` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | ElephantNFTMinter<br>`0x846f61b03d9d498bef621b2912bfa39a04c6ce9a` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | ElephantNFTMinter<br>`0xb6f387a199fa98a9f7e4544a1fbd416cd2b11972` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | ElephantNFTStaking<br>`0xd357def4cbcdcf11a7c89bfffd36af38f0f261e0` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | ElephantNFTTraitTracker<br>`0x4d8c5882110909505faa8407d168a7b7a0eb9eff` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | ElephantRouterProxy<br>`0xbf522ff5c3d1820ac7d54f580017899a7c5ab1cc` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | SafeElephantNFTMinter<br>`0x825055a405d88cf2a844db3e3dae6da53774d875` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | SafeElephantNFTMinter<br>`0xb3a23fcdb4165e1bbef5263546e653b58c8fbacd` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | source verified unclassified | Trumpet<br>`0xb6a68ae7defe1f0ba7e02c0fa0864e68367ef81c` | non_address_book | unknown | unknown | verified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x00c093e166fbcf30e7b7fcd0632dafe9d096b9f4` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x00f73680f3faccc5fe51c681a1498f777c80053c` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x029aa738a2524f806be7b6332732cf75908851ef` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x03533f4686403292f0acac189020be53187b5a74` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x04a774ae354e0521f3dea6d8081cb57620cf2532` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x05588d865f4b924db54e23d9c8de5ac3fac284ca` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x07a7c3719a47983d5749318ac2d303c353e250c3` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08406b76fedab423d171249cb33335cd4be60a04` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0990d4dd26e856a378bb8e5d6bce182c758990ed` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09fc7c5719c6177d51ef8e69b1493aa7a897f817` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ccf304e04915f64772b4e19b78abb6dd52557db` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x101d6598400194b51e1ff3dbfb16147feec49c7e` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x107f56bac4e3aa8b010a296eb3645dc63cad096f` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x11dfa8301169754a5c020ac6c57519f4c8198d61` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x125593e7d9816cbeccb56812f96725dac38e95bb` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x13abe39f7b877bc3022746da88423e291269bc6f` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x14bc99875e0d4cc2d178ac3543c439de95483c53` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x16c1bc94205f962bb9fa1b4a1110faf7c451c8bc` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d2dde46c5528acd0b1657eca1446467095edf00` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1e2c67a54376df5943b53ac2f9b9019b764e4f09` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2037b74c8c509a30b9f5509bab8b58e9dc7657f4` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x20e64a35688b1e98219733cb55d8efe40ac179e1` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x213cc0bd53cf8a02870e91b378f9ee79c987321b` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22013ef52a27b079cec4ae8b98cf490f3ea04b23` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x221e4c29cb9ba2424b25f3b98306663886afd1e9` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2753cd9687fba4e9504ec45bfe911589c25fabd5` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x27896749b31b1e1464611b13ea9b97dde50ff468` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c6c726b9932d7982a7b94b70b288dd5edaeb226` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d5e8ec85fd1f89e7865c2ef909c64f17edf943d` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2efff893b6fc0bff779d5448fa0c361975f0961c` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3000d21de4b0a6c503f3bf4f6a1b2829f4fa35e8` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30c72672d07ce393412b99a690b6c2e49cc07d22` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30d4d880ccca00c508d1269ddb8668dd7ffc8732` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30ead2c7910499fed5e794df9756b879529c5b53` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x31239b51f7066414b7ca3608c782e3778ca37de6` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x31d23e6b78d3b87fa3a3888ed8bc284b0ec87f73` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34cb11167a13ee61113e04d7dd7893e0bd9fcf03` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x351738f68cd5e515e647e636222975f505afa644` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x366ad3118f5f29c3db290a9d30e9ffbecc9fddcb` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3685407aabf9a0ab54ed39168733b1e2d2a80e5e` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3ac762ab27d59fd1389f1c709d515c223c344af8` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3aec8fc4fba90ef8155d872fd9bd23053da3ecbd` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3af527fc332d819b1dbace4bdcae2c617b303e85` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3b2a8656c8a1df0dfdd8d2ffc73e30d3af67563f` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3c05bf419e9ccd606dbf76254fc89e78789582b2` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3c117303322cbb76fc56ea684780e7d197660d54` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3dfd47868067600445f36e8c33951b7f6ce314d1` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3f29046bf2e1ef4f310e58778da1857e4b56cef5` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3fcf08747e78eac249a39a15b2932a3d2e88c074` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x410ea72f5c66fc23bb0fbd87c77991d032d244c3` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44224764a1728a47ed5f93282b9417788b6f225d` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47a49626e4cd1b361c72a73472d91eb8556180a0` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x48d5a4d3f2cb06ed807f9ca550200ddb1bf3cd50` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x49a984a5da6bcccd72874f698c01638fdf0de166` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a8aeffdaf052204c8cb7e21c89e10b8c0af2115` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b735d5d68d61c46af6189b8842b8cc2dcfc1423` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4c4f8050e5de8560016a3bbe501ffad4b3853f2c` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4e6465c96456f39dc7124dbade53d6aa03ca71e0` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4fcd6994a0261ac91d6cc05be50be4c381523a94` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x501bce6700d80b2d40d45474f13e17213363d04d` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x51147bdee0415b0a309ee156e74354118b326699` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5310dff3557c9f13b72806d523fcb5c384dafcf9` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x553a68b3865764a59bfc58adc9bbcfb1b092eb18` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5687ceea2c311aab6ae089be84fabd9ae1967ca7` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5c18ff96ce149971ad9587711d8e707c51332171` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x64f674a2c5e6c833e9a5862839956e4f40e2ff84` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6576e3c1a52f9c22119316c104d7ef7803fc783b` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x674bb9d97f0c41bb41ecfcb50fab1fedcbc7cae1` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x691c421cbf47774f2ae7efd3f901080320a18325` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6c9cd0d89ec79f662a694b97a7d9ae81484693fa` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6dfaaacc4385c2e080a45a9aebe92c94237572d4` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e7995da9b8707cb68fa0c5632981f01870f8434` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6f052e85197e4b2c6f306fee01f25a5355722ef8` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x70e61aceacc37502ab49aa8914a4b66842b1255f` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x77197af2830321ee5a874ab7a0b074f6cb469def` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7811849a0524c12a5b1e54beb5050b8a6df913c6` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x799c6e12160ec2e5e47046e0875c799d2f0d8515` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a0d7b36b02dde3eff947e9b6cea97851a68e5e5` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a62f3686bc633dd950d7c2c3ca3f2568f169b57` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7bcb412f80234aaf9186e66b3e65eaa61a7a0411` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f73dec2e4b9c5fedfc2f8f3882b6791a1d157f4` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7fcb0ce0257a0af533552143b0cf2dfc10788b9d` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x82e6354a55b9fbb382abca2189bdaea4b1dbb3bf` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x86a1096e32f6663033a267295bf1419846298b2d` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x86b332e0ca21fd2c0636822fbaa2d14d5834fab8` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x86c4da96d8a9d6307dec26d937b2cc9044690883` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8796f86bb9b876384497894122e860cadfc48a21` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x88d32f1af8c9f9bb4586d1bc892fe39104cc8e5f` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8cde0d63810a9bbb6bb458ca988c68b006af3085` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8dad7dbf5950c3fec9e1a5e8ad28214074d57d82` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8e5248dba8e766075295308bed7e8cdc7d1a05e6` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9182fd7a4ad0a2f7d7a33090da2d0f5670d38d8c` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x92dade9ab801c29008b4109d93dceb51ca4e162b` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x962b70e532370de831a64ed8b40f92dcf05a32ba` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9806abcbe3216b11fba951e5bd34ff7c5b304dc6` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9ab212cce5802c6ee9d430e82eccf62e5fdb9f81` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9b8ea559ac48121ad04d12d3cb759f9783cdb593` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9d392308902cfe87fcd947e64e98e2269f07af34` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa03e0dc689a219a0f237a82387b90edf2fcbb598` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa0cb2da6d5abe4c192ab0d5353077c90261a260b` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa70a8dc7bdf000c8f9374c5b4a542b3656ebad79` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa7473c70b233597eb41381486374bf2b0c4040fd` | non_address_book | unknown | unknown | unverified | n/a | `0x16e76819ac1f0dfbecc48dfe93b198830e0c85eb` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/ElephantMoney](https://sourcehat.com/audits/ElephantMoney) | SourceHat | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf](https://elephant.money/media/PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4640] sourcehat.com/audits/ElephantMoney — no match: No reason recorded
- [4641] PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf — no match: Two contracts explicitly named in scope: ElephantReserve and Stampede. Audit date found on cover page and in basic information table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/ElephantMoney | BankrollNetworkStack | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | Elephant | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantDollar | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantDollarDistributor | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantGraveyard | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantLiquidityDrive | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantPoolDistributor | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | ElephantReserve | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | Treasury | unmatched — not counted | — | — | no |
| sourcehat.com/audits/ElephantMoney | Whitelist | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf | ElephantReserve | unmatched — not counted | — | listed in scope table and throughout report | no |
| PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf | Stampede | unmatched — not counted | — | listed in scope table and throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 191 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 215 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [4640] sourcehat.com/audits/ElephantMoney
- [4641] PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf

Fork inheritance lineage and inherited audits are included when available.
