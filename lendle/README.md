# Agentic Audit Brief: Lendle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 2 audit(s)
- Eligible audit results: 10 (2 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Lendle (`lendle`)
- Website: [https://www.lendle.xyz/](https://www.lendle.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: mantle
- Contract surface: 104 unique implementations (195 raw deployments)
- Coverage basis: 10/11 confirmed own live verified implementations (90.9%); conservative 90.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $506,277.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lendle. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across mantle. Structural roles: 6 unclassified, 4 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (6), core (4), supporting (1)
- Contract kinds: contract (11)
- Detected standards: ownable (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x006b07b7b817925582af85d9810eda1f8adf1a2f`, chain 5000)
- UnnamedContract (`0x228518c0e586f3298498a53288b7d090478f4eaa`, chain 5000)
- UnnamedContract (`0x256cd403755fc4362e62691aaa2c04538c56f851`, chain 5000)
- UnnamedContract (`0x26ae2b78bdd92b68db5b86debe7ecc3a8548cff0`, chain 5000)
- UnnamedContract (`0x2a5b18a211e985da6dc3f680be495246b033f8dc`, chain 5000)
- UnnamedContract (`0x30d990834539e1ce8be816631b73a534e5044856`, chain 5000)
- UnnamedContract (`0x4c57be599d0e0414785943569e9b6a66da79aa6b`, chain 5000)
- UnnamedContract (`0x552b9e4bae485c4b7f540777d7d25614cdb84773`, chain 5000)
- UnnamedContract (`0x5645d7b3be312db6100f69c862969e0064d8fff6`, chain 5000)
- UnnamedContract (`0x5c75a733656c3e42e44afff1aca1913611f49230`, chain 5000)
- UnnamedContract (`0x79e2fd1c484eb9ee45001a98ce31f28918f27c41`, chain 5000)
- UnnamedContract (`0x8500a466ec3b4f4bf0901d1d7206b96137f5abba`, chain 5000)
- UnnamedContract (`0x870c9692ab04944c86ec6feef63f261226506efc`, chain 5000)
- UnnamedContract (`0xb74b3a3ef7e8006348a2d5fcead0c93dfb150a45`, chain 5000)
- UnnamedContract (`0xc2e285cdaf8fee240dee0863d3a8f7e3c737b8c2`, chain 5000)
- UnnamedContract (`0xcfa5ae7c2ce8fadc6426c1ff872ca45378fb7cf3`, chain 5000)
- UnnamedContract (`0xe5f9ffc0d0d70eed59364b44b1f11900b39db37b`, chain 5000)
- UnnamedContract (`0xefdc43a37f4eb837313d6f42b5d91de7d4457fda`, chain 5000)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc90c10c7e3b2f14870cc870a046bd099ccddee12`, chain 5000)
- LendingRateOracle (`0xc7f65c6b94a8a1c0977add58b6799ad456d72392`, chain 5000)
- LendleToken (`0x25356aeca4210ef7553140edb9b8026089e49396`, chain 5000)
- TokenVesting (`0xa7f784dc0ec287342b0b84e63961effa541f7e6f`, chain 5000)
- WETHGateway (`0xec831f8710c6286a91a348928600157f07ac55c2`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/49 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/11 (90.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 75 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 29 of 104 unique; 75 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/40
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 64
- Unique implementations: 104
- Raw deployments: 195
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 10 | 25.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AToken | unknown | project_anchor | own_supporting | 0 | mantle | unit-244824 | `0xec3414058620e118d2258f8d9765f6c8b8320694` | ✅ Audited |
| LendingPoolAddressesProvider | unknown | project_anchor | own_supporting | 0 | mantle | unit-244809 | `0xab94bedd21ae3411eb2698945dfcab1d5c19c3d4` | ✅ Audited |
| LendingPoolAddressesProviderRegistry | unknown | project_anchor | own_supporting | 0 | mantle | unit-244814 | `0xb92bffee2de49b6e87ef3260337b676a2811b868` | ✅ Audited |
| LendingRateOracle | unknown | project_anchor | own_supporting | 0 | mantle | unit-244817 | `0xc7f65c6b94a8a1c0977add58b6799ad456d72392` | ✅ Audited |
| LendleToken | token | project_anchor | own_supporting | 0 | mantle | unit-244784 | `0x25356aeca4210ef7553140edb9b8026089e49396` | ✅ Audited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | mantle | unit-244812 | `0xb57f32d28e098cd2d72eafc7a4ecfc54f3589296` | ✅ Audited |
| StableDebtToken | unknown | project_anchor | own_supporting | 0 | mantle | unit-244822 | `0xd8a36c0e6148ffb374c6726d4c60bbd55b745407` | ✅ Audited |
| TokenVesting | operational_periphery | project_anchor | own_supporting | 0 | mantle | unit-244807 | `0xa7f784dc0ec287342b0b84e63961effa541f7e6f` | ✅ Audited |
| VariableDebtToken | unknown | project_anchor | own_supporting | 0 | mantle | unit-244811 | `0xb3f838d219a0cfba73193453c2023090277d6af5` | ✅ Audited |
| WETHGateway | token | project_anchor | own_supporting | 0 | mantle | unit-244825 | `0xec831f8710c6286a91a348928600157f07ac55c2` | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Api3AggregatorAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x6982e8b8a1da1570a4fb6362a55c63c38da66508`; mantle `0x7cbdfcd408034d9af80514fed4785b7ce2ba421f` | ⚠️ Unaudited |
| Api3PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x14d48a6d54b612fe7ee847e80a87c7d20e831c73`; mantle `0x7ed5edd369f99df6eda4b9ce6fea6649a46021f1`; mantle `0x9830866b44ce08e3d0aa928330dd65ee3a84ff06`; mantle `0xcde071fe19242e6b745614691f8764f00c8dc50c` | ⚠️ Unaudited |
| Api3PythPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 19 deployments: mantle `0x04dcaa1f6f3990fde4a5ab90f1222d2b79d88ef8`; mantle `0x0f4716776a1e92ed6f1cbf72071595e62cdf9f07`; mantle `0x242a362ed1fb83fc27a27cab019ab84638d4c147`; mantle `0x244f112a831412d1f6f6b13a8a2bdbab69035de0`; mantle `0x2e014fa8c0bfe34f525287cc25b74df37a9d20ee`; mantle `0x37d09f1fc5a20acf56ac0cef6fe4eb9c05789297`; mantle `0x39d9ecd395231856e4c63747377fb1665b80b131`; mantle `0x42591eda8a72d92ec4d972f4abd52cb52fd6a3bb`; mantle `0x42f9153e28c1d7d2f0d2fccc5106a5dbb7367d2d`; mantle `0x4f8402a2c4895233b463770cc2df38ac0f85d863`; mantle `0x5259279f3530244efae245ccccc0cf2b6e31dd1c`; mantle `0x790292b041d53b132fa7b4e17c8842dfeeaec5b3`; mantle `0x82d2633abbc8c50e6dc8bc6731894445f6fb283f`; mantle `0x8ba59d9cb6e1fd4d301cfe832c60142c2eefe909`; mantle `0xad22b2b6a43a8ce065272a51ee6d77136685756b`; mantle `0xb7edd94ba223233b19ff453bc6c8fb6d60b27891`; mantle `0xdcc5f2c27975807d7c4679aa8bb182e98c692a09`; mantle `0xf5c791f984d679a7a1437e5d14db59a3ed380850`; mantle `0xf73c33b6775430f1f31e6d728d1deaea26721f2a` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x19342de516e24b3ea48b9d621e4a71c595251655`; mantle `0x3bb743918fdcaa3a1db55c56132b343c6a57d5c1`; mantle `0x3e597f440a9afbf00d52105ae4031519fc214eff`; mantle `0x63e42e991d322b4a6917091666f7a65508e94898`; mantle `0x6a4a5eafe25a4060f6bf0bfe8a0c3359af1e6de0`; mantle `0xb8ed1130b5504be4bb7f4b0698504e589a596de3`; mantle `0xbff488a01fca22f627e0176c8b6a3aee252f60bb`; mantle `0xf375e5a2a40b423606d47c2ce533a008b5966e05` | ⚠️ Unaudited |
| ATokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 11 deployments: mantle `0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d`; mantle `0x248ba02fd2ab556ed0e10a2ca65650a0c4ce4436`; mantle `0x37d05152086f82c660c3d11c7ccfbef21d173bec`; mantle `0x38113ce76f7233ed9eb6648abeb5042664504b43`; mantle `0x4d7b93b31286deb2c684468370774ccde90f22cf`; mantle `0x612271b3aec0e8871dd62a9d312633bd7b0c8c8c`; mantle `0x665f9abbb225a5dfc281a3d5a829c6c3d46e8d47`; mantle `0x892e01e22027ae3d7c2f50fa38522138036162d6`; mantle `0x990a4ef1b904cc0fe5e4fec06617fd9b08ad6e1e`; mantle `0xc430c4b737abef0bf8c16c7e22af2b36c4fc2f7a`; mantle `0xf8d3af841db61434ca7813ef6d3c36edd21184e2` | ⚠️ Unaudited |
| ChefIncentivesController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x201673fe5b93d92b9a036cb4e2e444d352413b32` | ⚠️ Unaudited |
| ChefIncentivesControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc36b75c56eddd15b1a171f0c6927b07c84c6db95` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 18 deployments: mantle `0x1bb165ed88eda830c969a91308052fdaf4ff5bee`; mantle `0x29a26de35659fff159f8b315a6c54ae47be93778`; mantle `0x50c7e48578664621e4e829cef0e89d9ac65ae2a9`; mantle `0x5588be6eb91fb55783cf9a422072dbe104cf7d4b`; mantle `0x58a704b489532839dfeffe45acb2a2d3d0b23571`; mantle `0x713749e0b76cfc4b2123fe5e6bb6562b31aa6cfa`; mantle `0x71984434d98785b96084ab9a1ad4105dbe0d028b`; mantle `0x975e2589628ac14d420cfdc893396da624614538`; mantle `0x9bca50eda1de230603167d00f967f79ec9edbb9f`; mantle `0x9c08c8e5928e608c64a57fec3bca07b3f91fc37b`; mantle `0xa2fd0a0ce16e9fe8d0926ba81d3a2c69ff931cfb`; mantle `0xac8d6906e8273d8bbf19ceb3c04ecc3b646dec64`; mantle `0xb92ead4d4ea7290187690ce980e1e6ab43eb0f13`; mantle `0xcd214b11fa10748da4e25411a6f6a844b310ae1c`; mantle `0xd2b3c2f305c63533f17464edf553517dfe6f31a5`; mantle `0xd9b0b0eddd6608d52bd02826699edb38e540a488`; mantle `0xe35fa697f25f00240a167f8497c061d604938e4a`; mantle `0xe89dec932b212603a7ef40e82e753e3d593ddbaf` | ⚠️ Unaudited |
| FairAuctionNoES | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa0fa329b8977125c5e47fe439c69658cb727c349` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf9e8f0a5aa1fd994b762ac28ebfbe14f83bb30fd` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | mantle | unit-244818 | `0xc90c10c7e3b2f14870cc870a046bd099ccddee12` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x13e9761c037f382472ce765556c3da2af29d9ec7` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd272756c3c07f253cc3199176270250b3d0978bc` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7d350354dd9d1e48ab1810f1f1b139309e9394cc` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x845a2487742a4fbcf133a9010fe3ed06a92883fe`; mantle `0xfe91d9901dfaaf939a3bb8b444f5e141bb7dd0c1` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2186a94df0f06a378999c22cfb6a160b798cd56b` | ⚠️ Unaudited |
| MerkleERC20Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x48222df288e1c3a61c02a54b604a1288575827b8`; mantle `0x93803455aa62e5b95cdb174cd52b16382967078f`; mantle `0xce848c40762c9a65c2b71c90a4d5bc5580191383` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfa12aaa98bb6f301b5a95383e4f43d5873de522b` | ⚠️ Unaudited |
| ProtocolRevenueDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x2e2df129bde4d56c99c1a93544e8a2b9282f7ea9`; mantle `0xb1946b21bfb1a6c92a57b8fdeb332a17d1d97704`; mantle `0xb442f52b687f1a94b96439e65eed1f7472fa7fa1`; mantle `0xd4df2e59e9d9c74905cc35e3d85d4ddda935f7f9` | ⚠️ Unaudited |
| PythPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x0a0636e83d9881dc3db72da7a883cbf77ae61f17`; mantle `0x4169e5dfb051ec216a4ceffcb07223c9805904c6`; mantle `0x4358d5d4885c013ec0397b25bfb27f2b7e58bdc3`; mantle `0x68b76f40f45e69535e279ba5beebc9635ca7acbd`; mantle `0x7099bb3a72b3ed19509ccf844fbaf33001fea137`; mantle `0xbac33377b60ef5d5e2b88e29a894870ba9e4b50b` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa9902e4ba29ec28a0f06f9fbd04ddbc6087facfa` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 7 deployments: mantle `0x17dd84c6a3c02af488312122f7749e5d104d58a2`; mantle `0x18f6e6f3af6c49766613ebf749441d6407dd381d`; mantle `0x2f1c30f830c69f6309a9db0da8f23456528e7736`; mantle `0x4b09680c61bb942243e808657dc3fd41cfac04e3`; mantle `0x743e9e5d0db0073a263ab865929173ba303b7c74`; mantle `0x783e5ac41a39526dc742c6afa458f233fbf008f5`; mantle `0xf74481eea2aa5d9b6b4ee3281f49c03787b40291` | ⚠️ Unaudited |
| StakingConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf4e565954356ff2b32c792bd685b989a03528b2f` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x5cbf9566595ebc6542418e3b9e1f6685ae1e0345`; mantle `0xf6489621a9f5da93b72a139ab75aebf8fc70a1b0` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb6eeda94bbb926881489f32489092c28e1a92484` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x733aad45a334237b0ba6b84fd4aeff9107ee1623` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x25a1b600bf4f1812b93244eb1965dd189dd072c4`; mantle `0x5b82b7bd1d2c32936e96dba4e1192626f4ef1277`; mantle `0x63d5a8641e0ada216bbea37f7dadc09ee70ae8ce`; mantle `0x6e24fb30ffadf55cda6601a8f12ba9709054a820`; mantle `0x929138ad4da183fda984ae6145f863fcc7108ee1`; mantle `0xf7f3ba8fe527eb81d54aa06689cdb74f95ad55f2` | ⚠️ Unaudited |
| VaultV7 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 9 deployments: mantle `0x3ad7d10085c7243a19c6589056a58eb94334cb52`; mantle `0x43703b0fd253e1172a0f18e65d097bd7b120b7bf`; mantle `0x4606e0fed3daa8d175274103e37c070da70c53f4`; mantle `0x4fd28eabb44474af1da36c7c4ea5441616d98076`; mantle `0xb2be0a666d4c34ded06242178e8138f7cec72100`; mantle `0xb761673116d7b1840cb94bbf7adb673b4f4a18b4`; mantle `0xd1d9c7be232920bfd971b2f3b83b1c5efe4b15d8`; mantle `0xd1fc69f097141189a4d46ee84e11992e6be87cae`; mantle `0xeb244cc3fc3c3ca391d453def40cf78eaf3b7373` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x079c993a1e228fbf0bc49ba673fb249e7b3ad8b4`; mantle `0x217d15ad523ea8232d87c40f47cdc0bf22e9b1d8`; mantle `0x5841b7f442288f097b256547d22620937b24d26f`; mantle `0x9aeb85c89efede66d399e7c37a39897b990ad3c8`; mantle `0xa126a48162ef7e5995caa9a05a42706d821e70a9` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x370bc6b2940a6927fff2d64ba3d96c641579a01e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (64)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244779 | `0x006b07b7b817925582af85d9810eda1f8adf1a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x07323ed912aeae3f0aa2f9b609e47553acd17cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x079eb962fc6183b87dd59ed54f97896c75c0385b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0a4e3ed52fe9985381989601e6843579b2962019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0be62bc0029ba48e0026eb4e5c79f21f95fe238c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1fb19c31f19f1431fd10f02bc0d345f7b852d70c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244783 | `0x228518c0e586f3298498a53288b7d090478f4eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x228cafd1ff96c8b4b74175142896aa3261fb49b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2427c22a35a6d7d141c1979160e7852a5d9adfd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244785 | `0x256cd403755fc4362e62691aaa2c04538c56f851` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244786 | `0x26ae2b78bdd92b68db5b86debe7ecc3a8548cff0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244787 | `0x2a5b18a211e985da6dc3f680be495246b033f8dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2a8a9ad29c1d85a53c2ab24a69b8449f64b356f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244790 | `0x30d990834539e1ce8be816631b73a534e5044856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3401e545dbebf97dc89d6e94ce628f3ca9beacaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x354ca41b22f3cc3365e4e03791a6f1262a86dc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3837164972357e3c10fceb362a7146058c6231f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3a834126ad5b6fbfe096a4663c21f6dc21197e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x415e2de6832eef50990478166ce288c15c7825bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244796 | `0x4c57be599d0e0414785943569e9b6a66da79aa6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x520e7f108780cb87cfcdc2eca3fdf4b788dbead6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x52efe025ceea8cfd8dcf5dc7017fa03b7080c94e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244797 | `0x552b9e4bae485c4b7f540777d7d25614cdb84773` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244798 | `0x5645d7b3be312db6100f69c862969e0064d8fff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5649932ed7cdef9b906edee99787b177f35b9814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x581996e21b81df8d08f10956dfcd9c1d7a910b28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244799 | `0x5c75a733656c3e42e44afff1aca1913611f49230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5e3dfc898a4c95c0b0ce747aeddacfd0729bad64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6897b07af6c3e54c13cc317161a8f64964dce20c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6eea6ccebe44250288e9cbde7eab90777ef3f106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x711a45c0d9e59fce72c90f46e048df6c48ef2940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x75197ab09bf89071254544c04c7b6560e73d1e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x75875e1fe82663827afb6dbb869b8eee111f5260` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244801 | `0x79e2fd1c484eb9ee45001a98ce31f28918f27c41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244803 | `0x8500a466ec3b4f4bf0901d1d7206b96137f5abba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8668fa553ba4171280d49de2be20524218b0a01d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244804 | `0x870c9692ab04944c86ec6feef63f261226506efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x88cff8ccdc253536d6df6821e7c271fb2d59eba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x89253be1f65d62085edf5f7761c7f331b755b3c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8c96a0d395ca147f0231bcf0de952ff398cccc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8e3a91240ca88d31593cf528fff14971c32f9314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa46fa41d14ad641dcb431bb4270963591b35acfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa548830f6eae1738e3d0aec3d1b7134434428395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xaa7bee25f850ff505694b87be202fa2558172189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xaba6a7acacf726f35d3c2758fc47bf8b19cc6d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xae5f62e4fd9dd8645a81313ebf91ebc674597287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xae6ffea26e9a90a0314206dbbc28879cf821626a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb3149c9073580f91ca1ff703a19fdd0f9e082d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb44cc684cc83a127262963285bb563efb6fdfe74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244813 | `0xb74b3a3ef7e8006348a2d5fcead0c93dfb150a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbf1af004cc6c369907760d730fce7370d3405b7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244816 | `0xc2e285cdaf8fee240dee0863d3a8f7e3c737b8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xca7190486177b2b87f80ecc7b771a9edc309e3ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244820 | `0xcfa5ae7c2ce8fadc6426c1ff872ca45378fb7cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd9fcffda32c99dbe5e41d1423be6f418ffa80607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdab798e9a37a23d086c8bee62097f14bb950ba83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdb9182add40eacad7285a5bc17c3985e4eacf1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdd9f067392509ec1a7cca0ec83d435372122f378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe54ab3df852a6bda7c032f923d88dbee0d3a3b84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe59b4ebd5f6aad4d94e72100dfce2751a7d03b6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244823 | `0xe5f9ffc0d0d70eed59364b44b1f11900b39db37b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xea068d13e9a31261cb3d435b69d60a59959f5aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xefccf8d75657a5a7452080cd5fae68444c364530` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244827 | `0xefdc43a37f4eb837313d6f42b5d91de7d4457fda` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 146
- Live contracts: 7
- Unknown liveness contracts: 139
- Source-verified contracts: 101
- Currently scope-matched contracts retained as-is: 7
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=7, candidate review=30, contamination review=5, source verified unclassified=59, unverified unclassified=45

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| mantle | currently scope matched | AToken<br>`0xec3414058620e118d2258f8d9765f6c8b8320694` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | currently scope matched | LendingPoolAddressesProvider<br>`0xab94bedd21ae3411eb2698945dfcab1d5c19c3d4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | currently scope matched | LendingPoolAddressesProviderRegistry<br>`0xb92bffee2de49b6e87ef3260337b676a2811b868` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | currently scope matched | LendingRateOracle<br>`0xc7f65c6b94a8a1c0977add58b6799ad456d72392` | project_anchor | unknown | live | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | currently scope matched | MerkleDistributor<br>`0xb57f32d28e098cd2d72eafc7a4ecfc54f3589296` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | currently scope matched | StableDebtToken<br>`0xd8a36c0e6148ffb374c6726d4c60bbd55b745407` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | currently scope matched | VariableDebtToken<br>`0xb3f838d219a0cfba73193453c2023090277d6af5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | AToken<br>`0x19342de516e24b3ea48b9d621e4a71c595251655` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | AToken<br>`0x3bb743918fdcaa3a1db55c56132b343c6a57d5c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | AToken<br>`0x3e597f440a9afbf00d52105ae4031519fc214eff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | AToken<br>`0x63e42e991d322b4a6917091666f7a65508e94898` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | AToken<br>`0x6a4a5eafe25a4060f6bf0bfe8a0c3359af1e6de0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | AToken<br>`0xb8ed1130b5504be4bb7f4b0698504e589a596de3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | AToken<br>`0xbff488a01fca22f627e0176c8b6a3aee252f60bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | AToken<br>`0xf375e5a2a40b423606d47c2ce533a008b5966e05` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | ChefIncentivesController<br>`0x201673fe5b93d92b9a036cb4e2e444d352413b32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | LendingPool<br>`0x13e9761c037f382472ce765556c3da2af29d9ec7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | LendingPoolAddressesProviderRegistry<br>`0xd272756c3c07f253cc3199176270250b3d0978bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | LendingPoolCollateralManager<br>`0x7d350354dd9d1e48ab1810f1f1b139309e9394cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | LendingPoolConfigurator<br>`0x845a2487742a4fbcf133a9010fe3ed06a92883fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | LendingPoolConfigurator<br>`0xfe91d9901dfaaf939a3bb8b444f5e141bb7dd0c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | MasterChef<br>`0x2186a94df0f06a378999c22cfb6a160b798cd56b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | MultiFeeDistribution<br>`0xfa12aaa98bb6f301b5a95383e4f43d5873de522b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | StableDebtToken<br>`0x17dd84c6a3c02af488312122f7749e5d104d58a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | StableDebtToken<br>`0x18f6e6f3af6c49766613ebf749441d6407dd381d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | StableDebtToken<br>`0x2f1c30f830c69f6309a9db0da8f23456528e7736` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | StableDebtToken<br>`0x4b09680c61bb942243e808657dc3fd41cfac04e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | StableDebtToken<br>`0x743e9e5d0db0073a263ab865929173ba303b7c74` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | StableDebtToken<br>`0x783e5ac41a39526dc742c6afa458f233fbf008f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | StableDebtToken<br>`0xf74481eea2aa5d9b6b4ee3281f49c03787b40291` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | StakingConfigurator<br>`0xf4e565954356ff2b32c792bd685b989a03528b2f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | VariableDebtToken<br>`0x25a1b600bf4f1812b93244eb1965dd189dd072c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | VariableDebtToken<br>`0x5b82b7bd1d2c32936e96dba4e1192626f4ef1277` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | VariableDebtToken<br>`0x63d5a8641e0ada216bbea37f7dadc09ee70ae8ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | VariableDebtToken<br>`0x6e24fb30ffadf55cda6601a8f12ba9709054a820` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | VariableDebtToken<br>`0x929138ad4da183fda984ae6145f863fcc7108ee1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | candidate review | VariableDebtToken<br>`0xf7f3ba8fe527eb81d54aa06689cdb74f95ad55f2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | contamination review | Api3AggregatorAdaptor<br>`0x6982e8b8a1da1570a4fb6362a55c63c38da66508` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | contamination review | Api3PriceFeed<br>`0x14d48a6d54b612fe7ee847e80a87c7d20e831c73` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | contamination review | Api3PythPriceFeed<br>`0x04dcaa1f6f3990fde4a5ab90f1222d2b79d88ef8` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | contamination review | PythPriceFeed<br>`0x0a0636e83d9881dc3db72da7a883cbf77ae61f17` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | contamination review | WalletBalanceProvider<br>`0x370bc6b2940a6927fff2d64ba3d96c641579a01e` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3AggregatorAdaptor<br>`0x7cbdfcd408034d9af80514fed4785b7ce2ba421f` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PriceFeed<br>`0x7ed5edd369f99df6eda4b9ce6fea6649a46021f1` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PriceFeed<br>`0x9830866b44ce08e3d0aa928330dd65ee3a84ff06` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PriceFeed<br>`0xcde071fe19242e6b745614691f8764f00c8dc50c` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x0f4716776a1e92ed6f1cbf72071595e62cdf9f07` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x242a362ed1fb83fc27a27cab019ab84638d4c147` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x244f112a831412d1f6f6b13a8a2bdbab69035de0` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x2e014fa8c0bfe34f525287cc25b74df37a9d20ee` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x37d09f1fc5a20acf56ac0cef6fe4eb9c05789297` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x39d9ecd395231856e4c63747377fb1665b80b131` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x42591eda8a72d92ec4d972f4abd52cb52fd6a3bb` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x42f9153e28c1d7d2f0d2fccc5106a5dbb7367d2d` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x4f8402a2c4895233b463770cc2df38ac0f85d863` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x5259279f3530244efae245ccccc0cf2b6e31dd1c` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x790292b041d53b132fa7b4e17c8842dfeeaec5b3` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x82d2633abbc8c50e6dc8bc6731894445f6fb283f` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0x8ba59d9cb6e1fd4d301cfe832c60142c2eefe909` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0xad22b2b6a43a8ce065272a51ee6d77136685756b` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0xb7edd94ba223233b19ff453bc6c8fb6d60b27891` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0xdcc5f2c27975807d7c4679aa8bb182e98c692a09` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0xf5c791f984d679a7a1437e5d14db59a3ed380850` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Api3PythPriceFeed<br>`0xf73c33b6775430f1f31e6d728d1deaea26721f2a` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | ChefIncentivesControllerV2<br>`0xc36b75c56eddd15b1a171f0c6927b07c84c6db95` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x1bb165ed88eda830c969a91308052fdaf4ff5bee` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x29a26de35659fff159f8b315a6c54ae47be93778` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x50c7e48578664621e4e829cef0e89d9ac65ae2a9` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x5588be6eb91fb55783cf9a422072dbe104cf7d4b` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x58a704b489532839dfeffe45acb2a2d3d0b23571` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x713749e0b76cfc4b2123fe5e6bb6562b31aa6cfa` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x71984434d98785b96084ab9a1ad4105dbe0d028b` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x975e2589628ac14d420cfdc893396da624614538` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x9bca50eda1de230603167d00f967f79ec9edbb9f` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x9c08c8e5928e608c64a57fec3bca07b3f91fc37b` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xa2fd0a0ce16e9fe8d0926ba81d3a2c69ff931cfb` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xac8d6906e8273d8bbf19ceb3c04ecc3b646dec64` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xcd214b11fa10748da4e25411a6f6a844b310ae1c` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xd2b3c2f305c63533f17464edf553517dfe6f31a5` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xd9b0b0eddd6608d52bd02826699edb38e540a488` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xe35fa697f25f00240a167f8497c061d604938e4a` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xe89dec932b212603a7ef40e82e753e3d593ddbaf` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | FairAuctionNoES<br>`0xa0fa329b8977125c5e47fe439c69658cb727c349` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | GenericLogic<br>`0xf9e8f0a5aa1fd994b762ac28ebfbe14f83bb30fd` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | ProtocolRevenueDistribution<br>`0x2e2df129bde4d56c99c1a93544e8a2b9282f7ea9` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | ProtocolRevenueDistribution<br>`0xd4df2e59e9d9c74905cc35e3d85d4ddda935f7f9` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | PythPriceFeed<br>`0x4169e5dfb051ec216a4ceffcb07223c9805904c6` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | PythPriceFeed<br>`0x4358d5d4885c013ec0397b25bfb27f2b7e58bdc3` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | PythPriceFeed<br>`0x68b76f40f45e69535e279ba5beebc9635ca7acbd` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | PythPriceFeed<br>`0x7099bb3a72b3ed19509ccf844fbaf33001fea137` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | PythPriceFeed<br>`0xbac33377b60ef5d5e2b88e29a894870ba9e4b50b` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | ReserveLogic<br>`0xa9902e4ba29ec28a0f06f9fbd04ddbc6087facfa` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Timelock<br>`0x5cbf9566595ebc6542418e3b9e1f6685ae1e0345` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | Timelock<br>`0xb6eeda94bbb926881489f32489092c28e1a92484` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | TransparentUpgradeableProxy<br>`0xf6489621a9f5da93b72a139ab75aebf8fc70a1b0` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | ValidationLogic<br>`0x733aad45a334237b0ba6b84fd4aeff9107ee1623` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | VestingWallet<br>`0x079c993a1e228fbf0bc49ba673fb249e7b3ad8b4` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | VestingWallet<br>`0x217d15ad523ea8232d87c40f47cdc0bf22e9b1d8` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | VestingWallet<br>`0x5841b7f442288f097b256547d22620937b24d26f` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | VestingWallet<br>`0x9aeb85c89efede66d399e7c37a39897b990ad3c8` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | source verified unclassified | VestingWallet<br>`0xa126a48162ef7e5995caa9a05a42706d821e70a9` | non_address_book | unknown | unknown | verified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x0a4e3ed52fe9985381989601e6843579b2962019` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x1fb19c31f19f1431fd10f02bc0d345f7b852d70c` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x228cafd1ff96c8b4b74175142896aa3261fb49b7` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x415e2de6832eef50990478166ce288c15c7825bc` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x520e7f108780cb87cfcdc2eca3fdf4b788dbead6` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x5649932ed7cdef9b906edee99787b177f35b9814` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x581996e21b81df8d08f10956dfcd9c1d7a910b28` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x6eea6ccebe44250288e9cbde7eab90777ef3f106` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x711a45c0d9e59fce72c90f46e048df6c48ef2940` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x75875e1fe82663827afb6dbb869b8eee111f5260` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x8668fa553ba4171280d49de2be20524218b0a01d` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x8c96a0d395ca147f0231bcf0de952ff398cccc92` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0xa548830f6eae1738e3d0aec3d1b7134434428395` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0xb44cc684cc83a127262963285bb563efb6fdfe74` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0xdab798e9a37a23d086c8bee62097f14bb950ba83` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0xe59b4ebd5f6aad4d94e72100dfce2751a7d03b6f` | non_address_book | unknown | unknown | unverified | n/a | `0x0c38845c2587e2fb0b7fba1cfb27f260f74066aa` |
| mantle | unverified unclassified | UnnamedContract<br>`0x07323ed912aeae3f0aa2f9b609e47553acd17cf9` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x079eb962fc6183b87dd59ed54f97896c75c0385b` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x0be62bc0029ba48e0026eb4e5c79f21f95fe238c` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x2427c22a35a6d7d141c1979160e7852a5d9adfd6` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x2a8a9ad29c1d85a53c2ab24a69b8449f64b356f2` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x3401e545dbebf97dc89d6e94ce628f3ca9beacaa` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x354ca41b22f3cc3365e4e03791a6f1262a86dc55` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x3837164972357e3c10fceb362a7146058c6231f6` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x3a834126ad5b6fbfe096a4663c21f6dc21197e84` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x52efe025ceea8cfd8dcf5dc7017fa03b7080c94e` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x5e3dfc898a4c95c0b0ce747aeddacfd0729bad64` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x6897b07af6c3e54c13cc317161a8f64964dce20c` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x75197ab09bf89071254544c04c7b6560e73d1e59` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x88cff8ccdc253536d6df6821e7c271fb2d59eba2` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x89253be1f65d62085edf5f7761c7f331b755b3c6` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x8e3a91240ca88d31593cf528fff14971c32f9314` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xa46fa41d14ad641dcb431bb4270963591b35acfa` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xaa7bee25f850ff505694b87be202fa2558172189` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xaba6a7acacf726f35d3c2758fc47bf8b19cc6d0a` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xae6ffea26e9a90a0314206dbbc28879cf821626a` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xb3149c9073580f91ca1ff703a19fdd0f9e082d91` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xbf1af004cc6c369907760d730fce7370d3405b7d` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xca7190486177b2b87f80ecc7b771a9edc309e3ea` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xd9fcffda32c99dbe5e41d1423be6f418ffa80607` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xdb9182add40eacad7285a5bc17c3985e4eacf1fb` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xdd9f067392509ec1a7cca0ec83d435372122f378` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xe54ab3df852a6bda7c032f923d88dbee0d3a3b84` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xea068d13e9a31261cb3d435b69d60a59959f5aea` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |
| mantle | unverified unclassified | UnnamedContract<br>`0xefccf8d75657a5a7452080cd5fae68444c364530` | non_address_book | unknown | unknown | unverified | n/a | `0x83ad6258691d485139b20998c2be2c6120fca06a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/Lendle](https://sourcehat.com/audits/Lendle) | SourceHat | Audit | 2023-09 | stale | Direct | n/a | matched | 10 | 0 | 0 | 9 | n/a |
| [www.halborn.com/audits/lendle/brink-a73cf0](https://www.halborn.com/audits/lendle/brink-a73cf0) | Halborn | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view](https://drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view](https://drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view](https://drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view](https://drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view](https://drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view](https://drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view](https://drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [sourcehat.com/audits/GeistProtocol](https://sourcehat.com/audits/GeistProtocol) | SourceHat | Audit | 2021-10 | stale | Direct | address | matched | 7 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3142] sourcehat.com/audits/Lendle — matched: No reason recorded
- [3143] www.halborn.com/audits/lendle/brink-a73cf0 — no match: Scope section lists 10 contracts/files. Audit date from engagement end date July 31, 2025.
- [3144] drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view — no match: The provided text is a URL to a Google Drive file, not the actual audit report content. No contract names or audit date could be extracted.
- [3145] drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view — no match: The provided text is a Google Drive URL and a markdown header, not the actual audit report content. No contract names or audit date could be extracted.
- [3146] drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view — no match: The provided text is a Google Drive URL and a title, not the actual audit report content. No contracts or dates could be extracted.
- [3147] drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view — no match: The provided text is a Google Drive URL and a title, not the actual audit report content. No contracts or dates could be extracted.
- [3148] drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view — no match: The provided text is a Google Drive URL and a title, not the actual audit report content. No contracts or dates could be extracted.
- [3149] drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view — no match: The provided text is a Google Drive URL and a title, not an audit report. No contracts or dates could be extracted.
- [3150] drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view — no match: The provided text is a Google Drive URL and a title, not the full audit report content. No contracts or dates could be extracted.
- [15216] sourcehat.com/audits/GeistProtocol — matched: All contracts listed in the 'Contract Source Summary and Visualizations' table are considered in scope. The audit date is explicitly stated as 'Date: October 22nd, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/Lendle | AToken | own contract | AToken (selected) `0xec3414058620e118d2258f8d9765f6c8b8320694` — deployed 2023-07-21 16:06:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | AaveOracle | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | ChefIncentivesController | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | LendingPool | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xab94bedd21ae3411eb2698945dfcab1d5c19c3d4` — deployed 2023-07-21 16:04:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | LendingPoolAddressesProviderRegistry | own contract | LendingPoolAddressesProviderRegistry (selected) `0xb92bffee2de49b6e87ef3260337b676a2811b868` — deployed 2023-07-21 16:04:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | LendingPoolCollateralManager | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | LendingPoolConfigurator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | LendingRateOracle | own contract | LendingRateOracle (selected) `0xc7f65c6b94a8a1c0977add58b6799ad456d72392` — deployed 2023-07-21 16:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | LendleToken | own contract | LendleToken (selected) `0x25356aeca4210ef7553140edb9b8026089e49396` — deployed 2023-07-21 16:09:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | MasterChef | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | MerkleDistributor | own contract | MerkleDistributor (selected) `0xb57f32d28e098cd2d72eafc7a4ecfc54f3589296` — deployed 2023-07-21 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | MultiFeeDistribution | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | PythPriceFeed | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | StableDebtToken | own contract | StableDebtToken (selected) `0xd8a36c0e6148ffb374c6726d4c60bbd55b745407` — deployed 2023-07-21 16:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | StakingConfigurator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/Lendle | TokenVesting | own contract | TokenVesting (selected) `0xa7f784dc0ec287342b0b84e63961effa541f7e6f` — deployed 2023-07-21 16:11:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | VariableDebtToken | own contract | VariableDebtToken (selected) `0xb3f838d219a0cfba73193453c2023090277d6af5` — deployed 2023-07-21 16:06:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/Lendle | WETHGateway | own contract | WETHGateway (selected) `0xec831f8710c6286a91a348928600157f07ac55c2` — deployed 2023-07-21 16:12:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.halborn.com/audits/lendle/brink-a73cf0 | BrinkVaultFactory | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | MorphoStrategy | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | AaveStrategy | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | LendleStrategy | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | MathLib | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | SharesMathLib | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | UtilsLib | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/lendle/brink-a73cf0 | BrinkVault | unmatched — not counted | — | listed in scope | no |
| sourcehat.com/audits/GeistProtocol | AToken | own contract | AToken (selected) `0xec3414058620e118d2258f8d9765f6c8b8320694` — deployed 2023-07-21 16:06:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | StableDebtToken | own contract | StableDebtToken (selected) `0xd8a36c0e6148ffb374c6726d4c60bbd55b745407` — deployed 2023-07-21 16:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | VariableDebtToken | own contract | VariableDebtToken (selected) `0xb3f838d219a0cfba73193453c2023090277d6af5` — deployed 2023-07-21 16:06:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | ChefIncentivesController | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | GeistToken | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | TokenVesting | own contract | TokenVesting (selected) `0xa7f784dc0ec287342b0b84e63961effa541f7e6f` — deployed 2023-07-21 16:11:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | MultiFeeDistribution | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | MasterChef | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | MerkleDistributor | own contract | MerkleDistributor (selected) `0xb57f32d28e098cd2d72eafc7a4ecfc54f3589296` — deployed 2023-07-21 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | LendingPool | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | LendingPoolConfigurator | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | LendingPoolCollateralManager | unmatched — not counted | — | listed in scope table | no |
| sourcehat.com/audits/GeistProtocol | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xab94bedd21ae3411eb2698945dfcab1d5c19c3d4` — deployed 2023-07-21 16:04:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/GeistProtocol | LendingPoolAddressesProviderRegistry | own contract | LendingPoolAddressesProviderRegistry (selected) `0xb92bffee2de49b6e87ef3260337b676a2811b868` — deployed 2023-07-21 16:04:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=7
- Match method counts: unique_name=17

Zero-match audit list:

- [3143] www.halborn.com/audits/lendle/brink-a73cf0
- [3144] drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view
- [3145] drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view
- [3146] drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view
- [3147] drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view
- [3148] drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view
- [3149] drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view
- [3150] drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view

Fork inheritance lineage and inherited audits are included when available.
