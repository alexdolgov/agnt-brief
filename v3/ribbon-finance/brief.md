# Agentic Audit Brief: Ribbon Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 2 audit(s)
- Eligible audit results: 15 (2 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ribbon Finance (`ribbon-finance`)
- Website: [https://www.ribbon.finance/](https://www.ribbon.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum
- Contract surface: 201 unique implementations (540 raw deployments)
- Coverage basis: 3/32 confirmed own live verified implementations (9.4%); conservative 9.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,954,705.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ribbon Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across avalanche, ethereum. Structural roles: 38 unclassified, 6 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: unclassified (38), core (6)
- Contract kinds: contract (29), unclassified (15)
- Detected standards: erc1967proxy (6)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 38 contracts are derived from known codebases. 38 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0aea75...f8044c`, chain 1)
- UnnamedContract (`0x312853...88936c`, chain 1)
- UnnamedContract (`0x3b383d...50334a`, chain 1)
- UnnamedContract (`0x3cd0ec...5c616d`, chain 1)
- UnnamedContract (`0x600eee...706c8e`, chain 1)
- UnnamedContract (`0xc0cf10...d98a53`, chain 1)
- UnnamedContract (`0xc59e21...8db57a`, chain 1)
- UnnamedContract (`0xe44edf...f2e405`, chain 1)
- AdminUpgradeabilityProxy (`0x257518...89644b`, chain 1)
- AdminUpgradeabilityProxy (`0x53773e...b78e8c`, chain 1)
- AdminUpgradeabilityProxy (`0x65a833...b13b2f`, chain 1)
- AdminUpgradeabilityProxy (`0x84c2b1...dfd6f0`, chain 1)
- AdminUpgradeabilityProxy (`0x8fe744...96e54f`, chain 1)
- AdminUpgradeabilityProxy (`0xa1da05...ec5edf`, chain 1)
- AdminUpgradeabilityProxy (`0xcc3235...cc9624`, chain 1)
- AdminUpgradeabilityProxy (`0xce5513...48ae8c`, chain 1)
- AdminUpgradeabilityProxy (`0xe63151...abd365`, chain 1)
- AdminUpgradeabilityProxy (`0x6bf686...9a9fb3`, chain 43114)
- AdminUpgradeabilityProxy (`0x98d031...a87787`, chain 43114)
- AdminUpgradeabilityProxy (`0x9dd6be...a3e3a3`, chain 43114)
- FeeCustody (`0xf2e186...6cf55a`, chain 1)
- RibbonEarnVault (`0xb38016...d81c3c`, chain 1)
- RibbonEarnVaultFixedRate (`0xe97d82...a4b8b8`, chain 1)
- Vyper_contract (`0x0cb9cc...ef6415`, chain 1)
- Vyper_contract (`0x192960...b08608`, chain 1)
- Vyper_contract (`0x19854c...a9b5f7`, chain 1)
- Vyper_contract (`0x43277c...f171cc`, chain 1)
- Vyper_contract (`0x4ba4af...e16fd0`, chain 1)
- Vyper_contract (`0x4e079d...f9be72`, chain 1)
- Vyper_contract (`0x5b0655...625a3a`, chain 1)
- Vyper_contract (`0x8913ea...0b9325`, chain 1)
- Vyper_contract (`0x903840...d7c8bd`, chain 1)
- Vyper_contract (`0x967412...814587`, chain 1)
- Vyper_contract (`0x98c371...339382`, chain 1)
- Vyper_contract (`0xa8a969...be8732`, chain 1)
- Vyper_contract (`0xad4dbd...84741a`, chain 1)
- Vyper_contract (`0xb7fd36...8c9b4e`, chain 1)
- Vyper_contract (`0xb91309...b85fab`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 44; live-surface rows included: 44 (44 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/40 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/32 (9.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 161 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 71
- Confirmed-live implementations: 40 of 201 unique; 161 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/131
- Verified + Unaudited implementations: 128
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 201
- Raw deployments: 540
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 15 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 3 | 2.3% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RibbonThetaSTETHVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391540 | 2 deployments: ethereum `0x2bc165...741d77`; ethereum `0x53773e...b78e8c` | ✅ Audited |
| RibbonThetaVaultYearn | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-391548 | `0x8fe744...96e54f` | ✅ Audited |
| RibbonThetaYearnVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-391545 | `0xcc3235...cc9624` | ✅ Audited |

### ⚠️ Verified + Unaudited (128)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: ethereum `0x2da4c4...3119dd`; ethereum `0x89c3ff...9a042c`; ethereum `0x8be768...3f060c`; avalanche `0x27d60b...5ac87d`; avalanche `0x3ab3ff...cba7b6`; avalanche `0x58d6bd...e40854`; avalanche `0x5a2e87...94e9a6`; avalanche `0x63e48a...be7310`; avalanche `0x8b5bff...7aa0eb`; avalanche `0xac289a...481ed4`; avalanche `0xbca124...110510`; avalanche `0xef3b91...4ee698` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x157b07...5d7f47`; ethereum `0x5c86c2...9e2b0c`; ethereum `0x6fe593...4bf9e3`; ethereum `0x996de9...7e49ab`; ethereum `0xa5b117...e1c23d`; avalanche `0x1e5341...fbdb5c`; avalanche `0x4375e9...4dc234`; avalanche `0x62e04b...bc05e4`; avalanche `0xabd2a9...f567dc`; avalanche `0xafe24b...f3b1c7`; avalanche `0xee5b96...94785c` | ⚠️ Unaudited |
| AevoStakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb624bb...3d69ed` | ⚠️ Unaudited |
| AllowListOffChainManaged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ae9b3...8e0df8` | ⚠️ Unaudited |
| BalancerGovernanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1000...424e3d` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6789db...2f0457` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0x53cf72...c967b2`; avalanche `0x02b70a...fc0e18`; avalanche `0xeadf3d...7aa23d` | ⚠️ Unaudited |
| DeltaStrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0x6a86aa...a4a4fd`; ethereum `0x74f2c2...eb58ea`; ethereum `0xb43345...4c751b`; ethereum `0xbff91e...c2e565`; ethereum `0xf6010d...69024b`; avalanche `0x431058...7e1bb9`; avalanche `0xb00b89...301290`; avalanche `0xbf96a7...fd1d58`; avalanche `0xc16a88...135379` | ⚠️ Unaudited |
| DepositAndPlaceOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x193c89...89cedb`; avalanche `0xe0fdba...729698` | ⚠️ Unaudited |
| EasyAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x33b1fa...8e836f`; avalanche `0xb5d00f...d1ee61`; avalanche `0xc23b92...b9709a` | ⚠️ Unaudited |
| FeeCustody | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d02c1...4046df` | ⚠️ Unaudited |
| FeeCustody | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391538 | `0xf2e186...6cf55a` | ⚠️ Unaudited |
| ManualPricer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 20 deployments: ethereum `0x00e812...5cc87f`; ethereum `0x2e445b...144af1`; ethereum `0x3250e0...865c86`; ethereum `0x32bccc...5dcecd`; ethereum `0x367b71...817901`; ethereum `0x393952...66bce4`; ethereum `0x3e3aa8...4ebcb1`; ethereum `0x72cfa0...530d4e`; ethereum `0x7a9441...357bd6`; ethereum `0x80a0de...46c525`; ethereum `0x86dd4b...a62831`; ethereum `0x8918f3...a8b087`; ethereum `0xa1a436...9512a7`; ethereum `0xa82a82...5abda3`; ethereum `0xd5c1eb...8d4f2b`; ethereum `0xd72c97...ce58c1`; ethereum `0xed9af0...60cee1`; ethereum `0xf5de31...120785`; ethereum `0xfbbf25...836147`; ethereum `0xfc9887...9fb0b7` | ⚠️ Unaudited |
| ManualStrikeSelection | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x3c8114...d7036c`; ethereum `0x8a0967...c26fe3`; ethereum `0x9246cb...be8b8e`; ethereum `0x961d37...d819a5`; ethereum `0xab4051...be1573`; ethereum `0xb3578a...68ab39`; ethereum `0xd3c4e0...41d7c6`; ethereum `0xfd48f3...51b451`; avalanche `0x4a78dc...7d2771`; avalanche `0x719455...323a3b` | ⚠️ Unaudited |
| ManualVolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x14416c...03b709`; ethereum `0x7c0bfa...116399`; ethereum `0xe24854...81ecc4`; ethereum `0xfeec01...cae78c`; avalanche `0x175bcf...80bc39`; avalanche `0x9e5e8d...ed05dd`; avalanche `0xfda869...ee0bb3` | ⚠️ Unaudited |
| MarginCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x52685a...2806f8`; ethereum `0x5cd207...3f07f1`; avalanche `0x2c726a...46b337`; avalanche `0xbd5a1d...ac2afd` | ⚠️ Unaudited |
| MarginPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0xaf6cb5...d23b91`; ethereum `0xbc9896...b32b9a`; avalanche `0x06aa7f...f8e5b0`; avalanche `0x527514...66d50e`; avalanche `0x5b4289...c5708b`; avalanche `0x9c7918...48017a`; avalanche `0xb628d6...b15024`; avalanche `0xccf662...4fdb9d`; avalanche `0xfe9c85...f5591f` | ⚠️ Unaudited |
| MarginRequirements | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc272f9...b833a7`; ethereum `0xcd5f0e...8b7eb8` | ⚠️ Unaudited |
| MarginVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x70bc7e...8cf447`; ethereum `0xd12f96...f64541`; avalanche `0x8b5685...52858a`; avalanche `0x9b011c...88912f` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ea2f2...07cf90`; ethereum `0x7902e4...8cc1bf` | ⚠️ Unaudited |
| MinimalForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28bbbf...51ba6d` | ⚠️ Unaudited |
| MiniMeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3472a5...c6e53d` | ⚠️ Unaudited |
| MM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x668345...edee11`; ethereum `0x9af2b8...247652`; ethereum `0xbe278c...d38a17` | ⚠️ Unaudited |
| Optimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53796b...b54205` | ⚠️ Unaudited |
| OptionsPremiumPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: ethereum `0x0a1b63...0975db`; ethereum `0x7c2441...af67a8`; ethereum `0xcf38c1...194e8c`; ethereum `0xd8bb66...65dacc`; ethereum `0xec58c1...525cbc`; avalanche `0x03bb97...76e66e`; avalanche `0x54daf3...3cab89`; avalanche `0xbd5103...805b21` | ⚠️ Unaudited |
| OptionsPremiumPricerInStables | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x048e2f...adf33a`; ethereum `0x2d3145...aa3b1f`; ethereum `0x8b5ae8...40ee3d`; ethereum `0x9d02f1...007977`; ethereum `0xb38f51...681286`; ethereum `0xd1773e...dcfd20`; ethereum `0xe67f1d...82d3d4`; ethereum `0xe8fafa...7135e2`; avalanche `0x9c31f6...7464e8`; avalanche `0xa24669...b7ce9f` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 11 deployments: ethereum `0x071fb7...1c0843`; ethereum `0x79bea2...796d10`; ethereum `0xc69c49...03332e`; avalanche `0x00bf1e...b54f2d`; avalanche `0x108abf...0f0b10`; avalanche `0x454a11...405bd0`; avalanche `0x47a8fa...c1a89a`; avalanche `0x5c76e7...f5e8eb`; avalanche `0x6f010d...bd7c9f`; avalanche `0x72c959...1d45ad`; avalanche `0xa7516c...ece8bb` | ⚠️ Unaudited |
| OTCWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0862a6...51f121`; ethereum `0x8191df...aa78ea` | ⚠️ Unaudited |
| OTCWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e05d6...ff79d3`; ethereum `0xffda0b...49c5d1` | ⚠️ Unaudited |
| OTCWrapperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1b4eca...072264`; ethereum `0x5feda5...ae4989` | ⚠️ Unaudited |
| Otoken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0x0b030f...126009`; ethereum `0x49d479...3adcff`; avalanche `0x03b284...9ed931`; avalanche `0x0fd7e1...cfc823`; avalanche `0x3c19dd...351c29`; avalanche `0x459a8b...224677`; avalanche `0x9d7915...4fe904`; avalanche `0xbc2804...c21425`; avalanche `0xe0ebdd...0c7bfe` | ⚠️ Unaudited |
| OtokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 10 deployments: ethereum `0x1872ea...2300ce`; ethereum `0x202702...522856`; avalanche `0x0dc319...60c3d2`; avalanche `0x215967...725505`; avalanche `0x25bc1c...9f66a5`; avalanche `0x6fb3f1...3b0b14`; avalanche `0x90fcbd...249eae`; avalanche `0xc0cf10...d98a53`; avalanche `0xf9745a...ea0955`; avalanche `0xfc8c59...e98060` | ⚠️ Unaudited |
| PercentStrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x6221b5...b29eac`; ethereum `0x6cabcf...64207c`; ethereum `0x6fa306...4c8e8f`; ethereum `0xa2a5ef...8fe8df`; ethereum `0xd486c3...14f701`; ethereum `0xeb03bf...c2266f` | ⚠️ Unaudited |
| PerpToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3966...233447` | ⚠️ Unaudited |
| ProtocolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8b49fd...6f8504`; ethereum `0xff51ca...00d949` | ⚠️ Unaudited |
| RethPricer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b305...341fc6` | ⚠️ Unaudited |
| RewardsDistributorDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x63a40e...a9fd47`; ethereum `0xec19e0...cb59bb` | ⚠️ Unaudited |
| RewardsDistributorDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x02f01b...f12e4e`; ethereum `0xc953fb...59b88b` | ⚠️ Unaudited |
| RibbonAutocallVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21cfce...bb48e6`; ethereum `0x9490cc...94cfc9` | ⚠️ Unaudited |
| RibbonCoveredCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x49ca9e...c15b74`; ethereum `0x509b51...83fab8`; ethereum `0x5907c9...187dfd`; ethereum `0xd24f76...233676`; ethereum `0xe97557...e6fc75`; ethereum `0xed6137...de0245` | ⚠️ Unaudited |
| RibbonDeltaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fb118...ba0850`; ethereum `0xf10348...fe6f8b` | ⚠️ Unaudited |
| RibbonDeltaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x551c44...d67625`; avalanche `0x9d725c...b52b13` | ⚠️ Unaudited |
| RibbonEarnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x0e83c4...428178`; ethereum `0x138748...ae312b`; ethereum `0x26638c...8bc440`; ethereum `0x3e1646...9621f6`; ethereum `0x547f57...fd886f`; ethereum `0x563c35...1bef22`; ethereum `0x5ce194...c343c9`; ethereum `0x791679...419f20`; ethereum `0x7b9c29...aaf5d4`; ethereum `0x971206...66d999`; ethereum `0xc8fce3...b6e9cf`; ethereum `0xce3217...057230`; ethereum `0xd0e300...ca5b50`; ethereum `0xd14541...057856`; ethereum `0xf0ba26...8de649` | ⚠️ Unaudited |
| RibbonEarnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x1b4494...4ddd15`; ethereum `0x749b33...16dd5c`; ethereum `0x7bdca4...9f4a72`; ethereum `0xabfa87...8529fc` | ⚠️ Unaudited |
| RibbonEarnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x47b4da...ad908a`; ethereum `0x5a64d7...fe135c`; ethereum `0x7946b1...c9050b`; ethereum `0xab7c59...59b503` | ⚠️ Unaudited |
| RibbonEarnVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391546 | 2 deployments: ethereum `0x84c2b1...dfd6f0`; ethereum `0xb38016...d81c3c` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x06275b...d79d1c`; ethereum `0x34b447...50ecda`; ethereum `0x5d5b71...24e9eb`; ethereum `0x7a8bfd...d0100f` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391550 | 2 deployments: ethereum `0xce5513...48ae8c`; ethereum `0xe97d82...a4b8b8` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRateKeeperPermissioned | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98d860...8db287` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRateTemp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0dd119...5013a1`; ethereum `0xa028cb...5b035a` | ⚠️ Unaudited |
| RibbonETHCoveredCall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8e65f3...83a939`; ethereum `0xb9a143...c9de6d` | ⚠️ Unaudited |
| RibbonFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6e0f73...41ba4f`; ethereum `0x863dd8...bf0cd1` | ⚠️ Unaudited |
| RibbonFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84a5a8...138c33`; ethereum `0xf1afa2...e3b481` | ⚠️ Unaudited |
| RibbonHatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0fe5...f97f33` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1c2ee9...6352c2`; ethereum `0xa1457f...b7486f`; ethereum `0xeef3d6...be196a` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391539 | 2 deployments: ethereum `0x1e8026...928a9a`; ethereum `0xa1da05...ec5edf` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21bfde...2e8e9f`; ethereum `0xc14a21...eea400` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e28f2...c08d6a` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbf2093...b77b7c`; ethereum `0xd493f9...446e44` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x01f1d8...9365e7`; ethereum `0x1bc5ee...1dcffa`; ethereum `0x21438c...af6c72`; ethereum `0x51a5a8...041f8b`; ethereum `0x5d4c0a...ea1b51`; ethereum `0x8a0eff...c36ca5`; ethereum `0xbcf89a...8147ad`; ethereum `0xeb74e0...37c733`; ethereum `0xef3c69...ea31e7` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x20abe9...cfabcc`; ethereum `0xc5f2cf...a55741` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x24ab80...7e24c6`; ethereum `0x8756ea...05f1f7`; ethereum `0xfc0d9e...016502` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 24 deployments: ethereum `0x00a62e...d282e6`; ethereum `0x09bd08...efb030`; ethereum `0x0a2270...fb3234`; ethereum `0x0ff7c2...141a5a`; ethereum `0x1939f8...a08682`; ethereum `0x23b42c...f1ff87`; ethereum `0x2556e8...5dfa22`; ethereum `0x2a0b88...e8b5b5`; ethereum `0x34107a...2eb167`; ethereum `0x38556e...7c6550`; ethereum `0x43cfea...ccd423`; ethereum `0x65112b...227ae0`; ethereum `0x94c842...98431a`; ethereum `0xae517e...78c7f0`; ethereum `0xb751b2...9da5ff`; ethereum `0xbc9d2f...b35cc1`; ethereum `0xbeba74...49e4ad`; ethereum `0xd3fe14...68592a`; ethereum `0xf63ce1...a60483`; ethereum `0xfe8cf7...995fd1`; avalanche `0x7f00bb...ae9c83`; avalanche `0x9d1d31...d5014a`; avalanche `0xa0db6c...52b79a`; avalanche `0xa5b117...e1c23d` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391542 | 2 deployments: ethereum `0x0fabaf...60467a`; ethereum `0x7a477d...8b94b9` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391544 | 2 deployments: ethereum `0x16772a...fbb5ef`; ethereum `0x8d0d4c...846e3a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ebea9...1a89c0`; ethereum `0xa0db6c...52b79a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4ea9e7...eb80df`; ethereum `0x6779da...0f507e` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391541 | 2 deployments: ethereum `0x5ce91e...ebdcf8`; ethereum `0x8b5876...8c3e8c` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x6ec571...8031f8`; ethereum `0x9d1d31...d5014a`; ethereum `0xcfcf97...1fb3bc` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa0d597...b0d1dc`; ethereum `0xe5ad69...bb3529` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb0a54c...278eb0`; ethereum `0xc4d100...f027c5` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | avalanche | n/a | 8 deployments: avalanche `0x0f4032...d54684`; avalanche `0x10b87d...0cd00c`; avalanche `0x16b08b...8f588b`; avalanche `0x243dd8...cb3ffb`; avalanche `0x87e946...d5b592`; avalanche `0xb7ec3b...e4f480`; avalanche `0xd00a29...98fa65`; avalanche `0xdcfd14...5b926e` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 7 deployments: ethereum `0x2397da...5e4959`; ethereum `0x247a93...0e0690`; ethereum `0xa413cc...81dcf9`; ethereum `0xc03ff5...855025`; ethereum `0xd472ec...84868e`; ethereum `0xd5f650...2a2a0e`; ethereum `0xdd9d1b...735def` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x253029...0bc6b4`; ethereum `0x3fb82f...0f1f44`; ethereum `0x6fc853...453a8e`; ethereum `0x74e524...fbd421`; ethereum `0xcd8786...5450fc`; avalanche `0x43cfea...ccd423`; avalanche `0x8dcc8a...ddf54c`; avalanche `0xda6b28...03418a` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | project_anchor | own_supporting | 2 | ethereum | unit-391551 (2 proxies) | 3 deployments: ethereum `0x257518...89644b`; ethereum `0x65a833...b13b2f`; ethereum `0xeaf743...d2666e` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391543 | `0xe63151...abd365` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | project_anchor | own_supporting | 1 | avalanche | unit-391552 | 2 deployments: avalanche `0x6bf686...9a9fb3`; avalanche `0x6ec571...8031f8` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | project_anchor | own_supporting | 1 | avalanche | unit-391553 | `0x98d031...a87787` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | project_anchor | own_supporting | 1 | avalanche | unit-391554 | `0x9dd6be...a3e3a3` | ⚠️ Unaudited |
| RibbonThetaYearnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x2e5bbb...7c7712`; ethereum `0x678f0d...f8a67e` | ⚠️ Unaudited |
| RibbonThetaYearnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfb749a...6114be` | ⚠️ Unaudited |
| RibbonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d11e0...efe64f`; ethereum `0x5f7160...9737d2`; ethereum `0x6123b0...21fa6b` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1e2d05...301bf5`; ethereum `0x2e56d6...dfd248`; ethereum `0x8d93ac...1a869c` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1f2077...7d95f4`; ethereum `0xa06a03...4dc864`; ethereum `0xbe0b30...32cded` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391547 | `0x270f4a...7be238` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | project_anchor | own_supporting | 2 | ethereum | unit-391549 (2 proxies) | 3 deployments: ethereum `0x2a6b04...98a0fe`; ethereum `0x42cf87...c639dc`; ethereum `0xd906a2...354a8a` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x6aac2d...651fd2`; ethereum `0x76b20f...fd71fa`; ethereum `0x9d51c8...fe7ad8`; ethereum `0xbeb419...9572d2`; ethereum `0xc0d57d...411a3b` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7664df...7e9648` | ⚠️ Unaudited |
| RibbonTreasuryVaultBare | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b6b6f...976a10`; ethereum `0x8de73d...23ef24` | ⚠️ Unaudited |
| RibbonVaultPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe04e8a...89cdc3`; avalanche `0xf08d6a...6d19aa` | ⚠️ Unaudited |
| RibbonVIPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x678c36...f45dc1`; ethereum `0xa5f2fd...844178`; ethereum `0xdea5c9...0f1fe5` | ⚠️ Unaudited |
| RibbonVolatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7004f9...53d4b0`; ethereum `0x900e5a...1d8a57`; ethereum `0xa72cc5...4e368f` | ⚠️ Unaudited |
| SAVAXDepositHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x084a82...168303`; avalanche `0x1decc7...264d3c`; avalanche `0x33b395...f587d7`; avalanche `0xadcadf...77f176` | ⚠️ Unaudited |
| SAvaxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6cd451...51c922`; avalanche `0x8f1716...6b89fb` | ⚠️ Unaudited |
| SAvaxPricer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a59f3...c216c9` | ⚠️ Unaudited |
| SimpleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2244...594381` | ⚠️ Unaudited |
| Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090185...37e5f6` | ⚠️ Unaudited |
| STETHDepositHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07f36c...9f5411`; ethereum `0xedae76...748be1` | ⚠️ Unaudited |
| StrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x001d77...1d0db1`; ethereum `0x05dc96...94c4cf`; ethereum `0x2d8c02...24ef1c`; ethereum `0x39d379...475000`; ethereum `0x4e2d42...c0498d`; ethereum `0x5e68b6...7fc641`; ethereum `0x896e4d...6482fa`; ethereum `0x9371f3...4513a5`; ethereum `0xc2b10e...753563`; ethereum `0xf6e785...105911`; avalanche `0x00d27c...960d81`; avalanche `0x05351b...e3dbed`; avalanche `0x4fc945...f7ba3e`; avalanche `0x67ea3d...ea84ac`; avalanche `0x6c2bd3...8ccf7b` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0xa37e33...b44b08`; avalanche `0x335a9b...6a3be5`; avalanche `0x9d9240...cb8c6b`; avalanche `0xfb49c3...82a54a` | ⚠️ Unaudited |
| UnwindPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa788...2ef234` | ⚠️ Unaudited |
| VaultDeploymentEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62ef28...e55652` | ⚠️ Unaudited |
| VaultLifecycle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 19 deployments: ethereum `0x14cc2c...865511`; ethereum `0x1c3774...bd41f8`; ethereum `0x25af99...f67b40`; ethereum `0x35a3e0...69ecc0`; ethereum `0x4994c9...7d10ee`; ethereum `0x58228f...056d82`; ethereum `0x5ee5db...5caa53`; ethereum `0x93c48f...f1f522`; ethereum `0x9c24f8...cb9ccf`; ethereum `0xb917ee...07dde3`; ethereum `0xc1e51b...8181df`; ethereum `0xda6387...6be115`; ethereum `0xe248f6...57d6c7`; ethereum `0xe55231...835adb`; ethereum `0xe64524...994f36`; ethereum `0xf25ff2...b5d3b6`; avalanche `0x001d77...1d0db1`; avalanche `0x5ee5db...5caa53`; avalanche `0xe0854d...b9223e` | ⚠️ Unaudited |
| VaultLifecycleEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x35fd2e...d1c3d4`; ethereum `0x5caf79...b9eeca`; ethereum `0x736777...f067e0`; ethereum `0xa85d60...7cb8e4`; ethereum `0xe01e81...3a96f6` | ⚠️ Unaudited |
| VaultLifecycleSTETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x21f0ff...4bd6b0`; ethereum `0x2c5dd8...089bf1`; ethereum `0x5cbb58...18f3db`; ethereum `0x84ff09...c08928`; ethereum `0x92c47e...f42836`; ethereum `0xb48c17...ad38ee`; ethereum `0xcf7dd5...8c8932` | ⚠️ Unaudited |
| VaultLifecycleTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa746b0...cd856b`; ethereum `0xe1d00f...90afe2`; ethereum `0xff0629...9b3329` | ⚠️ Unaudited |
| VaultLifecycleTreasuryBare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x60f0d4...9104f7`; ethereum `0xb4a1b5...d94eef`; ethereum `0xd79527...6666d3`; ethereum `0xf2d442...483f2f` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x63b971...83357f`; ethereum `0xc06944...169377`; ethereum `0xc7654f...9a5e5e`; avalanche `0xc1e51b...8181df` | ⚠️ Unaudited |
| VaultPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6bcef...77031e` | ⚠️ Unaudited |
| VaultQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2986e8...b14648`; avalanche `0xe6325f...66d8be` | ⚠️ Unaudited |
| VeRBNRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f011...1ab33e` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391516 | `0x0cb9cc...ef6415` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391517 | `0x192960...b08608` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391518 | `0x19854c...a9b5f7` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x29893b...29a202`; ethereum `0x36880a...0c9645`; ethereum `0x8e44db...0534b4`; ethereum `0xa2b078...e348fc`; ethereum `0xd086c9...705692` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391522 | `0x43277c...f171cc` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391523 | `0x4ba4af...e16fd0` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391524 | `0x4e079d...f9be72` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391525 | `0x5b0655...625a3a` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391527 | `0x8913ea...0b9325` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391528 | `0x903840...d7c8bd` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391529 | `0x967412...814587` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391530 | `0x98c371...339382` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391531 | `0xa8a969...be8732` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391532 | `0xad4dbd...84741a` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391533 | `0xb7fd36...8c9b4e` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391534 | `0xb91309...b85fab` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x194b6b...fba053`; ethereum `0xb7fef6...fa08f3`; avalanche `0x4980d7...2289d0`; avalanche `0x4c6598...ba4904`; avalanche `0x939588...32fa93`; avalanche `0xa83941...ea6b4f`; avalanche `0xd79756...add13c`; avalanche `0xe3243b...d2c1fe`; avalanche `0xe9963a...6087c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091ee6...f6cef8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391515 | `0x0aea75...f8044c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1646af...e3e2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d79f7...c81889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dd8c1...e44807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20bbb3...0714a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248797...6a31ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274994...1f1db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6b34...fd58d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391519 | `0x312853...88936c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x336045...537fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3e85...094989` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391520 | `0x3b383d...50334a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b607f...01dfa0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391521 | `0x3cd0ec...5c616d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa768...f11e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47d063...3ab141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a287...1b1844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5beacf...b675e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391526 | `0x600eee...706c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64bed5...c47af0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fccb...af1b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac82e...6d0e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624da...e4ca01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ea8fa...2f034d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f66cb...cc075c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d727...40c3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9305e...9a94ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb7f3...44d4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8cceb...c22080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ff39...6f79d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd8c31...ca3cde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391535 | `0xc0cf10...d98a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc127a4...027632` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391536 | `0xc59e21...8db57a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84ca7...9b3cd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc85be0...8df5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf2203...990503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd602e0...8f5397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2e68d...bfde5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391537 | `0xe44edf...f2e405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a528...181563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf08d6a...6d19aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf513bd...0b5c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86189...705b35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9c28a...b704a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4233...8df5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04c75f...aeadc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cd322...927abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1627b5...84292b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ce1fe...c94d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20e7da...ffe6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2156b6...298906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ba283...c02326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31e6ad...f1ad45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x328494...c6c6ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3405ad...ee0021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34c737...c41103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b69a3...58f01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b859b...49c39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c4fd2...b4f6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f49d8...89df66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a0b5e...beb3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a66a6...c066d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf6183...f4fef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1b7b1...016371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8698b...e29873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed3866...405e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef0ac6...5a9631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfce6a2...18448c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/ribbon-finance-audit](https://www.openzeppelin.com/news/ribbon-finance-audit) | OpenZeppelin | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | OpenZeppelin | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | n/a | matched | 1 | 1 | 0 | 2 | n/a |
| [RibbonV2-July-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/RibbonV2-July-2021.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [ribbon-07-2023.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-07-2023.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ribbon-finance-04-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-04-2021.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [ribbon-finance-11-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-11-2021.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 6 | high |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://raw.githubusercontent.com/ribbon-finance/audit/b837e7b04dfbbc6fb577039e9baa598f46ec04a7/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2529] www.openzeppelin.com/news/ribbon-finance-audit — no match: All contracts listed in the Scope section of the audit report.
- [2530] RibbonThetaVault V2 Smart Contract Review And Verification.pdf — no match: Report title and date indicate July 2021; 7 contracts explicitly listed in scope.
- [2531] PeckShield-Audit-Report-Ribbon-v1.0.pdf — no match: No explicit scope section; contracts extracted from findings targets and mentions.
- [2535] Quantstamp Theta Vault.pdf — no match: Extracted contract names from file signatures, findings, and code coverage sections. Audit date from cover page.
- [2536] Chainsafe-Ribbon-Audit_April-2021.pdf — no match: Scope explicitly mentions RibbonCoveredCall and parts of GammaAdapter and ProtocolAdapter. IProtocolAdapter and OptionVaultStorage are also reviewed in line-by-line sections.
- [2537] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf — no match: No reason recorded
- [2538] PeckShield-Audit-Report-RVOL-v1.0rc.pdf — no match: Audit report for RVOL (Ribbon Volatility) smart contract. Scope includes the RVOL library and its components: Math, OptionsPremiumPricer, VolOracle, DSMath. No file paths provided, but contract names are clearly identified as audit targets.
- [2539] PeckShield-Audit-Report-RibbonSwap.pdf — no match: Only one contract Swap.sol is in scope. Audit date from cover page and latest audit report date.
- [2540] PeckShield-Audit-Report-RibbonTreasuryVault.pdf — no match: Two contracts explicitly listed in scope. Audit date from cover page and latest audit report date.
- [2541] RibbonThetaYearn-18june.pdf — matched: No reason recorded
- [2542] RibbonV2-July-2021.pdf — no match: The report states 'There are 7 contracts in scope' and lists them in the line-by-line review sections. The audit date is July 2021, inferred as end of month.
- [2543] ribbon-07-2023.pdf — no match: Scope explicitly mentions RibbonAutocallVault.sol and the difference between RibbonTreasuryVault.sol and RibbonTreasuryVaultLite.sol. Audit date is July 2023, interpreted as end of month.
- [2544] ribbon-finance-04-2021.pdf — no match: Scope explicitly mentions RibbonCoveredCall and parts of GammaAdapter and ProtocolAdapter. IProtocolAdapter and OptionVaultStorage are referenced in findings but not explicitly in scope; however, they are part of the codebase reviewed. Date is April 2021, approximated to end of month.
- [2545] ribbon-finance-11-2021.pdf — matched: Extracted 8 contract names from the audit report. The report mentions '10 contracts/libraries in scope' but only 8 distinct names are explicitly referenced in the line-by-line review. The date is November 2021, approximated to last day of month.
- [15372] RibbonThetaVault V2 Smart Contract Review And Verification.pdf — no match: The report explicitly states 'There are 7 contracts in scope' and lists them in the line-by-line review sections. The audit date is July 2021, inferred as end of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/ribbon-finance-audit | GammaInterface | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IERC20Detailed | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IGnosisAuction | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IRibbon | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IRibbonThetaVault | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IWETH | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | GnosisAuction | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | ShareMath | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | SupportsNonCompliantERC20 | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | Vault | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | VaultLifecycle | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | OptionsVaultStorage | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | StrikeSelection | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | RibbonDeltaVault | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/ribbon-finance-audit | RibbonVault | unmatched — not counted | — | listed in scope | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review section 3.1-3.3 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review section 3.4-3.15 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | Vault | unmatched — not counted | — | mentioned in line-by-line review section 3.16-3.19 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review section 3.20-3.32 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review section 3.33-3.34 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review section 3.35-3.38 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | RibbonCoveredCall | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | GammaAdapter | unmatched — not counted | — | Target in findings PVE-004, PVE-005, PVE-006 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | BaseVault | unmatched — not counted | — | Mentioned in finding PVE-003 as contract with system parameters | no |
| Quantstamp Theta Vault.pdf | RibbonFactory | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp Theta Vault.pdf | GammaAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | HegicAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | UniswapAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | IProtocolAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | ProtocolAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | VaultRegistry | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | StakedPut | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | OptionsVaultStorage | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | DSMath | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | Ownable | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | AdminUpgradeabilityProxy | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x6bf686...9a9fb3` — deployed 2022-02-23 23:16:09+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x98d031...a87787` — deployed 2021-12-08 09:11:45+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x257518...89644b` — deployed 2021-09-11 04:54:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xce5513...48ae8c` — deployed 2022-11-25 02:05:59+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x8fe744...96e54f` — deployed 2021-06-24 14:58:15+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x270f4a...7be238` — deployed 2022-06-27 13:54:57+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x9dd6be...a3e3a3` — deployed 2021-12-23 08:53:48+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xe63151...abd365` — deployed 2021-11-02 11:37:26+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x42cf87...c639dc` — deployed 2022-07-18 06:58:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x2a6b04...98a0fe` — deployed 2022-06-28 08:10:49+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x65a833...b13b2f` — deployed 2021-09-10 06:17:37+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xa1da05...ec5edf` — deployed 2022-06-17 12:21:26+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x84c2b1...dfd6f0` — deployed 2022-08-23 05:52:32+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xcc3235...cc9624` — deployed 2021-12-07 11:59:01+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x53773e...b78e8c` — deployed 2021-11-23 13:40:40+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp Theta Vault.pdf | Initializable | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | Proxy | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | ProxyAdmin | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | UpgradeabilityProxy | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | GammaInterface | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | HegicInterface | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IChiToken | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | InstrumentInterface | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IRibbonFactory | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | ISwap | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | ISwapPair | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Router | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IWETH | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IZeroExExchange | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | AmmAdapter | unmatched — not counted | — | listed in code coverage | no |
| Quantstamp Theta Vault.pdf | CharmAdapter | unmatched — not counted | — | listed in code coverage | no |
| Quantstamp Theta Vault.pdf | IAmmAdapter | unmatched — not counted | — | listed in code coverage | no |
| Quantstamp Theta Vault.pdf | RibbonVolatility | unmatched — not counted | — | listed in code coverage | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | RibbonCoveredCall | unmatched — not counted | — | listed in scope and reviewed line-by-line | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | GammaAdapter | unmatched — not counted | — | mentioned in scope: 'parts of GammaAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | ProtocolAdapter | unmatched — not counted | — | mentioned in scope: 'parts of ProtocolAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | IProtocolAdapter | unmatched — not counted | — | line 16 reviewed | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | OptionVaultStorage | unmatched — not counted | — | line 48 reviewed | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | RibbonToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | RVOL | unmatched — not counted | — | Target of audit, described as a set of Solidity libraries and tools | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | Math | unmatched — not counted | — | Target in finding PVE-001: Math::cdf()/ncdf() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | OptionsPremiumPricer | unmatched — not counted | — | Mentioned in finding PVE-001 as contract providing getPremium() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | VolOracle | unmatched — not counted | — | Target in finding PVE-002: VolOracle::getTimeWeightedAverageTick() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | DSMath | unmatched — not counted | — | Target in finding PVE-003: DSMath::wdiv()/rdiv() | no |
| PeckShield-Audit-Report-RibbonSwap.pdf | Swap | unmatched — not counted | — | listed in scope and findings target Swap | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | RibbonTreasuryVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x270f4a...7be238` — deployed 2022-06-27 13:54:57+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x42cf87...c639dc` — deployed 2022-07-18 06:58:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x2a6b04...98a0fe` — deployed 2022-06-28 08:10:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | VaultLifecycleTreasury | unmatched — not counted | — | Listed in scope: 'this audit only covers the following two contracts: RibbonTreasuryVault and VaultLifecycleTreasury' | no |
| RibbonThetaYearn-18june.pdf | GammaAdapter | unmatched — not counted | — | — | no |
| RibbonThetaYearn-18june.pdf | RibbonThetaVaultYearn | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x8fe744...96e54f` — deployed 2021-06-24 14:58:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RibbonThetaYearn-18june.pdf | YearnPricer | unmatched — not counted | — | — | no |
| RibbonV2-July-2021.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review (3.1, 3.2, 3.3) | no |
| RibbonV2-July-2021.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review (3.4-3.15) | no |
| RibbonV2-July-2021.pdf | Vault | unmatched — not counted | — | mentioned in line-by-line review (3.16-3.19) | no |
| RibbonV2-July-2021.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review (3.20-3.32) | no |
| RibbonV2-July-2021.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review (3.33, 3.34) | no |
| RibbonV2-July-2021.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review (3.35-3.38) | no |
| RibbonV2-July-2021.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ribbon-07-2023.pdf | RibbonAutocallVault | unmatched — not counted | — | scope included RibbonAutocallVault.sol | no |
| ribbon-07-2023.pdf | RibbonTreasuryVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x270f4a...7be238` — deployed 2022-06-27 13:54:57+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x42cf87...c639dc` — deployed 2022-07-18 06:58:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x2a6b04...98a0fe` — deployed 2022-06-28 08:10:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ribbon-07-2023.pdf | RibbonTreasuryVaultLite | unmatched — not counted | — | scope included difference between RibbonTreasuryVault.sol and RibbonTreasuryVaultLite.sol | no |
| ribbon-finance-04-2021.pdf | RibbonCoveredCall | unmatched — not counted | — | listed in scope and reviewed line-by-line | no |
| ribbon-finance-04-2021.pdf | GammaAdapter | unmatched — not counted | — | mentioned in scope: 'parts of GammaAdapter' | no |
| ribbon-finance-04-2021.pdf | ProtocolAdapter | unmatched — not counted | — | mentioned in scope: 'parts of ProtocolAdapter' | no |
| ribbon-finance-04-2021.pdf | IProtocolAdapter | unmatched — not counted | — | referenced in line 5.20 | no |
| ribbon-finance-04-2021.pdf | OptionVaultStorage | unmatched — not counted | — | referenced in line 5.21 | no |
| ribbon-finance-11-2021.pdf | GnosisAuction | unmatched — not counted | — | line-by-line review section 4.1 | no |
| ribbon-finance-11-2021.pdf | VaultLifecycle | unmatched — not counted | — | line-by-line review section 4.2-4.7 | no |
| ribbon-finance-11-2021.pdf | VaultLifecycleSTETH | unmatched — not counted | — | line-by-line review section 4.8-4.10 | no |
| ribbon-finance-11-2021.pdf | VaultLifecycleYearn | unmatched — not counted | — | line-by-line review section 4.11-4.12 | no |
| ribbon-finance-11-2021.pdf | RibbonVault | unmatched — not counted | — | line-by-line review section 4.13-4.17 | no |
| ribbon-finance-11-2021.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ribbon-finance-11-2021.pdf | RibbonThetaSTETHVault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x53773e...b78e8c` — deployed 2021-11-23 13:40:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ribbon-finance-11-2021.pdf | RibbonThetaYearnVault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xcc3235...cc9624` — deployed 2021-12-07 11:59:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review (3.1, 3.2, 3.3) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review (3.4-3.15) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | Vault | unmatched — not counted | — | mentioned in line-by-line review (3.16-3.19) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review (3.20-3.32) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review (3.33, 3.34) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review (3.35-3.38) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876...8c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a...fbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf...60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf2e186...6cf55a` | FeeCustody | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84c2b1...dfd6f0` | RibbonEarnVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce5513...48ae8c` | RibbonEarnVaultFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e8026...928a9a` | RibbonThetaRETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fabaf...60467a` | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16772a...fbb5ef` | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ce91e...ebdcf8` | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x257518...89644b` | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe63151...abd365` | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6bf686...9a9fb3` | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x98d031...a87787` | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9dd6be...a3e3a3` | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x270f4a...7be238` | RibbonTreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a6b04...98a0fe` | RibbonTreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cb9cc...ef6415` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x192960...b08608` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19854c...a9b5f7` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43277c...f171cc` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ba4af...e16fd0` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e079d...f9be72` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5b0655...625a3a` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8913ea...0b9325` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x903840...d7c8bd` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x967412...814587` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98c371...339382` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8a969...be8732` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad4dbd...84741a` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7fd36...8c9b4e` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb91309...b85fab` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 129 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 94 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12, medium=1
- Match method counts: unique_name=3

Zero-match audit list:

- [2529] www.openzeppelin.com/news/ribbon-finance-audit
- [2530] RibbonThetaVault V2 Smart Contract Review And Verification.pdf
- [2531] PeckShield-Audit-Report-Ribbon-v1.0.pdf
- [2535] Quantstamp Theta Vault.pdf
- [2536] Chainsafe-Ribbon-Audit_April-2021.pdf
- [2537] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf
- [2538] PeckShield-Audit-Report-RVOL-v1.0rc.pdf
- [2539] PeckShield-Audit-Report-RibbonSwap.pdf
- [2540] PeckShield-Audit-Report-RibbonTreasuryVault.pdf
- [2542] RibbonV2-July-2021.pdf
- [2543] ribbon-07-2023.pdf
- [2544] ribbon-finance-04-2021.pdf
- [15372] RibbonThetaVault V2 Smart Contract Review And Verification.pdf

Fork inheritance lineage and inherited audits are included when available.
