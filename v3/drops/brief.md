# Agentic Audit Brief: Drops

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Drops (`drops`)
- Website: [https://drops.co](https://drops.co)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 119 unique implementations (280 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,697,771.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Drops. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum, polygon. Structural roles: 3 unclassified, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: unclassified (3), core (2)
- Contract kinds: contract (5)
- Detected standards: erc20 (2)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CEther (`0x4ae741...f0e411`, chain 1)
- CEther (`0x588c13...fee086`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 114 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 63
- Confirmed-live implementations: 5 of 119 unique; 114 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/97
- Verified + Unaudited implementations: 97
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 119
- Raw deployments: 280
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (97)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdvisoryTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93532b...e94085` | ⚠️ Unaudited |
| AmbassadorNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x259c55...1a1858`; ethereum `0x986010...c32846` | ⚠️ Unaudited |
| BridgedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 16 deployments: ethereum `0x1c26b3...5c0f08`; ethereum `0x2158b5...777b13`; ethereum `0x24a57d...ebf7a7`; ethereum `0x2a5bbd...505498`; ethereum `0x4c46a9...0ee892`; ethereum `0x4d9b0b...6c21a6`; ethereum `0x76f1cd...303739`; ethereum `0x79b994...19b5f6`; ethereum `0x90352f...3b7cfb`; ethereum `0x94eb0d...14cb46`; ethereum `0x967117...a2e575`; ethereum `0x97ffea...8fc47f`; ethereum `0xbb04b9...47f7a4`; ethereum `0xcb4f30...5d590b`; ethereum `0xda12a2...7992e1`; ethereum `0xe000c6...5500f5` | ⚠️ Unaudited |
| BridgedOracleArtBlocks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6734a1...23678d`; ethereum `0xfde765...9bc2c6` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x03a5c2...8b57d7`; ethereum `0xd7665e...71c615` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x04a083...f7a7e7`; ethereum `0x173a6b...0d3cf8` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x081937...aadbb6`; ethereum `0xa2edfd...dc19a8` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1a8483...b6207e`; ethereum `0x834f50...70e139` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0eab2...b04a00` | ⚠️ Unaudited |
| CErc20AuraDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1c5230...2278a2`; ethereum `0x6f7376...835d58`; ethereum `0x903fe0...3db711` | ⚠️ Unaudited |
| CErc20gOHMDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x435f96...99ba0b`; ethereum `0xb97a79...3ebca3` | ⚠️ Unaudited |
| CErc20gOHMDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6020d8...729bf6`; ethereum `0xc45ad8...8983aa` | ⚠️ Unaudited |
| CErc20Immutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 21 deployments: ethereum `0x0039fe...79013d`; ethereum `0x03e1eb...21fa92`; ethereum `0x0a494b...a2d3b2`; ethereum `0x0eabea...26a2cc`; ethereum `0x140128...5b8920`; ethereum `0x28af5f...523b67`; ethereum `0x3fed9c...2e25e2`; ethereum `0x41b9db...25d198`; ethereum `0x54c312...a14793`; ethereum `0x5c8d6f...9cbbfd`; ethereum `0x7489c6...1039f7`; ethereum `0x8f074d...9a0d77`; ethereum `0x985297...38dd03`; ethereum `0xaa0818...0d4683`; ethereum `0xbbfa20...c2fef2`; ethereum `0xbe8da6...1194ac`; ethereum `0xdb6994...ab03be`; ethereum `0xdf55f9...f83198`; ethereum `0xe7d7b6...020674`; ethereum `0xf00de3...3daca7`; ethereum `0xfb0fce...956ecc` | ⚠️ Unaudited |
| CErc20YearnDelegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x72ab68...d87952` | ⚠️ Unaudited |
| CErc20YearnDelegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf63f89...90e9cb` | ⚠️ Unaudited |
| CErc721ArtBlocksDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30c402...2a82f5`; ethereum `0x58ff25...d63676` | ⚠️ Unaudited |
| CErc721Immutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x5f5df5...7ed23b`; ethereum `0x8c1cfa...a7578f`; ethereum `0xd0f97b...3855be`; ethereum `0xd56c42...470179`; ethereum `0xdf6602...0cf645`; ethereum `0xf6dc34...98415b` | ⚠️ Unaudited |
| CErc721MoonbirdDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x397d11...e7c85b`; ethereum `0xef5804...f70968` | ⚠️ Unaudited |
| CErc721MoonbirdDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac2d3e...133228` | ⚠️ Unaudited |
| CErc721NoSupplyDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9a045b...db4db4`; ethereum `0xdb05d1...b773b0` | ⚠️ Unaudited |
| CErc721SandboxDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fa77f...ded09d`; ethereum `0x518851...afc290` | ⚠️ Unaudited |
| CErc721SandboxDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb630f9...235ff2` | ⚠️ Unaudited |
| CErc721SandboxDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d6013...ba07ca` | ⚠️ Unaudited |
| CErc721V2Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 25 | ethereum | n/a | 26 deployments: ethereum `0x109d97...3e7c97`; ethereum `0x3786f8...5608fe`; ethereum `0x397a7e...5db896`; ethereum `0x432449...40fa1a`; ethereum `0x47919d...03daee`; ethereum `0x57789a...a94727`; ethereum `0x5a5d79...3a63d7`; ethereum `0x5c2cba...b444e0`; ethereum `0x5ce3d9...8bf2f0`; ethereum `0x5daabd...97cee4`; ethereum `0x65da0a...2c33be`; ethereum `0x69de3c...c93e23`; ethereum `0x777a91...e0fbb6`; ethereum `0x780f46...793dff`; ethereum `0x7da479...6f9591`; ethereum `0x833553...f9d99c`; ethereum `0x8d39b0...195d50`; ethereum `0xb2aa23...61b68d`; ethereum `0xb589a8...8718c4`; ethereum `0xc3d8e1...23b59a`; ethereum `0xce072a...88ec57`; ethereum `0xcfc8af...a96e83`; ethereum `0xda8c97...07b93d`; ethereum `0xe3c458...98d392`; ethereum `0xe63d39...22dec0`; ethereum `0xe9e374...506966` | ⚠️ Unaudited |
| CErc721V2Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 7 deployments: ethereum `0x550a4a...385c1b`; ethereum `0x6d2527...4d0854`; ethereum `0x9a4c75...d69430`; ethereum `0xb49655...2283ba`; ethereum `0xe751e2...ccdd3e`; ethereum `0xedafa6...ee8513`; ethereum `0xf1c97d...26cf99` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236553 | `0x052319...6eb95b` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236554 | `0x0a1ef7...d2fd9c` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236555 | `0x4ae741...f0e411` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236556 | `0x588c13...fee086` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6b2a9d...cb2140`; ethereum `0x777ecc...2619a0`; ethereum `0xa56131...f3141b` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236557 | `0xd72929...ccb339` | ⚠️ Unaudited |
| CompoudingVaultOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb746ec...5bb280` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2db946...d51981`; ethereum `0x51eb9f...1b268e`; ethereum `0x65a32c...02456b`; ethereum `0xb81167...011d63`; ethereum `0xcf8102...3ae1a6` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x48e29b...d14abb`; ethereum `0x874ff8...bfbe3d`; ethereum `0xc01c28...985113` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7674cc...915a00`; ethereum `0xd9c86d...20902e` | ⚠️ Unaudited |
| ComptrollerG1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69cb56...b6bcdc` | ⚠️ Unaudited |
| ComptrollerG1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x79b56c...f96206`; ethereum `0xcec075...07596c` | ⚠️ Unaudited |
| ComptrollerG2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x3903e6...1f81c6`; ethereum `0x7312a3...fcde7f`; ethereum `0xbe1417...ea949d` | ⚠️ Unaudited |
| ComptrollerG3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e50db...9aff6e` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x502806...811b40`; ethereum `0xe99ef1...8eb43a` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb70fb6...6ee2f5`; ethereum `0xbe3609...d91f23` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35ae17...95f4a8`; ethereum `0x5ce326...4e1da8` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x32e417...3e89c9`; ethereum `0xc5ecef...a19f65` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x42b747...ee0f3d`; ethereum `0xb6cdf3...da57f1` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae03e...8c8df5` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x896b80...361e8b`; ethereum `0x9ed0dc...d3b5d2` | ⚠️ Unaudited |
| ComptrollerG3Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x00635e...242571`; ethereum `0x9deb56...5f8bc7` | ⚠️ Unaudited |
| ComptrollerG3Paused | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb78bb3...6b98e4` | ⚠️ Unaudited |
| CTokenArtBlocksImmutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7b06c...feb502` | ⚠️ Unaudited |
| CTokenMoonbirdImmutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3cba08...5f899d`; ethereum `0x7bb678...bb2799`; ethereum `0xee2ed5...ea1fd5` | ⚠️ Unaudited |
| DAIInterestRateModelV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x08ffb4...f1f581`; ethereum `0xc9c85e...6364eb` | ⚠️ Unaudited |
| Dop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bb612...1da2ef` | ⚠️ Unaudited |
| DropsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc34568...02ce95`; ethereum `0xc80bf6...1e18ca` | ⚠️ Unaudited |
| ERC20CustomStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x122402...b1892a`; ethereum `0xb85337...580296`; ethereum `0xb9810c...f58ff2`; ethereum `0xc4b734...5d0262` | ⚠️ Unaudited |
| EthMenNftStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8edc7c...6e85c1` | ⚠️ Unaudited |
| FinancialPunk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x458fcd...65ec95` | ⚠️ Unaudited |
| FlashLoanProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x677d18...a8a905`; ethereum `0x8cd5d2...4af7ac`; ethereum `0xcb19f0...778e49`; ethereum `0xf2f600...9d7337` | ⚠️ Unaudited |
| FlashLoanProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcd3d61...bc3452`; ethereum `0xef6e27...6e6089` | ⚠️ Unaudited |
| FoundationTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f10e...c4d7bb` | ⚠️ Unaudited |
| GOHMPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7123f5...0f9a0e` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3c194f...ade5f7`; ethereum `0x4936c7...571f79`; ethereum `0xd9113f...30fecc`; ethereum `0xff1858...e41986` | ⚠️ Unaudited |
| HashToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x300496...c305be`; ethereum `0xf95bd3...b68e8c` | ⚠️ Unaudited |
| HeroFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe74e12...206c16` | ⚠️ Unaudited |
| HeroStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29326f...82da1e` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0177f9...8e532c`; ethereum `0x22f170...db0bc3`; ethereum `0x23d760...fe0a31`; ethereum `0x2d3245...d0d309`; ethereum `0x34140a...a49b03`; ethereum `0x5134d4...b9863b`; ethereum `0x5f951b...fcbda1`; ethereum `0x6ac9a6...a59e75`; ethereum `0x6c89a3...7172db`; ethereum `0x8edc55...a88dc0`; ethereum `0x97e7c5...cd083d`; ethereum `0xb239a7...0df715`; ethereum `0xb83372...3e5c02`; ethereum `0xc7fc03...b91ed2`; ethereum `0xd023a7...78ad4c`; ethereum `0xf5df66...8e4539`; ethereum `0xf724cd...f45d66`; ethereum `0xfac232...71aeb4` | ⚠️ Unaudited |
| LPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f5d42...98ce5d`; ethereum `0x2c9274...2b22eb`; ethereum `0x7ece96...c6163c` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a7801...554df9` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x12846d...6a8eb5`; ethereum `0x408abe...4b78a0` | ⚠️ Unaudited |
| Mortgage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4132d1...1363a1`; ethereum `0x70de78...08c74e`; ethereum `0xe3715a...2bed82` | ⚠️ Unaudited |
| Mortgage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6fc3d7...2e2399`; ethereum `0xbcd6bd...00fb59` | ⚠️ Unaudited |
| Mortgage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xaddc4c...7551c0`; ethereum `0xd5cbd5...b3bf46` | ⚠️ Unaudited |
| NFTCustomStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x28f99f...a496be`; ethereum `0x69b35e...a6b3fd`; ethereum `0xe7bc79...90a37f` | ⚠️ Unaudited |
| NFTLiquidationG1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x113296...8562e3`; ethereum `0xdcbf67...d62041` | ⚠️ Unaudited |
| NFTLiquidationG1 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x11ff91...b9b439`; ethereum `0x556664...7c5d95`; ethereum `0x6b7244...de6035`; ethereum `0xaa95c2...a23e23`; ethereum `0xfad844...175598` | ⚠️ Unaudited |
| NFTLiquidationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17a78c...965b20` | ⚠️ Unaudited |
| NFTStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3bc614...def1a9`; ethereum `0x81b6a8...3e01e5`; ethereum `0x831fa7...f794b3` | ⚠️ Unaudited |
| NodeRunnersFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf060b...ab265f` | ⚠️ Unaudited |
| NodeRunnersLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4919b8...7420c4` | ⚠️ Unaudited |
| NodeRunnersNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x89ee76...71c26a`; ethereum `0xf15fcf...7111cc` | ⚠️ Unaudited |
| NodeRunnersToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739763...55be53` | ⚠️ Unaudited |
| NTFStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf85372...b7421c` | ⚠️ Unaudited |
| PriceNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde5d4d...120fe8` | ⚠️ Unaudited |
| Refinance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4c0793...5024ae`; ethereum `0xf0d08f...629ece` | ⚠️ Unaudited |
| Snapshot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe701bb...d46af8` | ⚠️ Unaudited |
| StakingErc721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd0e5e...5d6bcd` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0c44a5...a32221`; ethereum `0x2bf4c8...2ac1e9`; ethereum `0x565b4d...3c403e`; ethereum `0xd6069e...682209` | ⚠️ Unaudited |
| TokenLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x366c72...353880`; ethereum `0x4ea4e7...2137b6` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1392...e5da89` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00aa1c...7ea1d1` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34abc8...e9b16e` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd9193a...f48e4e`; ethereum `0xe35058...a84892` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3758db...4f263f` | ⚠️ Unaudited |
| VestingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe4e7ab...c8e0e0`; ethereum `0xf3f769...792bc8` | ⚠️ Unaudited |
| VillainFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3bbcc...9ef37d` | ⚠️ Unaudited |
| VillainStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x335ed0...bddb6a` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ba476...cb61b6`; ethereum `0xef181d...0c9203` | ⚠️ Unaudited |
| WstETHPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae8bf...81671c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x089740...2c51d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b3c0...8f1ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bfbfb...391355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7711...26aa85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x415a7a...eb4d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52719d...e63635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5551c7...1d74fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x769461...91b40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ec686...16b813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ff498...53b47d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42035...7d7590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9cb5f...a2926d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab6061...af87d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48be1...2b31f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc183b...fde059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca59b7...760481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4d2fb...ab7b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9d545...c408be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde26e8...734713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8470...952ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6e9d...134491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a514...b884fa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-DropsNFT-v1.0.pdf](https://18550138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-McKlQwRyMZvSyjwnggp%2Fuploads%2FugSmroZsQBlElM4GiqQ3%2FPeckShield-Audit-Report-DropsNFT-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19719] PeckShield-Audit-Report-DropsNFT-v1.0.pdf — no match: Contracts extracted from findings targets. No explicit scope section found, but contracts are clearly identified as audited targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CtokenEx | unmatched — not counted | — | Target in findings PVE-001, PVE-002 | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | ComptrollerG1 | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CToken | unmatched — not counted | — | Target in findings PVE-004, PVE-006, PVE-007 | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CErc20 | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CEther | ambiguous — not counted | CEther (alternative) `0x052319...6eb95b` — deployed 2022-05-16 21:58:08+03 — liveness: live (current_address_book_code)<br>CEther (alternative) `0x4ae741...f0e411` — deployed 2021-07-12 16:55:09+03 — liveness: live (current_address_book_code)<br>CEther (alternative) `0xd72929...ccb339` — deployed 2022-05-04 21:30:41+03 — liveness: live (current_address_book_code)<br>CEther (alternative) `0x0a1ef7...d2fd9c` — deployed 2022-06-04 01:04:26+03 — liveness: live (current_address_book_code)<br>CEther (alternative) `0x588c13...fee086` — deployed 2022-06-10 23:35:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CErc721 | unmatched — not counted | — | Target in finding PVE-008 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x052319...6eb95b` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a1ef7...d2fd9c` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ae741...f0e411` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x588c13...fee086` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd72929...ccb339` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 96 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [19719] PeckShield-Audit-Report-DropsNFT-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
