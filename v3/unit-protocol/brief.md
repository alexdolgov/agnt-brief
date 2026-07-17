# Agentic Audit Brief: Unit Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Unit Protocol (`unit-protocol`)
- Website: [https://unitprotocol.org/](https://unitprotocol.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum, fantom, gnosis, optimism
- Contract surface: 483 unique implementations (483 raw deployments)
- Coverage basis: 1/7 confirmed own live verified implementations (14.3%); conservative 14.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $169,105.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Unit Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, avalanche, bsc, ethereum, fantom, gnosis, optimism. Structural roles: 11 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (11), supporting (2)
- Contract kinds: contract (13)
- Detected standards: none
- Frameworks: openzeppelin (7), uniswap-v2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 62 contracts are derived from known codebases. 60 contracts have no detected origin.

### Forked Contracts

**ParametersBatchUpdater** (`0x4dd1a6db148becdadadfc407d23b725edd3cfb6f`, chain 1)
Origin: component (`0x4dd1a6db148becdadadfc407d23b725edd3cfb6f`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19`, chain 1)
Origin: component (`0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0770e27f92f0d0e716dc531037b8b87fefebe561`, chain 1)
- UnnamedContract (`0x18ed7a616eb0b4ad2cc63bd72c3e3597456edc38`, chain 1)
- UnnamedContract (`0x3b088b680ff7253e662bc29e5a7b696ba0100869`, chain 1)
- UnnamedContract (`0x68af7bd6f3e2fb480b251cb1b508bbb406e8e21d`, chain 1)
- UnnamedContract (`0x6a99d3840998a6a4612ff4e3735cc061bea75e1f`, chain 1)
- UnnamedContract (`0x75fbfe26b21fd3ea008af0c764949f8214150c8f`, chain 1)
- UnnamedContract (`0x7ab4ff80f27ac2935eda08baf899048f03c6d857`, chain 1)
- UnnamedContract (`0x9ccbb2f03184720eef5f8fa768425af06604daf4`, chain 1)
- UnnamedContract (`0xa8c0d22124e86cb4c03023d0962d12fb3fd78564`, chain 1)
- UnnamedContract (`0xb0bcf61d9bb95794a8d92b49011dc6d8786d0773`, chain 1)
- UnnamedContract (`0xcba7154bfbf898d9ab0cf0e259abab6ccbfb4894`, chain 1)
- UnnamedContract (`0xcc33c2840b65c0a4ac4015c650dd20dc3eb2081d`, chain 1)
- UnnamedContract (`0x0b24d3202815df61c7b8b6d49e3ee40ca2e2f98d`, chain 56)
- UnnamedContract (`0x11b1bd923f4d0669958e16a511567f540bc21d2e`, chain 56)
- UnnamedContract (`0x1337dac01fc21fa21d17914f96725f7a7b73868f`, chain 56)
- UnnamedContract (`0x3f03b937b986ad10dd171c393562f3fbe03abd9d`, chain 56)
- UnnamedContract (`0x56c7ca666d192332f72a5842e72eed5f59f0fb48`, chain 56)
- UnnamedContract (`0x7815ed0f9b00e7b34f52543779783023c7621fa1`, chain 56)
- UnnamedContract (`0x852de08f3cd5b92dd8b3b92b321363d04eeec39e`, chain 56)
- UnnamedContract (`0x99f2b13c28a4183a5d5e0fe02b1b5aeee85faf5a`, chain 56)
- UnnamedContract (`0xa1ad3602697c15113e089c2723c15ebf3038465c`, chain 56)
- UnnamedContract (`0xbea721ace12e881cb44dbe9361ffed9141ce547f`, chain 56)
- UnnamedContract (`0xdacd011a71f8c9619642bf482f1d4ceb338cffcf`, chain 56)
- UnnamedContract (`0xdacfeed000e12c356fb72ab5089e7dd80ff4dd93`, chain 56)
- UnnamedContract (`0xe8372dcef80189c0f88631507f6466b3f60e24a4`, chain 56)
- UnnamedContract (`0xf4ce5576bbc0e1291808049989d8dad0e51929fb`, chain 56)
- UnnamedContract (`0x068e56ebb63e5f98532baf94fa1f9b9ae19ba761`, chain 100)
- UnnamedContract (`0x0a87fea68fa21c507f2d24612d31334e2cb3424d`, chain 100)
- UnnamedContract (`0x22a974ddf36ece1568e843719e72db3ec7066c43`, chain 100)
- UnnamedContract (`0x2ebb09ec5ecdc20800031f9d6cee98f90127a822`, chain 100)
- UnnamedContract (`0x431fc83c3c28d470e56d2a6d5df981e43a1974de`, chain 100)
- UnnamedContract (`0x7670225e8c72dc627eae09640c2ba9a088b837b8`, chain 100)
- UnnamedContract (`0x861784142d7074a4d35fd7f754b23cc9b70ba8de`, chain 100)
- UnnamedContract (`0x8747e46b23d3a48329284ea40a3858908ed238f3`, chain 100)
- UnnamedContract (`0x8ae98dd5d6177be5eb86fdd3c216ae1952968f91`, chain 100)
- UnnamedContract (`0x9095557b53e7701bb0ac685d33efe116231b2b19`, chain 100)
- UnnamedContract (`0x9096c43f1e11d64bad829f962377663097f28346`, chain 100)
- UnnamedContract (`0xae973ab471b19e8bbd02f34ba652770b517a9d3e`, chain 100)
- UnnamedContract (`0xbf1b434f82d084954689eadaef781a1ed031a0e6`, chain 100)
- UnnamedContract (`0xca5d2e0961fe43eae4bf07fa961b3ca8cc0f50f6`, chain 100)
- UnnamedContract (`0xfe7ed09c4956f7cdb54ec4ffcb9818db2d7025b8`, chain 100)
- UnnamedContract (`0x0058ab54d4405d8084e8d71b8ab36b3091b21c7d`, chain 250)
- UnnamedContract (`0x1442bc024a92c2f96c3c1d2e9274bc4d8119d97e`, chain 250)
- UnnamedContract (`0x1c7aea8b6498f0854d1fce542a27ed6a10d71d2f`, chain 250)
- UnnamedContract (`0x1f18fac6a422cf4a8d18369f017a100c77b49def`, chain 250)
- UnnamedContract (`0x3129ac70c738d398d1d74c87eab9483fd56d16f8`, chain 250)
- UnnamedContract (`0x5196a9034955dbade84cf2e5f53cd3747130fe37`, chain 250)
- UnnamedContract (`0x5bef93a96dcc2caec92e8610bb2f5bf5eb4d89f4`, chain 250)
- UnnamedContract (`0x828bb32afa0ecf70c4f65393664e4a79664d9bd3`, chain 250)
- UnnamedContract (`0xa8f0b5758041158cf0375b7adc8ac175ff031b6c`, chain 250)
- UnnamedContract (`0xb8b807c1841d38443d9a135f0109cf27dac78af4`, chain 250)
- UnnamedContract (`0xc440af46dac68fe74aa4e849cb798329c44b0908`, chain 250)
- UnnamedContract (`0xd12d6082811709287ae8b6d899ab841659075fc3`, chain 250)
- UnnamedContract (`0xd7a9b0d75e51bfb91c843b23fb2c19aa3b8d958e`, chain 250)
- UnnamedContract (`0xdbf1a7fad2c4280fb8b93b00e88de3592d905305`, chain 250)
- CDPRegistry (`0x1a5ff58bc3246eb233fea20d32b79b5f01ec650c`, chain 1)
- CollateralRegistry (`0x3db39b538db1123389c77f888a213f1a6dd22ef3`, chain 1)
- USDP (`0x1456688345527be1f37e9e627da0837d6f08c925`, chain 1)
- VaultManagerParameters (`0x203153522b9eaef4ae17c6e99851ee7b2f7d312e`, chain 1)
- VaultParameters (`0xb46f8cf42e504efe8bef895f848741daa55e9f1d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (7 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 62/105 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/7 (14.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 62 own, 42 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 379 discovered implementations shown in the inventory but excluded from coverage (64 third-party/infra; 10 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 62 of 483 unique; 421 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/392
- Verified + Unaudited implementations: 391
- Verified by bytecode match: 0
- Unverified implementations: 91
- Unique implementations: 483
- Raw deployments: 483
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| LevelK | Tier 2 | 1 | 0.3% | 2021-01 |
| yAudit | Tier 2 | 1 | 0.3% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| USDP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395401 | `0x1456688345527be1f37e9e627da0837d6f08c925` | ✅ Audited |

### ⚠️ Verified + Unaudited (391)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AavePoolController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1821c1d8c74a3d8799170c35f2abb83ac3259c98` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x00815e0e9d118769542ce24be95f8e21c60e5561` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0833cfcb11a5ba89fbaf73a407831c98ad2d7648` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7fd9da386f01f83cef3ebc01e13c040428c47ada` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x835482fe0532f169024d5e9410199369aad5c77e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9c0caeb986c003417d21a7daaf30221d61fc1043` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e0541d87c6cbdbf2a6a8104248b4b922f629e` | ⚠️ Unaudited |
| AllocationExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a53cf3b3eda545dc61dee0ca21ea8996c94385f` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33689380e6b56783a5442999b75a5b919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad5c0da888c93d8244261b67bd431b47ca14` | ⚠️ Unaudited |
| ArmorToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1337def16f9b486faed0293eb623dc8395dfe46a` | ⚠️ Unaudited |
| AssetParametersViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51f509fb80b4ff4d4bfb4144eed877f0f499af6` | ⚠️ Unaudited |
| BadgerPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c86943e594640c4598086a2359a0e70b80ef8d` | ⚠️ Unaudited |
| BadgerSettLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc743c9d1801ad9169be176761e8bb95c1298d817` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c61e8f15d9def697e1100663ed7da74d3727dc` | ⚠️ Unaudited |
| BasicAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0807d0810714d85b49e40349a3002f06e841b7c3` | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d578e21f430d7469cbc135952dfe5c34b69772` | ⚠️ Unaudited |
| BCHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461` | ⚠️ Unaudited |
| BCHShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2095be01f9a30a8ac8302245fdfa524fb20de6cd` | ⚠️ Unaudited |
| BearingAssetOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395403 | `0x190db945ae572ae72e367b549b78c41e211864ab` | ⚠️ Unaudited |
| BearingAssetOracleSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31629c9d5bc9a28cefa34d73d87d86b2a6b4315` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3303ffaf107cd732396570bf07b2dbd79b619f` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd02326db6ebe095e0707e2973c9e045da3dc` | ⚠️ Unaudited |
| Blacksmith | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b94a7bb45dd905c79bb1992c9879f40f1caed5` | ⚠️ Unaudited |
| BonusRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3423c8af3a95d9fee7ec06c4e0e905d4fd559f89` | ⚠️ Unaudited |
| BSCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4ae385d1f68e4d4feb455e0526c08c77464ed6` | ⚠️ Unaudited |
| BSCWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70266e9b23dadead1210ff58b6723a6ca0cf18ea` | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11716a1f51fad053e9b43da1025e8ace32aee110` | ⚠️ Unaudited |
| BTCShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1258d7ff385d1d81017d4a3d464c02f74c61902a` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab` | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6fd01c92f0390670cce399b532017cdb2b930f` | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1041f188ffecc499e8d4d0f08dd31b0f41c157` | ⚠️ Unaudited |
| CCTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f08008ef178929e3866f1aeea75beaa8b909b9e` | ⚠️ Unaudited |
| CDPManager01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e13ab042ec5ab9fc6f43979406088b9028f66fa` | ⚠️ Unaudited |
| CDPManager01_Fallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad3617d11f4c1d30603551ea75e9ace9cb386e15` | ⚠️ Unaudited |
| CDPRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395404 | `0x1a5ff58bc3246eb233fea20d32b79b5f01ec650c` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00ce8e3746240b0ca44046b550c8e54e848ae5b8` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00e5c0774a5f065c285068170b20393925c84bf3` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037107c38a734f6e50f1db5f964056689e3e2cde` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06527d5e56a3495252a528c4987003b712860ee` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x258592543a2d018e5bdd3bd74d422f952d4b3c1b` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bec59fc9d0dba42e85ca514abe8b9c0faf9876` | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0ca3de93de71e4a28eb5d04b72970d69458a3d21` | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OraclePoolToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3b5f4d33845d546c76dfb624ef002cb3a58391e9` | ⚠️ Unaudited |
| ChainlinkedKeydonixOracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395423 | `0x769e35030f5ce160b287bce0462d46decf29b6dd` | ⚠️ Unaudited |
| ChainlinkedKeydonixOraclePoolToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x11586e3b20239ef471134a0da4a4239010a1c500` | ⚠️ Unaudited |
| ChainlinkedOracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0b17546514aad0d5453f9e2d0a56a19cb5dae774` | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x76f24e7155ff4472cb26e32c1213e515fc4b99d3` | ⚠️ Unaudited |
| ChainlinkPriceOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb0602af43ca042550ca9da3c33ba3ac375d20df4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x058c345d3240001088b6280e008f9e78b3b2112d` | ⚠️ Unaudited |
| ClaimManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9946f1c5046ecedc8cee9a76ec14c42ca78463b2` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8753a253bb314f1e8324c36f804d31b96c1` | ⚠️ Unaudited |
| CollateralRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395408 | `0x3db39b538db1123389c77f888a213f1a6dd22ef3` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba592f78db6436527729929aaf6c908497cb200` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb6c6d134903a0dedfc840128007b36aa870` | ⚠️ Unaudited |
| CompoundPoolController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xaf0d83ae6c62281cc1fa28dde0647b9bb16af3f4` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ccd4d3ac8529ff08c58f74ff6755036e616117` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e133f7f56a574fc806e579e1355048039ca` | ⚠️ Unaudited |
| Cover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1349c51b28772f725e193c21597c0a41a715d504` | ⚠️ Unaudited |
| CoverDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2166c76d081610716ab93f02891558b9ba226454` | ⚠️ Unaudited |
| CoverERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8b62b2ab8db3f3d085ba3437216fd10b6b4eb5` | ⚠️ Unaudited |
| CoverFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0632311772d362f49b5118c40d5251c44bc8b2e` | ⚠️ Unaudited |
| CoverForge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa921392015eb37c5977c4fd77e14dd568c59d5f8` | ⚠️ Unaudited |
| CoverPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83085b8cb406cdb4034622198b518bda133032e2` | ⚠️ Unaudited |
| CoverPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb3391feff3806a6f7fa11b372cb70659304791` | ⚠️ Unaudited |
| CoverRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e1056a8f910a40710a3d106bd4851fcbbc9540` | ⚠️ Unaudited |
| CreamEth2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d72e3973900a195a155a46441f0c08179fdb64` | ⚠️ Unaudited |
| CreamLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64` | ⚠️ Unaudited |
| CreamLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780f75ad0b02afeb6039672e6a6cede7447a8b45` | ⚠️ Unaudited |
| CreamVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb146bf59f30a54750209ef529a766d952720d0f9` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d03061705eb48fda6bc6e244c5eabe5d322e` | ⚠️ Unaudited |
| CSLPDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4722779a0ed7d79101c0d251987e76d4151ffb` | ⚠️ Unaudited |
| CToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02beff6668a0c8b7b16c978de8807527d9342ad4` | ⚠️ Unaudited |
| CTokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67b44e37200e92e6da6249d8ae6d48f832a038d` | ⚠️ Unaudited |
| Curation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2b24947680fce35d5c9dd6a4e32649f12c176c` | ⚠️ Unaudited |
| CurveLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395400 | `0x0e08d9e1dc22a400ebca25e9a8f292910fa8fe08` | ⚠️ Unaudited |
| CurveLpTokenPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x43c534203339bbf15f62b8dde91e7d14195e7a60` | ⚠️ Unaudited |
| CurveTriCryptoLpTokenPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb2d16916d520d585ee49f08db1436b961b48fe60` | ⚠️ Unaudited |
| CyTokenOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395410 | `0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8` | ⚠️ Unaudited |
| DarknodePayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x098e1708b920efbdd7afe33adb6a4cba30c370b9` | ⚠️ Unaudited |
| DarknodePaymentMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085d9b18be81f2b0c35086972caa46177205f54d` | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x311999ee72b5826d664fd4f3ac09c0c462effe49` | ⚠️ Unaudited |
| DarknodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3799006a87fde3ccfc7666b3e6553b03ed341c2f` | ⚠️ Unaudited |
| DarknodeRegistryForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb032012073765a74f8f8fe2e6685ad70253058fa` | ⚠️ Unaudited |
| DarknodeRegistryLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f98228b464101a3b19bf1cc337a9b88c84acecb` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e3435c7a92d3296d1221161cb0cbaafa017405` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a` | ⚠️ Unaudited |
| DarknodeRegistryStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14add4ca443e7445a3418bb572d6079bfc98897a` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e69da530e2051cd08259221ef1dacc703c38f1e` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5` | ⚠️ Unaudited |
| DarknodeRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880407c9cd119bef48b1821cdfc434e3ca3cd588` | ⚠️ Unaudited |
| DarknodeSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2` | ⚠️ Unaudited |
| DEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ff192e634ef6463be60792a384e5f1219a8373a` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9992e9341e496be5bc8f424dfc1f78a7388d3a58` | ⚠️ Unaudited |
| DisputeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x444c138bf2b151f28a713b0ee320240365a5bfc2` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0eaeb422efa44eac670aa2246a25ecfa017` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d020eb50fce62320a6730e6c18659a28b366555` | ⚠️ Unaudited |
| DistributionAInterest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eef976c092271bf557cb3db26420acdd25b8449` | ⚠️ Unaudited |
| DistributionAPrincipal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f4d51f72279e353432ff8e47bb3904e506a403` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08313a290adf97d36a6f41f42bb19e368d6d` | ⚠️ Unaudited |
| DistributionSInterest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdbd256c0736d79e0082e9a4055a971cb12a296b` | ⚠️ Unaudited |
| DistributionSPrincipal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf65b60d127671acec535c359640ad390c2411577` | ⚠️ Unaudited |
| DistributionUniPrincipal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aee8040c03add6e3fe7c1642dd6d870bd7e1bd5` | ⚠️ Unaudited |
| DistributionUniSFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa80f63d14fbe8b82cd4807d838aada8b50def6e0` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4835b08babfc6ff92187971b3253e92640e` | ⚠️ Unaudited |
| DummyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aade8a8a6b85921009d2caa25dc69348f4c009e` | ⚠️ Unaudited |
| DYDXERC3156 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdc1fcb2f13d1ba9d26ccec3983d5d4bf318693` | ⚠️ Unaudited |
| DydxPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9efa7ed40a688044af22282fb19b64b5f60` | ⚠️ Unaudited |
| EasyConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50697a3a8698e36549db3e1e46ef136149224790` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6503e8e5525d3de0c60855b6332af559ad4` | ⚠️ Unaudited |
| EpochManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fab259f2392f733c60c19492b5678e5d2d2ee31` | ⚠️ Unaudited |
| ERC677MultiBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae055097c6d159879521c384f1d2123d1f195e6` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e36efc9c7c6057c119ea2af40907159fef3f` | ⚠️ Unaudited |
| FeeDistribution | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395409 | `0x3f93de882da8150dc98a3a1f4626e80e3282df46` | ⚠️ Unaudited |
| FeeDistributionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57a3cc9b4c5b189b116a8d4af18db7e653044a1a` | ⚠️ Unaudited |
| FixedEurPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817158553f4391b0d53d242fc332f2ef82463e2a` | ⚠️ Unaudited |
| FixedTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b51ddbe8ba76e07be79975906c39aef2893a` | ⚠️ Unaudited |
| ForceTransferAssetStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0` | ⚠️ Unaudited |
| Foundation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x492530fc97522d142bc57710be57fa57a43dc911` | ⚠️ Unaudited |
| FundRescue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ddbce49f3adf2ea0c2d4cd3a403cef2f6202667` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f0933ac403773d219cf0519de8082946dc10f` | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ce132ebe395d35b8cf6df6ce5f817107707583` | ⚠️ Unaudited |
| FusePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5959dbc5432c173cbea41ab79d5673d5aa375311` | ⚠️ Unaudited |
| FYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9bfa18f2c0954f1ff48b5ee9d8efed5975e650` | ⚠️ Unaudited |
| GatewayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x503670ec851c55ec1acfb5230192da921467a24e` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd217dcc5ce36ca6bc1489586ecb42b61081c` | ⚠️ Unaudited |
| GelatoGUniPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3633b38c747cea231adb74b511dc2ed3992b43` | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0` | ⚠️ Unaudited |
| GNS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28037b93702335e55fe6319e1c144b8a4d05daeb` | ⚠️ Unaudited |
| GOhmPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057ecda7f61c73c3adcc36899d2626c7b79c3249` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212fc959bbb606f97036e8ac3da7aabf0cb735` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f60585a80cec402fffa1d85f152b522e7358b39` | ⚠️ Unaudited |
| GraphPreToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10` | ⚠️ Unaudited |
| GraphProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825` | ⚠️ Unaudited |
| GraphProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf55041e37e12cd407ad00ce2910b8269b01263b9` | ⚠️ Unaudited |
| GraphProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b000a6749259539af4e49f24eec74ea0e71430` | ⚠️ Unaudited |
| GraphSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09695a6dff47b0053ef9553fee49d2d833afa68b` | ⚠️ Unaudited |
| GraphToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc944e90c64b2c07662a292be6244bdf05cda44a7` | ⚠️ Unaudited |
| GraphTokenLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6284042d4da0931cbc64c5aab2d6184403095883` | ⚠️ Unaudited |
| GraphTokenLockSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1` | ⚠️ Unaudited |
| GraphTokenLockWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe5e630383b5baecf0db7b15c50d410edd5a2255` | ⚠️ Unaudited |
| HarvestPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6141d9353bb1fb8131d07d358c112b372aa92514` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2e96061a1e3f51d152e32ccfab79ca1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06194062288575f35c0af45d5e7013b65e082f23` | ⚠️ Unaudited |
| IBAgreement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f254104a8a7b7779483eeef5560397a737f812` | ⚠️ Unaudited |
| IBAgreementV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705df56477ff301b71b176a2bd3151b9f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11f3e38dc35e06397689e45fa939eb3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d1d115862ca99253e5738590f6d31ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb4855b2a4a719097131016b573f95a867fa` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8ab10daa9af1a9d2b878541f41b697268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029feae8d773a3fe25f1a3e35a526bb54744c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135fbd0b40d48fcef431ccdf6c7926450edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0b18e98674199829ddd2a6477ea25cd25eb` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7a43b06ed73fcd3707f1a681ca645d758a51ee52` | ⚠️ Unaudited |
| InitializableClones | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ce5566dc3170898c5aee4ae4dd314654b47415` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e63793e55c533fe98d0ed178992942863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075538650a9c69ac8019507a7dd1bd879b12c1d7` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772890c8b1564c5015a12c0dc6f18b0af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7deb279eaa11f234dff4931458d2c002d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2924805aed2385f8b91849cab7fe95a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7396899638410094b3690f8bd2b56f07fdab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef201ba1ba0354d71848893dd6d56905924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73353801921417f465377c8d898c6f4c0270282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4f6d5314bb257540dc7702c326f97f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6531818456f29fc74011a3b1fb4b6132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be1ee5d345914976fd4ce9f4be65737880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775672e4424c403f048ab08c7f56015c5d0f3` | ⚠️ Unaudited |
| LibCobbDouglas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb84828c5978f4539bbda1965f92ea34dc7a649fb` | ⚠️ Unaudited |
| LiquidationAuction01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa41a3625c02c60ae932515e7f921ada1811af6a5` | ⚠️ Unaudited |
| LiquidationAuction02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef1ed4c492bf4c57221be0706def67813d79955` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d42356e225bf79b870a05aac79062a3e8ce` | ⚠️ Unaudited |
| LiquidationTriggerChainlinkMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x854bf644e31d6619d3fe246f8d83e87ed85baa12` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca1a59a987922375234df94919a456f61e93e1e` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c854cdd322d3a501da91374027b4b257de57dd` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d09b58402c29016425497289e12fdd12f06027` | ⚠️ Unaudited |
| LiquidationTriggerKeydonixMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701a228b0d7a3fc740462e9b2af13f2a5c16c882` | ⚠️ Unaudited |
| LiquidationTriggerKeydonixPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f90336666413c73a940e0a53cb2f762326ab10` | ⚠️ Unaudited |
| LiquidationTriggerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18485d35c86adb634c8879a58c25f50c960c5917` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28832484e8124634a248f2bc520f26e8345a56cd` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2edad668740f1aa35e4d8f227fb8e17dca888cd` | ⚠️ Unaudited |
| MasterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1887118e49e0f4a78bd71b792a49de03504a764d` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06091717521c2002f2859c75f53987eaf1e5aa2f` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa873b15ad496ba8116ce6cfec52ef30a9372` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818180acb9d300ffc023be2300addb6879d94830` | ⚠️ Unaudited |
| MiniMeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3472a5a71965499acd81997a54bba8d852c6e53d` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b` | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a562822f99d11e8f993f6bcda86277123ce22b4` | ⚠️ Unaudited |
| MintGatewayProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa` | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13773093cdad89e8e1615f581a37c7eeabb04804` | ⚠️ Unaudited |
| MStablePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2afe310485208476d5aa480905db4f7e90d5fa0e` | ⚠️ Unaudited |
| MultipleDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0218b706898d234b85d2494df21eb0677eaea918` | ⚠️ Unaudited |
| MultiSend | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x4f85a4b398b27935ba3c8aa79b0dc5ea52d12ed0` | ⚠️ Unaudited |
| MultiTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba82dca19943eb3a1d3ef7eeffb80a68111e09d` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a2880f657793a1d839653c8f8cef52f3de7a28` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a67186965fd5fe582a64a8646ff058f023aa` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1774093e9240beb559f7a1300d291d86309` | ⚠️ Unaudited |
| OraclePoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5968bc303930155d36fa9aee2b5b0f6d39598434` | ⚠️ Unaudited |
| OracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10bbe205832edc371781cc224ef202cd98e8f38f` | ⚠️ Unaudited |
| OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda` | ⚠️ Unaudited |
| OracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9465f75eecfa4293abcafc02d68e79bd4167f53` | ⚠️ Unaudited |
| Orderbook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8bb175c092de7d81860b18db360b734a2598e0` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1` | ⚠️ Unaudited |
| ParametersBatchUpdater | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395413 | `0x4dd1a6db148becdadadfc407d23b725edd3cfb6f` | ⚠️ Unaudited |
| PerpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc396689893d065f41bc2c6ecbee5e0085233447` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ae37a333d842428c668d6cc7130e552acab2b1` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abce8f1db258fbc64827b0926e14a0f90525cf7` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8e3881cc063e593673625bbb9e5191be61ae3c` | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde19f5a7cf029275be9cec538e81aa298e297266` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471` | ⚠️ Unaudited |
| ProtocolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d619a4804b82c3af4c24ccb460068a8a0d8d6a` | ⚠️ Unaudited |
| ProtocolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54751636e04092ee76f25b2b3c50dcdcfebdbadf` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x637278bf72127c76d98d9a9be36d2121fb2447c8` | ⚠️ Unaudited |
| ProtocolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d880bb27b1cd850d4bc331b1654af01bd69b47a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x038e3fb79bbe37c804f6d5ee6b5323537c886298` | ⚠️ Unaudited |
| QuackedDuck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5cf4620c16fdbd584b64c6e6eb7703a422f604` | ⚠️ Unaudited |
| RariFundController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369855b051d1b2dbee88a792dcfc08614ff4e262` | ⚠️ Unaudited |
| RariFundProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ddefa2a30474e64314aaa7370abe14c042c6e8` | ⚠️ Unaudited |
| RariFundToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d` | ⚠️ Unaudited |
| RariGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54745fe0a4309f48d57550aeb6385dc8303596d9` | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5888e7e6d0fbfc8c1d214cab8441658e9266840c` | ⚠️ Unaudited |
| RedeemRSFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710c4147be2f21e4229aaa0dfa8b64689cbbd9c9` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a2d368e4eecbd515033ba29253909f2978c1bee` | ⚠️ Unaudited |
| RenERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee274080b8389ac5add6499df348b653447894a7` | ⚠️ Unaudited |
| RenExAtomicSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3` | ⚠️ Unaudited |
| RenExBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec18b477b20af940807b5478db5a64cd4a77efd` | ⚠️ Unaudited |
| RenExBrokerVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a0d1a199631d244761eeba67e8501296d2e383` | ⚠️ Unaudited |
| RenExSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908262de0366e42d029b0518d5276762c92b21e1` | ⚠️ Unaudited |
| RenExTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cade4fbc8761817bb62a080733d1b6cad744ec4` | ⚠️ Unaudited |
| RenProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04490672449654b1d9ad6f0aae14e6e4c60ad01c` | ⚠️ Unaudited |
| RenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed` | ⚠️ Unaudited |
| RepublicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c482f153d0317fe85c60be1f7fa079019fcebd` | ⚠️ Unaudited |
| RERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c983ba3f165daf6a9950c08750bade647024c20` | ⚠️ Unaudited |
| ReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed` | ⚠️ Unaudited |
| RewardsAirdropWithLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0013e17039566da4757edcb565d7d331e362ad12` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842ddfe3f5cadfd45c45421329cddf0af994940e` | ⚠️ Unaudited |
| RgtTempPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0739311a9725779f109706b48a56763a8ae8fe50` | ⚠️ Unaudited |
| rSFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db451f9913c57dc103c6b9df46ff9be42c28510` | ⚠️ Unaudited |
| RULER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeccb42482cc64e087b6d2e5da39f5a7a7001f8` | ⚠️ Unaudited |
| RulerAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c66d4a9d2aae2f63039c426b927b4605e333d6` | ⚠️ Unaudited |
| RulerCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2446b411a95630f719ef8c78f195ecdaf3fd5e94` | ⚠️ Unaudited |
| RulerFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f342ea72a4c476ef27b04f3bfe56f35db89002` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40` | ⚠️ Unaudited |
| SaffronERC20StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0007a7e27db427e7ba4eda4baa41fc0e9f90719f` | ⚠️ Unaudited |
| SaffronLPBalanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0206dc416802c24d0755e402bce39e23fb8a3b1e` | ⚠️ Unaudited |
| SaffronPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0033d4276440c4d9d44e7551d3cb5f631872f754` | ⚠️ Unaudited |
| SaffronStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ecc64675d6a34d46054b4a4ed64923d77d82582` | ⚠️ Unaudited |
| SaffronTeamHodl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b397f0962c3bc624f8ebc810c1e68655a4d0d3` | ⚠️ Unaudited |
| ServiceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866232ec9a9f918a821eba561cc5fc960ef5b3aa` | ⚠️ Unaudited |
| SettlementRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119da7a8500ade0766f758d934808179dc551036` | ⚠️ Unaudited |
| SFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67ce406da479868a9782823b8979b07435eec641` | ⚠️ Unaudited |
| SFITeamSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f04f4f4978d60b9d6e8231089daa1bc28f18908` | ⚠️ Unaudited |
| ShifterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d4713b74e79a3696722aebe05de976979876cac` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb15642d540a4521a7b2840dab01287081fc` | ⚠️ Unaudited |
| SimpleERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4849d2a7fec8572f12f369659cf48a826601cc5c` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f648b18cf1c7f6aac66a35bf462539f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd` | ⚠️ Unaudited |
| StableConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe649d8b63b8cfd92008edcf6baefd67ade489e30` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17da18288d1799643be1bb07fb939626f5f9` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d4bb4465cb4fc77a57b98a16787b3d834e7` | ⚠️ Unaudited |
| StakedFodlPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cf2299680c063ccaf18f62a60c500a625e08e2` | ⚠️ Unaudited |
| StakedSpellPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296ebf81430ea5561143b4b15b17cc3c549e2a53` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5e94cded8930aba0eeee9ebc9a3b0928b8bade` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d998c95de70d9a38b3d78e49751f10f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98e3cce4f34c087a73dd3d05558733549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf07344428770b84973e049a1c18b5d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c771035bde631391ced5c083db424a4a64bd8` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a47820313da9c74b8f2295795da6e6e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a4836c172640fa1c02999b09c5d1069156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510ba285d5390cb5385a91a380d4268e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c409e67b6ce52180f97a8cddf7abc24ec989` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4c61b7619956e0b2015b5411f93cbba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca21dd2ad7edb3a027d543e617496820d8d6` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e668d13746bb92e675dea2868ff14da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93350d5102b6139abfc84a7d6ee70488797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055fec2b826ed4a7478ceddbeff82c1edfa70` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb916605402e5c7e81f7d609d0e2204841978f` | ⚠️ Unaudited |
| SushiBar | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8798249c2e607446efb7ad49ec89dd1865ff4272` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9cc2f41a150489da5fffba2060a2938ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf9d171d6c9c3876598b14732248b204c2cf` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6f1f5e396f6ab87407df637cce814e24a9f` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df93404574dff883e2b35911a684dab1760da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b59e02cd0d09d839b03660c205e88a929b81` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b8d693f6c446782c2c61ee357ec561dfb61` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3976cdc41f34466ebb7efa2fd097d3eab808ea65` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x014b220912f6a9fce68e82fa6c2e603a7a78f436` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6c806eddad78a5505fce27b18c6f859fc9739bec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6dc585ad66a10214ef0502492b0cc02f0e836eec` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a62da5a14c80f265dabc077fcee437b1a0efde` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0c2586df3daad42ac2fdcaa0f6b91623747556` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b0808cea5281a912cd85421a6d12261d136` | ⚠️ Unaudited |
| UniswapLpTokenPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x50f42c004bd9b0e5acc65c33da133fbfbe86c7c0` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x480bae4d1389889c7e0600399234e1d39d4fe79f` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2Root | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf1860b3714f0163838cf9ee3adc287507824ebdb` | ⚠️ Unaudited |
| UniswapV3Oracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x807983026c476d4e0d695e80413309aa186e0ba7` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x29490a6f5b4a999601378547fe681d04d877d29b` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8eed20f31e7d434648ff51114446b3cffd1ff9f1` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258` | ⚠️ Unaudited |
| UpdateBlacksmithPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18bc07ef3e04d263528323164dab9c76132b7f2` | ⚠️ Unaudited |
| USDPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac08b12b9417dbecf7f6ab2dd96e22441adf3a4` | ⚠️ Unaudited |
| USDPStakingCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650cc1623f81582b19e89db09e242d8de0dae511` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395432 | `0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19` | ⚠️ Unaudited |
| VaultManagerChainlinkMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a646c42b64d21e6b871efd85f54d707ace1f9d1` | ⚠️ Unaudited |
| VaultManagerKeep3rMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c3ad40950acfb0910452d0c537f91570cc8f76` | ⚠️ Unaudited |
| VaultManagerKeep3rPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ee32424cd66c23386cf511c8b749c1e92043b0c` | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ba276a62e7e3e76d362f672f00ed31a983067b` | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a2381d318ee56d19316f4a7d39a2a7996e8390` | ⚠️ Unaudited |
| VaultManagerKeep3rUniswapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2637d65912660e527c998824b8933d1a1bd7daa3` | ⚠️ Unaudited |
| VaultManagerKeydonixMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78727a77028d9130d2772713d570780231e64ecf` | ⚠️ Unaudited |
| VaultManagerKeydonixPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ca03aae24c4865d09643cb929141d8d3c60a75` | ⚠️ Unaudited |
| VaultManagerParameters | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395405 | `0x203153522b9eaef4ae17c6e99851ee7b2f7d312e` | ⚠️ Unaudited |
| VaultManagerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb82c6d510b3a0dc9f198de0ad2a3839973c6783c` | ⚠️ Unaudited |
| VaultManagerStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2726ebdf958cc15f5adb01aad22741329948fbdb` | ⚠️ Unaudited |
| VaultParameters | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395433 | `0xb46f8cf42e504efe8bef895f848741daa55e9f1d` | ⚠️ Unaudited |
| veCurveVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5bddf9843308380375a611c18b50fb9341f502a` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98567885df519dfeb12c0e268dd5d9b798bd531` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f59818105abe05ae793a8caedb39fc2bea7f03c` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca0f068edad122f09a39f99e7e89e705d6f6ace` | ⚠️ Unaudited |
| WETHDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c134e734b7e1e7955706f9abae7837b00f829a0` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521a06c080ff87cf8d3b47cfa46ca6ecb059e88d` | ⚠️ Unaudited |
| WrappedToUnderlyingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1145e9503000c4b2c9022a196717be5b7feba6a1` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71e96f2ae777c679740d2d8dc15ed4231981` | ⚠️ Unaudited |
| WSTEthPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11de4c003c80dc36a810254b433d727ac71c517` | ⚠️ Unaudited |
| xRULER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f7fd324b366380d2145dfa6c7a76fdb75f17b9` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae93e18aa23d31e3df53899547b986e419c5` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2af361e4b6a2892523d513df5245fc53b367` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd028bd027511482e701d08bae002cd6e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411a2d872945ee8c59e4ef5c3402ebe2a221c` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66f79191c86d7b7a7c0e2afae3ae943931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59092dae5ccf4a1e6439d611fd0653f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71990783442f68fb25e0b466196c7ca6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61025859c349dfbe6ef0dfca202ef3e84ca05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba482f2097eb47896a2ec5f3925637b73d99` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x41303e87db5be5b1c7a341440d04ec6a11343eeb` | ⚠️ Unaudited |
| YetiDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38794ebd0a2ef0feec622be7c1bf8ed9bae3a7e7` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea6936b407514ebfc0754a37704eb8d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738fa41e83c5b5633f466f9aa11dae098340b` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b8168f960a12a8fd01406c9c78143d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad987b743eb624662fe5c62b8f6015554203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052500105205d34daf004eab301916da8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c0681dca0deb095f2f192c3ab64bf320af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea744e5b887e5205727f55dfbe8685e3b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118eec34240620ffd044dfa3aaa0a0f78b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6f268d0c09cdfffe6bceac5233ac2367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044deaa1e5a8593adcead599e8d66fb5d3f677b5` | ⚠️ Unaudited |
| YvTokenOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395421 | `0x759eb07a8258bcf5590e9303763803dcf264652d` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06da56bb5675c54e4ed311c21e54c5025298` | ⚠️ Unaudited |
| zBCH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e68ee104c768078cb3624396aaf9285c58f1a73` | ⚠️ Unaudited |
| zBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c64a7d2ecc882d558dd16abc1537515a78bb7d` | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x37a4860728e292e5852b215c46dbe7a18862ef93` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c883b626637ae7c2b93909ad40c24676ada49d` | ⚠️ Unaudited |
| ZECShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b` | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a` | ⚠️ Unaudited |
| zZEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09aa07ae98fde91d66775c13107e9f082ff65295` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (91)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395399 | `0x0770e27f92f0d0e716dc531037b8b87fefebe561` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395402 | `0x18ed7a616eb0b4ad2cc63bd72c3e3597456edc38` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395406 | `0x220ea780a484c18fd0ab252014c58299759a1fbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395407 | `0x3b088b680ff7253e662bc29e5a7b696ba0100869` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395411 | `0x48ddd27a4d54cd3e8c34f34f7e66e998442dbce3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395412 | `0x4c71c265ad0db6386f36b9f3d33818cc5ed67cb1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395414 | `0x54b21c140f5463e1fda69b934da619eaaa61f1ca` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395415 | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395416 | `0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395417 | `0x68af7bd6f3e2fb480b251cb1b508bbb406e8e21d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395418 | `0x6a99d3840998a6a4612ff4e3735cc061bea75e1f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395420 | `0x72a2e0d0a201b54dcfb668a46be99494eff6d2a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395422 | `0x75fbfe26b21fd3ea008af0c764949f8214150c8f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395424 | `0x7721a657d98d65f9126004cd8c50875ed4f11174` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395425 | `0x7ab4ff80f27ac2935eda08baf899048f03c6d857` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395426 | `0x8074a64102ca15f21f197cf3169d3950dd65f2d5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395427 | `0x92e187a03b6cd19cb6af293ba17f2745fd2357d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395428 | `0x9ccbb2f03184720eef5f8fa768425af06604daf4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395429 | `0x9f2138ccb930f0654b2c40e7e29ff8291452eed8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395430 | `0xa8c0d22124e86cb4c03023d0962d12fb3fd78564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395431 | `0xb0bcf61d9bb95794a8d92b49011dc6d8786d0773` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395434 | `0xbfe2e6ecedfb9cdf0e9da98ab116d57ddc82d078` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395435 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395436 | `0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395437 | `0xcba7154bfbf898d9ab0cf0e259abab6ccbfb4894` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395438 | `0xcc33c2840b65c0a4ac4015c650dd20dc3eb2081d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395439 | `0xd31817a1e1578c4bece02fbfb235d76f5716f18f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395440 | `0xd88e1f40b6cd9793aa10a6c3ceea1d01c2a507f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395441 | `0xe85d5fe256f5f5c9e446502ae994fda12fd6700a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-395442 | `0xff536bb145177d3e8e9a84fff148b0e42282bf40` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-395443 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395485 | `0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395486 | `0x0b24d3202815df61c7b8b6d49e3ee40ca2e2f98d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395487 | `0x11b1bd923f4d0669958e16a511567f540bc21d2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395488 | `0x1337dac01fc21fa21d17914f96725f7a7b73868f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395489 | `0x3f03b937b986ad10dd171c393562f3fbe03abd9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395490 | `0x56c7ca666d192332f72a5842e72eed5f59f0fb48` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395491 | `0x7562fb711173095bc2d8100c107e6da639e0f4b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395492 | `0x7815ed0f9b00e7b34f52543779783023c7621fa1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395493 | `0x852de08f3cd5b92dd8b3b92b321363d04eeec39e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395494 | `0x8f904b4d41630135fa020e8ce5dd6dfd92028264` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395495 | `0x99f2b13c28a4183a5d5e0fe02b1b5aeee85faf5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395496 | `0xa1ad3602697c15113e089c2723c15ebf3038465c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395497 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395498 | `0xbea721ace12e881cb44dbe9361ffed9141ce547f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395499 | `0xca143ce32fe78f1f7019d7d551a6402fc5350c73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395500 | `0xdacd011a71f8c9619642bf482f1d4ceb338cffcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395501 | `0xdacfeed000e12c356fb72ab5089e7dd80ff4dd93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395502 | `0xe8372dcef80189c0f88631507f6466b3f60e24a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395503 | `0xf4ce5576bbc0e1291808049989d8dad0e51929fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395444 | `0x068e56ebb63e5f98532baf94fa1f9b9ae19ba761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395445 | `0x0a87fea68fa21c507f2d24612d31334e2cb3424d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395446 | `0x22a974ddf36ece1568e843719e72db3ec7066c43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395447 | `0x2ebb09ec5ecdc20800031f9d6cee98f90127a822` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395448 | `0x431fc83c3c28d470e56d2a6d5df981e43a1974de` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395449 | `0x6635c1ddef754cff7eeffab060382a8c36e59f65` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395450 | `0x678df3415fc31947da4324ec63212874be5a82f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395451 | `0x7670225e8c72dc627eae09640c2ba9a088b837b8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395452 | `0x850943c274f5d2bab9e643aff7b1c1eeb89d30dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395453 | `0x861784142d7074a4d35fd7f754b23cc9b70ba8de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395454 | `0x8747e46b23d3a48329284ea40a3858908ed238f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395455 | `0x8ae98dd5d6177be5eb86fdd3c216ae1952968f91` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395456 | `0x8e7ab03ca7d17996b097d5866bfaa1e251c35c6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395457 | `0x9095557b53e7701bb0ac685d33efe116231b2b19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395458 | `0x9096c43f1e11d64bad829f962377663097f28346` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395459 | `0xae973ab471b19e8bbd02f34ba652770b517a9d3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395460 | `0xbf1b434f82d084954689eadaef781a1ed031a0e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395461 | `0xca5d2e0961fe43eae4bf07fa961b3ca8cc0f50f6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395462 | `0xe30a50b117ddc1c163dc80115e96a3672eaa8c28` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-395463 | `0xe91d153e0b41518a2ce8dd3d7944fa863463a97d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395464 | `0xfe7ed09c4956f7cdb54ec4ffcb9818db2d7025b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395465 | `0x0058ab54d4405d8084e8d71b8ab36b3091b21c7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395466 | `0x1442bc024a92c2f96c3c1d2e9274bc4d8119d97e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395467 | `0x1c7aea8b6498f0854d1fce542a27ed6a10d71d2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395468 | `0x1f18fac6a422cf4a8d18369f017a100c77b49def` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-395469 | `0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395470 | `0x3129ac70c738d398d1d74c87eab9483fd56d16f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395471 | `0x5196a9034955dbade84cf2e5f53cd3747130fe37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395472 | `0x5bef93a96dcc2caec92e8610bb2f5bf5eb4d89f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395473 | `0x828bb32afa0ecf70c4f65393664e4a79664d9bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395474 | `0xa8f0b5758041158cf0375b7adc8ac175ff031b6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395475 | `0xb8b807c1841d38443d9a135f0109cf27dac78af4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395476 | `0xc440af46dac68fe74aa4e849cb798329c44b0908` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395477 | `0xd12d6082811709287ae8b6d899ab841659075fc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395478 | `0xd7a9b0d75e51bfb91c843b23fb2c19aa3b8d958e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-395479 | `0xdbf1a7fad2c4280fb8b93b00e88de3592d905305` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-395480 | `0xeac49454a156abff249e2c1a2aef4e4f192d8cb9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-395481 | `0xf2da959a37a05685f08cacb2733a19bb008849e1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-395482 | `0xf4766552d15ae4d256ad41b6cf2933482b0680dc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-395483 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-395484 | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Levelk_Security_Audit_Report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/Levelk_Security_Audit_Report.pdf) | LevelK | Audit | 2021-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [Mixbytes Security Audit Report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/Mixbytes%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [certik-final-report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/certik-final-report.pdf) | CertiK | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [borrow_protocol.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/borrow_protocol.pdf) | Unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18429] Levelk_Security_Audit_Report.pdf — matched: All contracts listed in section 1.2 Source Files. Date from cover page: Jan, 2021 -> last day of month.
- [18430] Mixbytes Security Audit Report.pdf — matched: Extracted from audit report dated October 01 2020. Scope includes core smart contracts at specified GitHub commit, excluding certain subdirectories and contracts as noted in re-audit scope.
- [18431] certik-final-report.pdf — no match: Contracts extracted from findings locations in the audit report. No explicit scope section found, but all contracts mentioned in findings are assumed in scope.
- [18432] borrow_protocol.pdf — no match: Scope section lists GitHub repo with contracts directory; contract names extracted from file references in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Levelk_Security_Audit_Report.pdf | ParametersBatchUpdater | ambiguous — not counted | 0x861784… (alternative) `0x861784142d7074a4d35fd7f754b23cc9b70ba8de` — liveness: live (current_address_book_code)<br>ParametersBatchUpdater (alternative) `0x4dd1a6db148becdadadfc407d23b725edd3cfb6f` — deployed 2021-04-07 19:09:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Levelk_Security_Audit_Report.pdf | USDP | own contract | USDP (selected) `0x1456688345527be1f37e9e627da0837d6f08c925` — deployed 2020-11-23 20:25:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Levelk_Security_Audit_Report.pdf | Vault | ambiguous — not counted | Vault (alternative) `0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19` — deployed 2020-11-23 20:44:49+03 — liveness: live (code_present_context)<br>0x2ebb09… (alternative) `0x2ebb09ec5ecdc20800031f9d6cee98f90127a822` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Levelk_Security_Audit_Report.pdf | VaultParameters | ambiguous — not counted | VaultParameters (alternative) `0xb46f8cf42e504efe8bef895f848741daa55e9f1d` — deployed 2020-11-23 20:38:44+03 — liveness: live (code_present_context)<br>0x22a974… (alternative) `0x22a974ddf36ece1568e843719e72db3ec7066c43` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Levelk_Security_Audit_Report.pdf | LiquidationAuction01 | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | LiquidationTriggerKeep3rMainAsset | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | LiquidationTriggerKeep3rPoolToken | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | LiquidationTriggerSimple | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | OracleSimple | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | VaultManagerKeep3rMainAsset | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | VaultManagerKeep3rPoolToken | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | VaultManagerParameters | ambiguous — not counted | VaultManagerParameters (alternative) `0x203153522b9eaef4ae17c6e99851ee7b2f7d312e` — deployed 2020-11-23 21:04:50+03 — liveness: live (code_present_context)<br>0x9096c4… (alternative) `0x9096c43f1e11d64bad829f962377663097f28346` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Levelk_Security_Audit_Report.pdf | VaultManagerStandard | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | ChainlinkedKeep3rV10OracleMainAsset | unmatched — not counted | — | listed in scope | no |
| Levelk_Security_Audit_Report.pdf | ChainlinkedKeep3rV10OraclePoolToken | unmatched — not counted | — | listed in scope | no |
| Mixbytes Security Audit Report.pdf | Vault | ambiguous — not counted | Vault (alternative) `0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19` — deployed 2020-11-23 20:44:49+03 — liveness: live (code_present_context)<br>0x2ebb09… (alternative) `0x2ebb09ec5ecdc20800031f9d6cee98f90127a822` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Mixbytes Security Audit Report.pdf | VaultManagerUniswap | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | VaultManager | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | ChainlinkedUniswapOracle | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | VaultManagerStandard | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | LiquidatorUniswap | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | Parameters | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | UniswapOracle | unmatched — not counted | — | listed in scope and findings | no |
| Mixbytes Security Audit Report.pdf | USDP | own contract | USDP (selected) `0x1456688345527be1f37e9e627da0837d6f08c925` — deployed 2020-11-23 20:25:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mixbytes Security Audit Report.pdf | Liquidator | unmatched — not counted | — | listed in scope and findings | no |
| certik-final-report.pdf | Parameters | unmatched — not counted | — | UNP-01, UNP-02 findings location | no |
| certik-final-report.pdf | Vault | ambiguous — not counted | Vault (alternative) `0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19` — deployed 2020-11-23 20:44:49+03 — liveness: live (code_present_context)<br>0x2ebb09… (alternative) `0x2ebb09ec5ecdc20800031f9d6cee98f90127a822` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| certik-final-report.pdf | SafeMath | unmatched — not counted | — | UNP-07 finding location | no |
| certik-final-report.pdf | ChainlinkedUniswapOracle | unmatched — not counted | — | UNP-08, UNP-09 findings location | no |
| certik-final-report.pdf | ChainlinkedUniswapOracleLP | unmatched — not counted | — | UNP-10, UNP-11 findings location | no |
| certik-final-report.pdf | VaultManagerStandard | unmatched — not counted | — | UNP-12 to UNP-14 findings location | no |
| certik-final-report.pdf | VaultManagerUniswap | unmatched — not counted | — | UNP-15 to UNP-21 findings location | no |
| certik-final-report.pdf | VaultManagerUniswapLP | unmatched — not counted | — | UNP-22 to UNP-28 findings location | no |
| borrow_protocol.pdf | BorrowModule01 | unmatched — not counted | — | mentioned in findings and scope | no |
| borrow_protocol.pdf | Assets01 | unmatched — not counted | — | mentioned in findings | no |
| borrow_protocol.pdf | AssetViewer | unmatched — not counted | — | mentioned in findings | no |
| borrow_protocol.pdf | ParametersStorage | unmatched — not counted | — | mentioned in findings | no |
| borrow_protocol.pdf | ERC721Tester | unmatched — not counted | — | test contract mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1a5ff58bc3246eb233fea20d32b79b5f01ec650c` | CDPRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3db39b538db1123389c77f888a213f1a6dd22ef3` | CollateralRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4dd1a6db148becdadadfc407d23b725edd3cfb6f` | ParametersBatchUpdater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x203153522b9eaef4ae17c6e99851ee7b2f7d312e` | VaultManagerParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb46f8cf42e504efe8bef895f848741daa55e9f1d` | VaultParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 358 |
| upstream | 21 |
| standard_library | 13 |
| needs_review | 91 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 30 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=2

Zero-match audit list:

- [18431] certik-final-report.pdf
- [18432] borrow_protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
