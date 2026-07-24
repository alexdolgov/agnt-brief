# Agentic Audit Brief: Bitget

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Bitget (`bitget`)
- Website: [https://www.bitget.com](https://www.bitget.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, kaia, kava, metis, morph, optimism, polygon, sonic, zksync-era
- Contract surface: 93 unique implementations (93 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,911,781,736.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Bitget. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum, morph. Structural roles: 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: unclassified (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x54d2252757e1672eead234d27b1270728ff90581`, chain 1)
- UnnamedContract (`0x55d1f1879969bdbb9960d269974564c58dbc3238`, chain 2818)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 90 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 93 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 93
- Raw deployments: 93
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e516184686ffb009ce9f77d67dececb2afc4a51` | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e0730775a8568e3773a496e0a65438bd1af74ea` | ⚠️ Unaudited |
| ChefIncentivesController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x287ff908b4db0b29b65b8442b0a5840455f0db32` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00ff3b408cdbb79c32683aa7b6e4ecb7a33a9577` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab843bec136e848fc47f0eb24902b61f158534d6` | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d475766ab187acf6238ae45fff213fa19d52832` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x397824e7b156f57263aea72ff61ea860289e83ae` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8b4dbcbf943f21ca956a8cfeeea917d1855c608` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e2b5533729b1f67d7e60bcb89ccbc3f5f66b32d` | ⚠️ Unaudited |
| LendingRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fab9ae08e670f853158e40bfc6a5e0b3c3d7ecb` | ⚠️ Unaudited |
| Leverager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5682a39078edce41a65f1bd8733bf9ca2bbe3b1b` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x854775e2607a65321476f7f40d4dd33ada783a95` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefab5c6f57f301f87875b3270bb4659e27a23a82` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2054a8c33bfce28de8af4af548c48915c455c13` | ⚠️ Unaudited |
| QuickLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75206c2a29b646706c8856df0e8acaea38921bad` | ⚠️ Unaudited |
| RadiantToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01a01deaf702e960d91151de6113e1fc4667f6ba` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f9819516eadfc947e652710e3dbf738d6c1772b` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b6f135db3a621ab9041ac261276d8f38e1dc7a9` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a88e473fa2f4012e6c1b730dd070e4b15d15740` | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80c64191944a53ee1deabb6705b50fea8620fc31` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | ethereum | unit-380639 | `0x54d2252757e1672eead234d27b1270728ff90581` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b6176cae0bfa63d9f8c8561cebe3e19c1bc504b` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe36d523ad4febaa09b9bc043999252f96375c621` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebf9746af2c757a20db467b007f4fa6317385e9a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-380638 | `0x19de6b897ed14a376dda0fe53a5420d2ac828a28` | ❓ Unverified |
| UnnamedContract | token | project_anchor | own_supporting | 0 | morph | unit-380640 | `0x55d1f1879969bdbb9960d269974564c58dbc3238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x040811978c97b6246b8c4fb2c7050f33b5f3b743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07f4ec12cc9921f2f1214feac33c545c3ee2cdeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b77346d72bd4d88e71a47fdda470828e67f1870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c4681e6c0235179ec3d4f4fc4df3d14fdd96017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17aff1cb8574e20f212299cd8a6583d6b61ba668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ae95a2960d7631f0f5b1202a3b8c1117e91dfed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cb8942427c39eab8b9b6966d2620660543191f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e71c5442206400037f31f7f45895d32f305c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x290cbb2200a7067f6dcf973d50f2f2ab652bb421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b69dd28b35b636907051ea8c663941b6d59e84b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ee84b5dfde4f5496d3cdb7510d5bc3d2082f0bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x314220ca3974751a26436f454c55453d4b997f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x345c7896c6b50b283ebf4e5a364e3b2e928e577c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x348eab6becb074aaeb4dab785465cd4ade2ece9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d2b18797d7cc4de2c94cc051768e0b9ddfb33c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44621fd7ae4d79f45369d0b230d2577702ea604e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c55a2352fb038a9fa56ab18d99ecfdaeaceedc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d5fc4f50c7f78471861866fd13f234ce99f56d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cf0471c387fec8ec0af2cfde4a1ea182372449e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63f4df118259d5ac20ab2130d4974faeb7d0a3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6596d55cd061fd14a9ecf988e3f073e69c381608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f7316fcde8ebdc16e54f72c696b41e6898f9de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x777d8e6d94e0cb8a7b2600aabe1fab1ad46055cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x795ada2e75be36b40ad43e35bdd8253890fd3f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a6bfc4542aed53d00b2007e39cdf97c6c409013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7bb843f889e3a0b307299c3b65e089bffe9c0be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82f65d71067cc78604b30d279ba047c43608a77e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x844c0a75019c8765bfcf9e81c7c9fd4170225e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87fa05fcb21e88b1a9129f111e9de4c4b7b253e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93e9602dd447679dc10b3ea7025e08119c95c9c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x943eeb85a79ec2c0de4cc9c34d2649d7decc6eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95a9c9370f06da7acb85c7155e5beba2c77cf121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x987553cfa824b6afe80191723abee285e86f273f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b9b30a4648a4406f9c03eaf9904a689c047a1f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa130a97c841ffa12cfb5e3aea503fd5825a39ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2531742999ac71d323f73d1d60cdaf0a8cae451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb26c720cadbcf3e8579dc2183927265d597a7f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb586702e30108369f571702bf377bf8a440386a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb70f9e58752381199c36936ce1473b27f4b5c099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb786375ec2f348326c734933c45f0781344de62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8eb3ae665200ae5c850abdbf92357f1334d6745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb91c7f80bc89436f74dcc5a42e8c5d93e853455c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbcc61a415f71ba2be82ea68f5a291b05759ee679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbffd3244feff75f29899efc391758cb6f7738bd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0bddcbb290ae3a820821b1d77612db3d7b3a319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc20ee9295adb9f061c3fd433dbc04abe9fb6bc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc299bb57956c07fd7ddf688a34e968af8d035db9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2d2be875d44113267c5ebc3cbb0d2cae3f84fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc42bb9fb0474b462026f5c30a8aae67a25496eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8e3bedf35f23037a1067f6ed72625caf72fa5d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc963ef7d977ecb0ab71d835c4cb1bf737f28d010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9e4f51704c63ae7613aef9b7516090846b04c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2eba896c78ec04b12bc9f3f80473fd74dfb73ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3a54067d16838e5e527904f22a562c9cc7d1a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe001d1705db93e87b533057555a9654adfd2ad4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe06cd7763d46c406b92ccdf817451fe4b65cbe55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe21b295ed46528efd5f3ef66e18bc6ad1c87f003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5fca75b11789641300c642f9081a9a81f4c0e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe718815b7901aab0277d9a5a55967f4b6c3ee643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe75027666d32fa39ad45cc2761232ab3b7a533d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe921cada0ef1dad8e1b09d64c715ce2c77ff232b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe98dcd7b746d914112b03f4432b24c886bb6c45e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea09b96efd5bc4ed5524700c62d27008438cf04a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0bd07a20f8980c6853b06c59a68bc2bd72b2e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf61e86dc58a5d84f2cad28c1f0f896adc8ae7049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfaf437317669a4bfba74707b3785f3940faf91ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe54ab293461d778f2e19029ff6a88f0f698f631` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 67
- Live contracts: 0
- Unknown liveness contracts: 67
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=67

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x040811978c97b6246b8c4fb2c7050f33b5f3b743` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x07f4ec12cc9921f2f1214feac33c545c3ee2cdeb` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0b77346d72bd4d88e71a47fdda470828e67f1870` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0c4681e6c0235179ec3d4f4fc4df3d14fdd96017` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17aff1cb8574e20f212299cd8a6583d6b61ba668` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ae95a2960d7631f0f5b1202a3b8c1117e91dfed` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1cb8942427c39eab8b9b6966d2620660543191f8` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x25e71c5442206400037f31f7f45895d32f305c2d` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x290cbb2200a7067f6dcf973d50f2f2ab652bb421` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b69dd28b35b636907051ea8c663941b6d59e84b` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ee84b5dfde4f5496d3cdb7510d5bc3d2082f0bb` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x314220ca3974751a26436f454c55453d4b997f12` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x345c7896c6b50b283ebf4e5a364e3b2e928e577c` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x348eab6becb074aaeb4dab785465cd4ade2ece9a` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d2b18797d7cc4de2c94cc051768e0b9ddfb33c6` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44621fd7ae4d79f45369d0b230d2577702ea604e` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c55a2352fb038a9fa56ab18d99ecfdaeaceedc9` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4d5fc4f50c7f78471861866fd13f234ce99f56d8` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5cf0471c387fec8ec0af2cfde4a1ea182372449e` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x63f4df118259d5ac20ab2130d4974faeb7d0a3db` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6596d55cd061fd14a9ecf988e3f073e69c381608` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f7316fcde8ebdc16e54f72c696b41e6898f9de4` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x777d8e6d94e0cb8a7b2600aabe1fab1ad46055cc` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x795ada2e75be36b40ad43e35bdd8253890fd3f79` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a6bfc4542aed53d00b2007e39cdf97c6c409013` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7bb843f889e3a0b307299c3b65e089bffe9c0be0` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x82f65d71067cc78604b30d279ba047c43608a77e` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x844c0a75019c8765bfcf9e81c7c9fd4170225e3f` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x87fa05fcb21e88b1a9129f111e9de4c4b7b253e7` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93e9602dd447679dc10b3ea7025e08119c95c9c1` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x943eeb85a79ec2c0de4cc9c34d2649d7decc6eb2` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x95a9c9370f06da7acb85c7155e5beba2c77cf121` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x987553cfa824b6afe80191723abee285e86f273f` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b9b30a4648a4406f9c03eaf9904a689c047a1f9` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa130a97c841ffa12cfb5e3aea503fd5825a39ba6` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb2531742999ac71d323f73d1d60cdaf0a8cae451` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb26c720cadbcf3e8579dc2183927265d597a7f46` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb586702e30108369f571702bf377bf8a440386a2` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb70f9e58752381199c36936ce1473b27f4b5c099` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb786375ec2f348326c734933c45f0781344de62e` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb8eb3ae665200ae5c850abdbf92357f1334d6745` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb91c7f80bc89436f74dcc5a42e8c5d93e853455c` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbcc61a415f71ba2be82ea68f5a291b05759ee679` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbffd3244feff75f29899efc391758cb6f7738bd0` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc0bddcbb290ae3a820821b1d77612db3d7b3a319` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc20ee9295adb9f061c3fd433dbc04abe9fb6bc9b` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc299bb57956c07fd7ddf688a34e968af8d035db9` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc2d2be875d44113267c5ebc3cbb0d2cae3f84fd9` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc42bb9fb0474b462026f5c30a8aae67a25496eea` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc8e3bedf35f23037a1067f6ed72625caf72fa5d8` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc963ef7d977ecb0ab71d835c4cb1bf737f28d010` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc9e4f51704c63ae7613aef9b7516090846b04c5d` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd2eba896c78ec04b12bc9f3f80473fd74dfb73ba` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd3a54067d16838e5e527904f22a562c9cc7d1a39` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe001d1705db93e87b533057555a9654adfd2ad4b` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe06cd7763d46c406b92ccdf817451fe4b65cbe55` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe21b295ed46528efd5f3ef66e18bc6ad1c87f003` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe5fca75b11789641300c642f9081a9a81f4c0e34` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe718815b7901aab0277d9a5a55967f4b6c3ee643` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe75027666d32fa39ad45cc2761232ab3b7a533d5` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe921cada0ef1dad8e1b09d64c715ce2c77ff232b` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe98dcd7b746d914112b03f4432b24c886bb6c45e` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xea09b96efd5bc4ed5524700c62d27008438cf04a` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf0bd07a20f8980c6853b06c59a68bc2bd72b2e3a` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf61e86dc58a5d84f2cad28c1f0f896adc8ae7049` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfaf437317669a4bfba74707b3785f3940faf91ec` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfe54ab293461d778f2e19029ff6a88f0f698f631` | non_address_book | unknown | unknown | unverified | n/a | `0x47399364835b6c58191f6350bf63a755f80b0ffb` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
