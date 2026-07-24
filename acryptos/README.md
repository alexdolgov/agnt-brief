# Agentic Audit Brief: ACryptoS

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 3 audit(s)
- Eligible audit results: 8 (3 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 0.1% over 90 days

## Project Overview

- Project: ACryptoS (`acryptos`)
- Website: [https://www.acryptos.com/](https://www.acryptos.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, canto, cronos, ethereum, fantom, gnosis, harmony, kava, linea, moonbeam, moonriver, optimism, polygon
- Contract surface: 605 unique implementations (702 raw deployments)
- Coverage basis: 6/17 confirmed own live verified implementations (35.3%); conservative 33.3% with 1 needs-review implementation(s)
- DeFi Llama TVL: $10,548,947.90
- On-chain TVL (included contracts): $4,304,897.09
- TVL by chain: Bsc $4,304,897.09

## Project Description

This brief describes the observed EVM deployment and audit surface for ACryptoS. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across arbitrum, base, bsc, ethereum, polygon. Structural roles: 53 core, 8 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: core (53), unclassified (8)
- Contract kinds: contract (53), unclassified (8)
- Detected standards: erc20 (43), ownable (1)
- Frameworks: openzeppelin (51)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 140 contracts are derived from known codebases. 140 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00606230d318fa47a7c270844c9d24fa1d38f955`, chain 56)
- UnnamedContract (`0x060b86242471d7244414ed6f21c19b95010b46db`, chain 56)
- UnnamedContract (`0x06271d7d07f38c835c9ed0005cc4c39bdc107c1d`, chain 56)
- UnnamedContract (`0x0c3b6058c25205345b8f22578b27065a7506671c`, chain 56)
- UnnamedContract (`0x12b05c671e30e9c79c50d8629955a7b9e9efb2ed`, chain 56)
- UnnamedContract (`0x1b083711acb6c3673ceddaffdf5019429b119b8a`, chain 56)
- UnnamedContract (`0x1e5ea5427492fe93f22b8e4aa27dc020ff3da59a`, chain 56)
- UnnamedContract (`0x2d00c55b93a03830d19eb97a5e48f77acaac2d63`, chain 56)
- UnnamedContract (`0x316f6488821e08ba7f44ae8e8fe86ca1cd0d0f92`, chain 56)
- UnnamedContract (`0x3468bcb09b554420cead20c0df6bbe93d635d0c6`, chain 56)
- UnnamedContract (`0x3595d94a7aa78292b4283fd541ce3ea45afec1bc`, chain 56)
- UnnamedContract (`0x3aa07f5614172a8d2bb2aad03fd6035bfcfbf9a0`, chain 56)
- UnnamedContract (`0x4651a54f8e14b1faeaeb5cb2af1b1ee3303d7210`, chain 56)
- UnnamedContract (`0x48b02d49c30a0f02c00f97ab74dfe6d8dd96c4da`, chain 56)
- UnnamedContract (`0x4951c3567161d3e632c141b74ac3781cb99add67`, chain 56)
- UnnamedContract (`0x4deb9077e49269b04fd0324461af301dd6600216`, chain 56)
- UnnamedContract (`0x4e754ce8e31d5b680c38e2dcb52a48430ea86ce2`, chain 56)
- UnnamedContract (`0x5260d88b126280ad767a62528e3464e9d41db4f0`, chain 56)
- UnnamedContract (`0x5aaa5a2c704cfdccb44dea6a6df10e958a8f7a22`, chain 56)
- UnnamedContract (`0x5c8c5852f3837b37b50497ea11397ec175b5ccab`, chain 56)
- UnnamedContract (`0x5ff576e31d672255891865a47cfa4fbe51801010`, chain 56)
- UnnamedContract (`0x651fab792b0c56e561ae74bbf02f46c524315abd`, chain 56)
- UnnamedContract (`0x6c8eeea40abb24041eeff08bf6e746f1a918ad08`, chain 56)
- UnnamedContract (`0x6f58a73c3f9a31c3beda5577072e352c75f78a73`, chain 56)
- UnnamedContract (`0x74c90158aa44ac58502ec7863006d76aced72dd9`, chain 56)
- UnnamedContract (`0x7635c63768c598b138509d91e3cc8b3af9d1403e`, chain 56)
- UnnamedContract (`0x796b87d0fed110d48821d633db310701823663eb`, chain 56)
- UnnamedContract (`0x7abc5868401ea6a46ea0d114cafaf63879c8cdda`, chain 56)
- UnnamedContract (`0x7f1bce47eeac94a814bf0eeec794ed5f9d2d5e14`, chain 56)
- UnnamedContract (`0x7f66f5788b9b488e339f68104ba630e6bc210b9f`, chain 56)
- UnnamedContract (`0x86363a2ef15cde348f8be45b3e93c8bca6db44d9`, chain 56)
- UnnamedContract (`0x8835d7fcd6e9cf0ada6ed81a0f9d7694efe4ff31`, chain 56)
- UnnamedContract (`0x8888888818b6e5bbdf1f73c5f3a7f73b2454d2ca`, chain 56)
- UnnamedContract (`0x8996a30ba6638dac082c721c9e9499447d982852`, chain 56)
- UnnamedContract (`0x8b1a3357b51ee5132eb552fa596587fd13be0e24`, chain 56)
- UnnamedContract (`0x8ba0eb3d8c533dcdfdd487f0d2b92f96969fc837`, chain 56)
- UnnamedContract (`0x94c9bf339b26c8d4bb2d8c66fa7a9326bc24aa71`, chain 56)
- UnnamedContract (`0x96c8390ba28eb083a784280227c37b853bc408b7`, chain 56)
- UnnamedContract (`0x97add6f966e74776de2a1eb1ddae175d88448d77`, chain 56)
- UnnamedContract (`0x99c92765efc472a9709ced86310d64c4573c4b77`, chain 56)
- UnnamedContract (`0x9ab25286e16591b24d5e7dc6542be2297607cc71`, chain 56)
- UnnamedContract (`0x9b55e223f16e18c4b9d222968d42f055ea0ed3d1`, chain 56)
- UnnamedContract (`0xa18fdbcfa0d260664f06729ba8430514d155d4d0`, chain 56)
- UnnamedContract (`0xa4752c6af04a73058bd407fb346cd8cc120b4add`, chain 56)
- UnnamedContract (`0xa54fcd71bfd83ee06b359f986fc5da97aa90156c`, chain 56)
- UnnamedContract (`0xacc5b6101c77d519d2ab27f261c537a8d5fdf660`, chain 56)
- UnnamedContract (`0xae4a006c954c5039211194816cfbec30e2521bb5`, chain 56)
- UnnamedContract (`0xb1fa5d3c0111d8e9ac43a19ef17b281d5d4b474e`, chain 56)
- UnnamedContract (`0xb87a7c493fc3d185a69de8456a8d6c43a1a238ff`, chain 56)
- UnnamedContract (`0xbbf560b6ed08690c0126f0b7b6e2791e6e552835`, chain 56)
- UnnamedContract (`0xbe35a497a340d2d10bf8c16a824ab83d066b935a`, chain 56)
- UnnamedContract (`0xbe7caa236544d1b9a0e7f91e94b9f5bfd3b5ca81`, chain 56)
- UnnamedContract (`0xc404757f0ef09f9c4dd1144dc8da296c91c09958`, chain 56)
- UnnamedContract (`0xc61639e5626ecfb0788b5308c67cbbbd1caecbf0`, chain 56)
- UnnamedContract (`0xc64d2522d80378b935f922fadf427e4bd9c5b529`, chain 56)
- UnnamedContract (`0xc8036def32920a4686b81adc30e76244da087960`, chain 56)
- UnnamedContract (`0xc807d37f69317fb57cfbe73570b82624f7d560cd`, chain 56)
- UnnamedContract (`0xcad070f54eb5b9eb3a0d72999c890adb94f897b4`, chain 56)
- UnnamedContract (`0xd016df56c65d3af498d316065138b6bb95416507`, chain 56)
- UnnamedContract (`0xd172ab1a73e936790ff3c572b5ec28f1a60aae5d`, chain 56)
- UnnamedContract (`0xd180ab2ecafd424a92befbaea655177634913fbb`, chain 56)
- UnnamedContract (`0xd25ec338be80b6b95c02f1e181e3ec0a08cda438`, chain 56)
- UnnamedContract (`0xd487c84fc49616a7ca619aac75d0abd0053939b7`, chain 56)
- UnnamedContract (`0xd95b9c08285045393862607d6e5fc2d95b9ce129`, chain 56)
- UnnamedContract (`0xd9ab256c17cb308eb3e173ae65c8c7165d2aa824`, chain 56)
- UnnamedContract (`0xde14f21da488ae2ad8730e002c967bb6cb78db21`, chain 56)
- UnnamedContract (`0xe1895d5935b7c0937b188c9226697fe27d11c467`, chain 56)
- UnnamedContract (`0xe4784868701f4dce7a0e6cec4fb1b0b58e9baf39`, chain 56)
- UnnamedContract (`0xe4d2ed31fecd197a1857f6619cb60f5fcb7f13b7`, chain 56)
- UnnamedContract (`0xe53cdd2eb4776b232fe066d24822ba98ccee386f`, chain 56)
- UnnamedContract (`0xe6d84b61e21e40c76b4f40832eb7a26bdda431ec`, chain 56)
- UnnamedContract (`0xe720af156e3ed714278ac87d92336a418fa196cc`, chain 56)
- UnnamedContract (`0xeb8f15086274586f95c551890a29077a5b6e5e55`, chain 56)
- UnnamedContract (`0xec8375ff0d63b0f1b4193b726771abf2094a16c7`, chain 56)
- UnnamedContract (`0xed062edf8f82518f67295c64249ebabf443b59bb`, chain 56)
- UnnamedContract (`0xefbfc05a3ee143d13793972e1fe789c17c1e5147`, chain 56)
- UnnamedContract (`0xfa48586c190a4437c8651b93265b2ba3be372eb8`, chain 56)
- UnnamedContract (`0xfd6e996c8960d521e3d2624cc4c6648cfa1217b7`, chain 56)
- UnnamedContract (`0xfdecec212e28556f1c29e5261e842b9fcf676f69`, chain 56)
- ACryptoSVault (`0x027b514b13b17eb123c88f48fedc14676bbaac78`, chain 56)
- ACryptoSVault (`0x0395fcc8e1a1e30a1427d4079af6e23c805e3eef`, chain 56)
- ACryptoSVault (`0x03e0df5fb4feb9fe0c1adfe347372b4a654233c1`, chain 56)
- ACryptoSVault (`0x03e904a729a6e0eb4b675969d3fe51b5392f5c39`, chain 56)
- ACryptoSVault (`0x14b197ca1a5aef891e86e1eae7a110c865c7dcec`, chain 56)
- ACryptoSVault (`0x161afe47561cfcf9603ef67c44de95114e78d33f`, chain 56)
- ACryptoSVault (`0x2875a5b002c2f2116590c70b632f6c28a5b3ef2c`, chain 56)
- ACryptoSVault (`0x32fe1be67102c10f6f5e798cb24723e738a31943`, chain 56)
- ACryptoSVault (`0x35cadd2daa782556b7fd90a98663bacdb78d863e`, chain 56)
- ACryptoSVault (`0x40a7dd6502828ae78d12f0f05506a64dcfdcdfed`, chain 56)
- ACryptoSVault (`0x471696dcd1d615aff82f23ed5835d8bcf0ec1f8d`, chain 56)
- ACryptoSVault (`0x4e58b693092e33e46a8734b9c4064b82afdca14f`, chain 56)
- ACryptoSVault (`0x532d5775ce71cb967b78acbc290f80df80a9baa5`, chain 56)
- ACryptoSVault (`0x58d35bc513e46bd80770c06543071f6a563a360b`, chain 56)
- ACryptoSVault (`0x5c2b38bd976619cfc8cc3c7cbf47241e06478684`, chain 56)
- ACryptoSVault (`0x5c8c857c89af070078ab4e72dc0de8768910e5a8`, chain 56)
- ACryptoSVault (`0x5e4993a09609ebca7f038e3f66c8f97059563690`, chain 56)
- ACryptoSVault (`0x5f9aab778447010ee0121e3460738cf8d1aedf55`, chain 56)
- ACryptoSVault (`0x6c8a596e777a21c45d07173938d588ca4ca30d8d`, chain 56)
- ACryptoSVault (`0x6cc0ef907bc1beed82954bd0706e177cdc314a9c`, chain 56)
- ACryptoSVault (`0x7a2fb04dfc2b2ca052a769c023f43b81e67f6624`, chain 56)
- ACryptoSVault (`0x7abbcf9ac11f65955be8e93ed7ed64b12e34a58e`, chain 56)
- ACryptoSVault (`0x82b4c3edcba9b754f0ea4a9d043f6f943204bced`, chain 56)
- ACryptoSVault (`0x883a0d28dbac2e713e87aa2448595438d8016811`, chain 56)
- ACryptoSVault (`0x8dc707f2a9a9642f635392af34c0e6a712f1d766`, chain 56)
- ACryptoSVault (`0x90f277c402ea280e70068049fab1d123bb6cba16`, chain 56)
- ACryptoSVault (`0xa4964271b476b0730acf86dd9f8d270b5e804126`, chain 56)
- ACryptoSVault (`0xab81911e6b884ee3d85278f0ab8cf38eee31a2d1`, chain 56)
- ACryptoSVault (`0xab819564a1bb4a7f4142fdc1be07599fd0c8b24a`, chain 56)
- ACryptoSVault (`0xac045258edab47b62e427e2fa659e3195cecbde2`, chain 56)
- ACryptoSVault (`0xbb08f867db0fda40083d7636ef18bb88e592cc1b`, chain 56)
- ACryptoSVault (`0xbba26766b17d774f55963a984265b7cc5604bea5`, chain 56)
- ACryptoSVault (`0xda6e3b30f7628928add9f694ac0d97a00536033f`, chain 56)
- ACryptoSVault (`0xe0303c65fc9ce79c53228ae1e8cde3b6b8c02f95`, chain 56)
- ACryptoSVault (`0xf54d438b63c1680b62418339ec2a4c6e4af6c73a`, chain 56)
- ACryptoSVault (`0xf690ae6cf1f93da3b56425061d37d24046720494`, chain 56)
- ACryptoSVault (`0xf7ffa2f16684834af27b77fea1acbe35ce7af16b`, chain 56)
- ACryptoSVault (`0xfc698dae6c5b7e38f8eb8fc240f23c598d17e5e2`, chain 56)
- ACryptoSVault (`0xfcf924f58fda91190b874547e08dff069c6d5a48`, chain 56)
- ACryptoSVault0 (`0x7679381507af0c8de64586a458161aa58d3a4fc3`, chain 56)
- ACryptoSVault0V2_ACSI (`0x2b66399ad01be47c5aa11c48fdd6df689dae929a`, chain 56)
- ACryptoSVaultBnb (`0x10137a821fd5aea332f682f4cbafc839e4373104`, chain 56)
- ACryptoSVaultBnb (`0x6fe6762e9314ad80803fef083c8bb16af435a628`, chain 56)
- ACS (`0x4197c6ef3879a08cd51e5560da5064b773aa1d29`, chain 56)
- ACSI (`0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389`, chain 56)
- MasterChef (`0xeae1425d8ed46554bf56968960e2e567b49d0bed`, chain 56)
- StrategyACryptoS0V6_ACSI (`0x8045db83f60fe9fc8eb67593140eeeb4a71bdf51`, chain 56)
- StrategyACryptoSBsw (`0x2aa23d513e9a9e6bd22862debb66161ab49354c5`, chain 56)
- StrategyACryptoSBsw (`0x577b47cba5673c06be37cb7397f9c906b6a29d51`, chain 56)
- StrategyACryptoSDsg (`0x02bd617fbce209d974d545fa06236aec3651e6f9`, chain 56)
- StrategyACryptoSMdxV3 (`0x24a87b844fa46008442186f1362a8123b0ada317`, chain 56)
- StrategyACryptoSMdxV3 (`0xe8b2e996fbb4d5f1ffd9bdbe5bc36f016b7d2a96`, chain 56)
- StrategyACryptoSVenusVaiV2 (`0x20d1d365834852f1fea2dfacd5121935f88a6f78`, chain 56)
- Vyper_contract (`0x191409d5a4effe25b0f4240557ba2192d18a191e`, chain 56)
- Vyper_contract (`0x3919874c7bc0699cf59c981c5eb668823fa4f958`, chain 56)
- Vyper_contract (`0x49440376254290b3264183807a16450457f02b28`, chain 56)
- Vyper_contract (`0x83d69ef5c9837e21e2389d47d791714f5771f29b`, chain 56)
- Vyper_contract (`0x9e31f49c22bf8c2b9ffd3645e4203b9b8e606b98`, chain 56)
- Vyper_contract (`0xb3f0c9ea1f05e312093fdb031e789a756659b0ac`, chain 56)
- Vyper_contract (`0xd3debe4a971e4492d0d61ab145468a5b2c23301b`, chain 56)
- Vyper_contract (`0xeb7dc7b3bff60a450eff31edf1330355361ea5ad`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 140/140 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/17 (35.3%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 96 own, 0 exact-address-book context/dependencies excluded, 1 exact-address-book entries needing review
- Outside the address book: 508 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 97 of 605 unique; 508 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/21
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 584
- Unique implementations: 605
- Raw deployments: 702
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $4,106,441.22
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $4,106,441.22 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 6 | 28.6% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACryptoSVaultBnb | core_logic | project_anchor | own_core | 0 | bsc | unit-378474 | 2 deployments: bsc `0x10137a821fd5aea332f682f4cbafc839e4373104`; bsc `0x9978992538bd3e70c1aff101dedd50e9e27cfbde` | ✅ Audited |
| ACryptoSVault0V2_ACSI | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378485 | `0x2b66399ad01be47c5aa11c48fdd6df689dae929a` | ✅ Audited |
| ACryptoSVault0 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378540 | `0x7679381507af0c8de64586a458161aa58d3a4fc3` | ✅ Audited |
| ACS | unknown | project_anchor | own_supporting | 0 | bsc | unit-378495 | `0x4197c6ef3879a08cd51e5560da5064b773aa1d29` | ✅ Audited |
| ACSI | unknown | project_anchor | own_supporting | 0 | bsc | unit-378512 | `0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389` | ✅ Audited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-378622 | `0xeae1425d8ed46554bf56968960e2e567b49d0bed` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACryptoSVault | core_logic | project_anchor | own_supporting | 0 | bsc | n/a | 61 deployments: bsc `0x02aabf12f7c377916bb828bce3d45c778d919d0e`; bsc `0x0395fcc8e1a1e30a1427d4079af6e23c805e3eef`; bsc `0x03e904a729a6e0eb4b675969d3fe51b5392f5c39`; bsc `0x0551ea09c83faff84d83cfb1c75830eb1229fd31`; bsc `0x08234f020496ccceeb144f9637a566b936b0ee6f`; bsc `0x0e3e97653fe81d771a250b03af2b5cf294a6de62`; bsc `0x1231082d043393f8990861521a10bdc911fedbbe`; bsc `0x161afe47561cfcf9603ef67c44de95114e78d33f`; bsc `0x17c9bba4c84116472309d78b18fb038d4f15e0d6`; bsc `0x1ba8b2e5adc5722245b6e8330139f8b0e727406b`; bsc `0x1da371dc8127b0cded8d13ff20f062bb9e02c1a3`; bsc `0x1db2f258e7f403c1f4b1bc47f686aa3e161dc655`; bsc `0x28b4b0fe2fce360aff812d2d0b9d88c575314af9`; bsc `0x2d8483bc2a9e2723711888532fd542483f041137`; bsc `0x32d5b8867b44762d78e80ffcbf6e956e6a35f3a0`; bsc `0x32fe1be67102c10f6f5e798cb24723e738a31943`; bsc `0x35cadd2daa782556b7fd90a98663bacdb78d863e`; bsc `0x38e3e6973ba60daadb3ba8b4df76ef3a5a8962b0`; bsc `0x3a30e2029578056fa2cf422afee048fe07ab0a06`; bsc `0x4e58b693092e33e46a8734b9c4064b82afdca14f`; bsc `0x51d6b8a1d3f6b4aef8bcaecd8ead7ff2efdcbb73`; bsc `0x52525a9d0c562fc7b685efc754f496fea055c006`; bsc `0x532d5775ce71cb967b78acbc290f80df80a9baa5`; bsc `0x5a330d3f99ac2ef00ac5167707d88e9d3d59620c`; bsc `0x5d15d6c40ec91940e23bd6419709d334aa60eae2`; bsc `0x6200f22041bda696d3a639af1ddb62747e384941`; bsc `0x675361701b15424ff94b414ea76aec1f61ab1ed9`; bsc `0x68fdcd299e33bee7695efbc227ab948ae29bfc3c`; bsc `0x713da080c8014111f42fbb76423d52f22e38d8de`; bsc `0x7abbcf9ac11f65955be8e93ed7ed64b12e34a58e`; bsc `0x7d34cd09953e4f30cb21494a1ee74eb3f03d996a`; bsc `0x8383661ecf333fce4bf51d498d7c94e2a0c7d5af`; bsc `0x87d5fd97436cd08024553eeff98498103264a230`; bsc `0x883a0d28dbac2e713e87aa2448595438d8016811`; bsc `0x90f277c402ea280e70068049fab1d123bb6cba16`; bsc `0x9ce0e88c803672ce672b9b9e66c664b81499ce04`; bsc `0xa0753cc49eb66bb4bc80e8f042a6de21fc03e5cd`; bsc `0xa1125b756e0ac05ff5d07cde4d511e1837aadc88`; bsc `0xa4964271b476b0730acf86dd9f8d270b5e804126`; bsc `0xad4bba0da4889830fa8c9c7b1b04ab4faa791f6f`; bsc `0xadb783ca0eede47d882a8e1c656a1e681a388ada`; bsc `0xb00b62da1cd28ab88983960487f2902c64c00bc5`; bsc `0xb1dc4fee3248362d54e15192ea771e82dfafd5bd`; bsc `0xb2c1b30689b8a3fd0916b3a3c6135d0226deca7c`; bsc `0xb6eb654fbdc697edd73174a19b074bc67c00a0c0`; bsc `0xb8c134efafda61a906b657a19b37b3d733362c98`; bsc `0xb9b8370bb74337859ee091ebc8dfb58d94e84f31`; bsc `0xbb08f867db0fda40083d7636ef18bb88e592cc1b`; bsc `0xc109d8b9f89bd939b81df4fe47951f9683207102`; bsc `0xcd630d39f76c12af11c2ed9876ccf976c47a08c3`; bsc `0xcf69f9e5558d1dafec4373e3b569f53468bf6317`; bsc `0xcfb96ffbe95c0b7129b57ec4d229f8b9eae2d280`; bsc `0xcfbb1a0522e70fa5688c023b37c58e43c9a6398e`; bsc `0xd574c6e64863c49f31c577d174bbd808e066db75`; bsc `0xdac0c9b3caccf7e76d2f238663c98fdd9d07f323`; bsc `0xe0303c65fc9ce79c53228ae1e8cde3b6b8c02f95`; bsc `0xe427a9688c0d16ea5d29db0dcc1d6e1e61ea9908`; bsc `0xe9861f3624b5f7012991ba2762cd1ead4c622ff5`; bsc `0xe9d9f54ab89f712abbdbb3c0f63f2d6edaa3869c`; bsc `0xed3f6a5fbe2b4bf4250f5ecd1eea9768a9e01765`; bsc `0xfc698dae6c5b7e38f8eb8fc240f23c598d17e5e2` | ⚠️ Unaudited |
| ACryptoSVaultBnb | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378535 | `0x6fe6762e9314ad80803fef083c8bb16af435a628` | ⚠️ Unaudited |
| StrategyACryptoS0V6_ACSI | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378553 | `0x8045db83f60fe9fc8eb67593140eeeb4a71bdf51` | ⚠️ Unaudited |
| ACryptoSVault | core_logic | project_anchor | own_core | 0 | bsc | unit-378466 | 25 deployments: bsc `0x027b514b13b17eb123c88f48fedc14676bbaac78`; bsc `0x03e0df5fb4feb9fe0c1adfe347372b4a654233c1`; bsc `0x14b197ca1a5aef891e86e1eae7a110c865c7dcec`; bsc `0x2875a5b002c2f2116590c70b632f6c28a5b3ef2c`; bsc `0x40a7dd6502828ae78d12f0f05506a64dcfdcdfed`; bsc `0x471696dcd1d615aff82f23ed5835d8bcf0ec1f8d`; bsc `0x58d35bc513e46bd80770c06543071f6a563a360b`; bsc `0x5c2b38bd976619cfc8cc3c7cbf47241e06478684`; bsc `0x5c8c857c89af070078ab4e72dc0de8768910e5a8`; bsc `0x5e4993a09609ebca7f038e3f66c8f97059563690`; bsc `0x5f9aab778447010ee0121e3460738cf8d1aedf55`; bsc `0x6c8a596e777a21c45d07173938d588ca4ca30d8d`; bsc `0x6cc0ef907bc1beed82954bd0706e177cdc314a9c`; bsc `0x7a2fb04dfc2b2ca052a769c023f43b81e67f6624`; bsc `0x82b4c3edcba9b754f0ea4a9d043f6f943204bced`; bsc `0x8dc707f2a9a9642f635392af34c0e6a712f1d766`; bsc `0xab81911e6b884ee3d85278f0ab8cf38eee31a2d1`; bsc `0xab819564a1bb4a7f4142fdc1be07599fd0c8b24a`; bsc `0xac045258edab47b62e427e2fa659e3195cecbde2`; bsc `0xbba26766b17d774f55963a984265b7cc5604bea5`; bsc `0xda6e3b30f7628928add9f694ac0d97a00536033f`; bsc `0xf54d438b63c1680b62418339ec2a4c6e4af6c73a`; bsc `0xf690ae6cf1f93da3b56425061d37d24046720494`; bsc `0xf7ffa2f16684834af27b77fea1acbe35ce7af16b`; bsc `0xfcf924f58fda91190b874547e08dff069c6d5a48` | ⚠️ Unaudited |
| StrategyACryptoSBsw | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378484 | 2 deployments: bsc `0x2aa23d513e9a9e6bd22862debb66161ab49354c5`; bsc `0x577b47cba5673c06be37cb7397f9c906b6a29d51` | ⚠️ Unaudited |
| StrategyACryptoSMdxV3 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378482 | 2 deployments: bsc `0x24a87b844fa46008442186f1362a8123b0ada317`; bsc `0xe8b2e996fbb4d5f1ffd9bdbe5bc36f016b7d2a96` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x02d444de78224490141176e50c57da97b2a6aa8d`; bsc `0x8888888888f004100c0353d657be6300587a6ccd` | ⚠️ Unaudited |
| StrategyACryptoSAtlantisLeverageBnbV5 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb918b4609462c13272fbf9ba48cb71cf35aee9fa` | ⚠️ Unaudited |
| StrategyACryptoSDsg | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378467 | `0x02bd617fbce209d974d545fa06236aec3651e6f9` | ⚠️ Unaudited |
| StrategyACryptoSVenusLeverageBnb | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b5b3640096a5381e7378a013069c4ef925d78ec` | ⚠️ Unaudited |
| StrategyACryptoSVenusVaiV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378481 | `0x20d1d365834852f1fea2dfacd5121935f88a6f78` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378478 | 2 deployments: bsc `0x191409d5a4effe25b0f4240557ba2192d18a191e`; bsc `0x3919874c7bc0699cf59c981c5eb668823fa4f958` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | needs_review (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x38b28b191641fd51e2f7a5819b899d9e4e809ac7`; bsc `0x9e31f49c22bf8c2b9ffd3645e4203b9b8e606b98`; bsc `0xd3debe4a971e4492d0d61ab145468a5b2c23301b` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378499 | 3 deployments: bsc `0x49440376254290b3264183807a16450457f02b28`; bsc `0x83d69ef5c9837e21e2389d47d791714f5771f29b`; bsc `0xeb7dc7b3bff60a450eff31edf1330355361ea5ad` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378591 | `0xb3f0c9ea1f05e312093fdb031e789a756659b0ac` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (584)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3e499ebd1aa75415d6ba26f3ffa08ae649b6db0a) | proxy | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 5 deployments: arbitrum `0x05aa420a97449c0c54b369bafaa9ca43a77004ed`; arbitrum `0x4405bc24ad70ef91d51cf96e3ee10513fa7fb938`; arbitrum `0x5fddfe59416caec6066b9f08ff37912a6e38328e`; arbitrum `0x8aa74aa081eace7691fef7e4cf494f4da2adfc84`; arbitrum `0xdfafee959f64ea1a214eb5f7de78d188c182873b` | ❓ Unverified |
| Proxy (impl: 0xc80ed325f6471d39f03b3acd1ed38dfd3a0972d7) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x07667ab8a00760e801ca27534700288c528bc6da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e904a729a6e0eb4b675969d3fe51b5392f5c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b197ca1a5aef891e86e1eae7a110c865c7dcec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cadd2daa782556b7fd90a98663bacdb78d863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f9aab778447010ee0121e3460738cf8d1aedf55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8eeea40abb24041eeff08bf6e746f1a918ad08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7635c63768c598b138509d91e3cc8b3af9d1403e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97add6f966e74776de2a1eb1ddae175d88448d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde14f21da488ae2ad8730e002c967bb6cb78db21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe720af156e3ed714278ac87d92336a418fa196cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8375ff0d63b0f1b4193b726771abf2094a16c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378465 | `0x00606230d318fa47a7c270844c9d24fa1d38f955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0114a47b5fb9f2407ca882934932092b8155d0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x014acd157e47bbf302edf4401a74167d4fd98a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01bd7c8ff77b5869ad3f5ce3ba1e072f47ea43f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0257583ca11906058eb315b1a55dfb086b367f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02e7b120d26caf6f1eae50ec8444a9f254a57c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03f52c3612df0db3c86a4776a20caece8a194f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0478b1741c3424dae1f05236fb1ee88952e38ddc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378471 | `0x060b86242471d7244414ed6f21c19b95010b46db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378472 | `0x06271d7d07f38c835c9ed0005cc4c39bdc107c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06f772d0785b9d4caf8a4515eaa59ae0e29fdfc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07016c00258d9b6ca891653db5a0a548a94528ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07020f1f18c4b55a38f7df39f2d092969808af43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x075054542c83718fb1e32e6cafd503950a10bd09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x083127866deebdc69b9aa37161753514b9356ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087e844f7abc6967a8c021c60a77e7c55748043b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08a645e1e8eb8a9221573ac268c32df14caaff9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09a18250f99118f40a5d992d537e24b8bd9880f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0adcc1dd2f809e0480d3922b885beaadfad082b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b470dcd7f94c94ed7bdf0fa79f9790a10c03e34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378473 | `0x0c3b6058c25205345b8f22578b27065a7506671c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c5917cc5c74b3505738f61e12dd406fe5cb29a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0da9141b15bb2658652c777724bfafd3fe02ca13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e065f1816b000452bf7afba9145ec8dbe6f901a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e08dcbc9c23ba68926b0b1bb47132499d568a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e8aeeec0fef2d25393dd071bc0a3da142e30a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ed63a0ab5f3bfb7202218278026e782175d49d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x127c84ac942466981d2f25d991ae80d4838d281d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378475 | `0x12b05c671e30e9c79c50d8629955a7b9e9efb2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x148679fd0befc4ae266bbbd02799cdcd869aaf63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14cb72a422be17372108a2b5f7a2837297948745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14ec92a222588293a77c273f17d9c44bf3cdd0e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14ed22aeb480d3e2834e14a66b75a42a1e5a8a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14eef44f834b1ba0b231d4e1d98c1949b69b2257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15a790264c2121422c8bc8e9e28b5cceaadda7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15edf148b5d43684075b77eea866ff833a54d73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x161a623c27d20d3717ffe279889e50eeb23962c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16f0a760d690a83e78aaca527f84b34529fc3dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x170c1ec42f1eca09a2ba31798a67703c461e8174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17a57b0ea4ac87a9ef3182c7cf952c9e4a17edec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17db2e4186a69505d93b9d4120f800275b171766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18241d8dd4b01a716cc8a2089c4c207c8a54e67c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18c1862c0a28d3463a4c0294268230a0163fac84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378479 | `0x1b083711acb6c3673ceddaffdf5019429b119b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b5ca4cbf6a2f453506fec365dc0061d8d127ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bd090bff5de8cbd74c0399197090c0ec1d91f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c6c2170abe002c0a28047fb7d4e705f75f212be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378480 | `0x1e5ea5427492fe93f22b8e4aa27dc020ff3da59a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e6de8d967c9c1e8b4994d260279e1a15dc26d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e73c3576db27b02c242fa4ab869eccbd08c7225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e79bad942d99d4f0366994481912f402b9d4d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e83ee40d62a2270ef20bee58a1fc9515b7d6e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eae0397274a7e2977f0b78678e22db7014ab3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ec76e41adee1a40b6042e8333325d14184631e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f44ae08a59de577087f63947fd3e5dadc901a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f9068338de3da1403cd02a669a1593761fa6ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ff0fe037f993f952f1a86f2e5dfe8d9705fb0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20fe82beb9efbedaccc387d76734927d54562377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22cacd628bf13f87ee48e012d0250b6f5d52f6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22e61e0e445f3a5d2675cbb20f8c03fa3c55bd95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x235d80041898a9f7f656c6ebb096f1dd2d599f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2438f4f33e3f87e64e1424fdda2b59ba6901701b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24390dd6769bb8c8b54af7c47c7e69791228cb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24997396f90489305c0b00ce354a40c4a1ceef4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24d37979c5714cf7f276f3c065b8598bfba95e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2654346a32d4233b3266af3c5fd7bae3c571f345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26f4e9f1cc37cd70f4962e7e1dea2cb6498a2e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2883d6d514d2474b942769b981702526897d74d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28ad34c5867ba2af6c6ad3cbb68762e476e638d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2932568487318969be7593a27dd5d45ab521e50d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x295f3458fbd0c30a23ea81a8d345517c985ce1e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b217f385099a92653c0b49a01479e28137bece2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b8faf88bda9168ff86fbbdf9643b6d79b073861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b970f19f5c9cd98ed1e670c05f9a4409a7690bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2be0606f69bbc224f11ec8c5b750cadccc257cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c39de04688d71cd7d502297def53e4be0c420b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ce79ae6bbabecdb82b32c9093a14c861dc21567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cfb724017cb9302e207c0a7d8202946e8a29e29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378486 | `0x2d00c55b93a03830d19eb97a5e48f77acaac2d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d35344224f120ee9779d34c0ba6db40bea4c83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e0d0d4c25d2c4bd06607c187b0c0a863f1c93b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e45345f2011efa3a0d826629b1d9a105afc7030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e51800320691febf5ed99c9b8bdf494987884d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ecb165a70544e94fdd96bfc1b4450bd89d91a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eed8cd0e6d52814b2447a1d1e4a72ed41af8eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f6612cad71467839825deda1de442dea3b9ce6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f9de844b8c17b0cf43a509a27c3772f92ce648e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x300b57e8456eb985908792716db2e8bd4fb4a1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3080d2e8a04733dc655e40e55b717f920dd8a068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x308474e30326a1bbaa97d099a85bc12d2bbeba28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x316285126a5e579a9cd529e10fdb661775649db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x316ebfedbc6378cb8fb801ad4dd783b106b58a13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378487 | `0x316f6488821e08ba7f44ae8e8fe86ca1cd0d0f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31938ebf9d1dd9cea77fa624afc0c8ce7294ce18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3195f1b7f41a0ac67592e7639c164babe138e2c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31b9a777cb3a7f36fab81feb7a4f9cd046efa9b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3254fcc36afbccfccd29c2aca6e791c55cc887c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3261e4577f4614f0996ba72cb85443a237a2f09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32ddea352a93d00bb6845e06959afd0f4d9290d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32f6f76e5792f0b1efee3dc2818b2b3dbd9d2dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33db1a3275a384ada357a087f01bb30778a5165c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3457fc2a493066221c55c31899099e1b5045e289` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378489 | `0x3468bcb09b554420cead20c0df6bbe93d635d0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34cafb511b80180bf8325e6c2dbf8757dec01986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34deff6212116543ce757dd138be3e0e818d872b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x358029bc8b114ae2082d006283af94bf51f3a21c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378490 | `0x3595d94a7aa78292b4283fd541ce3ea45afec1bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3679d4c2752beef8632fd12c45b005ecb2774ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36d206f624eaa3a4ea31da6ade5c2a7a5ddb088f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x373561f3119353e50f21ee1181dd8749ae8276b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37ced9a4012ac3573b903d8cbd5cca7f8a271f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38de02145aa1ddf9db35b3e8e95fd32e9b744c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39731e0b93cb9a6325a9d9faa3872cc59c9a4343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39a5915be90b9d86f2127b4463df26e28c3f4a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39af7bfd2726fe98bd94783f71112758824ab9f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a630a6d6c64b5108d1d2999199b35d74e85da4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378493 | `0x3aa07f5614172a8d2bb2aad03fd6035bfcfbf9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b26349af7ad09c685d5c4d1bdbcc03688634fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bc194711138df5d6db9b056f36685ad0227fb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ce4411943924131ac45d6823e0dc7d547d10415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d0c1a8f7aa2c715c2433f79655dde61c10d366e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d4becf8c867d0ca5c40b5c9449b96c481425334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dcd4c706ea3c36a1173503ad5c40217bfbc935e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e3d3b8ffbc23e4d8b468dfd7b918a74263bdbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e499ebd1aa75415d6ba26f3ffa08ae649b6db0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ea7ba4e69f14667c062b9124ffc1f992ccf72a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f5c00e0d7ca6b91ab385a573fbfa46bb267be40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40085a8697eeb43ff7be033ecd00e5193530b8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40b3ec3d5ebbab1db1ab89e5d4f0d6b4b196199e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x428e040c09650f1487471f23e310b307fe02c614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43f452d9e6129786e6c3dbbba7d90a30aad0ecf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x443ca2f6cd2d34d78cb12fd0d6428df022ac2254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4469ba4bc9dd89812b5c86e5fa9afd80d5789de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f9cb678067c050a7b843c9ec5190fc10eda6e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45043f09ac8725e75445726ba990375061affdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45427aeeed3c28ceda37e07ba35aa0cb657119fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378496 | `0x4651a54f8e14b1faeaeb5cb2af1b1ee3303d7210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x468b7bd3c846e87f471906f9911ef57ea2a74764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46e65055be06af470384bcfe140b4ec8a160d15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46e90e6dbe47f32ef5c3248e60963f7a1bb1d334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47440ec02015b1fb6b2c274aa59525fbd2b399e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378498 | `0x48b02d49c30a0f02c00f97ab74dfe6d8dd96c4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48ec62f1ffbe599a1043a8fb3c778a9faff1b474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49397a7d45aa12c70420befe7e2789eb7fd5d212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4939a789b36c058b5b96d3e24588674d81a9efbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378500 | `0x4951c3567161d3e632c141b74ac3781cb99add67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49c4b95dc2198f2c4c9516834a8acbfc4b3e4429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49edf837d4f903860f93049c06a09c4becc139d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49fa76199db450871c155df7b46fa88b4940c5f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bbfc7efcd146e3dd1916da99fd72d4e5b3a55f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c3e07381a58571c5325c25b0f882f39aaf5de21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c6f2643001669842778d8b6c1878e3ebc1ea377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c6f66b50e3851018a783881c36e58f8f9e3abd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cbe646de14b97576c9af3e46bb8ef93310d8c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dd298dc6c71964fc9cecceb4120bb436a30e916` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378501 | `0x4deb9077e49269b04fd0324461af301dd6600216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4df2b563c8017ac328e96786ba5922ea318a0359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e27e8cc49797f728893eafaa22803c4f538dabf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378503 | `0x4e754ce8e31d5b680c38e2dcb52a48430ea86ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ea2b2acf7286f88622c6a667cc91868e09ee07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ec70cc0d018c0a69d5e54e5acaf089c6f3b12b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fb1ba482a7f66863317452d0835d87ad8ab17f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50bcdf7e0326c112b86ce19db60047c0e074937c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51bed7d3297088a88b0485e0e9abd08e3c275479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x522f1b57bc1dee5c37aa8ecdccd5f076b63dc0fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378504 | `0x5260d88b126280ad767a62528e3464e9d41db4f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52b6ea084a1f2e6177b23a7e17fbba8518aa3843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5405c5afbf0df5eb5339dd61431ee0d519146aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x542678c705855d414cc67eb81a3526890220d69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54d01f573017a4e61452cb13432e3a59a79c36bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x553a328bbbcea2598fab48ee5c4fcead33aff4f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x555e52a56f162f46bc5881397734ea20d6aa0dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55d2ae06b0904d70d091bc32608f37c5fbe375d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x565b0bd6aaac821fd0e1b000024d0bc95c444b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56e407b9fe49c797edb073c09e4c4ab5c9ca2946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5809b289b8fc9245bf80a738d4d5fca69ba2e5de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x593d9362f60f2c0a010d9f14c409307cf5801b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5979b4cf7e7574440a0ea6d1fb8ccf2bc258e8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59c663a90c5a3ea38188acd9000e078548db36cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59db51f879c54fe31b6d1fc9c6aa733e748d9f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59e5fcbe6b307657a298741c21a4be28dbcc1d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59f450334cab53e43af98658f96607837b0ce307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a980885434990fbf466cb0a84a9fb46a42dde80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378510 | `0x5aaa5a2c704cfdccb44dea6a6df10e958a8f7a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ad3d9629984a82640b7d1ab395c3f09aaea5b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5afa584096def0012b5e9b0006549598f6afa5f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b7b647793b576d8c38525875c487913982226a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c1310bae725c31eb458ee1e79420d5fe2e63b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c7a936adbca0c4e5817edd4fa074f59a3118353` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378515 | `0x5c8c5852f3837b37b50497ea11397ec175b5ccab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e1d648cf00e31b08ede095170b6764b60d06056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5efda0012dcc10f3ede18b5b25e0358dca56e362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fdbd0e5cfd0a60ef16f5b635a4b9064f032b211` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378523 | `0x5ff576e31d672255891865a47cfa4fbe51801010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x600cc7509f3d9befc49f4f290bd413bb6b59503a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x601257b5a4c4e88fa17c05d3c523bee4f1ab38d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x603ceef3ef79e986a1b13a1861632dc759cf470f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60cf11f1a056da5a40e5f36bc254d8d51c38e4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61e960dc662c798dc1646219017542612e35ae8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x625f0b2b10b79bee4da2a06ca33fd2bf54fcede9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x627e6506f26f7ae6250667f4f5a494e0e6443ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x632f1ab2ce6361d7a38e5aea0e1be2ed32691e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63e648473cfe1717dba7d0fa3fd0ca73aa237e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64c69b4a57cc96bd2be4badbabdb4f8e78187a8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378525 | `0x651fab792b0c56e561ae74bbf02f46c524315abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x655c9e2dba6a21c01542493e0474eccf6df70195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65f9fd38dcf661a38927e8e3ae93927a7c4892d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6779071ee4631fd878b27289707652396674c932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67d288c7599f866880e7486f9e29deda4749bbb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6805e4aafe83d7d70e1e0259191c714d1b1bebd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6864f82b601c3074608381a1dc9e31fef95f809d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6866f9d86e08cc7841f56cb6a0a93677f68fc014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68ff0471c13b22c9b6de9c13768d5166999e7e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x695577ce7a44bc5e2f9948631b4e4e0bb97a4845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69cd4862d0319c3687c4f1c3024072b7439444d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b12c86163277c46d806367c6953e9146c2ba69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b3de003fbb0b3278a5026eba247ecd164f124fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c38b68eae0b5bd2db80698dd4cd99e82e9bb432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c3ea529d5bcd32fef50ad32fb699a8008286054` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378529 | `0x6c8eeea40abb24041eeff08bf6e746f1a918ad08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cb347c4ea77402ba0394e2d53366b6bd400303b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ceecc01cf4af98c149bd72b59a61482e13058de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d4caf00ec58adcaa2abbf806651625d032a8a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6da30df49deb2ce51b599fcb3ef2ae994ed96bc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378533 | `0x6f58a73c3f9a31c3beda5577072e352c75f78a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70024a3c18f706ab0105135e0b2f8068c145ffef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7026071102c0c5a5225a8d009ea2c7c4fd30b0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70b494be824159aed8708efa10e01a75517ab972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70f97cde011b1f85097f28ace3784e50f379bb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x711208e24bcf02df7e2d3bcbe043683da3ac9edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71b3459bac8b2fab897f49874c9ee99753cde4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7232e1f646b14edfc263e04311729ccfe0ef20fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x723799ec0301e7a58ffbe99ea5107d26fdeaebb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x725462aaea2fea77185763b176bc9e2ffd659b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x736654bef068fcc1a1d46a33bdc29ec21a69fee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x748944daaecd92f889db445cfbb35313295db0ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378537 | `0x74c90158aa44ac58502ec7863006d76aced72dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7510ab3eb52af3c535f3d323854ae3b48a3ec81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x756c9990ff9ae4742adddabe8771f0ecfa45901a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75f092891d7aab8ab186a6ad27afbe2a3ee1f811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76044ef814f04c8c9a90f357404f013fd495bd24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378538 | `0x7635c63768c598b138509d91e3cc8b3af9d1403e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7647573329c3a1faaf6ecbc403e2194a7d541e09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76666fe232e58e18c24fb5a8b1cfe91c04428a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77c2332c4a2069c60c0ecbae7ff224d23a72606a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77d0ec6b40060d709e2a4686c030b722f0ebc13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77e893f25b49b4e403d6336c1d587f8ad57e9543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7877032077adcdc7ef739a17316ac33bb218531e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x794c50ae2f355b28dfc6f152977fb2e2229d88b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x795aa6253da7caa9c2d38b2f2a471a0505493225` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378541 | `0x796b87d0fed110d48821d633db310701823663eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79980898fb7fcc8950335b173cc5872a96328b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79cb7192adb3795e6a06868d9b10efed29cb5782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7aa0f9095d5446159940b28bb1c86b10f842962b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378546 | `0x7abc5868401ea6a46ea0d114cafaf63879c8cdda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b40816acf6d8e9dbca54983931dc3e1c241617c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b919612756662d07502efc98c7c37886c657f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7be0500c67bfa4e41bc31e9ac8cf5787518be00d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c98214bd7e191fd16600efb21f11388cef32dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cc9bc059401964e060f027a027fcf039c954c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d06dce9c061d0fe6a1223a5d719ba1606295371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d3ac947d44efaf9edaf75071cbb54bec2310282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dbdf9be8ba8e3d72f96c9cb6f282218e926981c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7debb1fba1b8b3e2e2d30a6a4649d832221b986c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e1ea653451352825540618878d5655a97d46748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378548 | `0x7f1bce47eeac94a814bf0eeec794ed5f9d2d5e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f4e876168cda7b75b49b7b3e5a34f20a0590fcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378551 | `0x7f66f5788b9b488e339f68104ba630e6bc210b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fa6bfef050f6c83570de8a53b36e7d0f727c21a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81031ac36fb2104561c3e00d490855828707da8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81414986d57fb56e686c6041cba8040d3b9e2605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81c015ba01e79507a68cbca518a9fbd29d1c8a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81d0c4942446c92a816914b43a0a8a126c69c12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81da840e17236dac67b8a9940a565871bbed1e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83482812f65cc3e625ba15a7d2269f9fbf5205d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8419ef10edf92d649c9c2c61d3920e31760d7dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x842546aa982ef735a4162f5e8ec9baca557d9905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x844cb6e5e74e668d58dff7bf4c95b765a6fe68bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x848230520b25f9e4b4aa3b8d64fa71ad110e50cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85518cb62e1278d4f1b5a94de8530f235eab04de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8592df5f6b37127118383bf71433730012ae2a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85ab61c981f8586c90209abb6c87041d083d9397` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378559 | `0x86363a2ef15cde348f8be45b3e93c8bca6db44d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8650ab7e2c53e705d484c3b98be14c1ba1e8d690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x866e0083f37484f01b578a84dede8b659ebd0d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8692858d9dae5c9e48515531e8d62d2c44e4c453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86afae1b2ccf9204838f2660fdb465ce7c5044b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86b4e47a1c1d575a4d7f2e12c3c94fb8e9b36aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8761bd792863f0a2d59b85bd41efa17c815a5cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87cc1865c5dab055c0c5979045df863eccaff498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87d8ebd2055d29d26387b64ddc9e00d11e1d22f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88206dba3b99c69c82352091893456650e706022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378561 | `0x8835d7fcd6e9cf0ada6ed81a0f9d7694efe4ff31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8845fe6d00fab41aaf0322ab2faa8051a319edef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8867865180f426c281a258ecadace23c3c686d00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378564 | `0x8888888818b6e5bbdf1f73c5f3a7f73b2454d2ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88a41956cb7ad8e64d6082eab17711de3bc15090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89952a6db64d0c731b8e0b7545a0709d2a912539` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378566 | `0x8996a30ba6638dac082c721c9e9499447d982852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a22efa613f779427c2a50ea206209d4a99ea167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a5c2871e2a437e2fe67f756523fcf444c27b2a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ae66a4dd15019b925092645351f689d374c3c26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378568 | `0x8b1a3357b51ee5132eb552fa596587fd13be0e24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378570 | `0x8ba0eb3d8c533dcdfdd487f0d2b92f96969fc837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8be55d7d3539e40c6da25ce39c515c80c59fcd72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c1e594fe69177a5724ef2e0fec0dbaf4c415eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ca3e2b58a12621eb7d784866247a69fa46420e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d009f50f59642f650394cc820cb6210c20b7872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x905f2f4d29b185a9307c908dcf52e054aeef31af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x908cb8400c7aa6559c9541524a20fe4415094a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90ff45673a49918cb4aef817193c1742c1814515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91590f629b5cc9452b7dd97cf291d0c24f5b2266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91944fb726c1542d6c20e891b810a88be109ae6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91d5b257f2ec9f56acb00188154dd6532d83ca8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x936c16e4574a49424dda4c27bc5941792bf5d522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93e2e1e384dc298bdeafaee9751841ea211f2d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93f894116409e975e59a19b1bb89aee6e3560e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x941e573a1e35be3cf975b434e3aae2dec75d1a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x942daec3e224c058a58004d3262bf20623511679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x946921e5a175c133b3d754f9f553da7b6ff0b904` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378574 | `0x94c9bf339b26c8d4bb2d8c66fa7a9326bc24aa71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x950007b77fbb9cd0d7f412a233685f310be93096` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378575 | `0x96c8390ba28eb083a784280227c37b853bc408b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96e38ec1190d49fd6b9bd25ac6800d3516c77ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97391c2a035bdcf537c1ce2a70d14faa3d44317f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97a4af212788c518bce9ad6595865ae5371695d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378576 | `0x97add6f966e74776de2a1eb1ddae175d88448d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97affdca8d2d90c4c6ed6eedb3fe1ed97507eb3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97c11029fd1963fd408a84a6de06cc1b6a958f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98d51537a0b7326385fba9fa08e84f64162f7e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99371dff21367e13df0ba87e252286e234474ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99601de064583ea1c2cbfeb8e1f180603dd38227` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378577 | `0x99c92765efc472a9709ced86310d64c4573c4b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378578 | `0x9ab25286e16591b24d5e7dc6542be2297607cc71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378579 | `0x9b55e223f16e18c4b9d222968d42f055ea0ed3d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c991dfa844dc19a46f879cc7901cdf6a9f70d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e268b7dd98282b467fd83e9de770f9aaafa2b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e8d918caaa895436a88fcbadc1e794cac82b4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9efb3793ad545e29c178070b83c01a90f762a090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f8a8e69b20b408a626d4ad6fff676ad8887a3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f8db55aa9c0c5cebbb5596360940fbeb64cb960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fa0bfac62036287c157882f2e4d3d8ab64a3709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa08d2a2112d34c070ee329682e3ad065266d53e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0f76b04ce73aefc25d568e981ef861923282fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1168db022bcd5ece37d480e165dd3195749e3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa11c37b372c3c3cd1d4d17cd4ebcaa655a9f1b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1227a3a7566176c2bd1f24ef7b7ed08ff41ebc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa13a1e5b7c1d5d40087803a6d4b69b2fc00306d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378581 | `0xa18fdbcfa0d260664f06729ba8430514d155d4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1a819cb18575312f29ad3a80f40555ebfa6762a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa20806fb4fc6dc3434bba7a8587f0efeb0e69584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa29489bfff0d59e6415a1788e1f3765d18961e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa387bed33e0415302614545ead370c27778b955e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378582 | `0xa4752c6af04a73058bd407fb346cd8cc120b4add` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378584 | `0xa54fcd71bfd83ee06b359f986fc5da97aa90156c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5d0c46a8b29a44f099f034d4068921c5bf899c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa63997866d9e079d585769805222623781d218a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6af3683ba829057fc8e4204d6e668c26f81628e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6b49325c54ea1288393194f4d327d329648adcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa72fc606529426a4ee50c339da4323157117b1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7a4c5be38c07289dde695a043c9eff137428631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7fe1ac962e451312208e09a7c894eba44833e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa82f327bbbf0667356d2935c6532d164b06ceced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8e148b29a3d58873277141ad46c672a7377d77b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa986435561ce0ee9fdd88e94ff7af0cf2e4e80d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa998b641038502fc8743057a32d9f83153a0d08d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9cb9bb2c5c90310dce36af484b9d22a4ec5e529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa7d33e6b24039c5e3e9cd568d9ec7335714706f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaac02d86a9fea6f652e0732a73fdfc98ff9ecdf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaae93f78507e57440537793fbb0ed4da30883418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac8327c69be90477ffd53a48f6dfa98dfb605419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacc0fb0314a9c802fc8109a0fbd9278a4d80bf4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378588 | `0xacc5b6101c77d519d2ab27f261c537a8d5fdf660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacfd0281a29f8a478655c09fdde38b3f3b562df3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad57a8415a1d510c20efed05554e369423ce9df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6c681c6670bd95aa63c35a501dc997540e0974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378589 | `0xae4a006c954c5039211194816cfbec30e2521bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb09bf15b43fcbc29a41511e56866b5750060621c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0e020c810d43e960a2a5b1cc2b28ba03ef4c30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0fbc7263dcc42d1c3d75b71250122a6c453dd28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1058b403a4ed7f2ecb28876387ee16c07ef5212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb128374f261b19783faf0c4538518165eac7be80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb18cf14ccd6a32c87783c2010d52ab39fa98a081` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378590 | `0xb1fa5d3c0111d8e9ac43a19ef17b281d5d4b474e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb29b019766c0eac3815049e22b47f398c975a124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb39959836ce4ce54b2eed83972507f8b4dbb687b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb48091bfca7f55f35d42b56804e2659bdceb9337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb57068e5a9f2397d502dca9055adc8b4ae4764e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb643b69aa380d8842f2a03617328a4a60434fbb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6cb85be2fd476ed8e5565ff302e27a7e9a52dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7238020c331e8cdfd26db299cfd2076df812e6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378592 | `0xb87a7c493fc3d185a69de8456a8d6c43a1a238ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb89294e5bf3d7d0afaaea10dc4fb6732749e677b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9df9eeaaea841c37ad29885ea4bef201d450bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9f2b197fdfb71226081484c6465ddb5ac1b6e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba197fb54df18f20197e3e09655d8e8446e4d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba4b7a193868fbceffcfec647051a17f51421d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaeeae8b1f096eeaa19cb382250ff2c2346d57ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb522440bfffd563d8ee07d38ce1b7d0f20deefe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378595 | `0xbbf560b6ed08690c0126f0b7b6e2791e6e552835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdc1b1396505fb9e705d7abef6c6ba6c721b3bd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378596 | `0xbe35a497a340d2d10bf8c16a824ab83d066b935a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe627707f079e32a54d323be0c61da02a28bd0bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378597 | `0xbe7caa236544d1b9a0e7f91e94b9f5bfd3b5ca81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbed61125b65f0b733fb786500b85dc150c7252b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf07d98dfc14d4cf5695eef0fe037f53ad33653b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf09a46c42c681e7e13237f99792bf210aef61fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf0febc00e6d54d22860a94d23775a07591c3ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf3ec11527b92fc328c6912c51be29893f2f33b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf5e374a109fc7ba9706d0b6a84257267d87bd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf8f8814ba59e1964acff185ae6ea4ed7b1fd960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0148f72169b8b1e4b8e99848ac6a08c8be0f02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc01e28e7bb368ebd737f7d83a98fd1299c64871a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0ceb8d9e60a9a68eff0c13277cadac3bacd7694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0d0fdf94375f245b5e922a1a39938ab410c6083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0f60c24c5c9217c521bbf6c72f574d0c3b4e74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc12a5ba7762bd40f12565971eba97b1c0333d8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1369824cb225f1326ddf2a55075d5337e392ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1726da980eb4bba07446c58a74711078e3f1468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc261ef17231fbf88666de2ac705d2a48c6ec4333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2758518a7b3df3e8ad3f8d17f8966f168d841b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc34e0597e50a173e3be8682512aff80d0dfd49f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc376ad11f397f4a6e2bebbc45fabaf872d16c7e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3b7f8101f25318dc89d4a16ab2b457a97b927f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3ef174a704ab413ca81a5eb3f7eb08b535e91c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378598 | `0xc404757f0ef09f9c4dd1144dc8da296c91c09958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc450448f948d4aa12bec7349ed63e883311dbae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc50dca2886bc174f55c66d112dc3f1d59d7b2980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc51ea313e5d05340380f9aedc0dddbb4981bf6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc56ebb7f24a2a1b97b60f94674c7234b57f501a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5703607ec56a273691ff0da8f4b68c5311c8afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc582ed7b03c835a7fc34b420199ef40967dfb3d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378599 | `0xc61639e5626ecfb0788b5308c67cbbbd1caecbf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378600 | `0xc64d2522d80378b935f922fadf427e4bd9c5b529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc726e0b619821feed849af8ba43d1da6dca3c403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc75444c41a0cf0bc1388675c1ea684df2ea56f52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7b5aaf2f1889c7ba236ff9698d162c1644e90b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378601 | `0xc8036def32920a4686b81adc30e76244da087960` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378602 | `0xc807d37f69317fb57cfbe73570b82624f7d560cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8201dc54256c292ff8ab9b5cb6b01e1a5097037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc970f33c666e6210b7fdda1a758cfe5da631db94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca8c49063fe969ce20de07aea942cfb7c09a9a41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378603 | `0xcad070f54eb5b9eb3a0d72999c890adb94f897b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb08c64209d14d0924404c8921dd72c61f004869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb9f0a3da02a7ee21a17f45855b08c0367ed2a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcba040a994824572c6827d81a6f5715e163c0f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcba404ea65a088ea1cd04c013d987626cc4734dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd6033108be73b12fe65ce2ad328eb4ecb8a7b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdb35cf4ded79c991eabcbb03fecba6d9af0bf6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce6c393afe01d051d2643e252cffa6cf0c34891c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf0038641ddebc10cddf1f51345d9706576c19bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf4e9749fb2889456330d1a3edeb144d280af7e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfbc1ffb05322cdc384e30a1f26ed48e86d75bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfc60dc8e6b1b7d6ef66eb0cfe476782eb28b2e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd009da4e693d22792f46cd8beb31a05d63f52492` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378604 | `0xd016df56c65d3af498d316065138b6bb95416507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0a0621c26d805fab440df31e31ee8c5c8dc9d51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378605 | `0xd172ab1a73e936790ff3c572b5ec28f1a60aae5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378606 | `0xd180ab2ecafd424a92befbaea655177634913fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd195c2872447e11f1747de9705333c43864a06cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1981327ecaf14afd20c6ea46bda99ce1a3505b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1ca4664a59677be4fe7f716ec6df0e52d3259f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1e0e958226735f8a9704078d29aaa0e9c57f8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd248806ddb9671257521120fe5f02e269353e859` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378607 | `0xd25ec338be80b6b95c02f1e181e3ec0a08cda438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2eada8bffdabb9321e1512d897afd3537dbc1a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd35ebb6c606e853d426323cb990b6a137853717a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3c37bf1b31c706d19bf63d8d30d5331af921938` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378609 | `0xd487c84fc49616a7ca619aac75d0abd0053939b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd587d47b92b82a2b13ce763533d497f363793aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd64e4e60bf60d5f37f50b8acc42d2a8e4fc4d1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd65e1f00606f8bdf73e82ff0424dd57bf4c51c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd672c72d70d5dd1efe6f7ec3a6d59941ff0f8b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd68ac0a54c8496c2b5c70c5e4b9be856823fd28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6d56824ede8778a3df216bbf1d68de88077f39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd70a5e7ffa2c9be75856b15393b75a8e6431263f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7d38dbcc1cf9df5f644b23eb19ddea17105ec25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd88c09ae4c4cebe3adf9b3fcff4ab29fbd2fb11b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8929bbc3f24175587107aba549f5658c5213bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8ed472010802f3ef117616a09fb69c60c0ce3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8f28106a43cc797836a39fd5f424697e3a8a7a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378610 | `0xd95b9c08285045393862607d6e5fc2d95b9ce129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378611 | `0xd9ab256c17cb308eb3e173ae65c8c7165d2aa824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda8811fa5e84c4f27acd102b8e2a73d886b5d5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdac5b706f4268f8fc90af0d596fb348bc8028ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb335c7c4ad429a1f53971fd4644b599dc631306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb825fd43cffad867519d59dbe9ae3142c665da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb96edd7e2d8725d439e1231677d2c44df7ca473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbb259e3e97d6dfea8895ac787bd7beb32a35637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbb44bd1ca4348d92aab397386879cff0fb5da5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbccd34f4bf3a41fbc443b0acead1b823c602978` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378613 | `0xde14f21da488ae2ad8730e002c967bb6cb78db21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfafaab68f36f1c38abf5b61c3b2520cae6aa7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfe0e5992de7ca8277a40c37accde36dcb9c94c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0b6c07b75f3f4fc826032c8c2e8614f1220ebd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0e5feff112b56262c8189670bb79e4f70ef41d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378615 | `0xe1895d5935b7c0937b188c9226697fe27d11c467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2bcf6979e739c0312427e78369153e1b14fb030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3c138158954dadb0354474f101d836585ed8fae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378616 | `0xe4784868701f4dce7a0e6cec4fb1b0b58e9baf39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe47c98a41ea2f48c17d6b58420cbced5e69f5987` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378617 | `0xe4d2ed31fecd197a1857f6619cb60f5fcb7f13b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378618 | `0xe53cdd2eb4776b232fe066d24822ba98ccee386f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5470641bc7ee69ebc0de2c2d9d9d19de3e594cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe559a970e5e619b1bc06c484f1a7a137ad21dabc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5f77fff78080f149192c85306c214ddc375657e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe647711a39dc4813a69637849dfeb13324addae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378619 | `0xe6d84b61e21e40c76b4f40832eb7a26bdda431ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378620 | `0xe720af156e3ed714278ac87d92336a418fa196cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe786bd2d84fbffdcf5dee7153541c3fa7e906446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe979ba162fbcbe2c778fbee9728e6fe3c8e02ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea6fbac74cee3241aa5bc17568d635398c1e08f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeac70ac48336ae00cf01c398640f39c747ff88f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeaf4197e063fd692d87976f656760449d2cf35fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb0745dcc8c397cf334c16ef085c26526524c0bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb7e2dcc30c065fcd7ac4e1f0e050d7fd3ee25ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378624 | `0xeb8f15086274586f95c551890a29077a5b6e5e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebd31829e2654d40b03b737a0eee1c40923f25d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378625 | `0xec8375ff0d63b0f1b4193b726771abf2094a16c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec94dc055d478c97e7c434dd6bc34eab1c527ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecaed91ef8eed08ee4238c82c18d16b91e8daae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeceeea3a66c6cd8c25a6b01a94034d87143010f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378626 | `0xed062edf8f82518f67295c64249ebabf443b59bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed08bd00c24197f696a58cadb3bca9c67d8110a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed3aac922854b8ad09c3ab90c832b989778c455d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed3af25930ef219b09879d2cfa4b546513292db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed51b5c077b71d5b475e30c88b72632fa679fce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee08a1f285e3763e967e923565eef3b0c791d8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee1d9def700f3250fa14859b0c69fbd30988d9e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee9ccd9d5c8b07bb9e6bf1ab17748c737ec35ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeef75f08a8aa536097f3f7902411439ee744309a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef015f747dc06672501ff0f20c3b94f56fa5427f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef3182ce2d8993b932c85952bfbe8e92c2ae17ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef3625bb999bb0b896305ed26708759a65c04fb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef5315605bddea22a27b3a8d58e8d857e5dd8bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378627 | `0xefbfc05a3ee143d13793972e1fe789c17c1e5147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefcd033251516603f51bb8b3e7bad67d884997c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0214fe67b0d2d8c716c4c851c5be825b4913a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1c9dd32ae811e9b8e093266021e69c09f4958c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf347d2c9ea27f7f053cbb122bfada5ebf442b2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf453b27e822479bbc6fb062e17f9d1413610a1ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf46bedbf171bc7c661d0e793174b2d3edc11ae2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf49f1aad1df7b491c92145625d4e0b420fc4dee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4caa8c13bc970e8d9fe1bdd021f870057ec835c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5cae8191462ca1306c7074469af6ac6538ff017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6b8e5190bff12a89bc4f436bfb4f1c6f2e0bd4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf82d1df9a4f2034a483916a222c6cbbcff79a01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf911313e3627eee6c50c601d7cee14cb5ca2e5fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf955c9bfc4b558b300aa10f8abb48194025b3f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9ebf7bc8dfe9986b59027e3d2a53bb412e9737a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378631 | `0xfa48586c190a4437c8651b93265b2ba3be372eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa86391f32ab47a5a9bd0a6eac181df067f08799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfac6ab9a90eb1756a6a9f5f36ef5660563026b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb4143acea1d529a25714eda828f471ca32c1629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb63b8b55dffee079ea9a142f601e8cf7585afa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb74c8f2a315c8faab8104e0aa5d2a96d6316aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd1efbae73e0baf23fb0fb394480405609b331b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378634 | `0xfd6e996c8960d521e3d2624cc4c6648cfa1217b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378635 | `0xfdecec212e28556f1c29e5261e842b9fcf676f69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe86e0058c5736cbedf25165660f7a56acce7d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff2ae6cba574fb3aa002ababc6bc4d08017c076a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfffa041f65b938c28feb7261c68e865176ec9e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x191409d5a4effe25b0f4240557ba2192d18a191e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c8c857c89af070078ab4e72dc0de8768910e5a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x651fab792b0c56e561ae74bbf02f46c524315abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f58a73c3f9a31c3beda5577072e352c75f78a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ba0eb3d8c533dcdfdd487f0d2b92f96969fc837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8036def32920a4686b81adc30e76244da087960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe720af156e3ed714278ac87d92336a418fa196cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb7dc7b3bff60a450eff31edf1330355361ea5ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7ffa2f16684834af27b77fea1acbe35ce7af16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfdecec212e28556f1c29e5261e842b9fcf676f69` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 560
- Live contracts: 77
- Unknown liveness contracts: 483
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=77, unverified unclassified=483

Showing first 200 of 560 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | exact address book overlap | UnnamedContract<br>`0x9b55e223f16e18c4b9d222968d42f055ea0ed3d1` | project_anchor | unknown | live | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x014acd157e47bbf302edf4401a74167d4fd98a47` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x02d444de78224490141176e50c57da97b2a6aa8d` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x02e7b120d26caf6f1eae50ec8444a9f254a57c79` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0478b1741c3424dae1f05236fb1ee88952e38ddc` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06f772d0785b9d4caf8a4515eaa59ae0e29fdfc2` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x07016c00258d9b6ca891653db5a0a548a94528ba` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x075054542c83718fb1e32e6cafd503950a10bd09` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08a645e1e8eb8a9221573ac268c32df14caaff9c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09a18250f99118f40a5d992d537e24b8bd9880f3` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0adcc1dd2f809e0480d3922b885beaadfad082b7` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c5917cc5c74b3505738f61e12dd406fe5cb29a5` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0e08dcbc9c23ba68926b0b1bb47132499d568a09` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0e8aeeec0fef2d25393dd071bc0a3da142e30a2f` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ed63a0ab5f3bfb7202218278026e782175d49d5` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x127c84ac942466981d2f25d991ae80d4838d281d` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x15a790264c2121422c8bc8e9e28b5cceaadda7d6` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x16f0a760d690a83e78aaca527f84b34529fc3dc9` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x170c1ec42f1eca09a2ba31798a67703c461e8174` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x18241d8dd4b01a716cc8a2089c4c207c8a54e67c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x18c1862c0a28d3463a4c0294268230a0163fac84` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1c6c2170abe002c0a28047fb7d4e705f75f212be` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1e73c3576db27b02c242fa4ab869eccbd08c7225` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1e79bad942d99d4f0366994481912f402b9d4d91` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1e83ee40d62a2270ef20bee58a1fc9515b7d6e1e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1f9068338de3da1403cd02a669a1593761fa6ce7` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1ff0fe037f993f952f1a86f2e5dfe8d9705fb0e5` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22cacd628bf13f87ee48e012d0250b6f5d52f6b9` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x235d80041898a9f7f656c6ebb096f1dd2d599f4c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2438f4f33e3f87e64e1424fdda2b59ba6901701b` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x24997396f90489305c0b00ce354a40c4a1ceef4b` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x24d37979c5714cf7f276f3c065b8598bfba95e84` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x26f4e9f1cc37cd70f4962e7e1dea2cb6498a2e70` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x295f3458fbd0c30a23ea81a8d345517c985ce1e0` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2b217f385099a92653c0b49a01479e28137bece2` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2ce79ae6bbabecdb82b32c9093a14c861dc21567` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2e45345f2011efa3a0d826629b1d9a105afc7030` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2ecb165a70544e94fdd96bfc1b4450bd89d91a14` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2eed8cd0e6d52814b2447a1d1e4a72ed41af8eac` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2f6612cad71467839825deda1de442dea3b9ce6e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2f9de844b8c17b0cf43a509a27c3772f92ce648e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3080d2e8a04733dc655e40e55b717f920dd8a068` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x316285126a5e579a9cd529e10fdb661775649db0` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3195f1b7f41a0ac67592e7639c164babe138e2c2` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3254fcc36afbccfccd29c2aca6e791c55cc887c0` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3261e4577f4614f0996ba72cb85443a237a2f09c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x32ddea352a93d00bb6845e06959afd0f4d9290d4` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x32f6f76e5792f0b1efee3dc2818b2b3dbd9d2dba` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x33db1a3275a384ada357a087f01bb30778a5165c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34cafb511b80180bf8325e6c2dbf8757dec01986` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x358029bc8b114ae2082d006283af94bf51f3a21c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x36d206f624eaa3a4ea31da6ade5c2a7a5ddb088f` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x37ced9a4012ac3573b903d8cbd5cca7f8a271f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x39a5915be90b9d86f2127b4463df26e28c3f4a1a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d0c1a8f7aa2c715c2433f79655dde61c10d366e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3e3d3b8ffbc23e4d8b468dfd7b918a74263bdbb5` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3e499ebd1aa75415d6ba26f3ffa08ae649b6db0a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3ea7ba4e69f14667c062b9124ffc1f992ccf72a0` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x40b3ec3d5ebbab1db1ab89e5d4f0d6b4b196199e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x428e040c09650f1487471f23e310b307fe02c614` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x443ca2f6cd2d34d78cb12fd0d6428df022ac2254` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44f9cb678067c050a7b843c9ec5190fc10eda6e8` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x45043f09ac8725e75445726ba990375061affdea` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x468b7bd3c846e87f471906f9911ef57ea2a74764` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47440ec02015b1fb6b2c274aa59525fbd2b399e1` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x49fa76199db450871c155df7b46fa88b4940c5f5` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4cbe646de14b97576c9af3e46bb8ef93310d8c18` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4ec70cc0d018c0a69d5e54e5acaf089c6f3b12b1` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x50bcdf7e0326c112b86ce19db60047c0e074937c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x522f1b57bc1dee5c37aa8ecdccd5f076b63dc0fd` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x542678c705855d414cc67eb81a3526890220d69d` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x553a328bbbcea2598fab48ee5c4fcead33aff4f9` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x555e52a56f162f46bc5881397734ea20d6aa0dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x565b0bd6aaac821fd0e1b000024d0bc95c444b2e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5809b289b8fc9245bf80a738d4d5fca69ba2e5de` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5979b4cf7e7574440a0ea6d1fb8ccf2bc258e8c4` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5ad3d9629984a82640b7d1ab395c3f09aaea5b09` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5efda0012dcc10f3ede18b5b25e0358dca56e362` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x600cc7509f3d9befc49f4f290bd413bb6b59503a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x60cf11f1a056da5a40e5f36bc254d8d51c38e4c3` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x625f0b2b10b79bee4da2a06ca33fd2bf54fcede9` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x632f1ab2ce6361d7a38e5aea0e1be2ed32691e02` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x63e648473cfe1717dba7d0fa3fd0ca73aa237e2e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x64c69b4a57cc96bd2be4badbabdb4f8e78187a8f` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x655c9e2dba6a21c01542493e0474eccf6df70195` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6864f82b601c3074608381a1dc9e31fef95f809d` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6866f9d86e08cc7841f56cb6a0a93677f68fc014` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x68ff0471c13b22c9b6de9c13768d5166999e7e1e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b12c86163277c46d806367c6953e9146c2ba69c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b3de003fbb0b3278a5026eba247ecd164f124fa` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6cb347c4ea77402ba0394e2d53366b6bd400303b` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6ceecc01cf4af98c149bd72b59a61482e13058de` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x711208e24bcf02df7e2d3bcbe043683da3ac9edd` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71b3459bac8b2fab897f49874c9ee99753cde4c8` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7510ab3eb52af3c535f3d323854ae3b48a3ec81f` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x756c9990ff9ae4742adddabe8771f0ecfa45901a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x75f092891d7aab8ab186a6ad27afbe2a3ee1f811` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x76666fe232e58e18c24fb5a8b1cfe91c04428a79` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x77e893f25b49b4e403d6336c1d587f8ad57e9543` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x794c50ae2f355b28dfc6f152977fb2e2229d88b3` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x79cb7192adb3795e6a06868d9b10efed29cb5782` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7aa0f9095d5446159940b28bb1c86b10f842962b` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7b40816acf6d8e9dbca54983931dc3e1c241617c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7d06dce9c061d0fe6a1223a5d719ba1606295371` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7dbdf9be8ba8e3d72f96c9cb6f282218e926981c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7debb1fba1b8b3e2e2d30a6a4649d832221b986c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f4e876168cda7b75b49b7b3e5a34f20a0590fcc` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7fa6bfef050f6c83570de8a53b36e7d0f727c21a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x81414986d57fb56e686c6041cba8040d3b9e2605` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x81d0c4942446c92a816914b43a0a8a126c69c12c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x81da840e17236dac67b8a9940a565871bbed1e28` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x842546aa982ef735a4162f5e8ec9baca557d9905` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8592df5f6b37127118383bf71433730012ae2a0a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x866e0083f37484f01b578a84dede8b659ebd0d9c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x86afae1b2ccf9204838f2660fdb465ce7c5044b8` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x86b4e47a1c1d575a4d7f2e12c3c94fb8e9b36aab` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8761bd792863f0a2d59b85bd41efa17c815a5cb6` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x87cc1865c5dab055c0c5979045df863eccaff498` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8867865180f426c281a258ecadace23c3c686d00` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x88a41956cb7ad8e64d6082eab17711de3bc15090` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x89952a6db64d0c731b8e0b7545a0709d2a912539` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8a5c2871e2a437e2fe67f756523fcf444c27b2a5` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8be55d7d3539e40c6da25ce39c515c80c59fcd72` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8c1e594fe69177a5724ef2e0fec0dbaf4c415eec` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8d009f50f59642f650394cc820cb6210c20b7872` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x905f2f4d29b185a9307c908dcf52e054aeef31af` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x90ff45673a49918cb4aef817193c1742c1814515` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x91590f629b5cc9452b7dd97cf291d0c24f5b2266` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x936c16e4574a49424dda4c27bc5941792bf5d522` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x93f894116409e975e59a19b1bb89aee6e3560e8b` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x941e573a1e35be3cf975b434e3aae2dec75d1a61` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x946921e5a175c133b3d754f9f553da7b6ff0b904` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x950007b77fbb9cd0d7f412a233685f310be93096` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x97a4af212788c518bce9ad6595865ae5371695d1` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x97affdca8d2d90c4c6ed6eedb3fe1ed97507eb3e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99371dff21367e13df0ba87e252286e234474ff0` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e268b7dd98282b467fd83e9de770f9aaafa2b49` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9efb3793ad545e29c178070b83c01a90f762a090` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9f8db55aa9c0c5cebbb5596360940fbeb64cb960` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9fa0bfac62036287c157882f2e4d3d8ab64a3709` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa08d2a2112d34c070ee329682e3ad065266d53e6` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1168db022bcd5ece37d480e165dd3195749e3f5` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa11c37b372c3c3cd1d4d17cd4ebcaa655a9f1b2d` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1a819cb18575312f29ad3a80f40555ebfa6762a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6af3683ba829057fc8e4204d6e668c26f81628e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6b49325c54ea1288393194f4d327d329648adcb` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa7a4c5be38c07289dde695a043c9eff137428631` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa998b641038502fc8743057a32d9f83153a0d08d` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaa7d33e6b24039c5e3e9cd568d9ec7335714706f` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaac02d86a9fea6f652e0732a73fdfc98ff9ecdf7` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaae93f78507e57440537793fbb0ed4da30883418` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xacc0fb0314a9c802fc8109a0fbd9278a4d80bf4b` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xacfd0281a29f8a478655c09fdde38b3f3b562df3` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xad57a8415a1d510c20efed05554e369423ce9df9` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xad6c681c6670bd95aa63c35a501dc997540e0974` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb09bf15b43fcbc29a41511e56866b5750060621c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb0e020c810d43e960a2a5b1cc2b28ba03ef4c30e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb1058b403a4ed7f2ecb28876387ee16c07ef5212` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb29b019766c0eac3815049e22b47f398c975a124` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb48091bfca7f55f35d42b56804e2659bdceb9337` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb9df9eeaaea841c37ad29885ea4bef201d450bcf` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb9f2b197fdfb71226081484c6465ddb5ac1b6e3c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xba197fb54df18f20197e3e09655d8e8446e4d3f8` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xba4b7a193868fbceffcfec647051a17f51421d8a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbdc1b1396505fb9e705d7abef6c6ba6c721b3bd9` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf07d98dfc14d4cf5695eef0fe037f53ad33653b` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf09a46c42c681e7e13237f99792bf210aef61fb` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf0febc00e6d54d22860a94d23775a07591c3ee2` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf8f8814ba59e1964acff185ae6ea4ed7b1fd960` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc0148f72169b8b1e4b8e99848ac6a08c8be0f02d` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc01e28e7bb368ebd737f7d83a98fd1299c64871a` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc1726da980eb4bba07446c58a74711078e3f1468` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc376ad11f397f4a6e2bebbc45fabaf872d16c7e5` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3b7f8101f25318dc89d4a16ab2b457a97b927f9` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc450448f948d4aa12bec7349ed63e883311dbae1` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc582ed7b03c835a7fc34b420199ef40967dfb3d6` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcb9f0a3da02a7ee21a17f45855b08c0367ed2a25` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcba404ea65a088ea1cd04c013d987626cc4734dc` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcd6033108be73b12fe65ce2ad328eb4ecb8a7b2d` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xce6c393afe01d051d2643e252cffa6cf0c34891c` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcf4e9749fb2889456330d1a3edeb144d280af7e3` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcfbc1ffb05322cdc384e30a1f26ed48e86d75bd6` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcfc60dc8e6b1b7d6ef66eb0cfe476782eb28b2e4` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd0a0621c26d805fab440df31e31ee8c5c8dc9d51` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd1981327ecaf14afd20c6ea46bda99ce1a3505b2` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd3c37bf1b31c706d19bf63d8d30d5331af921938` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd587d47b92b82a2b13ce763533d497f363793aeb` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd64e4e60bf60d5f37f50b8acc42d2a8e4fc4d1da` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd65e1f00606f8bdf73e82ff0424dd57bf4c51c43` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd672c72d70d5dd1efe6f7ec3a6d59941ff0f8b32` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd8ed472010802f3ef117616a09fb69c60c0ce3b9` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xda8811fa5e84c4f27acd102b8e2a73d886b5d5f0` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdbccd34f4bf3a41fbc443b0acead1b823c602978` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe0b6c07b75f3f4fc826032c8c2e8614f1220ebd4` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe0e5feff112b56262c8189670bb79e4f70ef41d1` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe3c138158954dadb0354474f101d836585ed8fae` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe5470641bc7ee69ebc0de2c2d9d9d19de3e594cc` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe559a970e5e619b1bc06c484f1a7a137ad21dabc` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe5f77fff78080f149192c85306c214ddc375657e` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe647711a39dc4813a69637849dfeb13324addae6` | non_address_book | unknown | unknown | unverified | n/a | `0x8888888841b669313cdc735910214313d7420e25` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [README.md](https://github.com/acryptos/docs.acryptos.com/blob/master/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [20210128-defiyield.info.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210128-defiyield.info.pdf) | Hacken | Audit | 2021-01 | stale | Direct | n/a | matched | 4 | 0 | 0 | 8 | n/a |
| [20210218-Hacken-ACryptoSFarmV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210218-Hacken-ACryptoSFarmV2.pdf) | Hacken | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20210331-Hacken-Complete.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210331-Hacken-Complete.pdf) | Hacken | Audit | 2021-03 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 16 | high |
| [20211105-Hacken-AcsiFinance-BalancerV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20211105-Hacken-AcsiFinance-BalancerV2.pdf) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [20211116-Hacken-Review.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20211116-Hacken-Review.pdf) | Hacken | Audit | 2021-11 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 17 | high |
| [skynet.certik.com/projects/acryptos](https://skynet.certik.com/projects/acryptos) | CertiK | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [9664] README.md — no match: The provided text is a product introduction/marketing page for ACryptoS, not an audit report. No contracts, scope section, or audit date were found.
- [9665] 20210128-defiyield.info.pdf — matched: No reason recorded
- [9666] 20210218-Hacken-ACryptoSFarmV2.pdf — no match: Only one contract in scope: ACryptoSFarmV2.sol
- [9667] 20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf — no match: Only one contract in scope: StrategyACryptoSCakeTokenTokenV2.sol
- [9668] 20210331-Hacken-Complete.pdf — matched: Extracted 20 contract names from the scope section listing file paths. Audit date found on cover page and in timeline.
- [9669] 20211105-Hacken-AcsiFinance-BalancerV2.pdf — no match: The provided text is a certificate snippet stating that Acryptos project source code is identical to Balancer's, but no specific contract names or scope section are mentioned.
- [9670] 20211116-Hacken-Review.pdf — matched: Extracted contract names from the Scope section listing files and from the 'Check the updates' section mentioning new files. The audit date is November 16, 2021, as stated on the cover page and in the timeline.
- [15288] skynet.certik.com/projects/acryptos — no match: The document is a CertiK Skynet project insight page, not a full audit report. No contracts in scope are listed. The audit date is inferred from 'Revised on 3/23/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 20210128-defiyield.info.pdf | ACS | own contract | ACS (selected) `0x4197c6ef3879a08cd51e5560da5064b773aa1d29` — deployed 2020-10-26 08:01:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210128-defiyield.info.pdf | ACS MasterChef | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | ACSI | own contract | ACSI (selected) `0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389` — deployed 2020-11-23 04:58:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210128-defiyield.info.pdf | ACSI MasterChefV2 | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | ACryptoS: Deployer | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | ACryptoSVault0 | own contract | ACryptoSVault0 (selected) `0x7679381507af0c8de64586a458161aa58d3a4fc3` — deployed 2020-10-30 02:52:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210128-defiyield.info.pdf | Controller | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | MasterChef | own contract | MasterChef (selected) `0xeae1425d8ed46554bf56968960e2e567b49d0bed` — deployed 2020-10-28 11:06:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210128-defiyield.info.pdf | MasterChefV2 | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | StrategyACryptoS0V3 | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | StrategyACryptoS0V4_ACSI | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | Timelock6H | unmatched — not counted | — | — | no |
| 20210218-Hacken-ACryptoSFarmV2.pdf | ACryptoSFarmV2 | unmatched — not counted | — | listed in scope | no |
| 20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf | StrategyACryptoSCakeTokenTokenV2 | unmatched — not counted | — | listed in scope section | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSVenusLeverageV2 | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSVenusLeverageBnb | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSVenusLeverageXvs | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoS0V3 | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSCakeBnbToken | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSCakeBnbCake | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSCakeV2b | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSVenusVAI | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | MasterChef | own contract | MasterChef (selected) `0xeae1425d8ed46554bf56968960e2e567b49d0bed` — deployed 2020-10-28 11:06:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210331-Hacken-Complete.pdf | MasterChefV2 | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | acsACS | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | acsACSI | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | Timelock6H | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | ACS | own contract | ACS (selected) `0x4197c6ef3879a08cd51e5560da5064b773aa1d29` — deployed 2020-10-26 08:01:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210331-Hacken-Complete.pdf | ACS_ACSI | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | ACryptoSVaultBnb | ambiguous — not counted | ACryptoSVaultBnb (alternative) `0x10137a821fd5aea332f682f4cbafc839e4373104` — deployed 2021-09-11 16:04:22+03 — liveness: live (current_address_book_code)<br>ACryptoSVaultBnb (alternative) `0x6fe6762e9314ad80803fef083c8bb16af435a628` — deployed 2020-11-27 11:18:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20210331-Hacken-Complete.pdf | ACryptoSVault0V2_ACSI | own contract | ACryptoSVault0V2_ACSI (selected) `0x2b66399ad01be47c5aa11c48fdd6df689dae929a` — deployed 2020-11-24 08:43:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210331-Hacken-Complete.pdf | ACryptoSVault | ambiguous — not counted | ACryptoSVault (alternative) `0xab81911e6b884ee3d85278f0ab8cf38eee31a2d1` — deployed 2021-05-07 16:16:30+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x7abbcf9ac11f65955be8e93ed7ed64b12e34a58e` — deployed 2021-02-08 05:47:53+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xe0303c65fc9ce79c53228ae1e8cde3b6b8c02f95` — deployed 2021-03-01 11:52:45+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x32fe1be67102c10f6f5e798cb24723e738a31943` — deployed 2020-11-28 05:54:47+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xab819564a1bb4a7f4142fdc1be07599fd0c8b24a` — deployed 2021-09-21 11:36:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5f9aab778447010ee0121e3460738cf8d1aedf55` — deployed 2021-09-08 11:49:08+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xda6e3b30f7628928add9f694ac0d97a00536033f` — deployed 2021-06-19 11:21:16+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x2875a5b002c2f2116590c70b632f6c28a5b3ef2c` — deployed 2021-07-02 09:42:34+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x03e0df5fb4feb9fe0c1adfe347372b4a654233c1` — deployed 2022-02-06 13:18:59+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xfc698dae6c5b7e38f8eb8fc240f23c598d17e5e2` — deployed 2020-11-28 05:53:59+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf690ae6cf1f93da3b56425061d37d24046720494` — deployed 2021-11-08 07:22:28+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xa4964271b476b0730acf86dd9f8d270b5e804126` — deployed 2021-01-07 06:09:20+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x14b197ca1a5aef891e86e1eae7a110c865c7dcec` — deployed 2021-09-14 08:22:05+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x7a2fb04dfc2b2ca052a769c023f43b81e67f6624` — deployed 2021-10-26 07:14:18+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x03e904a729a6e0eb4b675969d3fe51b5392f5c39` — deployed 2021-02-18 12:21:32+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x4e58b693092e33e46a8734b9c4064b82afdca14f` — deployed 2020-11-28 05:55:41+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xbb08f867db0fda40083d7636ef18bb88e592cc1b` — deployed 2021-03-01 04:51:15+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x883a0d28dbac2e713e87aa2448595438d8016811` — deployed 2020-12-29 06:29:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5e4993a09609ebca7f038e3f66c8f97059563690` — deployed 2021-05-01 14:38:10+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x0395fcc8e1a1e30a1427d4079af6e23c805e3eef` — deployed 2020-12-07 13:37:09+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5c2b38bd976619cfc8cc3c7cbf47241e06478684` — deployed 2021-10-28 11:19:16+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x532d5775ce71cb967b78acbc290f80df80a9baa5` — deployed 2020-11-27 02:07:00+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x471696dcd1d615aff82f23ed5835d8bcf0ec1f8d` — deployed 2021-11-08 07:40:58+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xbba26766b17d774f55963a984265b7cc5604bea5` — deployed 2021-10-28 09:41:34+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x161afe47561cfcf9603ef67c44de95114e78d33f` — deployed 2021-03-02 09:23:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x6c8a596e777a21c45d07173938d588ca4ca30d8d` — deployed 2021-10-28 12:46:13+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf54d438b63c1680b62418339ec2a4c6e4af6c73a` — deployed 2021-10-25 07:13:56+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x027b514b13b17eb123c88f48fedc14676bbaac78` — deployed 2021-05-12 15:13:15+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x40a7dd6502828ae78d12f0f05506a64dcfdcdfed` — deployed 2021-06-30 16:26:52+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x6cc0ef907bc1beed82954bd0706e177cdc314a9c` — deployed 2021-10-28 11:50:44+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xfcf924f58fda91190b874547e08dff069c6d5a48` — deployed 2021-09-09 10:52:28+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5c8c857c89af070078ab4e72dc0de8768910e5a8` — deployed 2021-07-19 06:20:00+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf7ffa2f16684834af27b77fea1acbe35ce7af16b` — deployed 2021-09-08 10:29:21+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x90f277c402ea280e70068049fab1d123bb6cba16` — deployed 2021-03-02 06:52:33+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xac045258edab47b62e427e2fa659e3195cecbde2` — deployed 2021-06-19 10:59:37+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x35cadd2daa782556b7fd90a98663bacdb78d863e` — deployed 2020-12-07 13:37:36+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x8dc707f2a9a9642f635392af34c0e6a712f1d766` — deployed 2021-06-16 08:58:03+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x58d35bc513e46bd80770c06543071f6a563a360b` — deployed 2021-05-14 04:56:35+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x82b4c3edcba9b754f0ea4a9d043f6f943204bced` — deployed 2021-09-15 09:00:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20210331-Hacken-Complete.pdf | ACryptoSVault0 | own contract | ACryptoSVault0 (selected) `0x7679381507af0c8de64586a458161aa58d3a4fc3` — deployed 2020-10-30 02:52:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusLeverageV2 | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusLeverageBnb | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusLeverageXvs | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoS0V3 | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSCakeBnbToken | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSCakeBnbCake | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSCakeV2b | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusVAI | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | MasterChef | own contract | MasterChef (selected) `0xeae1425d8ed46554bf56968960e2e567b49d0bed` — deployed 2020-10-28 11:06:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | MasterChefV2 | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | Timelock6H | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | acsACS | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | acsACSI | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | ACS | own contract | ACS (selected) `0x4197c6ef3879a08cd51e5560da5064b773aa1d29` — deployed 2020-10-26 08:01:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | ACS_ACSI | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | ACryptoSVaultBnb | own contract | ACryptoSVaultBnb (selected) `0x10137a821fd5aea332f682f4cbafc839e4373104` — deployed 2021-09-11 16:04:22+03 — liveness: live (current_address_book_code)<br>ACryptoSVaultBnb (alternative) `0x6fe6762e9314ad80803fef083c8bb16af435a628` — deployed 2020-11-27 11:18:20+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-09-11 was 66d from audit; next candidate 354d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | ACryptoSVault0V2_ACSI | own contract | ACryptoSVault0V2_ACSI (selected) `0x2b66399ad01be47c5aa11c48fdd6df689dae929a` — deployed 2020-11-24 08:43:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | ACryptoSVault | ambiguous — not counted | ACryptoSVault (alternative) `0xab81911e6b884ee3d85278f0ab8cf38eee31a2d1` — deployed 2021-05-07 16:16:30+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x7abbcf9ac11f65955be8e93ed7ed64b12e34a58e` — deployed 2021-02-08 05:47:53+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xe0303c65fc9ce79c53228ae1e8cde3b6b8c02f95` — deployed 2021-03-01 11:52:45+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x32fe1be67102c10f6f5e798cb24723e738a31943` — deployed 2020-11-28 05:54:47+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xab819564a1bb4a7f4142fdc1be07599fd0c8b24a` — deployed 2021-09-21 11:36:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5f9aab778447010ee0121e3460738cf8d1aedf55` — deployed 2021-09-08 11:49:08+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xda6e3b30f7628928add9f694ac0d97a00536033f` — deployed 2021-06-19 11:21:16+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x2875a5b002c2f2116590c70b632f6c28a5b3ef2c` — deployed 2021-07-02 09:42:34+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x03e0df5fb4feb9fe0c1adfe347372b4a654233c1` — deployed 2022-02-06 13:18:59+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xfc698dae6c5b7e38f8eb8fc240f23c598d17e5e2` — deployed 2020-11-28 05:53:59+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf690ae6cf1f93da3b56425061d37d24046720494` — deployed 2021-11-08 07:22:28+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xa4964271b476b0730acf86dd9f8d270b5e804126` — deployed 2021-01-07 06:09:20+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x14b197ca1a5aef891e86e1eae7a110c865c7dcec` — deployed 2021-09-14 08:22:05+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x7a2fb04dfc2b2ca052a769c023f43b81e67f6624` — deployed 2021-10-26 07:14:18+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x03e904a729a6e0eb4b675969d3fe51b5392f5c39` — deployed 2021-02-18 12:21:32+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x4e58b693092e33e46a8734b9c4064b82afdca14f` — deployed 2020-11-28 05:55:41+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xbb08f867db0fda40083d7636ef18bb88e592cc1b` — deployed 2021-03-01 04:51:15+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x883a0d28dbac2e713e87aa2448595438d8016811` — deployed 2020-12-29 06:29:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5e4993a09609ebca7f038e3f66c8f97059563690` — deployed 2021-05-01 14:38:10+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x0395fcc8e1a1e30a1427d4079af6e23c805e3eef` — deployed 2020-12-07 13:37:09+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5c2b38bd976619cfc8cc3c7cbf47241e06478684` — deployed 2021-10-28 11:19:16+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x532d5775ce71cb967b78acbc290f80df80a9baa5` — deployed 2020-11-27 02:07:00+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x471696dcd1d615aff82f23ed5835d8bcf0ec1f8d` — deployed 2021-11-08 07:40:58+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xbba26766b17d774f55963a984265b7cc5604bea5` — deployed 2021-10-28 09:41:34+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x161afe47561cfcf9603ef67c44de95114e78d33f` — deployed 2021-03-02 09:23:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x6c8a596e777a21c45d07173938d588ca4ca30d8d` — deployed 2021-10-28 12:46:13+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf54d438b63c1680b62418339ec2a4c6e4af6c73a` — deployed 2021-10-25 07:13:56+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x027b514b13b17eb123c88f48fedc14676bbaac78` — deployed 2021-05-12 15:13:15+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x40a7dd6502828ae78d12f0f05506a64dcfdcdfed` — deployed 2021-06-30 16:26:52+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x6cc0ef907bc1beed82954bd0706e177cdc314a9c` — deployed 2021-10-28 11:50:44+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xfcf924f58fda91190b874547e08dff069c6d5a48` — deployed 2021-09-09 10:52:28+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5c8c857c89af070078ab4e72dc0de8768910e5a8` — deployed 2021-07-19 06:20:00+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf7ffa2f16684834af27b77fea1acbe35ce7af16b` — deployed 2021-09-08 10:29:21+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x90f277c402ea280e70068049fab1d123bb6cba16` — deployed 2021-03-02 06:52:33+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xac045258edab47b62e427e2fa659e3195cecbde2` — deployed 2021-06-19 10:59:37+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x35cadd2daa782556b7fd90a98663bacdb78d863e` — deployed 2020-12-07 13:37:36+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x8dc707f2a9a9642f635392af34c0e6a712f1d766` — deployed 2021-06-16 08:58:03+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x58d35bc513e46bd80770c06543071f6a563a360b` — deployed 2021-05-14 04:56:35+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x82b4c3edcba9b754f0ea4a9d043f6f943204bced` — deployed 2021-09-15 09:00:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20211116-Hacken-Review.pdf | ACryptoSVault0 | own contract | ACryptoSVault0 (selected) `0x7679381507af0c8de64586a458161aa58d3a4fc3` — deployed 2020-10-30 02:52:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | ACryptoSFarmV3 | unmatched — not counted | — | listed as new file in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusLeverageUGV6 | unmatched — not counted | — | listed as new file in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x02aabf12f7c377916bb828bce3d45c778d919d0e` | ACryptoSVault | core_logic | $3,707,476.73 | Verified native implementation with $3,707,476.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6fe6762e9314ad80803fef083c8bb16af435a628` | ACryptoSVaultBnb | core_logic | $234,455.08 | Verified native implementation with $234,455.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8045db83f60fe9fc8eb67593140eeeb4a71bdf51` | StrategyACryptoS0V6_ACSI | core_logic | $85,625.86 | Verified native implementation with $85,625.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x027b514b13b17eb123c88f48fedc14676bbaac78` | ACryptoSVault | core_logic | $78,883.47 | Verified native implementation with $78,883.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2aa23d513e9a9e6bd22862debb66161ab49354c5` | StrategyACryptoSBsw | core_logic | $0.09 | Verified native implementation with $0.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x24a87b844fa46008442186f1362a8123b0ada317` | StrategyACryptoSMdxV3 | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x02bd617fbce209d974d545fa06236aec3651e6f9` | StrategyACryptoSDsg | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x20d1d365834852f1fea2dfacd5121935f88a6f78` | StrategyACryptoSVenusVaiV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x191409d5a4effe25b0f4240557ba2192d18a191e` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x49440376254290b3264183807a16450457f02b28` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 587 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 40 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=3
- Match method counts: temporal_name=1, unique_name=12

Zero-match audit list:

- [9664] README.md
- [9666] 20210218-Hacken-ACryptoSFarmV2.pdf
- [9667] 20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf
- [9669] 20211105-Hacken-AcsiFinance-BalancerV2.pdf
- [15288] skynet.certik.com/projects/acryptos

Fork inheritance lineage and inherited audits are included when available.
