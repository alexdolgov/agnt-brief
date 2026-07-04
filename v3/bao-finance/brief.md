# Agentic Audit Brief: bao-finance

## Project Overview

- Project: bao-finance (`bao-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:32.707Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum, gnosis, polygon
- Contract surface: 490 unique implementations (490 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 481 project-authored contract(s) across 4 chain(s); 130 ERC20 tokens, 6 ERC721 NFTs, 2 ERC1155 multi-tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 72 common project-authored base contract(s) (baseupgradeabilityproxy, proxy, authorizable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Bunny** (`bunny`) in the PotCakeLover, QMultiplexer, VaultBunny, VaultBunnyBNB, VaultBunnyMaximizer, VaultFlipToCake, … subsystem.
1 audits inherited from `bunny`, scoped to that subsystem.

Total inherited audits: 1. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 490; live-surface contracts included: 490 (488 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/488 (1.4%)
- Deployed-live implementations: 488 of 490 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/490
- Verified + Unaudited implementations: 483
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 490
- Raw deployments: 490
- Audits discovered: 1 (0 direct, 1 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 1.4% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PotCakeLover | unknown | bsc | n/a | [`0x285037...a3b641`](./contracts/bsc-56/0x285037c97a89ce777be0c6f416f9701afaa3b641/) | ✅ Audited |
| QMultiplexer | unknown | bsc | n/a | [`0xdbd49a...ee9e5b`](./contracts/bsc-56/0xdbd49a14a53617c3c501711221e9d4a3f9ee9e5b/) | ✅ Audited |
| VaultBunny | unknown | bsc | n/a | [`0xaef1eb...bbbbaf`](./contracts/bsc-56/0xaef1ebb01f67e290e3b2b1f49e71654711bbbbaf/) | ✅ Audited |
| VaultBunnyBNB | unknown | bsc | n/a | [`0x017fd8...638c5a`](./contracts/bsc-56/0x017fd859191e631aae83627b203ef82a6b638c5a/) | ✅ Audited |
| VaultBunnyMaximizer | unknown | bsc | n/a | [`0x317e66...64949e`](./contracts/bsc-56/0x317e663d882223aace086778fbcdf21b6264949e/) | ✅ Audited |
| VaultFlipToCake | unknown | bsc | n/a | [`0x0dec5a...89ae8a`](./contracts/bsc-56/0x0dec5af8fcbb21b224797616733f93563789ae8a/) | ✅ Audited |
| VaultFlipToCakeLegacy | unknown | bsc | n/a | [`0x15241e...6506bf`](./contracts/bsc-56/0x15241e51d15f802bca1617354b5fdc67136506bf/) | ✅ Audited |

### ⚠️ Verified + Unaudited (483)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| __AdminUpgradeabilityProductProxy__ | unknown | bsc | n/a | [`0x04eeaf...2fc5c1`](./contracts/bsc-56/0x04eeaf041beb5f977811d6caef2d82f1a82fc5c1/) | ⚠️ Unaudited |
| __AdminUpgradeabilityProductProxy__ | unknown | bsc | n/a | [`0x9b99cc...53febe`](./contracts/bsc-56/0x9b99cca871be05119b2012fd4474731dd653febe/) | ⚠️ Unaudited |
| AAAAConfig | unknown | bsc | n/a | [`0xf66aae...7194e4`](./contracts/bsc-56/0xf66aaed32d6a8b9d0bb1a050019bfb36e47194e4/) | ⚠️ Unaudited |
| AAAADeploy | unknown | bsc | n/a | [`0x6cda5c...668f61`](./contracts/bsc-56/0x6cda5cae869277c6368b8d1301ec134450668f61/) | ⚠️ Unaudited |
| AAAAFactory | unknown | bsc | n/a | [`0x59b52c...8c1399`](./contracts/bsc-56/0x59b52c6f7769d5baeda35455506c2b93cf8c1399/) | ⚠️ Unaudited |
| AAAAGovernance | unknown | bsc | n/a | [`0x16463c...80eaed`](./contracts/bsc-56/0x16463cd818fc4ae1e354e8af2cc4a570ac80eaed/) | ⚠️ Unaudited |
| AAAAMint | unknown | bsc | n/a | [`0x2aef4a...0fe95b`](./contracts/bsc-56/0x2aef4a024099fe9ef1efd1d075a904fdc20fe95b/) | ⚠️ Unaudited |
| AAAAOtherConfig | unknown | bsc | n/a | [`0xab6508...81d2c2`](./contracts/bsc-56/0xab6508d93bf6e42b9c0a9676b59295f85781d2c2/) | ⚠️ Unaudited |
| AAAAPlatform | unknown | bsc | n/a | [`0xed49c8...9a2748`](./contracts/bsc-56/0xed49c8f41d8b5eb2a29720955a39212cfb9a2748/) | ⚠️ Unaudited |
| AAAAQuery | unknown | bsc | n/a | [`0xc396c3...e93db0`](./contracts/bsc-56/0xc396c3ece6aca68316eb95e0cbad3c4c04e93db0/) | ⚠️ Unaudited |
| AAAAQuery2 | unknown | bsc | n/a | [`0x464adc...bd324d`](./contracts/bsc-56/0x464adcc1bde46b176c90c4f950f8d9c800bd324d/) | ⚠️ Unaudited |
| AAAAReward | unknown | bsc | n/a | [`0x261899...a5143d`](./contracts/bsc-56/0x2618997cdb340f98e731916950f8ed09b1a5143d/) | ⚠️ Unaudited |
| AAAAShare | unknown | bsc | n/a | [`0xa0855a...bc47ed`](./contracts/bsc-56/0xa0855a1b515aa6d50af1e9c41d8db846fbbc47ed/) | ⚠️ Unaudited |
| ABep20Delegator | unknown | bsc | n/a | [`0x1c1a88...128425`](./contracts/bsc-56/0x1c1a881de291b2b19154770490864d7b57128425/) | ⚠️ Unaudited |
| Address | unknown | bsc | n/a | [`0x28c306...560e0e`](./contracts/bsc-56/0x28c3069173f12e9152b1c922ac46feac82560e0e/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x053489...926975`](./contracts/ethereum-1/0x053489702365a14a6200aa75c45a7dba11926975/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x0137d8...7a792e`](./contracts/bsc-56/0x0137d886e832842a3b11c568d5992ae73f7a792e/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x0243a2...38a67a`](./contracts/bsc-56/0x0243a20b20eca78ddedf6b8ddb43a0286438a67a/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x067ed1...0f33d5`](./contracts/bsc-56/0x067ed15bac752698dd525452cd493079220f33d5/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x098909...94c0ee`](./contracts/bsc-56/0x0989091f27708bc92ea4ca60073e03592b94c0ee/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x09edb8...61a790`](./contracts/bsc-56/0x09edb8237e8c27e6b58fedf7257cce501a61a790/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x0d17e7...eb8eaa`](./contracts/bsc-56/0x0d17e7b77c678c79c3ab5176e164ff0bcceb8eaa/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x14b5e6...eddaf6`](./contracts/bsc-56/0x14b5e6158864a2f5e04c52f1858185b64aeddaf6/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x1b220e...3bbed6`](./contracts/bsc-56/0x1b220e982e5b4615715870533e968dff823bbed6/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x1d9aa7...b3cfb4`](./contracts/bsc-56/0x1d9aa7382840d36a9baf3ecf3986530cf4b3cfb4/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x21200d...af567d`](./contracts/bsc-56/0x21200d3eca172a99cd91460fec5570bc8baf567d/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x237ca4...d1ff20`](./contracts/bsc-56/0x237ca45c5b0fe71dcc826f48db9d2e4784d1ff20/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x26cc5e...15a343`](./contracts/bsc-56/0x26cc5efee2e216170b7aae8b7b4aedf87015a343/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x2c33d6...6cca7f`](./contracts/bsc-56/0x2c33d6fa54bb6fa81b3a569d639fe23ab36cca7f/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x32ebb7...25da86`](./contracts/bsc-56/0x32ebb78cb307d00ebb19ef22a40f0c449925da86/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x3749f6...1894bb`](./contracts/bsc-56/0x3749f69b2d99e5586d95d95b6f9b5252c71894bb/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x40e318...4d04ce`](./contracts/bsc-56/0x40e31876c4322bd033bab028474665b12c4d04ce/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x4b1356...47af5f`](./contracts/bsc-56/0x4b1356cf2068030924dbd8fca1144afbe847af5f/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x542c06...54ddb0`](./contracts/bsc-56/0x542c06a5dc3f27e0fbdc9fb7bc6748f26d54ddb0/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x6eaaa7...0e9455`](./contracts/bsc-56/0x6eaaa70ae37aaea71e400f86199b83da8e0e9455/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x78650b...4a38e9`](./contracts/bsc-56/0x78650b139471520656b9e7aa7a5e9276814a38e9/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x7b260d...711708`](./contracts/bsc-56/0x7b260d7851d9dc9ee27dc8d6fabdb2d568711708/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x9c86c4...7fad85`](./contracts/bsc-56/0x9c86c4764e59a336c108a6f85be48f8a9a7fad85/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0xa4e286...32b849`](./contracts/bsc-56/0xa4e2866745e115f4467923603ffde0f73732b849/) | ⚠️ Unaudited |
| Airdrop | unknown | bsc | n/a | [`0x83f72a...446428`](./contracts/bsc-56/0x83f72a72c6e513eb50be148d482a429570446428/) | ⚠️ Unaudited |
| AirdropOption | unknown | bsc | n/a | [`0x74c14a...c99bfe`](./contracts/bsc-56/0x74c14af2d2bdea20435eef2ec75e2e5d9ac99bfe/) | ⚠️ Unaudited |
| AirPool | unknown | bsc | n/a | [`0x0472b4...263daf`](./contracts/bsc-56/0x0472b48623aafccbe440cc178b1d0ab7c5263daf/) | ⚠️ Unaudited |
| AlpacaFarmer | unknown | bsc | n/a | [`0x46ac78...56e95b`](./contracts/bsc-56/0x46ac78c4361a58f98d4f52af744fd838d556e95b/) | ⚠️ Unaudited |
| AlphaToken | unknown | ethereum | n/a | [`0xa1faa1...b40975`](./contracts/ethereum-1/0xa1faa113cbe53436df28ff0aee54275c13b40975/) | ⚠️ Unaudited |
| AnkrBEP20Token | unknown | bsc | n/a | [`0xf30791...1b08e3`](./contracts/bsc-56/0xf307910a4c7bbc79691fd374889b36d8531b08e3/) | ⚠️ Unaudited |
| ANKRToken | unknown | ethereum | n/a | [`0x38a03b...a6d4b5`](./contracts/ethereum-1/0x38a03b35a6662d35b226879e57d499ee26a6d4b5/) | ⚠️ Unaudited |
| ANKRTokenVault | unknown | ethereum | n/a | [`0x1d40c0...1d9da6`](./contracts/ethereum-1/0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6/) | ⚠️ Unaudited |
| AnyswapBEP20 | unknown | bsc | n/a | [`0xf68c9d...d0b6fa`](./contracts/bsc-56/0xf68c9df95a18b2a5a5fa1124d79eeeffbad0b6fa/) | ⚠️ Unaudited |
| AnyswapV4ERC20 | unknown | bsc | n/a | [`0x47eaf5...b51c8c`](./contracts/bsc-56/0x47eaf5f54d79d5c2b6537a90a0c58a534ab51c8c/) | ⚠️ Unaudited |
| AutoFarm | unknown | bsc | n/a | [`0x0df9c5...fd41fb`](./contracts/bsc-56/0x0df9c5fb57bc3b90e73563e9adb672bea2fd41fb/) | ⚠️ Unaudited |
| AutoFarmV2 | unknown | bsc | n/a | [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/) | ⚠️ Unaudited |
| AUTOToken | unknown | bsc | n/a | [`0x097509...fdaff0`](./contracts/bsc-56/0x09750927d289131d40d6e5ff34d431432bfdaff0/) | ⚠️ Unaudited |
| AUTOv2 | unknown | bsc | n/a | [`0x12300e...abfe24`](./contracts/bsc-56/0x12300ea3d3444e9106c65913de24c58462abfe24/) | ⚠️ Unaudited |
| BalanceChecker | unknown | bsc | n/a | [`0x91688f...10b20a`](./contracts/bsc-56/0x91688f449478a47256990e4c609e000b5810b20a/) | ⚠️ Unaudited |
| BambooBar | unknown | bsc | n/a | [`0x1e7aab...9b3ccb`](./contracts/bsc-56/0x1e7aab293fc9265f225ca0da9ac80e2a189b3ccb/) | ⚠️ Unaudited |
| BambooMaker | unknown | bsc | n/a | [`0x4e9bd0...ae548e`](./contracts/bsc-56/0x4e9bd08c7664a7f8e9ba0f06003b135060ae548e/) | ⚠️ Unaudited |
| BankBNB | unknown | bsc | n/a | [`0x18a9ee...5e9451`](./contracts/bsc-56/0x18a9eee6dc4fb50f86c4abb67bd5f23a3c5e9451/) | ⚠️ Unaudited |
| BankBridge | unknown | bsc | n/a | [`0x08bfd4...e5a249`](./contracts/bsc-56/0x08bfd44ffdfb32ac8f5efd790609e0fad6e5a249/) | ⚠️ Unaudited |
| BankConfig | unknown | bsc | n/a | [`0xeb9fc5...28cb08`](./contracts/bsc-56/0xeb9fc522da9e2976cd112f36c6c9f2ee4d28cb08/) | ⚠️ Unaudited |
| BaoDistribution | unknown | ethereum | n/a | [`0x885d90...f495f4`](./contracts/ethereum-1/0x885d90a424f87d362c9369c0f3d9a2d28af495f4/) | ⚠️ Unaudited |
| BaoMasterFarmer | unknown | ethereum | n/a | [`0x02444a...8ab021`](./contracts/ethereum-1/0x02444a8feead1a2e78da0e2a157f4c7b848ab021/) | ⚠️ Unaudited |
| BaoSwap | unknown | bsc | n/a | [`0x745c8e...78eb68`](./contracts/bsc-56/0x745c8e1c0315162c33408454b48e53c9f178eb68/) | ⚠️ Unaudited |
| BaoToken | unknown | gnosis | n/a | [`0x23db89...b43178`](./contracts/gnosis-100/0x23db89ba5e2e4ab1c9b412f03114bb5e26b43178/) | ⚠️ Unaudited |
| BaoVotes | unknown | ethereum | n/a | [`0x158455...7d1fe4`](./contracts/ethereum-1/0x158455287341bbf5c0a0bf8467525c05017d1fe4/) | ⚠️ Unaudited |
| BasketFacet | unknown | polygon | n/a | [`0xe4f218...94fef3`](./contracts/polygon-137/0xe4f21842e5d7fad1fb360b7623946376db94fef3/) | ⚠️ Unaudited |
| bCashToken | unknown | bsc | n/a | [`0xc2161d...28fa09`](./contracts/bsc-56/0xc2161d47011c4065648ab9cdfd0071094228fa09/) | ⚠️ Unaudited |
| BeefyTreasury | unknown | bsc | n/a | [`0x4a32de...f2ad01`](./contracts/bsc-56/0x4a32de8c248533c28904b24b4cfcfe18e9f2ad01/) | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | bsc | n/a | [`0xad6cae...6c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | [`0x22fbfb...d270e3`](./contracts/bsc-56/0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3/) | ⚠️ Unaudited |
| BEP20Cardano | unknown | bsc | n/a | [`0x3ee220...435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | ⚠️ Unaudited |
| BEP20Cosmos | unknown | bsc | n/a | [`0x0eb3a7...62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | ⚠️ Unaudited |
| BEP20CREAM | unknown | bsc | n/a | [`0x2f7347...120326`](./contracts/bsc-56/0x2f7347ebb25f2e314a5806b71dd67fe96c120326/) | ⚠️ Unaudited |
| BEP20DAI | unknown | bsc | n/a | [`0x1af3f3...b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | ⚠️ Unaudited |
| BEP20EOS | unknown | bsc | n/a | [`0x56b6fb...dccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed...f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20FOR | unknown | bsc | n/a | [`0x658a10...5b0539`](./contracts/bsc-56/0x658a109c5900bc6d2357c87549b651670e5b0539/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20Ontology | unknown | bsc | n/a | [`0xfd7b3a...850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | ⚠️ Unaudited |
| BEP20Polkadot | unknown | bsc | n/a | [`0x708360...873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | ⚠️ Unaudited |
| BEP20Tezos | unknown | bsc | n/a | [`0x16939e...12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | ⚠️ Unaudited |
| BEP20Token | unknown | bsc | n/a | [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | bsc | n/a | [`0x0d8ce2...9ae153`](./contracts/bsc-56/0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153/) | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | bsc | n/a | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | ⚠️ Unaudited |
| BEP20USDT | unknown | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BEP20XRP | unknown | bsc | n/a | [`0x1d2f0d...c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | ⚠️ Unaudited |
| BEP20YFII | unknown | bsc | n/a | [`0x7f7064...53eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | ⚠️ Unaudited |
| BEP20Zcash | unknown | bsc | n/a | [`0x1ba42e...ef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | ⚠️ Unaudited |
| Berry | unknown | bsc | n/a | [`0x0cef58...3d5faa`](./contracts/bsc-56/0x0cef58f80fad7904556fc7801e46a7618e3d5faa/) | ⚠️ Unaudited |
| BerryBox | unknown | bsc | n/a | [`0x08f230...be998e`](./contracts/bsc-56/0x08f2303633a8e376ee02d0c4f07952bf05be998e/) | ⚠️ Unaudited |
| BerryDataNFT | unknown | bsc | n/a | [`0x0aef47...a14da8`](./contracts/bsc-56/0x0aef47fe18180f61b87de7e85712652bd8a14da8/) | ⚠️ Unaudited |
| BerryDispute | unknown | bsc | n/a | [`0x624d25...ebcf9f`](./contracts/bsc-56/0x624d25cb42c7f0940531101d47414e3a58ebcf9f/) | ⚠️ Unaudited |
| BerryLibrary | unknown | bsc | n/a | [`0x734e3b...3390e1`](./contracts/bsc-56/0x734e3b5bd16b43eb82f203950f983ef6003390e1/) | ⚠️ Unaudited |
| BerryMaster | unknown | bsc | n/a | [`0x7e7fe9...dbee2e`](./contracts/bsc-56/0x7e7fe9e40fc3b8a7ce85da44801f9efe9bdbee2e/) | ⚠️ Unaudited |
| BerryStake | unknown | bsc | n/a | [`0x283af9...f6b3ae`](./contracts/bsc-56/0x283af939416eebf8413b382338bf1537c1f6b3ae/) | ⚠️ Unaudited |
| BerryTransfer | unknown | bsc | n/a | [`0xee9a08...5b30ca`](./contracts/bsc-56/0xee9a080a7773669870f58d024d25b157cb5b30ca/) | ⚠️ Unaudited |
| BIFI | unknown | bsc | n/a | [`0xca3f50...a5190a`](./contracts/bsc-56/0xca3f508b8e4dd382ee878a314789373d80a5190a/) | ⚠️ Unaudited |
| BlinkHL | unknown | bsc | n/a | [`0xe77ef6...c5ab38`](./contracts/bsc-56/0xe77ef6d4d0b389b2e9c98e1a880dcc12bdc5ab38/) | ⚠️ Unaudited |
| BlinkHLCardFactory | unknown | bsc | n/a | [`0x88f2bc...7fe499`](./contracts/bsc-56/0x88f2bc966647b392c22fbf2b073d5885207fe499/) | ⚠️ Unaudited |
| BlinkHLOracle | unknown | bsc | n/a | [`0x4482c7...147073`](./contracts/bsc-56/0x4482c7530d284739cd24d44729bca3b07b147073/) | ⚠️ Unaudited |
| BLinkToken | unknown | bsc | n/a | [`0x63870a...32054f`](./contracts/bsc-56/0x63870a18b6e42b01ef1ad8a2302ef50b7132054f/) | ⚠️ Unaudited |
| BnbPricePrediction | unknown | bsc | n/a | [`0x05b4c8...fa9c75`](./contracts/bsc-56/0x05b4c8785f4c8856c47a3c2ebce313343efa9c75/) | ⚠️ Unaudited |
| BnbStaking | unknown | bsc | n/a | [`0x187463...3b4208`](./contracts/bsc-56/0x187463a09569020659f4128c14fb13bce23b4208/) | ⚠️ Unaudited |
| Boardroom | unknown | bsc | n/a | [`0xa2c94f...39d665`](./contracts/bsc-56/0xa2c94fdc0f6c1656bda4b571235f48bfcb39d665/) | ⚠️ Unaudited |
| Bond | unknown | bsc | n/a | [`0x538adb...c9c245`](./contracts/bsc-56/0x538adb455e276ab32e48b37996d322df63c9c245/) | ⚠️ Unaudited |
| BondV3 | unknown | bsc | n/a | [`0x0a5fec...824137`](./contracts/bsc-56/0x0a5fecabbdb1908b5f58a26e528a21663c824137/) | ⚠️ Unaudited |
| BondVault | unknown | bsc | n/a | [`0x518f74...d2bb1c`](./contracts/bsc-56/0x518f746ab25432146f15f583845cfe3f56d2bb1c/) | ⚠️ Unaudited |
| BSCBurgerTransit | unknown | bsc | n/a | [`0x3f6219...d2cefe`](./contracts/bsc-56/0x3f621973a1363c2ecc8b256e9c0a1c3e62d2cefe/) | ⚠️ Unaudited |
| BscMayaBridge | unknown | bsc | n/a | [`0x65340e...dceec8`](./contracts/bsc-56/0x65340e47e0c9fd0ebae738211bfa8a049bdceec8/) | ⚠️ Unaudited |
| BSCXMaker | unknown | bsc | n/a | [`0xb8cd34...c9e6f3`](./contracts/bsc-56/0xb8cd34ee74f526b1ffe51015a7e7cb475ec9e6f3/) | ⚠️ Unaudited |
| BSCXMasterFarmer | unknown | bsc | n/a | [`0x1070b9...1b31d2`](./contracts/bsc-56/0x1070b9a998c4457c5f393e389f275012e91b31d2/) | ⚠️ Unaudited |
| BSCXNTS | unknown | bsc | n/a | [`0x6ee5db...a364c6`](./contracts/bsc-56/0x6ee5db03a333d56a5653dcfd476cec8ab4a364c6/) | ⚠️ Unaudited |
| BSCXSafe | unknown | bsc | n/a | [`0xf1ce70...c60a3c`](./contracts/bsc-56/0xf1ce70c337eccd47a998be0bb07e49188bc60a3c/) | ⚠️ Unaudited |
| BSCXToken | unknown | bsc | n/a | [`0x5ac52e...451587`](./contracts/bsc-56/0x5ac52ee5b2a633895292ff6d8a89bb9190451587/) | ⚠️ Unaudited |
| BulkSender | unknown | bsc | n/a | [`0x4bfbde...797174`](./contracts/bsc-56/0x4bfbde87cbc22272b481060144908bc4a9797174/) | ⚠️ Unaudited |
| BunnyBNBPool | unknown | bsc | n/a | [`0xc80ea5...d66e0d`](./contracts/bsc-56/0xc80ea568010bca1ad659d1937e17834972d66e0d/) | ⚠️ Unaudited |
| BunnyMinter | unknown | bsc | n/a | [`0x0b4a71...667efe`](./contracts/bsc-56/0x0b4a714aaf59e46cb1900e3c031017fd72667efe/) | ⚠️ Unaudited |
| BunnyMinterMigrator | unknown | bsc | n/a | [`0x46057f...269227`](./contracts/bsc-56/0x46057f91e88cbf91546e791a8c95753542269227/) | ⚠️ Unaudited |
| BunnyMinterV2 | unknown | bsc | n/a | [`0x6298e5...c436b4`](./contracts/bsc-56/0x6298e5485596b7a281ed35d90c7ef6fb85c436b4/) | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | bsc | n/a | [`0x7c8b60...637c7a`](./contracts/bsc-56/0x7c8b60d2b859a38c8b9b5b6cb4565485cb637c7a/) | ⚠️ Unaudited |
| BunnyOracle | unknown | bsc | n/a | [`0x4e92ab...5d35d1`](./contracts/bsc-56/0x4e92ab57653998a33d59ede08d3f4423305d35d1/) | ⚠️ Unaudited |
| BunnyPool | unknown | bsc | n/a | [`0xb24633...bc1f44`](./contracts/bsc-56/0xb24633bacc60bb1f907633c4c507f6e6d5bc1f44/) | ⚠️ Unaudited |
| BunnyPoolV2 | unknown | bsc | n/a | [`0x28ecb0...292276`](./contracts/bsc-56/0x28ecb0a0e1f64a622954cd3f2dd2f8e128292276/) | ⚠️ Unaudited |
| BunnyToken | unknown | bsc | n/a | [`0xc9849e...a11a51`](./contracts/bsc-56/0xc9849e6fdb743d08faee3e34dd2d1bc69ea11a51/) | ⚠️ Unaudited |
| BurgerERC20 | unknown | bsc | n/a | [`0x0502f8...d08443`](./contracts/bsc-56/0x0502f8e3cd79e2356ecbc6ba03ba4aae1cd08443/) | ⚠️ Unaudited |
| BurgerSave | unknown | bsc | n/a | [`0xee0cfa...977241`](./contracts/bsc-56/0xee0cfacca812f5bf696f638501cac35334977241/) | ⚠️ Unaudited |
| BuxToken | unknown | bsc | n/a | [`0x211ffb...779e45`](./contracts/bsc-56/0x211ffbe424b90e25a15531ca322adf1559779e45/) | ⚠️ Unaudited |
| CakeFlipVault | unknown | bsc | n/a | [`0x23b68a...8f3891`](./contracts/bsc-56/0x23b68a3c008512a849981b6e69bbac16048f3891/) | ⚠️ Unaudited |
| CakeToken | unknown | bsc | n/a | [`0x086bef...88807b`](./contracts/bsc-56/0x086bef28ebfb560e787989d025c83bd1e288807b/) | ⚠️ Unaudited |
| CakeVault | unknown | bsc | n/a | [`0x9a8235...419e8d`](./contracts/bsc-56/0x9a8235ada127f6b5532387a029235640d1419e8d/) | ⚠️ Unaudited |
| Call | unknown | ethereum | n/a | [`0x036af4...f44c4a`](./contracts/ethereum-1/0x036af46b35c5fe11c1c48bc0301e325738f44c4a/) | ⚠️ Unaudited |
| CallFacet | unknown | polygon | n/a | [`0x1f3a85...d7555b`](./contracts/polygon-137/0x1f3a8584691847edd43bc1edce83f9b1b7d7555b/) | ⚠️ Unaudited |
| CBurger | unknown | bsc | n/a | [`0x4b5d13...79f640`](./contracts/bsc-56/0x4b5d132e902f792e2f8327a3d4062e3edd79f640/) | ⚠️ Unaudited |
| CErc20Delegate | unknown | bsc | n/a | [`0x12c28c...4eccd4`](./contracts/bsc-56/0x12c28c919f3cd8cce898afca4446c613b54eccd4/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | bsc | n/a | [`0x04c61e...ee69fb`](./contracts/bsc-56/0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | bsc | n/a | [`0x0e9d90...a09baa`](./contracts/bsc-56/0x0e9d900c884964dc4b26db96ba113825b1a09baa/) | ⚠️ Unaudited |
| CEther | unknown | bsc | n/a | [`0x1ffe17...90ff3a`](./contracts/bsc-56/0x1ffe17b99b439be0afc831239ddecda2a790ff3a/) | ⚠️ Unaudited |
| ChefMaster | unknown | bsc | n/a | [`0x1e3709...9417f9`](./contracts/bsc-56/0x1e37097fc71fd892219b266f9bb12558719417f9/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | polygon | n/a | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| Claim | unknown | bsc | n/a | [`0x54d5a9...181368`](./contracts/bsc-56/0x54d5a9e5680f729c6a020a3b891e64a711181368/) | ⚠️ Unaudited |
| ClaimCondition | unknown | bsc | n/a | [`0xc53f74...e5f4e0`](./contracts/bsc-56/0xc53f74a55b0408a2de829a51772eae6de5e5f4e0/) | ⚠️ Unaudited |
| ClaimRule | unknown | bsc | n/a | [`0xfae8e5...096e40`](./contracts/bsc-56/0xfae8e56209dd5a7ac9be27c91516164f27096e40/) | ⚠️ Unaudited |
| CommissionBoardroom | unknown | bsc | n/a | [`0x063240...75de06`](./contracts/bsc-56/0x063240149cf0598ce374e0677859ab76ba75de06/) | ⚠️ Unaudited |
| CommissionBoardroomV2 | unknown | bsc | n/a | [`0x1c733a...732bd7`](./contracts/bsc-56/0x1c733af727c7b92a8a947200d54662a4a5732bd7/) | ⚠️ Unaudited |
| CommunityFund | unknown | bsc | n/a | [`0x2a9e06...db6193`](./contracts/bsc-56/0x2a9e0645c6c34747c94dedce383a73f789db6193/) | ⚠️ Unaudited |
| Comp | unknown | bsc | n/a | [`0xd4cb32...f3e888`](./contracts/bsc-56/0xd4cb328a82bdf5f03eb737f37fa6b370aef3e888/) | ⚠️ Unaudited |
| Comptroller | unknown | polygon | n/a | [`0x2360ec...62f425`](./contracts/polygon-137/0x2360ec232b26bd528eba6ef3df13cf6c6262f425/) | ⚠️ Unaudited |
| ComptrollerTester | unknown | bsc | n/a | [`0x145ee0...ad6a2c`](./contracts/bsc-56/0x145ee0eb839b38e979ec9e0b4929b5469dad6a2c/) | ⚠️ Unaudited |
| CouponVault | unknown | bsc | n/a | [`0x4496b7...45215b`](./contracts/bsc-56/0x4496b79548ea7ae5be0cf774dc56253f2a45215b/) | ⚠️ Unaudited |
| CVaultETHLP | unknown | ethereum | n/a | [`0xc7eaa3...725ced`](./contracts/ethereum-1/0xc7eaa3bb9ac982cd5f6124f9b5a3620348725ced/) | ⚠️ Unaudited |
| CVaultRelayer | unknown | ethereum | n/a | [`0xa02234...1f7711`](./contracts/ethereum-1/0xa02234515433f12993842a4543c4f804e81f7711/) | ⚠️ Unaudited |
| Dao | unknown | bsc | n/a | [`0x04e283...2df4f0`](./contracts/bsc-56/0x04e283c9350bab8a1243ccfc1dd9bf1ab72df4f0/) | ⚠️ Unaudited |
| DaoVault | unknown | bsc | n/a | [`0x410277...170777`](./contracts/bsc-56/0x4102773565d82c8b0785f1262cfe75f04f170777/) | ⚠️ Unaudited |
| Dashboard | unknown | bsc | n/a | [`0xce8b1a...b04161`](./contracts/bsc-56/0xce8b1aed01c0720d7e5805e16fe08c9946b04161/) | ⚠️ Unaudited |
| DashboardETH | unknown | ethereum | n/a | [`0x0a9fb9...c32870`](./contracts/ethereum-1/0x0a9fb9cfe50f74102edeaefc616ce99ba6c32870/) | ⚠️ Unaudited |
| DeadWallet | unknown | ethereum | n/a | [`0x90795d...106be2`](./contracts/ethereum-1/0x90795d4676e50ccccaa260a415b61587e7106be2/) | ⚠️ Unaudited |
| DemaxBallotFactory | unknown | bsc | n/a | [`0x29d5ac...b00a68`](./contracts/bsc-56/0x29d5ac18a4c315af2e8c8325a2748e590ab00a68/) | ⚠️ Unaudited |
| DemaxConfig | unknown | bsc | n/a | [`0x3669d6...3f4eba`](./contracts/bsc-56/0x3669d6ac4ea8a6ba0b85396995557475c23f4eba/) | ⚠️ Unaudited |
| DemaxDelegate | unknown | bsc | n/a | [`0x3de79b...a35e60`](./contracts/bsc-56/0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60/) | ⚠️ Unaudited |
| DemaxFactory | unknown | bsc | n/a | [`0x2254ee...e20891`](./contracts/bsc-56/0x2254ee4434ef583edb2eb8359d3e82230ee20891/) | ⚠️ Unaudited |
| DemaxGovernance | unknown | bsc | n/a | [`0x4d9b9c...67258d`](./contracts/bsc-56/0x4d9b9c51f286164f96c2b756762a228d8267258d/) | ⚠️ Unaudited |
| DemaxPlatform | unknown | bsc | n/a | [`0x42591f...9d70ca`](./contracts/bsc-56/0x42591f57f707739b95c5c486c014b525f19d70ca/) | ⚠️ Unaudited |
| DemaxPool | unknown | bsc | n/a | [`0x86a327...5d4a74`](./contracts/bsc-56/0x86a327715d707bca24983b1145d1f6c40c5d4a74/) | ⚠️ Unaudited |
| DemaxPricePrediction | unknown | bsc | n/a | [`0x2540ed...6ef68e`](./contracts/bsc-56/0x2540ed3ed762d28f7798e71c677486a2cc6ef68e/) | ⚠️ Unaudited |
| DemaxProjectDeploy | unknown | bsc | n/a | [`0x5bb577...e5c7b5`](./contracts/bsc-56/0x5bb57735352165ceabcb50dc9b11db5341e5c7b5/) | ⚠️ Unaudited |
| DemaxProjectQuery | unknown | bsc | n/a | [`0x76da67...24bf4f`](./contracts/bsc-56/0x76da67bb008baee6e53dcbdcd63c11f10924bf4f/) | ⚠️ Unaudited |
| DemaxQuery | unknown | bsc | n/a | [`0x236b75...012323`](./contracts/bsc-56/0x236b758057a1d277a267bee8871c563f2a012323/) | ⚠️ Unaudited |
| DemaxQuery2 | unknown | bsc | n/a | [`0x2c7fc9...32e022`](./contracts/bsc-56/0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022/) | ⚠️ Unaudited |
| DemaxShackChef | unknown | bsc | n/a | [`0x07de03...61ba3e`](./contracts/bsc-56/0x07de034a0fc0da7a0bf703f6dca7025bcd61ba3e/) | ⚠️ Unaudited |
| DemaxShackChefQuery | unknown | bsc | n/a | [`0xfdd5d0...f876ad`](./contracts/bsc-56/0xfdd5d0202413a902414f3d7a5ccac13c40f876ad/) | ⚠️ Unaudited |
| DemaxShackConfig | unknown | bsc | n/a | [`0x5fb37f...a06b24`](./contracts/bsc-56/0x5fb37f02196190237b47f0fe73a343b51fa06b24/) | ⚠️ Unaudited |
| DemaxShackFarm | unknown | bsc | n/a | [`0x744db7...ee247d`](./contracts/bsc-56/0x744db744da07e3ade5ba99d1c80fa11dc5ee247d/) | ⚠️ Unaudited |
| DemaxTransferListener | unknown | bsc | n/a | [`0x3becd0...6d943b`](./contracts/bsc-56/0x3becd05231bbba6f7adda92f3c79fb3aa96d943b/) | ⚠️ Unaudited |
| DemaxTrigger | unknown | bsc | n/a | [`0xef72eb...119031`](./contracts/bsc-56/0xef72ebba2602de655ad05ae67f7e15ccdd119031/) | ⚠️ Unaudited |
| Dgas | unknown | bsc | n/a | [`0xae9269...1d6b8f`](./contracts/bsc-56/0xae9269f27437f0fcbc232d39ec814844a51d6b8f/) | ⚠️ Unaudited |
| Diamond | unknown | polygon | n/a | [`0x0589c4...2ce481`](./contracts/polygon-137/0x0589c472c35fc7cae089dbbaefb050dd642ce481/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | polygon | n/a | [`0x828125...c81d25`](./contracts/polygon-137/0x828125ec1daa708677b844abb05f339741c81d25/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | polygon | n/a | [`0xdc1c3e...c81f57`](./contracts/polygon-137/0xdc1c3ee57e8d7a898671af2634e57b6cc7c81f57/) | ⚠️ Unaudited |
| Disperse | unknown | bsc | n/a | [`0xbfc2fe...7f31ea`](./contracts/bsc-56/0xbfc2fee9da8506b25e46a6f8a08aaad2037f31ea/) | ⚠️ Unaudited |
| Dollar | unknown | bsc | n/a | [`0x35e869...3f788c`](./contracts/bsc-56/0x35e869b7456462b81cdb5e6e42434bd27f3f788c/) | ⚠️ Unaudited |
| DoublePool | unknown | bsc | n/a | [`0x041c1b...bcd684`](./contracts/bsc-56/0x041c1bf8e085e4987404b88441599ee6d1bcd684/) | ⚠️ Unaudited |
| DragonLair | unknown | polygon | n/a | [`0xf28164...8a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/) | ⚠️ Unaudited |
| ElasticSwap | unknown | bsc | n/a | [`0x227f6c...931585`](./contracts/bsc-56/0x227f6ca609a9686e35da13c1d46d9a1e86931585/) | ⚠️ Unaudited |
| encoder | unknown | polygon | n/a | [`0x397674...b027cf`](./contracts/polygon-137/0x39767484882ce4d34e36333ca326213522b027cf/) | ⚠️ Unaudited |
| ERC20 | unknown | bsc | n/a | [`0x062a0a...bdff22`](./contracts/bsc-56/0x062a0a2efb3dfb6b975b7ea8d2d3ca9dacbdff22/) | ⚠️ Unaudited |
| ERC20Facet | unknown | polygon | n/a | [`0x92f004...0becf2`](./contracts/polygon-137/0x92f0049c548b9ff3fe28f2fbd576c6daf20becf2/) | ⚠️ Unaudited |
| ERC20Factory | unknown | bsc | n/a | [`0x6292c7...0a4a08`](./contracts/bsc-56/0x6292c755af42512c5901524e42c8666ef60a4a08/) | ⚠️ Unaudited |
| ERC20Token | unknown | bsc | n/a | [`0xe0eaa6...6429a4`](./contracts/bsc-56/0xe0eaa6376af9361d28ac3e8ecd0465ac496429a4/) | ⚠️ Unaudited |
| ERC677 | unknown | bsc | n/a | [`0x447544...3b12f0`](./contracts/bsc-56/0x44754455564474a89358b2c2265883df993b12f0/) | ⚠️ Unaudited |
| ETHBurgerTransit | unknown | bsc | n/a | [`0xb92d86...174e0b`](./contracts/bsc-56/0xb92d86a9cf4656d9d2f4bd3dd6aa1b0b16174e0b/) | ⚠️ Unaudited |
| EuroBetFactory | unknown | bsc | n/a | [`0x444c00...0089db`](./contracts/bsc-56/0x444c00e18c266a9626ae5563b408adb4830089db/) | ⚠️ Unaudited |
| ExampleOracleSimple | unknown | gnosis | n/a | [`0x1d8953...c8665d`](./contracts/gnosis-100/0x1d8953421facecece4f28f538484b40c03c8665d/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0x04039b...cb530b`](./contracts/ethereum-1/0x04039bcdd52128f7f0ddab7b501c4d7b8dcb530b/) | ⚠️ Unaudited |
| FallenSpartans | unknown | bsc | n/a | [`0xfeb0a2...2ab1a6`](./contracts/bsc-56/0xfeb0a2a1ae523e4786f6916ff00e037ff82ab1a6/) | ⚠️ Unaudited |
| Farm | unknown | bsc | n/a | [`0x7555e8...6529bf`](./contracts/bsc-56/0x7555e8b38139f3a3603c69d217ed8a93116529bf/) | ⚠️ Unaudited |
| FarmerToken | unknown | bsc | n/a | [`0x864a0b...23f213`](./contracts/bsc-56/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | ⚠️ Unaudited |
| Fed | unknown | polygon | n/a | [`0x745734...698512`](./contracts/polygon-137/0x745734ad4a09eb67ec23cb965c33324f99698512/) | ⚠️ Unaudited |
| FlipVaultV2 | unknown | bsc | n/a | [`0x1a5c2a...c7d04c`](./contracts/bsc-56/0x1a5c2a30861ef2da013d8244066dbc4bbdc7d04c/) | ⚠️ Unaudited |
| Forwarder | unknown | ethereum | n/a | [`0x26c9b3...e3dd46`](./contracts/ethereum-1/0x26c9b321ff9c10fbfdf20a57d92f1602e8e3dd46/) | ⚠️ Unaudited |
| FrontB | unknown | bsc | n/a | [`0x928e55...c72f1b`](./contracts/bsc-56/0x928e55dab735aa8260af3cedada18b5f70c72f1b/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GnosisSafe | unknown | bsc | n/a | [`0x197b1c...a2a136`](./contracts/bsc-56/0x197b1cf39f668c8c9a7846a5c00c5a58cea2a136/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | bsc | n/a | [`0x5e64c4...9c11ce`](./contracts/bsc-56/0x5e64c46ec9c1f08dea1143c8f412042bcd9c11ce/) | ⚠️ Unaudited |
| Gold | unknown | bsc | n/a | [`0xfdf8fe...e9942d`](./contracts/bsc-56/0xfdf8fe2d37e12149b1c7ca1b54e29325f4e9942d/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | bsc | n/a | [`0x406f48...8f078f`](./contracts/bsc-56/0x406f48f47d25e9caa29f17e7cfbd1dc6878f078f/) | ⚠️ Unaudited |
| GovernorAlpha2 | unknown | bsc | n/a | [`0x0abf35...e19dd6`](./contracts/bsc-56/0x0abf357862b53ddb817a2b701b5a7015fee19dd6/) | ⚠️ Unaudited |
| Grain | unknown | bsc | n/a | [`0x9c20d4...e6ac4e`](./contracts/bsc-56/0x9c20d489d68a43f01c4d5e220f2f4ceae7e6ac4e/) | ⚠️ Unaudited |
| GrainGenesisPool | unknown | bsc | n/a | [`0x439827...31ef68`](./contracts/bsc-56/0x43982772830efdede1b909d70fb9df2d8831ef68/) | ⚠️ Unaudited |
| HedgetToken | unknown | bsc | n/a | [`0xc7d8d3...071731`](./contracts/bsc-56/0xc7d8d35eba58a0935ff2d5a33df105dd9f071731/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| Helmet | unknown | bsc | n/a | [`0x6a2908...871811`](./contracts/bsc-56/0x6a2908c9aadf4062b4fe431ce8599245c0871811/) | ⚠️ Unaudited |
| HelmetTimelock | unknown | bsc | n/a | [`0x55db15...c1c3d3`](./contracts/bsc-56/0x55db15e515d902d04acb20049730b849cfc1c3d3/) | ⚠️ Unaudited |
| HERON | unknown | bsc | n/a | [`0x904512...78954a`](./contracts/bsc-56/0x90451265fd0598e088e42c1768d6211f0978954a/) | ⚠️ Unaudited |
| IbTokenOracle | unknown | bsc | n/a | [`0x958a90...d9a8be`](./contracts/bsc-56/0x958a906585a6d2cf5367f38f1ea306bbadd9a8be/) | ⚠️ Unaudited |
| IFO | unknown | bsc | n/a | [`0x4eff3a...21d820`](./contracts/bsc-56/0x4eff3a0a82f624b617aab7af92777deec521d820/) | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | [`0x0366f1...1d5700`](./contracts/bsc-56/0x0366f1a242c37ca73c73834b7fcd4a66af1d5700/) | ⚠️ Unaudited |
| IFOFactory | unknown | bsc | n/a | [`0x6d3507...ead0d2`](./contracts/bsc-56/0x6d3507bd96227b95135c936b3427f54a02ead0d2/) | ⚠️ Unaudited |
| IFOQuery | unknown | bsc | n/a | [`0x136efc...ffbae4`](./contracts/bsc-56/0x136efc39b6ba21143e408fe318efe0f872ffbae4/) | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | bsc | n/a | [`0xf0ae9b...2624b0`](./contracts/bsc-56/0xf0ae9b39ef4a2680d67c9fb252816725f22624b0/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x021297...b63b88`](./contracts/bsc-56/0x021297e233550edba8e6487eb7c6696cfbb63b88/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x4c899b...b8d70d`](./contracts/bsc-56/0x4c899b7c39ded9a06a5db387f0b0722a18b8d70d/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | polygon | n/a | [`0x1a13f4...998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | ⚠️ Unaudited |
| Insurer | unknown | bsc | n/a | [`0x1dc473...7b24dc`](./contracts/bsc-56/0x1dc4739df9a5c9feeff4553528a9597fbc7b24dc/) | ⚠️ Unaudited |
| JulProtocolV3_BSC | unknown | bsc | n/a | [`0x4edfbd...a08037`](./contracts/bsc-56/0x4edfbdcc6b7bc3596f625137be4f211ea5a08037/) | ⚠️ Unaudited |
| JulSwap | unknown | bsc | n/a | [`0x5a41f6...6577ea`](./contracts/bsc-56/0x5a41f637c3f7553dba6ddc2d3ca92641096577ea/) | ⚠️ Unaudited |
| JumpRateModel | unknown | bsc | n/a | [`0x15be67...3e1abd`](./contracts/bsc-56/0x15be67449b0911a31ee38a931a45370c593e1abd/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | bsc | n/a | [`0x4e4c96...63e7db`](./contracts/bsc-56/0x4e4c96b038899e2f2597ef693b8278cfeb63e7db/) | ⚠️ Unaudited |
| KashiLendingEncoder | unknown | polygon | n/a | [`0xa59ada...2fa79e`](./contracts/polygon-137/0xa59adaa7b04324e43e768e8e2c1aceab592fa79e/) | ⚠️ Unaudited |
| KUN | unknown | bsc | n/a | [`0xc40c96...3e6cdb`](./contracts/bsc-56/0xc40c96aa6ac78cbc3c58c500287c86f3a83e6cdb/) | ⚠️ Unaudited |
| LendingLogicAaveV2 | unknown | polygon | n/a | [`0x9eda65...2dcb98`](./contracts/polygon-137/0x9eda65278543e2497701fd5964d86b880d2dcb98/) | ⚠️ Unaudited |
| LendingLogicCream | unknown | polygon | n/a | [`0x58affd...dfcb28`](./contracts/polygon-137/0x58affd9251e7147d46eb8614893da2b37adfcb28/) | ⚠️ Unaudited |
| LendingLogicKashi | unknown | polygon | n/a | [`0x21942d...b014f9`](./contracts/polygon-137/0x21942d9e897cd14bf9e56b89bdc190c0ddb014f9/) | ⚠️ Unaudited |
| LendingLogicKLIMA | unknown | polygon | n/a | [`0x2b374d...0eb520`](./contracts/polygon-137/0x2b374dce80764e8489e68117b8121f58460eb520/) | ⚠️ Unaudited |
| LendingManager | unknown | polygon | n/a | [`0x3f323a...5a0242`](./contracts/polygon-137/0x3f323a6e3bddff52529fa9ac94cfcc6e755a0242/) | ⚠️ Unaudited |
| LendingPool | unknown | polygon | n/a | [`0x8dff5e...a30fcf`](./contracts/polygon-137/0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf/) | ⚠️ Unaudited |
| LendingRegistry | unknown | polygon | n/a | [`0xc94bc5...9656ca`](./contracts/polygon-137/0xc94bc5c62c53e88d67c3874f5e8f91c6a99656ca/) | ⚠️ Unaudited |
| LinearFinance | unknown | bsc | n/a | [`0x2ae995...bc03b3`](./contracts/bsc-56/0x2ae9952c1038da3dafeba026b96053f24cbc03b3/) | ⚠️ Unaudited |
| LnCollateralSystem | unknown | bsc | n/a | [`0x3b88ed...726ec7`](./contracts/bsc-56/0x3b88edd88671a56662a49c315ca663cb7d726ec7/) | ⚠️ Unaudited |
| LnDebtSystem | unknown | bsc | n/a | [`0x0d41af...665aea`](./contracts/bsc-56/0x0d41af2d0dcbcdd9bc84cd03c70f2e16e0665aea/) | ⚠️ Unaudited |
| LnErc20Bridge | unknown | bsc | n/a | [`0x08ce74...97adeb`](./contracts/bsc-56/0x08ce745eb362730bf69b8e9959089224f797adeb/) | ⚠️ Unaudited |
| LnLiquidation | unknown | bsc | n/a | [`0x0c7bf9...3a6f37`](./contracts/bsc-56/0x0c7bf946e1b81fc1170942ac96bc927f323a6f37/) | ⚠️ Unaudited |
| LnOracleRouter | unknown | bsc | n/a | [`0x021ee0...9dd98b`](./contracts/bsc-56/0x021ee02c811b0e5bc9043b695192cb30f89dd98b/) | ⚠️ Unaudited |
| LnPerpetual | unknown | bsc | n/a | [`0x2a7fd6...e57eea`](./contracts/bsc-56/0x2a7fd66ce8da230a0e9a048d5f47f75c8fe57eea/) | ⚠️ Unaudited |
| LnPerpPositionToken | unknown | bsc | n/a | [`0x2f9892...cb4aef`](./contracts/bsc-56/0x2f9892e6655518d30541311a81a0510db6cb4aef/) | ⚠️ Unaudited |
| LnRewardLocker | unknown | bsc | n/a | [`0x09d675...f73947`](./contracts/bsc-56/0x09d675f36c588700878e6fa2f923569a1bf73947/) | ⚠️ Unaudited |
| LongOption | unknown | bsc | n/a | [`0x0098f1...0234d2`](./contracts/bsc-56/0x0098f14dea97f399f9dfeb125991c6b6280234d2/) | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | [`0x127551...d13280`](./contracts/bsc-56/0x127551b5cd5d21bd736483cb829b580a4cd13280/) | ⚠️ Unaudited |
| LotteryNFT | unknown | bsc | n/a | [`0x1900e0...e4992e`](./contracts/bsc-56/0x1900e0d289ebc5b7b75aff8232464b9f99e4992e/) | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | bsc | n/a | [`0x6b4dc7...bfc3ba`](./contracts/bsc-56/0x6b4dc78b8303d65476e2fcdde5be262e8abfc3ba/) | ⚠️ Unaudited |
| LPStaker | unknown | bsc | n/a | [`0xff3dfe...a87286`](./contracts/bsc-56/0xff3dfebdc111178297289003aabe7cee36a87286/) | ⚠️ Unaudited |
| LZPToken | unknown | bsc | n/a | [`0x421195...d4c1de`](./contracts/bsc-56/0x4211959585c8f18b06dab8b5bb0bc825cad4c1de/) | ⚠️ Unaudited |
| LZToken | unknown | bsc | n/a | [`0x182284...f66a96`](./contracts/bsc-56/0x182284410a9f6f454b20708343abe9e917f66a96/) | ⚠️ Unaudited |
| MappingMATTER | unknown | bsc | n/a | [`0x584551...d9f1c4`](./contracts/bsc-56/0x5845511069ef62492317e7112e370f87c0d9f1c4/) | ⚠️ Unaudited |
| MappingToken | unknown | bsc | n/a | [`0xb89a9c...628dd4`](./contracts/bsc-56/0xb89a9ca158c6605e9911546e9d23a2508a628dd4/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/) | ⚠️ Unaudited |
| MATHToken | unknown | bsc | n/a | [`0xf21818...a36983`](./contracts/bsc-56/0xf218184af829cf2b0019f8e6f0b2423498a36983/) | ⚠️ Unaudited |
| MaticWETH | unknown | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| MATTER | unknown | ethereum | n/a | [`0x007d7f...f7500e`](./contracts/ethereum-1/0x007d7f360ae0ec72115d3149852e25aea7f7500e/) | ⚠️ Unaudited |
| MATTER2 | unknown | ethereum | n/a | [`0x08d594...4cfbfd`](./contracts/ethereum-1/0x08d59467e8fbee7575ed0905bba03903654cfbfd/) | ⚠️ Unaudited |
| MdgRewardPool | unknown | bsc | n/a | [`0xa81470...26eb54`](./contracts/bsc-56/0xa814706d02d8014f2b6e2b9aba63660e6c26eb54/) | ⚠️ Unaudited |
| MdoRewardPool | unknown | bsc | n/a | [`0x3c4583...017ef7`](./contracts/bsc-56/0x3c4583375870573897154d8faf71663e1e017ef7/) | ⚠️ Unaudited |
| MdoTradingRouter | unknown | bsc | n/a | [`0x66cc77...42a143`](./contracts/bsc-56/0x66cc7769ba2ab9f74b02db05998685a22642a143/) | ⚠️ Unaudited |
| MDOv2 | unknown | bsc | n/a | [`0x113d0d...8100cb`](./contracts/bsc-56/0x113d0d0f8f31050d382eb0b9f5f0bedddf8100cb/) | ⚠️ Unaudited |
| MDOv2Oracle | unknown | bsc | n/a | [`0x05ca12...1dbf14`](./contracts/bsc-56/0x05ca12524a37ae8cf7706bbc67f6e836d61dbf14/) | ⚠️ Unaudited |
| MidasDollarShareOwnToken | unknown | bsc | n/a | [`0x2f9905...6dd944`](./contracts/bsc-56/0x2f99059d539c0cc9aa4ac55748d59e89f66dd944/) | ⚠️ Unaudited |
| MidasZapperRouter | unknown | bsc | n/a | [`0x0bc208...2df369`](./contracts/bsc-56/0x0bc208799bc86954f09b04617215ae3e712df369/) | ⚠️ Unaudited |
| MigrationProxy | unknown | bsc | n/a | [`0x16ebca...4fb8b7`](./contracts/bsc-56/0x16ebcac4e6243d8d94f391baf7873933dc4fb8b7/) | ⚠️ Unaudited |
| MigrationRewards | unknown | bsc | n/a | [`0x033361...306c83`](./contracts/bsc-56/0x033361ddf05d969ba77bccfc51f49c9ce3306c83/) | ⚠️ Unaudited |
| Migrations | unknown | bsc | n/a | [`0x3257e7...d19a79`](./contracts/bsc-56/0x3257e7dd35a7c117edccd45084ee8dd9a8d19a79/) | ⚠️ Unaudited |
| Migrator | unknown | bsc | n/a | [`0x06cf7a...0adcce`](./contracts/bsc-56/0x06cf7a5f0df909db2a3d19b2cfc9600c8e0adcce/) | ⚠️ Unaudited |
| MigratorV2 | unknown | bsc | n/a | [`0x610105...2135fc`](./contracts/bsc-56/0x61010546e65c8fab0202bc13bb51491ad62135fc/) | ⚠️ Unaudited |
| Mine | unknown | ethereum | n/a | [`0x04eeaf...2fc5c1`](./contracts/ethereum-1/0x04eeaf041beb5f977811d6caef2d82f1a82fc5c1/) | ⚠️ Unaudited |
| Misc | unknown | bsc | n/a | [`0x39717a...81ce62`](./contracts/bsc-56/0x39717aa3dd535257d16fae760bd96cfeac81ce62/) | ⚠️ Unaudited |
| MockPriceFeed | unknown | polygon | n/a | [`0x2d49e8...0ce0d2`](./contracts/polygon-137/0x2d49e81c9e15d725abcd445378f75ccb650ce0d2/) | ⚠️ Unaudited |
| MooVault | unknown | bsc | n/a | [`0x0020eb...eb4ef3`](./contracts/bsc-56/0x0020eb7eb99575e6e951a151ea9e07afd9eb4ef3/) | ⚠️ Unaudited |
| MoundOfferingBSC | unknown | bsc | n/a | [`0x36a2a6...76b1ec`](./contracts/bsc-56/0x36a2a60c6f16556f441783465f05146eda76b1ec/) | ⚠️ Unaudited |
| Multicall | unknown | bsc | n/a | [`0x292a63...14601e`](./contracts/bsc-56/0x292a6375d6587883bbcabd96860b1834ba14601e/) | ⚠️ Unaudited |
| MultiSend | unknown | bsc | n/a | [`0x3ace30...ed6368`](./contracts/bsc-56/0x3ace30394aec6a47120626893878b11010ed6368/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | bsc | n/a | [`0x671ee7...60abe3`](./contracts/bsc-56/0x671ee75ecb3ce312f67282e4bf00ad606e60abe3/) | ⚠️ Unaudited |
| NestMasterChef | unknown | bsc | n/a | [`0x279a07...52b52c`](./contracts/bsc-56/0x279a073c491c873df040b05cc846a3c47252b52c/) | ⚠️ Unaudited |
| NestMasterChefIio | unknown | bsc | n/a | [`0x467dc2...c66328`](./contracts/bsc-56/0x467dc288e2f4787a3b5fe8e14652815a93c66328/) | ⚠️ Unaudited |
| NestMasterChefIioV2 | unknown | bsc | n/a | [`0x506733...954926`](./contracts/bsc-56/0x50673345dfb911ad7e1bb762114b01941f954926/) | ⚠️ Unaudited |
| NestRedeem | unknown | polygon | n/a | [`0x1dd716...6d2870`](./contracts/polygon-137/0x1dd716588d7d00b4b03a50d305bbd19d166d2870/) | ⚠️ Unaudited |
| nSTABLEConservativePriceFeed | unknown | polygon | n/a | [`0x0c51d4...2c24ac`](./contracts/polygon-137/0x0c51d43360f6a68afbb4d5aadbabd225292c24ac/) | ⚠️ Unaudited |
| Offering | unknown | ethereum | n/a | [`0x6c9d4b...f5d1af`](./contracts/ethereum-1/0x6c9d4b938a119f91e7eeacd97cb4bed2b8f5d1af/) | ⚠️ Unaudited |
| OptionFactory | unknown | bsc | n/a | [`0x21f62c...b64237`](./contracts/bsc-56/0x21f62c31fe7354604190ea3914d0aaf409b64237/) | ⚠️ Unaudited |
| Oracle | unknown | polygon | n/a | [`0x02e84f...e23aa4`](./contracts/polygon-137/0x02e84f2aa4f150a20d83bea4db80b657dae23aa4/) | ⚠️ Unaudited |
| OracleProxy | unknown | bsc | n/a | [`0x4b1b0c...934cef`](./contracts/bsc-56/0x4b1b0c225944808b9017f16e9b10305faa934cef/) | ⚠️ Unaudited |
| OrangesToken | unknown | bsc | n/a | [`0x314062...b7c2ba`](./contracts/bsc-56/0x314062be53367be0cc2a4a3141f4021618b7c2ba/) | ⚠️ Unaudited |
| OwnershipFacet | unknown | polygon | n/a | [`0xe3faa5...32c2e0`](./contracts/polygon-137/0xe3faa5d1fecbc4402ff4a08684e3bcf70732c2e0/) | ⚠️ Unaudited |
| PancakeFactory | unknown | bsc | n/a | [`0xacfc87...a88258`](./contracts/bsc-56/0xacfc87ffe18eb69e7d3505ee1684946744a88258/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x014608...51d9a3`](./contracts/bsc-56/0x014608e87af97a054c9a49f81e1473076d51d9a3/) | ⚠️ Unaudited |
| PancakeRouter | unknown | bsc | n/a | [`0x05ff2b...608c7f`](./contracts/bsc-56/0x05ff2b0db69458a0750badebc4f9e13add608c7f/) | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | bsc | n/a | [`0x4086d4...00da07`](./contracts/bsc-56/0x4086d46a650517fa756f620507db704d3900da07/) | ⚠️ Unaudited |
| PassiveRebalanceVault | unknown | ethereum | n/a | [`0x38652e...ca80af`](./contracts/ethereum-1/0x38652eeab13efebab38f19b5d5d50ee8a8ca80af/) | ⚠️ Unaudited |
| PieFactoryContract | unknown | polygon | n/a | [`0x6a10bb...7912e2`](./contracts/polygon-137/0x6a10bb7ac83fdd9cecdb13a8cfc3fc0a017912e2/) | ⚠️ Unaudited |
| PlaceHolder | unknown | ethereum | n/a | [`0x04aa9e...e0527a`](./contracts/ethereum-1/0x04aa9e9cbf5fe828d775ef405fd1d8d5c9e0527a/) | ⚠️ Unaudited |
| PndaToken | unknown | bsc | n/a | [`0x47dcc8...7557c0`](./contracts/bsc-56/0x47dcc83a14ad53ed1f13d3cae8aa4115f07557c0/) | ⚠️ Unaudited |
| PollyMasterFarmer | unknown | polygon | n/a | [`0x850161...30d398`](./contracts/polygon-137/0x850161bf73944a8359bd995976a34bb9fe30d398/) | ⚠️ Unaudited |
| PollyToken | unknown | polygon | n/a | [`0x065f4e...1945d9`](./contracts/polygon-137/0x065f4e71a09d060f349c2840a792189b431945d9/) | ⚠️ Unaudited |
| PollyVotes | unknown | polygon | n/a | [`0x067359...21035e`](./contracts/polygon-137/0x0673592bc04f05757ae5c22e3d0d2857a821035e/) | ⚠️ Unaudited |
| PoolFactory | unknown | bsc | n/a | [`0x2c5777...07c3ad`](./contracts/bsc-56/0x2c577706579e08a88bd30df0fd7a5778a707c3ad/) | ⚠️ Unaudited |
| PotBunnyLover | unknown | bsc | n/a | [`0x0e699c...b8da17`](./contracts/bsc-56/0x0e699cd2975103c32427fed6817e5b4f2bb8da17/) | ⚠️ Unaudited |
| PProxy | unknown | polygon | n/a | [`0x9bf320...b74ed3`](./contracts/polygon-137/0x9bf320bd1796a7495bb6187f9eb4db2679b74ed3/) | ⚠️ Unaudited |
| PresalePancakeBunny | unknown | bsc | n/a | [`0x641414...42bf07`](./contracts/bsc-56/0x641414e2a04c8f8ebbf49ed47cc87dccba42bf07/) | ⚠️ Unaudited |
| PriceCalculatorBSC | unknown | bsc | n/a | [`0x16d973...1472cc`](./contracts/bsc-56/0x16d973c8c838e772a3f4fbdeb356a24e3f1472cc/) | ⚠️ Unaudited |
| PriceCalculatorETH | unknown | ethereum | n/a | [`0x86691b...2e85e2`](./contracts/ethereum-1/0x86691b1a527af2d31b122db737b24fa7b62e85e2/) | ⚠️ Unaudited |
| PriceChecker | unknown | bsc | n/a | [`0x040a02...1b37bc`](./contracts/bsc-56/0x040a02f439cce3368ef4a8cd53bed811061b37bc/) | ⚠️ Unaudited |
| PriceOracle | unknown | bsc | n/a | [`0x541876...d14847`](./contracts/bsc-56/0x541876d6e61a200efd99711c5fda1f7a50d14847/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | bsc | n/a | [`0xa82958...819477`](./contracts/bsc-56/0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477/) | ⚠️ Unaudited |
| PriceOracleProxyBSC | unknown | bsc | n/a | [`0xa7ae01...8a1c7d`](./contracts/bsc-56/0xa7ae01e2d0e391ef1e800dd4e0712d36228a1c7d/) | ⚠️ Unaudited |
| PROMToken | unknown | bsc | n/a | [`0xaf53d5...7dafd5`](./contracts/bsc-56/0xaf53d56ff99f1322515e54fdde93ff8b3b7dafd5/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x1b4fb0...95b2d7`](./contracts/ethereum-1/0x1b4fb0df5e64524e51910b3e56a99d4b3895b2d7/) | ⚠️ Unaudited |
| Put | unknown | ethereum | n/a | [`0x132095...eba073`](./contracts/ethereum-1/0x132095729ce5c27d4b8bc9a2a53ecadfabeba073/) | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| QuickConverter | unknown | polygon | n/a | [`0x38e8d7...5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | bsc | n/a | [`0x2eb45a...71ecad`](./contracts/bsc-56/0x2eb45a1017e9e0793e05aaf0796298d9b871ecad/) | ⚠️ Unaudited |
| rebalancer | unknown | polygon | n/a | [`0xc47d9a...d649c4`](./contracts/polygon-137/0xc47d9a6725ffee67727d3ae8ffa2630a47d649c4/) | ⚠️ Unaudited |
| RecipeV3 | unknown | polygon | n/a | [`0x20c6aa...799f7f`](./contracts/polygon-137/0x20c6aa90d32f2f41c500d9034427e4fdec799f7f/) | ⚠️ Unaudited |
| RecruitLP | unknown | bsc | n/a | [`0xff7371...305b56`](./contracts/bsc-56/0xff73713325b78611f5f7c13e44e7c261bc305b56/) | ⚠️ Unaudited |
| ReefLiquidityBond | unknown | bsc | n/a | [`0x0cb5d3...04c561`](./contracts/bsc-56/0x0cb5d31171de0cabe3ef664c710a1ba45404c561/) | ⚠️ Unaudited |
| ReefToken | unknown | bsc | n/a | [`0xf21768...2d966e`](./contracts/bsc-56/0xf21768ccbc73ea5b6fd3c687208a7c2def2d966e/) | ⚠️ Unaudited |
| Reserve | unknown | bsc | n/a | [`0x3e22a5...d83c0f`](./contracts/bsc-56/0x3e22a572430c10abb6d0508fd567dcf62fd83c0f/) | ⚠️ Unaudited |
| ReserveFund | unknown | bsc | n/a | [`0x229f51...82fdd0`](./contracts/bsc-56/0x229f51c26169b2674616da7cf9e7c1ddd382fdd0/) | ⚠️ Unaudited |
| RewardPool | unknown | bsc | n/a | [`0x1263f0...6958eb`](./contracts/bsc-56/0x1263f0bffe2d740ea3279416d0e84943b66958eb/) | ⚠️ Unaudited |
| Rewards | unknown | bsc | n/a | [`0x88f042...085110`](./contracts/bsc-56/0x88f042fdea1d94ccd7b848686f9f529552085110/) | ⚠️ Unaudited |
| Rhino | unknown | bsc | n/a | [`0x6993a6...f41e53`](./contracts/bsc-56/0x6993a61455ab580723ef3da9ad8f27ec45f41e53/) | ⚠️ Unaudited |
| Router | unknown | bsc | n/a | [`0x03662d...f954a3`](./contracts/bsc-56/0x03662d8347ac1487e01fce1ca679e8484ef954a3/) | ⚠️ Unaudited |
| SafeDecimalMath | unknown | bsc | n/a | [`0xc065a0...4d928c`](./contracts/bsc-56/0xc065a00fbf75366d8d228f856d470c3a7c4d928c/) | ⚠️ Unaudited |
| SafePalToken | unknown | ethereum | n/a | [`0x12e2b8...2ca134`](./contracts/ethereum-1/0x12e2b8033420270db2f3b328e32370cb5b2ca134/) | ⚠️ Unaudited |
| safeSwapBNB | unknown | bsc | n/a | [`0x8d36cb...9176b0`](./contracts/bsc-56/0x8d36cb4c0aea63ca095d9e26aefb360d279176b0/) | ⚠️ Unaudited |
| SafeVenus | unknown | bsc | n/a | [`0x0a9cda...7784d2`](./contracts/bsc-56/0x0a9cda0c4114bd3cc6bb116b013e7778a77784d2/) | ⚠️ Unaudited |
| Share | unknown | bsc | n/a | [`0x242e46...0237fa`](./contracts/bsc-56/0x242e46490397acca94ed930f2c4edf16250237fa/) | ⚠️ Unaudited |
| ShareRewardPool | unknown | bsc | n/a | [`0xecc17b...8bd08a`](./contracts/bsc-56/0xecc17b190581c60811862e5df8c9183da98bd08a/) | ⚠️ Unaudited |
| ShortOption | unknown | bsc | n/a | [`0xac81f2...83dc44`](./contracts/bsc-56/0xac81f2efce81baf2d412a93acf0256099c83dc44/) | ⚠️ Unaudited |
| SignatureUtils | unknown | bsc | n/a | [`0xb86e86...b2d779`](./contracts/bsc-56/0xb86e8621aa93dbcdccb5332f99a72c4a83b2d779/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | [`0x0124ed...d6dd16`](./contracts/bsc-56/0x0124ed38db9c3a04a4a217172288454cd1d6dd16/) | ⚠️ Unaudited |
| SmartPoolRegistry | unknown | polygon | n/a | [`0x0110d6...09f914`](./contracts/polygon-137/0x0110d6b67a6cce3b030838bc266117e0cd09f914/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0x1390c3...10d753`](./contracts/ethereum-1/0x1390c3ffb3f45864641f08bcc66211935b10d753/) | ⚠️ Unaudited |
| SortitionSumTreeFactory | unknown | bsc | n/a | [`0x0b3824...d77908`](./contracts/bsc-56/0x0b3824706128eb96ed4d50ab3860c77488d77908/) | ⚠️ Unaudited |
| SousChef | unknown | bsc | n/a | [`0xfaa221...71b4d3`](./contracts/bsc-56/0xfaa221f0a3c36a17dacbecc1f19df4094871b4d3/) | ⚠️ Unaudited |
| Sparta | unknown | bsc | n/a | [`0x3910db...6eb102`](./contracts/bsc-56/0x3910db0600ea925f63c36ddb1351ab6e2c6eb102/) | ⚠️ Unaudited |
| Stabilizer | unknown | polygon | n/a | [`0x173807...9c6bf5`](./contracts/polygon-137/0x1738075663041ca96911cd9c3058ae287e9c6bf5/) | ⚠️ Unaudited |
| StableXMigrator | unknown | bsc | n/a | [`0x956dec...3acbe0`](./contracts/bsc-56/0x956dec81b7d73b4a00c7525858ae3827f03acbe0/) | ⚠️ Unaudited |
| StakePool | unknown | bsc | n/a | [`0x236a98...44c3d8`](./contracts/bsc-56/0x236a983981635379f0f9ed608191df4fa244c3d8/) | ⚠️ Unaudited |
| StakingChef | unknown | bsc | n/a | [`0x0c0c47...07369e`](./contracts/bsc-56/0x0c0c475e32212b748c328e451ab3862ffe07369e/) | ⚠️ Unaudited |
| StakingPool | unknown | bsc | n/a | [`0x10ebd3...d4c2f9`](./contracts/bsc-56/0x10ebd347a44a40bee9bdfb0e4c809f82f3d4c2f9/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | polygon | n/a | [`0x02a2d8...537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | ⚠️ Unaudited |
| StakingToken | unknown | bsc | n/a | [`0x349693...0b1144`](./contracts/bsc-56/0x349693ca57cffc6f5fd47eaf879812ad200b1144/) | ⚠️ Unaudited |
| StakingV3 | unknown | bsc | n/a | [`0x93988a...d7de4c`](./contracts/bsc-56/0x93988a00177fd0ffcc8122306daf736753d7de4c/) | ⚠️ Unaudited |
| StaxToken | unknown | bsc | n/a | [`0x0da6ed...88f6c4`](./contracts/bsc-56/0x0da6ed8b13214ff28e9ca979dd37439e8a88f6c4/) | ⚠️ Unaudited |
| Strat1 | unknown | bsc | n/a | [`0x1a40a8...ff0d48`](./contracts/bsc-56/0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48/) | ⚠️ Unaudited |
| Strategy | unknown | bsc | n/a | [`0x00ae32...6aa4dd`](./contracts/bsc-56/0x00ae32d9b7da504b9e9c3f8df74515dc4b6aa4dd/) | ⚠️ Unaudited |
| StrategyApe | unknown | bsc | n/a | [`0x1386ac...48aaab`](./contracts/bsc-56/0x1386ac5f7f6a866fdf2a38d2d56ebd315e48aaab/) | ⚠️ Unaudited |
| StrategyBiswap | unknown | bsc | n/a | [`0x36bcbe...7bd54a`](./contracts/bsc-56/0x36bcbe533cb4f07771ea3f37161c77e0d87bd54a/) | ⚠️ Unaudited |
| StrategyFortube | unknown | bsc | n/a | [`0x064e4c...77123c`](./contracts/bsc-56/0x064e4c0e2c0ccab4ee9f92ca5f335ba7c777123c/) | ⚠️ Unaudited |
| StrategyFry | unknown | bsc | n/a | [`0x32e6f0...3cbc75`](./contracts/bsc-56/0x32e6f091ceb27362094eb2dc455afe30aa3cbc75/) | ⚠️ Unaudited |
| StrategyHelperV1 | unknown | bsc | n/a | [`0x154d80...520ece`](./contracts/bsc-56/0x154d803c328ffd70ef5df52cb027d82821520ece/) | ⚠️ Unaudited |
| StrategyVBNB | unknown | bsc | n/a | [`0x124080...073d25`](./contracts/bsc-56/0x124080b98e6433a45477bb4620da4433df073d25/) | ⚠️ Unaudited |
| StratSwipe | unknown | bsc | n/a | [`0x1f042f...1e66ce`](./contracts/bsc-56/0x1f042f2fd6878edcd75f1f1400bc1d53671e66ce/) | ⚠️ Unaudited |
| StratVLEV | unknown | bsc | n/a | [`0x13057e...624910`](./contracts/bsc-56/0x13057e42bbf1b5d980ea79df5549be49ee624910/) | ⚠️ Unaudited |
| StratX | unknown | bsc | n/a | [`0x034580...2e126a`](./contracts/bsc-56/0x03458082f0da0f88032d462d92386f8d412e126a/) | ⚠️ Unaudited |
| StratX_AUTO | unknown | bsc | n/a | [`0xc5eb5a...f9eb40`](./contracts/bsc-56/0xc5eb5a3490d2a2e4a1e1c9a1b965b4eef4f9eb40/) | ⚠️ Unaudited |
| StratX_Pathed | unknown | bsc | n/a | [`0x3aa4f1...11e024`](./contracts/bsc-56/0x3aa4f1ad7094d263dad4ead5b8bc09ddc211e024/) | ⚠️ Unaudited |
| SubsidyHarvester | unknown | bsc | n/a | [`0x7e3442...98b873`](./contracts/bsc-56/0x7e344274b7b1466509a8d4e1814cdf621998b873/) | ⚠️ Unaudited |
| SuperChef | unknown | bsc | n/a | [`0x1051b6...033cb4`](./contracts/bsc-56/0x1051b6886d699d2d9ee480451efe226f3a033cb4/) | ⚠️ Unaudited |
| Swapper | unknown | ethereum | n/a | [`0x235b30...1e0248`](./contracts/ethereum-1/0x235b30088e66d2d28f137b422b9349fba51e0248/) | ⚠️ Unaudited |
| SXP | unknown | bsc | n/a | [`0x47bead...ba485a`](./contracts/bsc-56/0x47bead2563dcbf3bf2c9407fea4dc236faba485a/) | ⚠️ Unaudited |
| SynthFactory | unknown | bsc | n/a | [`0x6514c0...df9f38`](./contracts/bsc-56/0x6514c010b8096bc565766949a93f1c370cdf9f38/) | ⚠️ Unaudited |
| SynthVault | unknown | bsc | n/a | [`0xa6c328...02f1e0`](./contracts/bsc-56/0xa6c3288c18505d134445cb4fe8499da22002f1e0/) | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | ⚠️ Unaudited |
| tBaoBar | unknown | gnosis | n/a | [`0xd83e87...79b8d6`](./contracts/gnosis-100/0xd83e87b585656573e6bc7a9a93776c76e479b8d6/) | ⚠️ Unaudited |
| tBTC | unknown | bsc | n/a | [`0x0a583d...c41287`](./contracts/bsc-56/0x0a583dde9cfc461487f6f7794d8ae950a7c41287/) | ⚠️ Unaudited |
| tBTCESTPolicy | unknown | bsc | n/a | [`0xa9e668...05a179`](./contracts/bsc-56/0xa9e668f43be8572d4207e8548c05f8b0e505a179/) | ⚠️ Unaudited |
| tDOGE | unknown | bsc | n/a | [`0x58c13a...ffb693`](./contracts/bsc-56/0x58c13a9091f7a533b24de7e8827a2cbebdffb693/) | ⚠️ Unaudited |
| TeaMaker | unknown | gnosis | n/a | [`0x7b993e...70b102`](./contracts/gnosis-100/0x7b993e0e3d4d02afbe42c65d3133ca8e9a70b102/) | ⚠️ Unaudited |
| TeleportToken | unknown | bsc | n/a | [`0x222222...d57c95`](./contracts/bsc-56/0x2222227e22102fe3322098e4cbfe18cfebd57c95/) | ⚠️ Unaudited |
| TERToken | unknown | bsc | n/a | [`0x700842...4837d1`](./contracts/bsc-56/0x70084234e6228a5dbce0331423208babf14837d1/) | ⚠️ Unaudited |
| test | unknown | polygon | n/a | [`0x2290a1...04a803`](./contracts/polygon-137/0x2290a1ce3be9fd78a5b55d6a4c2a8e33e204a803/) | ⚠️ Unaudited |
| TestFlipVaultV3 | unknown | bsc | n/a | [`0x741e8a...f1e764`](./contracts/bsc-56/0x741e8aa7266cd9df348f6a37466cf7c4e8f1e764/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x17a1d9...46a950`](./contracts/ethereum-1/0x17a1d9f441a6e6c4ff901de8e5864f8a5746a950/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | [`0x28579e...876a04`](./contracts/bsc-56/0x28579eca0a326e53340edd93e18698d379876a04/) | ⚠️ Unaudited |
| TokenMigration | unknown | bsc | n/a | [`0x9673f8...8f6fe6`](./contracts/bsc-56/0x9673f81768bcb13cefe2951652aac992768f6fe6/) | ⚠️ Unaudited |
| TokenQuery | unknown | bsc | n/a | [`0xe85ed3...1364e0`](./contracts/bsc-56/0xe85ed3322373f1dc720b7dccdbecfceb871364e0/) | ⚠️ Unaudited |
| TokenTimelock | unknown | bsc | n/a | [`0x0dc067...31d09a`](./contracts/bsc-56/0x0dc06716bc1efdb5affd1308302fd45dbc31d09a/) | ⚠️ Unaudited |
| TokenTimelockUpgradeSafe | unknown | bsc | n/a | [`0x73f6c2...59974f`](./contracts/bsc-56/0x73f6c210fdf01734fd359a51ed55881dd159974f/) | ⚠️ Unaudited |
| TokenVesting | unknown | bsc | n/a | [`0x3cb2f8...781a3f`](./contracts/bsc-56/0x3cb2f8f2312ab981c4da6f98735a2af79e781a3f/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x072f11...818ee8`](./contracts/bsc-56/0x072f11c46146ce636691d387bfbf8fd28e818ee8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x12efdf...b0b8b1`](./contracts/bsc-56/0x12efdff85f717ac1738cf50be5f4cdc916b0b8b1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x22b822...c3f0ff`](./contracts/bsc-56/0x22b822b0d0f1f282d28018ac3e319e3cb0c3f0ff/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x4c97c9...f244fe`](./contracts/bsc-56/0x4c97c901b5147f8c1c7ce3c5cf3eb83b44f244fe/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x79f7f1...6f632c`](./contracts/bsc-56/0x79f7f107253b733242050d0195e99d0f0e6f632c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x7d3168...6644e9`](./contracts/bsc-56/0x7d31688dc47322a684babf3fda9fba7c3b6644e9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xb0e53d...254171`](./contracts/bsc-56/0xb0e53def61ad145bc8615c592bef212c46254171/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xc3ff4a...a3c6b8`](./contracts/bsc-56/0xc3ff4aa9441dcd838b8e4652bb84148216a3c6b8/) | ⚠️ Unaudited |
| Treasury | unknown | bsc | n/a | [`0x0b92d1...fe7011`](./contracts/bsc-56/0x0b92d197acb525650bc1030840732a96fafe7011/) | ⚠️ Unaudited |
| TreasuryPool | unknown | bsc | n/a | [`0x2b2734...ac5c7e`](./contracts/bsc-56/0x2b27348bf560150ea1988ed2f93c820299ac5c7e/) | ⚠️ Unaudited |
| TripleSlopeModel | unknown | bsc | n/a | [`0xb824c6...6c24c9`](./contracts/bsc-56/0xb824c640dd8aade41b137841575fdf3c496c24c9/) | ⚠️ Unaudited |
| TrustWalletToken | unknown | bsc | n/a | [`0x4b0f18...508003`](./contracts/bsc-56/0x4b0f1812e5df2a09796481ff14017e6005508003/) | ⚠️ Unaudited |
| TwoWeeksNotice | unknown | bsc | n/a | [`0xee170d...8626f6`](./contracts/bsc-56/0xee170d3dc00f792e5116b42fe36628f4f28626f6/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UNFI | unknown | bsc | n/a | [`0x728c5b...814d8b`](./contracts/bsc-56/0x728c5bac3c3e370e372fc4671f9ef6916b814d8b/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | bsc | n/a | [`0x374cb8...de61c1`](./contracts/bsc-56/0x374cb8c27130e2c9e04f44303f3c8351b9de61c1/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0x095fc7...af21d9`](./contracts/polygon-137/0x095fc71521668d5bcc0fc3e3a9848e8911af21d9/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0x14e5f1...653282`](./contracts/bsc-56/0x14e5f1a42b5d416dbb261c6336f7503762653282/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0x1dcfb6...8e02c0`](./contracts/bsc-56/0x1dcfb68e77a1b29bd1367968dbfdb72ae58e02c0/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0x4398b4...fb6c80`](./contracts/bsc-56/0x4398b453efce4bd4f0d97cc1a7f3cd7f51fb6c80/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0x456c70...fec900`](./contracts/bsc-56/0x456c70292e8e15c5ee3366d0dc31abb7c3fec900/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0x50b6c0...782b10`](./contracts/bsc-56/0x50b6c035e0309ad8b8c94ffb00ec2c6c38782b10/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0x9107a8...9f6258`](./contracts/bsc-56/0x9107a8163472910f41a5f8926f809986799f6258/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0x9fe35a...6b6ca4`](./contracts/bsc-56/0x9fe35a8d457d931a97bc37369ac6ced3496b6ca4/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0xaeac7d...217d8d`](./contracts/bsc-56/0xaeac7db7b0305b185b512ac52dd685b5c3217d8d/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0xb1eb15...4f8a8f`](./contracts/bsc-56/0xb1eb15e5d4e120067efe02b5a32bf02ee94f8a8f/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0xd77852...ec782c`](./contracts/bsc-56/0xd77852da325ddb55eb5f45a6cf9fad0b4dec782c/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | bsc | n/a | [`0xf63a57...43a0ff`](./contracts/bsc-56/0xf63a57e7e028e2e16fdfad7eaf5961277e43a0ff/) | ⚠️ Unaudited |
| UpgradeProxy | unknown | bsc | n/a | [`0x8d8f5a...58faa6`](./contracts/bsc-56/0x8d8f5a44d92d3cff40806548d204ffe90e58faa6/) | ⚠️ Unaudited |
| USDT | unknown | bsc | n/a | [`0xa9a6c9...b312ae`](./contracts/bsc-56/0xa9a6c929a2b6e538fe1d2151ad76f751dcb312ae/) | ⚠️ Unaudited |
| Utils | unknown | bsc | n/a | [`0x20d027...5557f8`](./contracts/bsc-56/0x20d0270649c9f13c081ff98350148706a05557f8/) | ⚠️ Unaudited |
| V1CompatibleRecipe | unknown | polygon | n/a | [`0x0c9df0...6b9bcb`](./contracts/polygon-137/0x0c9df041582741b9ae384f31209a6dc7ea6b9bcb/) | ⚠️ Unaudited |
| VAI | unknown | bsc | n/a | [`0x4bd170...8bbbd7`](./contracts/bsc-56/0x4bd17003473389a42daf6a0a729f6fdb328bbbd7/) | ⚠️ Unaudited |
| VAIUnitroller | unknown | bsc | n/a | [`0x004065...dbfafe`](./contracts/bsc-56/0x004065d34c6b18ce4370ced1cebde94865dbfafe/) | ⚠️ Unaudited |
| VAIVaultProxy | unknown | bsc | n/a | [`0x0667ee...94f216`](./contracts/bsc-56/0x0667eed0a0aab930af74a3dfedd263a73994f216/) | ⚠️ Unaudited |
| Valhalla | unknown | bsc | n/a | [`0x5ffc02...a9d3d9`](./contracts/bsc-56/0x5ffc02901b45489aba023f4ed081d0fad9a9d3d9/) | ⚠️ Unaudited |
| VamToken | unknown | polygon | n/a | [`0x1512d2...9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | ⚠️ Unaudited |
| VaultBNBTester | unknown | bsc | n/a | [`0x31d369...defe97`](./contracts/bsc-56/0x31d36988aa5f0221b5c70b3fb786d4695ddefe97/) | ⚠️ Unaudited |
| VaultBunnyBNBLegacy | unknown | bsc | n/a | [`0x2c2084...1fa794`](./contracts/bsc-56/0x2c2084ad8e2f811597eda99baa403481351fa794/) | ⚠️ Unaudited |
| VaultCakeToCake | unknown | bsc | n/a | [`0x195313...3631d3`](./contracts/bsc-56/0x1953136932098ff25d2c50a20319ecaba43631d3/) | ⚠️ Unaudited |
| VaultCollateral | unknown | ethereum | n/a | [`0x0715a8...13c965`](./contracts/ethereum-1/0x0715a829d47be2c8cecfd116ef5a4cc8c913c965/) | ⚠️ Unaudited |
| VaultCompensation | unknown | bsc | n/a | [`0x1e8d70...09d72c`](./contracts/bsc-56/0x1e8d700c6ae1c46038cca53d789093b18c09d72c/) | ⚠️ Unaudited |
| VaultFlipToQBT | unknown | bsc | n/a | [`0x770252...ac6cec`](./contracts/bsc-56/0x7702527365bd09c00acfd5db2a77ca8cf6ac6cec/) | ⚠️ Unaudited |
| VaultQBTBNB | unknown | bsc | n/a | [`0x3e81d3...803f45`](./contracts/bsc-56/0x3e81d35fbb460bc499af2c755415785aaa803f45/) | ⚠️ Unaudited |
| VaultRelayer | unknown | bsc | n/a | [`0x31e541...d92546`](./contracts/bsc-56/0x31e5417f609fb4a60b2a4ce53833623657d92546/) | ⚠️ Unaudited |
| VaultV7 | unknown | bsc | n/a | [`0x0b436e...8bded4`](./contracts/bsc-56/0x0b436e3ea85121510e10c2c3b99f7724258bded4/) | ⚠️ Unaudited |
| VaultVenusBridge | unknown | bsc | n/a | [`0x50f039...6523ee`](./contracts/bsc-56/0x50f039406fa66821d84f1ecc80ca18e6db6523ee/) | ⚠️ Unaudited |
| VaultVenusBridgeOwner | unknown | bsc | n/a | [`0x07d97a...c90546`](./contracts/bsc-56/0x07d97a7788d33a21af269d5bdb8b7474cdc90546/) | ⚠️ Unaudited |
| VBep20Delegator | unknown | bsc | n/a | [`0x08ceb3...8084c3`](./contracts/bsc-56/0x08ceb3f4a7ed3500ca0982bcd0fc7816688084c3/) | ⚠️ Unaudited |
| VBNB | unknown | bsc | n/a | [`0xa07c5b...bbea36`](./contracts/bsc-56/0xa07c5b74c9b40447a954e1466938b865b6bbea36/) | ⚠️ Unaudited |
| VDollarMigrator | unknown | bsc | n/a | [`0x18b321...2d288a`](./contracts/bsc-56/0x18b321e73fa680aa980e07f0a2e33867082d288a/) | ⚠️ Unaudited |
| VenusLens | unknown | bsc | n/a | [`0x595e9d...ed19ba`](./contracts/bsc-56/0x595e9ddfebd47b54b996c839ef3dd97db3ed19ba/) | ⚠️ Unaudited |
| VenusPriceOracle | unknown | bsc | n/a | [`0x516c18...07d0ee`](./contracts/bsc-56/0x516c18dc440f107f12619a6d2cc320622807d0ee/) | ⚠️ Unaudited |
| Vesting | unknown | bsc | n/a | [`0xe43f22...24dbd5`](./contracts/bsc-56/0xe43f22ca596e4170430771601b05cc671b24dbd5/) | ⚠️ Unaudited |
| VRT | unknown | bsc | n/a | [`0x5f84ce...895883`](./contracts/bsc-56/0x5f84ce30dc3cf7909101c69086c50de191895883/) | ⚠️ Unaudited |
| VTreasury | unknown | bsc | n/a | [`0xf32294...9f35e9`](./contracts/bsc-56/0xf322942f644a996a617bd29c16bd7d231d9f35e9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x0a39ee...36a562`](./contracts/ethereum-1/0x0a39ee038aca8363edb6876d586c5c7b9336a562/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0x007d7f...f7500e`](./contracts/bsc-56/0x007d7f360ae0ec72115d3149852e25aea7f7500e/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | bsc | n/a | [`0x16cb8f...76eb41`](./contracts/bsc-56/0x16cb8f2f90adbf06754573ad4938089acb76eb41/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| WrappedKRT | unknown | bsc | n/a | [`0xffbdb9...65f4dd`](./contracts/bsc-56/0xffbdb9bdcae97a962535479bb96cc2778d65f4dd/) | ⚠️ Unaudited |
| WrappedLuna | unknown | bsc | n/a | [`0xeccf35...caa005`](./contracts/bsc-56/0xeccf35f941ab67ffcaa9a1265c2ff88865caa005/) | ⚠️ Unaudited |
| WrappedmAAPL | unknown | bsc | n/a | [`0x900aeb...abb3ec`](./contracts/bsc-56/0x900aeb8c40b26a8f8dfaf283f884b03ee7abb3ec/) | ⚠️ Unaudited |
| WrappedmAMZN | unknown | bsc | n/a | [`0x3947b9...b25075`](./contracts/bsc-56/0x3947b992dc0147d2d89df0392213781b04b25075/) | ⚠️ Unaudited |
| WrappedmBABA | unknown | bsc | n/a | [`0xca2f75...992945`](./contracts/bsc-56/0xca2f75930912b85d8b2914ad06166483c0992945/) | ⚠️ Unaudited |
| WrappedmFB | unknown | bsc | n/a | [`0x5501f4...92e451`](./contracts/bsc-56/0x5501f4713020cf299c3c5929da549aab3592e451/) | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | bsc | n/a | [`0x62d71b...0b173f`](./contracts/bsc-56/0x62d71b23bf15218c7d2d7e48dbbd9e9c650b173f/) | ⚠️ Unaudited |
| WrappedmIAU | unknown | bsc | n/a | [`0x1658ae...305813`](./contracts/bsc-56/0x1658aed6c7dbab2ddbd8f5d898b0e9eab0305813/) | ⚠️ Unaudited |
| WrappedMIR | unknown | bsc | n/a | [`0x5b6dcf...d8c2c9`](./contracts/bsc-56/0x5b6dcf557e2abe2323c48445e8cc948910d8c2c9/) | ⚠️ Unaudited |
| WrappedmMSFT | unknown | bsc | n/a | [`0x0ab06c...ece929`](./contracts/bsc-56/0x0ab06caa3ca5d6299925efaa752a2d2154ece929/) | ⚠️ Unaudited |
| WrappedmNFLX | unknown | bsc | n/a | [`0xa04f06...6649dc`](./contracts/bsc-56/0xa04f060077d90fe2647b61e4da4ad1f97d6649dc/) | ⚠️ Unaudited |
| WrappedMNT | unknown | bsc | n/a | [`0x41d749...ce43a6`](./contracts/bsc-56/0x41d74991509318517226755e508695c4d1ce43a6/) | ⚠️ Unaudited |
| WrappedmQQQ | unknown | bsc | n/a | [`0x1cb418...8d7c56`](./contracts/bsc-56/0x1cb4183ac708e07511ac57a2e45a835f048d7c56/) | ⚠️ Unaudited |
| WrappedmSLV | unknown | bsc | n/a | [`0x211e76...b6572a`](./contracts/bsc-56/0x211e763d0b9311c08ec92d72ddc20ab024b6572a/) | ⚠️ Unaudited |
| WrappedmTSLA | unknown | bsc | n/a | [`0xf215a1...cd7aa3`](./contracts/bsc-56/0xf215a127a196e3988c09d052e16bcfd365cd7aa3/) | ⚠️ Unaudited |
| WrappedmTWTR | unknown | bsc | n/a | [`0x7426ab...8b2cfb`](./contracts/bsc-56/0x7426ab52a0e057691e2544fae9c8222e958b2cfb/) | ⚠️ Unaudited |
| WrappedmUSO | unknown | bsc | n/a | [`0x9cddf3...f1843c`](./contracts/bsc-56/0x9cddf33466ce007676c827c76e799f5109f1843c/) | ⚠️ Unaudited |
| WrappedmVIXY | unknown | bsc | n/a | [`0x92e744...57d23e`](./contracts/bsc-56/0x92e744307694ece235cd02e82680ec37c657d23e/) | ⚠️ Unaudited |
| WrappedSDT | unknown | bsc | n/a | [`0x7d5f9f...2b7b05`](./contracts/bsc-56/0x7d5f9f8cf59986743f34bc137fc197e2e22b7b05/) | ⚠️ Unaudited |
| WrappedUST | unknown | bsc | n/a | [`0x23396c...49d6fc`](./contracts/bsc-56/0x23396cf899ca06c4472205fc903bdb4de249d6fc/) | ⚠️ Unaudited |
| XBurger | unknown | bsc | n/a | [`0xafe24e...d788dd`](./contracts/bsc-56/0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd/) | ⚠️ Unaudited |
| XVS | unknown | bsc | n/a | [`0xcf6bb5...626c63`](./contracts/bsc-56/0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63/) | ⚠️ Unaudited |
| Zap | unknown | bsc | n/a | [`0x0456c6...8b0d77`](./contracts/bsc-56/0x0456c6a001bd46364bbe4387b5129791b18b0d77/) | ⚠️ Unaudited |
| ZapBSC | unknown | bsc | n/a | [`0x281313...8ae1be`](./contracts/bsc-56/0x2813134452c937a2018e4c7666b351e9708ae1be/) | ⚠️ Unaudited |
| ZapETH | unknown | ethereum | n/a | [`0x421a8d...61f278`](./contracts/ethereum-1/0x421a8dfd8683400ee6afe8edebdbe6e76a61f278/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf](https://github.com/PancakeBunny-finance/Bunny/blob/main/audits/%5BHAECHI%20AUDIT%5D%20PancakeBunny%20Smart%20Contract%20Audit%20Report%20ver%202.0.pdf) | unknown | Audit | 2021-01 | stale | Inherited from Bunny — forked code, scoped to PotCakeLover, QMultiplexer, VaultBunny, VaultBunnyBNB, +3 more | inherited | 7 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 490 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=7

Fork inheritance lineage and inherited audits are included when available.
