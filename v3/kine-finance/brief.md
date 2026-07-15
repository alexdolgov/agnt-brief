# Agentic Audit Brief: Kine Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Kine Finance (`kine-finance`)
- Website: [https://kine.finance/](https://kine.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 100 unique implementations (173 raw deployments)
- Coverage basis: 0/48 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $916,821.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kine Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 66 contract row(s) across avalanche, bsc, ethereum, polygon. Structural roles: 47 unclassified, 16 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 66
- Structural roles: unclassified (47), core (16), supporting (3)
- Contract kinds: contract (66)
- Detected standards: ownable (12), erc20 (10), pausable (3)
- Frameworks: openzeppelin (13)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 53 contracts are derived from known codebases. 53 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9636ea...a30cc7`, chain 1)
- UnnamedContract (`0x977746...34a8a4`, chain 1)
- UnnamedContract (`0x01dcdb...eaf12d`, chain 56)
- Kaptain (`0xf8c7b7...7c871f`, chain 1)
- KaptainV2 (`0x1540e5...6a9f0c`, chain 1)
- KaptainV2 (`0xd4c220...896a06`, chain 56)
- KaptainV2 (`0x0544be...a2fc39`, chain 137)
- KErc20Delegator (`0x1568a7...59eba3`, chain 1)
- KErc20Delegator (`0x377f10...f586ab`, chain 1)
- KErc20Delegator (`0x473ccd...878ee8`, chain 1)
- KErc20Delegator (`0x63b63b...dd5a73`, chain 1)
- KErc20Delegator (`0x3a8502...9b57c2`, chain 56)
- KErc20Delegator (`0x670076...f54fa0`, chain 56)
- KErc20Delegator (`0xa58e82...d35780`, chain 56)
- KErc20Delegator (`0xd61867...24b847`, chain 56)
- KErc20Delegator (`0xf8c7b7...7c871f`, chain 56)
- KErc20Delegator (`0x3770eb...f0b259`, chain 137)
- KErc20Delegator (`0x4f6a33...7c49cd`, chain 137)
- KErc20Delegator (`0x6c0ed4...972d91`, chain 137)
- KErc20Delegator (`0x96f451...e64ef7`, chain 137)
- KErc20Delegator (`0xc903e8...0ac1b4`, chain 137)
- KEther (`0xa58e82...d35780`, chain 1)
- KEther (`0x5fbe4e...60b055`, chain 56)
- KEther (`0xf186a6...2425f9`, chain 137)
- Kine (`0xcbfef8...85f05d`, chain 1)
- Kine (`0xbfa9df...752d7f`, chain 56)
- Kine (`0xa9c174...6ccd87`, chain 137)
- KineMultiSigWallet (`0xa6e17a...330191`, chain 1)
- KineMultiSigWallet (`0x6534af...a0446c`, chain 56)
- KineMultiSigWallet (`0xa8c2a4...757198`, chain 137)
- KineOracleV2 (`0xd546a5...2f9494`, chain 137)
- KineRanch (`0xa8d764...9cc692`, chain 1)
- KineUSD (`0xd4c220...896a06`, chain 1)
- KineUSD (`0xd819d9...8d4ab4`, chain 56)
- KineUSD (`0x03324b...fc99a2`, chain 137)
- KMCDDelegator (`0xaf2617...b6555f`, chain 1)
- KMCDDelegator (`0x4f1ab9...177986`, chain 56)
- KMCDDelegator (`0xcd6b46...a0c54c`, chain 137)
- KUSDMinterDelegator (`0xcea2d0...d7d128`, chain 1)
- KUSDMinterDelegator (`0x42fe8e...d28989`, chain 56)
- KUSDMinterDelegator (`0x1b80c2...b774f9`, chain 137)
- KUSDVault (`0xd61867...24b847`, chain 1)
- KUSDVault (`0xaf2617...b6555f`, chain 56)
- KUSDVault (`0x68b973...aa3e47`, chain 137)
- LPStakingRewards (`0x80850d...5e52bf`, chain 1)
- LPStakingRewards (`0x834c3b...33606b`, chain 1)
- LPStakingRewards (`0xc75ba7...a0c9b6`, chain 1)
- StakingRewardsV2 (`0x308043...d919ad`, chain 56)
- StakingRewardsV2 (`0x6c2c7c...85d3d7`, chain 56)
- StakingRewardsV2 (`0x4d7242...2a8636`, chain 137)
- StakingRewardsV2 (`0x69c78c...ceedf9`, chain 137)
- Timelock (`0x9e8e62...e2d03b`, chain 1)
- Unitroller (`0xbb7d94...fd1a92`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 66; live-surface rows included: 66 (52 live, 14 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/51 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/48 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 51 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 49 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 42
- Confirmed-live implementations: 51 of 100 unique; 49 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/95
- Verified + Unaudited implementations: 95
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 100
- Raw deployments: 173
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

### ⚠️ Verified + Unaudited (95)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 16 deployments: avalanche `0x0378fc...e86788`; avalanche `0x0dd1cd...76eaca`; avalanche `0x1e311e...147d41`; avalanche `0x3278b9...e3407b`; avalanche `0x3c73b0...dcfa94`; avalanche `0x68ed14...8036ed`; avalanche `0x70163d...958765`; avalanche `0x7bdb2a...cd3f00`; avalanche `0x8b8c72...0796d0`; avalanche `0x95f6f7...0e604e`; avalanche `0x9e7a8d...4311ea`; avalanche `0xa7e935...0ac10d`; avalanche `0xab5f4f...877661`; avalanche `0xb65798...59608d`; avalanche `0xc23c59...d9e8e9`; avalanche `0xc43669...30fb87` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xd819d9...8d4ab4`; bsc `0xc11c33...1908da` | ⚠️ Unaudited |
| ControllerV2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-388216 | `0xbb7d94...fd1a92` | ⚠️ Unaudited |
| ControllerV2 | unknown | project_anchor | own_supporting | 1 | bsc | unit-388232 | `0x3c2ddd...32b571` | ⚠️ Unaudited |
| ControllerV2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-388222 | 2 deployments: polygon `0x171d5c...0d7f28`; polygon `0xdff18a...b96881` | ⚠️ Unaudited |
| ControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0ec312...6679c6`; avalanche `0xdff18a...b96881` | ⚠️ Unaudited |
| DisperseTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52a6a0...8d70f9` | ⚠️ Unaudited |
| Kaptain | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388196 | `0xf8c7b7...7c871f` | ⚠️ Unaudited |
| KaptainV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388183 | `0x1540e5...6a9f0c` | ⚠️ Unaudited |
| KaptainV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-388213 | `0xd4c220...896a06` | ⚠️ Unaudited |
| KaptainV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388198 | `0x0544be...a2fc39` | ⚠️ Unaudited |
| KaptainV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa64c21...aeece5` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388218 | 2 deployments: ethereum `0x1568a7...59eba3`; ethereum `0xad58be...8ae948` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388215 | 2 deployments: ethereum `0x24ff63...8e57af`; ethereum `0x473ccd...878ee8` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388217 | 2 deployments: ethereum `0x377f10...f586ab`; ethereum `0x624c00...ab4b8d` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37fb11...650bed`; ethereum `0x4191eb...735740` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388221 | 2 deployments: ethereum `0x63b63b...dd5a73`; ethereum `0xf9771b...bf755a` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbf5250...0a5bf5`; ethereum `0xeebf19...f0a139` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x33888c...35a875`; bsc `0xad58be...8ae948`; bsc `0xea4c9c...8909e9` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 5 | bsc | unit-388233 (5 proxies) | 6 deployments: bsc `0x3a8502...9b57c2`; bsc `0x670076...f54fa0`; bsc `0xa58e82...d35780`; bsc `0xcea2d0...d7d128`; bsc `0xd61867...24b847`; bsc `0xf8c7b7...7c871f` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x0d7030...707913`; avalanche `0x1d903b...32a19f` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x108dbe...5f4e81`; polygon `0xb6ffea...b188ac` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388223 | 2 deployments: polygon `0x255d26...32ecd0`; polygon `0x4f6a33...7c49cd` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388228 | 2 deployments: polygon `0x3770eb...f0b259`; polygon `0xcba50a...b5c1c4` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388225 | 2 deployments: polygon `0x39d1c9...d6b06f`; polygon `0x96f451...e64ef7` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x42dfed...6b76b2`; polygon `0xfbb9ef...c42c91` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388229 | 2 deployments: polygon `0x6c0ed4...972d91`; polygon `0xd9aa9b...d15432` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x75349e...5f47f3`; polygon `0xa2b89f...2df002` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388227 | 2 deployments: polygon `0xabdbd0...1785c8`; polygon `0xc903e8...0ac1b4` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xada3be...cef876`; polygon `0xe972e2...2e0216` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xcf6182...05707f`; polygon `0xee5e0c...bced60` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0d7030...707913`; avalanche `0xf186a6...2425f9` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3770eb...f0b259`; avalanche `0xcba50a...b5c1c4` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3d2a49...959cf4`; avalanche `0xdd895f...cefd62` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x66a782...7adeda`; avalanche `0x919faa...64ba45` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6c0ed4...972d91`; avalanche `0xd9aa9b...d15432` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xcb46bf...c5db70`; avalanche `0xdedb4b...e3bc64` | ⚠️ Unaudited |
| KEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388189 | `0xa58e82...d35780` | ⚠️ Unaudited |
| KEther | unknown | project_anchor | own_supporting | 0 | bsc | unit-388208 | `0x5fbe4e...60b055` | ⚠️ Unaudited |
| KEther | unknown | project_anchor | own_supporting | 0 | polygon | unit-388205 | `0xf186a6...2425f9` | ⚠️ Unaudited |
| KEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0544be...a2fc39` | ⚠️ Unaudited |
| Kine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388193 | `0xcbfef8...85f05d` | ⚠️ Unaudited |
| Kine | unknown | project_anchor | own_supporting | 0 | bsc | unit-388212 | `0xbfa9df...752d7f` | ⚠️ Unaudited |
| Kine | unknown | project_anchor | own_supporting | 0 | polygon | unit-388203 | `0xa9c174...6ccd87` | ⚠️ Unaudited |
| Kine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9c174...6ccd87` | ⚠️ Unaudited |
| KineBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5f17db...0e9526`; avalanche `0xcd96a1...d20a3c` | ⚠️ Unaudited |
| KineCard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77427a...96d923` | ⚠️ Unaudited |
| KineExchangeTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x545a25...763645`; bsc `0x1568a7...59eba3`; polygon `0x1d903b...32a19f`; avalanche `0x6e81c7...7cfa0e` | ⚠️ Unaudited |
| KineMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca13ea...f9bd8d` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388190 | `0xa6e17a...330191` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-388209 | `0x6534af...a0446c` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | project_anchor | own_supporting | 0 | polygon | unit-388202 | `0xa8c2a4...757198` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xbfa9df...752d7f`; avalanche `0x21e927...cdfac1` | ⚠️ Unaudited |
| KineOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x606627...951e30`; avalanche `0xc903e8...0ac1b4` | ⚠️ Unaudited |
| KineOracleV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388204 | `0xd546a5...2f9494` | ⚠️ Unaudited |
| KineProtocolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: polygon `0xcb46bf...c5db70`; avalanche `0x39d1c9...d6b06f` | ⚠️ Unaudited |
| KineRanch | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388191 | `0xa8d764...9cc692` | ⚠️ Unaudited |
| KineRanch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: bsc `0x9e8e62...e2d03b`; polygon `0x66a782...7adeda`; avalanche `0x68b973...aa3e47` | ⚠️ Unaudited |
| KineSimpleBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x80b91d...42f1d2`; bsc `0xcbfef8...85f05d`; polygon `0x3d2a49...959cf4`; avalanche `0x171d5c...0d7f28` | ⚠️ Unaudited |
| KineSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x06cb07...1c1f18`; avalanche `0xb5e41f...7b0b3f`; avalanche `0xf780a7...316e58` | ⚠️ Unaudited |
| KineTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcb641...d3bbb7` | ⚠️ Unaudited |
| KineUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388194 | `0xd4c220...896a06` | ⚠️ Unaudited |
| KineUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-388214 | `0xd819d9...8d4ab4` | ⚠️ Unaudited |
| KineUSD | unknown | project_anchor | own_supporting | 0 | polygon | unit-388197 | `0x03324b...fc99a2` | ⚠️ Unaudited |
| KineUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03324b...fc99a2` | ⚠️ Unaudited |
| KMCDDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaeacff...205179` | ⚠️ Unaudited |
| KMCDDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388220 | `0xaf2617...b6555f` | ⚠️ Unaudited |
| KMCDDelegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-388230 | 2 deployments: bsc `0x013a07...6e3c9e`; bsc `0x4f1ab9...177986` | ⚠️ Unaudited |
| KMCDDelegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388226 | 2 deployments: polygon `0x75f213...520de0`; polygon `0xcd6b46...a0c54c` | ⚠️ Unaudited |
| KMCDDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x75f213...520de0`; avalanche `0xcd6b46...a0c54c` | ⚠️ Unaudited |
| KUSDMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fbe4e...60b055` | ⚠️ Unaudited |
| KUSDMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb7d94...fd1a92` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388219 | `0xcea2d0...d7d128` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | project_anchor | own_supporting | 1 | bsc | unit-388231 | `0x42fe8e...d28989` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | project_anchor | own_supporting | 1 | polygon | unit-388224 | 2 deployments: polygon `0x1b80c2...b774f9`; polygon `0x29085e...9e6460` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x1b80c2...b774f9`; avalanche `0x29085e...9e6460` | ⚠️ Unaudited |
| KUSDVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388195 | `0xd61867...24b847` | ⚠️ Unaudited |
| KUSDVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-388211 | `0xaf2617...b6555f` | ⚠️ Unaudited |
| KUSDVault | unknown | project_anchor | own_supporting | 0 | polygon | unit-388200 | `0x68b973...aa3e47` | ⚠️ Unaudited |
| KUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcd7ac...19554d` | ⚠️ Unaudited |
| LiquidatorWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: polygon `0xc34f77...c7eb51`; avalanche `0x96f451...e64ef7` | ⚠️ Unaudited |
| LPStakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388184 | `0x80850d...5e52bf` | ⚠️ Unaudited |
| LPStakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388185 | `0x834c3b...33606b` | ⚠️ Unaudited |
| LPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa457ac...c2793b` | ⚠️ Unaudited |
| LPStakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388192 | `0xc75ba7...a0c9b6` | ⚠️ Unaudited |
| OracleHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: polygon `0xdd895f...cefd62`; avalanche `0xabdbd0...1785c8` | ⚠️ Unaudited |
| RewardClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea4c9c...8909e9` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-388207 | `0x308043...d919ad` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-388210 | `0x6c2c7c...85d3d7` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388199 | `0x4d7242...2a8636` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388201 | `0x69c78c...ceedf9` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: ethereum `0x377f4f...6e5393`; ethereum `0x67d920...c9258f`; ethereum `0xcea3ec...1a9b33`; avalanche `0x108dbe...5f4e81`; avalanche `0x437309...522e80` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388188 | `0x9e8e62...e2d03b` | ⚠️ Unaudited |
| TokenDispenserPrivateI25Y75 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3522...0e0de4` | ⚠️ Unaudited |
| TokenDispenserSeedI10Y60Y30 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6503...667ddf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388186 | `0x9636ea...a30cc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388187 | `0x977746...34a8a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388206 | `0x01dcdb...eaf12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a5c4b...8c5199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1641b4...200e5d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xbb7d94...fd1a92` | ControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3c2ddd...32b571` | ControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x171d5c...0d7f28` | ControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8c7b7...7c871f` | Kaptain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1540e5...6a9f0c` | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd4c220...896a06` | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0544be...a2fc39` | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1568a7...59eba3` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x24ff63...8e57af` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x377f10...f586ab` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63b63b...dd5a73` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3a8502...9b57c2` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x255d26...32ecd0` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3770eb...f0b259` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x39d1c9...d6b06f` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6c0ed4...972d91` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xabdbd0...1785c8` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa58e82...d35780` | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5fbe4e...60b055` | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf186a6...2425f9` | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbfef8...85f05d` | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbfa9df...752d7f` | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa9c174...6ccd87` | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6e17a...330191` | KineMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6534af...a0446c` | KineMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa8c2a4...757198` | KineMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd546a5...2f9494` | KineOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8d764...9cc692` | KineRanch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4c220...896a06` | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd819d9...8d4ab4` | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x03324b...fc99a2` | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf2617...b6555f` | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x013a07...6e3c9e` | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x75f213...520de0` | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcea2d0...d7d128` | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x42fe8e...d28989` | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1b80c2...b774f9` | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd61867...24b847` | KUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xaf2617...b6555f` | KUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x68b973...aa3e47` | KUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80850d...5e52bf` | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x834c3b...33606b` | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc75ba7...a0c9b6` | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x308043...d919ad` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6c2c7c...85d3d7` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4d7242...2a8636` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x69c78c...ceedf9` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e8e62...e2d03b` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 94 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 5 |

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
