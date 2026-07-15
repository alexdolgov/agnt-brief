# Agentic Audit Brief: YieldNest

## Export Authority

- Production state: **published scope**
- Raw selected rows: 25 across 10 audit(s)
- Eligible audit results: 14 (10 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: YieldNest (`yieldnest`)
- Website: [https://yieldnest.finance/](https://yieldnest.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, ink, optimism
- Contract surface: 82 unique implementations (309 raw deployments)
- Coverage basis: 6/11 confirmed own live verified implementations (54.5%); conservative 54.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,891,692.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YieldNest. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, base, berachain, bsc, ethereum, ink, optimism. Structural roles: 7 core, 4 supporting, 2 unclassified. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (7), supporting (4), unclassified (2)
- Contract kinds: contract (7), abstract (6)
- Detected standards: erc1967proxy (10)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (10)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x68589a...44ed5d`, chain 1)
- UnnamedContract (`0x7159cc...8a45ba`, chain 1)
- UnnamedContract (`0x8c33a1...59cd7d`, chain 1)
- UnnamedContract (`0xe439fe...26536e`, chain 1)
- TransparentUpgradeableProxy (`0x01ba69...4c15d8`, chain 1)
- TransparentUpgradeableProxy (`0x09db87...373a48`, chain 1)
- TransparentUpgradeableProxy (`0x1d6b2a...95c12b`, chain 1)
- TransparentUpgradeableProxy (`0x35ec69...42630c`, chain 1)
- TransparentUpgradeableProxy (`0x3db228...ddcb4b`, chain 1)
- TransparentUpgradeableProxy (`0x40d5ff...652351`, chain 1)
- TransparentUpgradeableProxy (`0x657d9a...c96dcb`, chain 1)
- TransparentUpgradeableProxy (`0xdb8e54...af0511`, chain 10)
- TransparentUpgradeableProxy (`0xe231db...635a61`, chain 10)
- TransparentUpgradeableProxy (`0x304b58...74b509`, chain 56)
- TransparentUpgradeableProxy (`0x32c830...0a2c5f`, chain 56)
- TransparentUpgradeableProxy (`0x78839c...606a56`, chain 56)
- UnnamedContract (`0x0ce01d...bc1576`, chain 57073)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/11 (54.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 66 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 45
- Confirmed-live implementations: 16 of 82 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/69
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 82
- Raw deployments: 309
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 10 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 36.4% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 5.8% | 2024-08 |
| Zokyo | Tier 2 | 4 | 5.8% | 2025-04 |
| Composable Security | Tier 2 | 2 | 2.9% | 2025-01 |
| unknown | Tier 2 | 2 | 2.9% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KernelStrategy | core_logic | project_anchor | own_supporting | 1 | bsc | unit-397617 | 2 deployments: bsc `0x78839c...606a56`; bsc `0xa40870...30782b` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-397608 | `0x40d5ff...652351` | ✅ Audited |
| RewardsReceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397609 | `0x1d6b2a...95c12b` | ✅ Audited |
| Vault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-397618 | `0x32c830...0a2c5f` | ✅ Audited |
| ynEigen | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397611 | `0x35ec69...42630c` | ✅ Audited |
| ynETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397610 | `0x09db87...373a48` | ✅ Audited |

### ⚠️ Verified + Unaudited (63)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031ae4...9d6879` | ⚠️ Unaudited |
| BfBTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba91a9...19bd1b` | ⚠️ Unaudited |
| BNBRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x15f193...536448`; bsc `0x302ead...66bc8e`; bsc `0x3ad709...d9be5b`; bsc `0x4165b2...f0d169`; bsc `0x647c74...d506e8`; bsc `0x90d8a4...70f49e`; bsc `0xa4dcb6...7df173`; bsc `0xbbc407...943c04`; bsc `0xbc724f...78509f`; bsc `0xc5d755...986f7f`; bsc `0xd25867...e7a159`; bsc `0xd4943a...cb0e29` | ⚠️ Unaudited |
| BscContracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 27 deployments: bsc `0x0f503d...8bf0b3`; bsc `0x12f4d0...dfedef`; bsc `0x15575e...10a648`; bsc `0x19e171...ed1ab8`; bsc `0x1ee8bb...4d2271`; bsc `0x311952...ba1724`; bsc `0x385812...544f89`; bsc `0x511886...a95999`; bsc `0x51b9c1...4f06a0`; bsc `0x56df02...c1c069`; bsc `0x579aef...35c2b9`; bsc `0x6515f8...e482c0`; bsc `0x65d7af...a828b9`; bsc `0x687572...93d294`; bsc `0x6efc75...52afaf`; bsc `0x79f72e...384620`; bsc `0x7fd19e...ad0eb5`; bsc `0x85e2b4...c25dbb`; bsc `0x94db8f...a125bd`; bsc `0x97e1dd...9bcaa2`; bsc `0xaeb1da...be3408`; bsc `0xb47dca...0309a8`; bsc `0xcc631b...8f3f03`; bsc `0xce5de5...5e4484`; bsc `0xd15e64...ccfdd3`; bsc `0xdb9355...1c5dfb`; bsc `0xf75bbe...f2e8d2` | ⚠️ Unaudited |
| BTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x1bbcf4...a06402`; bsc `0x285c45...e2cca1`; bsc `0x2f5779...45fad1`; bsc `0x680b0d...27bd73`; bsc `0x6e9108...f1ef42`; bsc `0x7573ee...e16f5c`; bsc `0x75d4d5...c1a798`; bsc `0x8d44fc...b72e40`; bsc `0x8ef7a0...057b52`; bsc `0xa4fe81...857dc0`; bsc `0xc31432...25992f`; bsc `0xd47b9c...0b17bf` | ⚠️ Unaudited |
| ClisBnbStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1cbfbc...5e2252`; bsc `0xa9ff5a...ced71e` | ⚠️ Unaudited |
| ClisBnbStrategyRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe77f43...9f4eaf` | ⚠️ Unaudited |
| CoBTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x245272...7eb5f7` | ⚠️ Unaudited |
| ERC4626WrapperStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd1573d...cff141` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x8e20ea...c4de2e`; ethereum `0xa08f39...6141c3`; ethereum `0xdf51b7...0028ef`; ethereum `0xfcad67...5d6975` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x721688...85d436` | ⚠️ Unaudited |
| KernelClisStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x032769...667834`; bsc `0x445af1...3cd980` | ⚠️ Unaudited |
| KernelClisStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2a21a9...c05829`; bsc `0xf98f91...8c7762` | ⚠️ Unaudited |
| KernelClisStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x532774...c76f71`; bsc `0xbdeb0b...dc4235`; bsc `0xdf4e25...60e835`; bsc `0xf5999f...f364fc` | ⚠️ Unaudited |
| KernelClisVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x20fc8d...cd9e7b`; bsc `0x3afcd6...0a043d`; bsc `0xccf06a...d7eff3`; bsc `0xddb4eb...0fa8f1` | ⚠️ Unaudited |
| KernelClisVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc0eefc...81fe77`; bsc `0xe8bea9...d8d6ee` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x073929...05b6ae`; bsc `0x1776de...731e85`; bsc `0x315840...69db9a`; bsc `0x3936ad...228dcc`; bsc `0x40eaa8...f1dc22`; bsc `0x58e11a...13add9`; bsc `0x5de8c7...29762c`; bsc `0x6254fa...6e30bd`; bsc `0x92e009...d47f97`; bsc `0xa5a7a2...dc186d`; bsc `0xaa33d2...f6465c`; bsc `0xb6582f...f6822f`; bsc `0xef2f5b...b9b9bd`; bsc `0xff2501...787735` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0e6464...05acb3`; bsc `0x1b0157...224ab7` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x132376...adf547`; bsc `0x835349...c98a76` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1d9279...87287d`; bsc `0x517fa7...bcc802` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x43a224...a16119`; bsc `0x6ec6b7...9d59a1` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x504a89...e7315b`; bsc `0x5a04d4...b81cf8` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6a786b...6a26e1`; bsc `0x7e020a...65b4cd` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x99155a...c0ee81`; bsc `0xebdb33...de4b5c` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa0f29c...27e04d`; bsc `0xc64f2b...37581d` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: bsc `0x05f626...9ecfbd`; bsc `0x0c12a3...c6f0e5`; bsc `0x0e5bc7...fb9229`; bsc `0x1f18d0...6fe250`; bsc `0x2275fe...1762b5`; bsc `0x29fd26...d7d151`; bsc `0x40391c...1835f0`; bsc `0x5b59f9...7b006f`; bsc `0x6cce89...55ee98`; bsc `0xa70da4...01edf4`; bsc `0xb45c74...cba5e3`; bsc `0xcd14b7...a945e7`; bsc `0xd25b69...08b622`; bsc `0xda6bc0...34b93e`; bsc `0xec9063...c73d95` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0e4ffa...deaed8`; bsc `0x39c6ac...5eec5a` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x209fa3...d60e28`; bsc `0x7cb1e7...124d11` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x26b69e...1c5af3`; bsc `0x849a31...00877f` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x545a2c...974e88`; bsc `0x77c601...3432b7` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x728f22...743839`; bsc `0x7c984e...28e183` | ⚠️ Unaudited |
| L1Contracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e7149...45b6f2`; ethereum `0x4396bf...dc2f82` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | project_anchor | own_supporting | 1 | optimism | unit-397615 | `0xdb8e54...af0511` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | project_anchor | own_supporting | 1 | optimism | unit-397614 | `0xe231db...635a61` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xdb8e54...af0511` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xdb8e54...af0511` | ⚠️ Unaudited |
| MainnetActors | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: ethereum `0x2ddcee...9429e2`; ethereum `0xccfdbf...7cb385`; bsc `0x032953...339eca`; bsc `0x29a1e5...fa3153`; bsc `0x333ca7...a0af4f`; bsc `0x4baf25...76dce4`; bsc `0x5ba7c7...a21d02`; bsc `0x5db73f...8df880`; bsc `0x989c5e...4041b4`; bsc `0x9a9972...a01788`; bsc `0xa4a1ef...1899ca`; bsc `0xcc1140...e84add`; bsc `0xcfa76b...2466b4`; bsc `0xdbed1f...ffd93a`; bsc `0xedea31...584ca0` | ⚠️ Unaudited |
| MainnetKernelActors | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x04ec3e...28e0c1`; bsc `0x1c54f2...a725ad`; bsc `0x21f4a7...3dac66`; bsc `0x330164...c6a801`; bsc `0x3e2d6d...9df4eb`; bsc `0x5bda4d...71588d`; bsc `0x7206de...fc6620`; bsc `0x93fd6d...273d5f`; bsc `0x9a44dd...4aa146`; bsc `0xa4e3c8...765e13`; bsc `0xaff40d...a7d0b5`; bsc `0xb3c384...16b27c`; bsc `0xd9963d...52406c`; bsc `0xe3d8c3...e43e69` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38585e...df5e8b`; ethereum `0x84fe8e...9b574f` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x615635...e5c534`; ethereum `0x632e20...1e0ac5` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2f8fac...7d2985`; bsc `0x4c9084...4cce49` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xfebd26...f6b67b`; bsc `0xff4910...317bc0` | ⚠️ Unaudited |
| ParaswapValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc742e2...11712b`; ethereum `0xf22375...40f419` | ⚠️ Unaudited |
| Provider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x084c21...62ec85`; ethereum `0xb03299...b6fca3`; bsc `0x0b26d0...e3ee35`; bsc `0x233838...9a1499`; bsc `0x75cdf9...1b8c36`; bsc `0xcff9d3...147d59`; bsc `0xd84cc5...a6a739`; bsc `0xe3522c...93d15c`; bsc `0xe5e9f6...71d0f4` | ⚠️ Unaudited |
| ProxyUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x066b29...225776`; bsc `0xe5ae49...f6a744` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b4b43...86fcaf` | ⚠️ Unaudited |
| SingleVault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-397616 | `0x304b58...74b509` | ⚠️ Unaudited |
| StakingNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x56d43f...857117`; ethereum `0x79388c...e65e1e` | ⚠️ Unaudited |
| StakingNodesManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8e0b49...4d41ab`; ethereum `0xf1eb27...55a7ce` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 31 deployments: ethereum `0x16748a...a319b3`; ethereum `0x739711...db132d`; bsc `0x054dda...3262c1`; bsc `0x1db000...4fc974`; bsc `0x2f3fed...ca1f40`; bsc `0x422e63...acc5ce`; bsc `0x437794...8bf9aa`; bsc `0x49f08d...cf965f`; bsc `0x4cffbf...da0e70`; bsc `0x4ec7ad...ee94e4`; bsc `0x527c69...5abcb2`; bsc `0x53b40d...5981c1`; bsc `0x540af4...43d5c8`; bsc `0x58ec65...774aa2`; bsc `0x5e5f6a...01f292`; bsc `0x62201c...2ed81b`; bsc `0x81f34d...801b1f`; bsc `0x870fe5...5a7edb`; bsc `0xa1ece8...477cdd`; bsc `0xa6c9fc...20870b`; bsc `0xb97f60...f6f973`; bsc `0xbea8b8...94320e`; bsc `0xcade25...4cf9f9`; bsc `0xced6a6...90de5b`; bsc `0xcf48d2...d91234`; bsc `0xd7c83d...7ed06c`; bsc `0xdbab6c...e03d49`; bsc `0xdbf332...225040`; bsc `0xe698e3...4ab856`; bsc `0xe7f2ce...b90f1a`; bsc `0xf8d764...5e5958` | ⚠️ Unaudited |
| TokenStakingNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x28fd4c...9c41fd`; ethereum `0x74ff5c...d43655` | ⚠️ Unaudited |
| TokenStakingNodesManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29ac77...747b6b`; ethereum `0x6fbd79...6adb2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42fb68...b8baab`; ethereum `0xd07049...f3dadd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 37 deployments: bsc `0x0a4f24...06701d`; bsc `0x1b7475...61eab4`; bsc `0x30d5a4...4318f0`; bsc `0x310e54...9c2b5f`; bsc `0x31280a...a05663`; bsc `0x3cd882...1c9e44`; bsc `0x3f574f...c31e58`; bsc `0x459265...72ba6e`; bsc `0x4e6272...f8c1a7`; bsc `0x552ab7...615578`; bsc `0x5e6a35...97474e`; bsc `0x61097d...69ed47`; bsc `0x633b17...8f24e0`; bsc `0x63b446...3fee43`; bsc `0x67aec6...905246`; bsc `0x6a60e6...699836`; bsc `0x76ee68...83b4a7`; bsc `0x7c81ee...162e6d`; bsc `0x7e0cfb...882fbc`; bsc `0x878546...9a9c9a`; bsc `0x91597e...8a16bb`; bsc `0x9bb84d...3fbe75`; bsc `0xae0b0e...cf30e1`; bsc `0xae8cf1...d1a726`; bsc `0xb1cfb0...c89059`; bsc `0xb240f4...e7e0b9`; bsc `0xb35c64...e6ca41`; bsc `0xba0738...016fd9`; bsc `0xc60268...26f801`; bsc `0xc82bfd...8d9748`; bsc `0xd38855...1585f1`; bsc `0xd3e7e4...01de56`; bsc `0xd58d73...571bc1`; bsc `0xd77621...4f25e2`; bsc `0xe840d5...961529`; bsc `0xf989ab...217d02`; bsc `0xfa9f90...9ad2de` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-397613 | `0x01ba69...4c15d8` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-397612 (2 proxies) | 2 deployments: ethereum `0x3db228...ddcb4b`; ethereum `0x657d9a...c96dcb` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0x3be73e...9c4e73`; bsc `0x1095f8...064cf5`; bsc `0x741ab3...d02bdf`; bsc `0xce11f5...0f4978`; bsc `0xf661a9...f02d0f` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x41f928...216ed4`; bsc `0xffc262...3fe84c` | ⚠️ Unaudited |
| VaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5f0efd...76f235`; bsc `0xb85924...8c0614`; bsc `0xd19c84...85231b` | ⚠️ Unaudited |
| WithdrawalsProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x487d9a...d7930d`; ethereum `0x4b2552...d5620f`; ethereum `0xd1cc0f...3a3fa7` | ⚠️ Unaudited |
| XReferralAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x654f54...614c5e`; bsc `0x8b890f...8cc60d` | ⚠️ Unaudited |
| XReferralAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xca5416...4d119d`; bsc `0xe4bbb9...85ff1e` | ⚠️ Unaudited |
| ynViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb088fe...08519d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x30433f40303a4f520b0df00be5a9970d000fd9b4) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xdb8e54...af0511` | ❓ Unverified |
| Proxy (impl: 0x51e47f6739a9a6fce4817aa7bce388e78de50574) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xdb8e54...af0511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed0eb...327557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397603 | `0x68589a...44ed5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397604 | `0x7159cc...8a45ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397605 | `0x8c33a1...59cd7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc26328...8243c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397606 | `0xe439fe...26536e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21cbb2...f6d46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fda22...734871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ed294...bc06a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x839325...a9b7b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397607 | `0x0ce01d...bc1576` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | n/a | matched | 4 | 3 | 0 | 16 | n/a |
| [2024-05-07-zokyo-yieldnest_protocol_audit.pdf](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-05-07-zokyo-yieldnest_protocol_audit.pdf) | unknown | Audit | 2024-05 | stale | Direct | n/a | matched | 3 | 2 | 0 | 5 | n/a |
| [chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | n/a | matched | 4 | 3 | 0 | 15 | n/a |
| [chainsecurity_yieldnest_protocol_audit_aug_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit_aug_2024.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | n/a | matched | 5 | 4 | 0 | 25 | n/a |
| [composable_security_yieldnest_jan_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/composable_security_yieldnest_jan_2025.pdf) | Composable Security | Audit | 2025-01 | aging | Direct | n/a | matched | 2 | 2 | 0 | 10 | n/a |
| [yieldnest_clisbnb_strategy_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_clisbnb_strategy_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [yieldnest_default_asset_index_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_default_asset_index_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [yieldnest_max_vault_withdrawer_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_max_vault_withdrawer_audit_report.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [zokyo_audit_yieldnest_Jan8th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_Jan8th_2025.pdf) | Zokyo | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 1 | 0 | 5 | n/a |
| [zokyo_audit_yieldnest_dec12th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_dec12th_2024.pdf) | Zokyo | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [zokyo_audit_yieldnest_feb4th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_feb4th_2025.pdf) | Zokyo | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [zokyo_yneigen_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneigen_audit_yieldnest_april_2025.pdf) | Zokyo | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [zokyo_yneth_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneth_audit_yieldnest_april_2025.pdf) | Zokyo | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [zokyo_audit_yieldnest_May7th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_May7th_2024.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 2 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6053] 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf — matched: No reason recorded
- [6054] 2024-05-07-zokyo-yieldnest_protocol_audit.pdf — matched: No reason recorded
- [6067] chainsecurity_yieldnest_protocol_audit.pdf — matched: No reason recorded
- [6068] chainsecurity_yieldnest_protocol_audit_aug_2024.pdf — matched: No reason recorded
- [6069] composable_security_yieldnest_jan_2025.pdf — matched: No reason recorded
- [6070] yieldnest_clisbnb_strategy_audit_report.pdf — no match: Scope section lists 5 files with paths; contract names extracted from filenames.
- [6071] yieldnest_default_asset_index_audit_report.pdf — no match: No explicit scope section or file listing; contracts inferred from findings and codebase overview. No audit date found.
- [6072] yieldnest_max_vault_withdrawer_audit_report.pdf — no match: Scope section lists 7 files/contracts. Date inferred from 'Feb 2025' at top of report.
- [6073] zokyo_audit_yieldnest_Jan8th_2025.pdf — matched: No reason recorded
- [6075] zokyo_audit_yieldnest_dec12th_2024.pdf — matched: Scope section explicitly lists 5 contracts with file paths.
- [6076] zokyo_audit_yieldnest_feb4th_2025.pdf — matched: Scope explicitly lists 6 contracts from Yieldnest repository.
- [6077] zokyo_yneigen_audit_yieldnest_april_2025.pdf — no match: Scope explicitly listed four contracts from the yieldnest-protocol repository.
- [6078] zokyo_yneth_audit_yieldnest_april_2025.pdf — matched: Audit report clearly lists two contracts in scope: StakingNode.sol and StakingNodesManager.sol. Date found in header: 'April 28th 2025'.
- [28439] zokyo_audit_yieldnest_May7th_2024.pdf — matched: Scope explicitly lists ynETH.sol, RewardDistributor.sol, RewardsReceiver.sol, StakingNode.sol, StakingNodesManager.sol, YieldNestOracle.sol, LSDStakingNode.sol. ynLSD is mentioned as a contract name. Audit date from cover page: May 7th 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | DepositRootGenerator | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IEigenLayerBeaconOracle | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ILSDStakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IOracle | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IRewardsDistributor | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IRewardsReceiver | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IStakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IStakingNodesManager | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IynETH | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IynLSD | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | PlaceholderContract | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | RewardsDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40d5ff...652351` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | StakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ynBase | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ynLSD | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | RewardDistributor | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | StakingNode | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | ynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | DepositRootGenerator | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IEigenLayerBeaconOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IRewardsDistributor | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IRewardsReceiver | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IStakingNodesManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IynETH | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | PlaceholderContract | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | RewardsDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40d5ff...652351` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | StakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | ynBase | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | ynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | Constants | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | DepositRootGenerator | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | EigenStrategyManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IEigenLayerBeaconOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ILSDStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IRewardsDistributor | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IRewardsReceiver | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IStakingNodesManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IynETH | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | LSDRateProvider | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | PlaceholderContract | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | RewardsDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40d5ff...652351` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | StakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | TokenStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | TokenStakingNodesManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | WithdrawalQueueManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynBase | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynETHRedemptionAssetsVault | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynEigen | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x35ec69...42630c` — deployed 2024-08-17 01:32:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynEigenDepositAdapter | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynLSD | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BNBRateProvider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BTCRateProvider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BaseKernelRateProvider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BaseVault | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | FeeMath | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | Guard | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | KernelClisStrategy | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | KernelStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x78839c...606a56` — deployed 2024-12-19 04:18:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| composable_security_yieldnest_jan_2025.pdf | MigratedKernelStrategy | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | Provider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x01ba69...4c15d8` — deployed 2025-06-10 15:57:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3db228...ddcb4b` — deployed 2025-06-13 17:13:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x32c830...0a2c5f` — deployed 2024-12-27 08:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x657d9a...c96dcb` — deployed 2024-11-06 11:52:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-12-27 was 5d from audit; next candidate 56d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| composable_security_yieldnest_jan_2025.pdf | ynETHxVault | unmatched — not counted | — | — | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | ClisBnbStrategy | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | ClisBnbStrategyRateProvider | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | ISlisBnbProvider | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | Interaction | unmatched — not counted | — | listed in scope | no |
| yieldnest_default_asset_index_audit_report.pdf | Vault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x01ba69...4c15d8` — deployed 2025-06-10 15:57:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3db228...ddcb4b` — deployed 2025-06-13 17:13:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x32c830...0a2c5f` — deployed 2024-12-27 08:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x657d9a...c96dcb` — deployed 2024-11-06 11:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| yieldnest_default_asset_index_audit_report.pdf | VaultLib | unmatched — not counted | — | mentioned in findings | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | VaultLib | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | AsyncWithdrawalLib | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | OriginWithdrawalLib | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | Provider | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | Withdrawer | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | BaseWithdrawer | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | BTCRateProvider | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | BaseKernelRateProvider | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | KernelClisStrategy | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | KernelRateProvider | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | KernelStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x78839c...606a56` — deployed 2024-12-19 04:18:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | MigratedKernelStrategy | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | Guard | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | Provider | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x01ba69...4c15d8` — deployed 2025-06-10 15:57:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3db228...ddcb4b` — deployed 2025-06-13 17:13:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x32c830...0a2c5f` — deployed 2024-12-27 08:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x657d9a...c96dcb` — deployed 2024-11-06 11:52:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-12-27 was 15d from audit; next candidate 36d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_dec12th_2024.pdf | ynETHxVault | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | StakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_feb4th_2025.pdf | EigenStrategyManager | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | TokenStakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | TokenStakingNodesManager | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | EigenStrategyManager | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | TokenStakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | TokenStakingNodesManager | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| zokyo_yneth_audit_yieldnest_april_2025.pdf | StakingNode | unmatched — not counted | — | listed in scope: 'Within the scope of this audit, the team of auditors reviewed the following contract(s): StakingNode.sol StakingNodesManager.sol' | no |
| zokyo_yneth_audit_yieldnest_april_2025.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87...373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | RewardDistributor | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a...95c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | StakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1...59cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | ynLSD | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | YieldNestOracle | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | LSDStakingNode | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xdb8e54...af0511` | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe231db...635a61` | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x304b58...74b509` | SingleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x01ba69...4c15d8` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3db228...ddcb4b` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 25 own (18 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 108 unmatched
- Matched-own operational status: 25 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1
- Match method counts: temporal_name=2, unique_name=23

Zero-match audit list:

- [6070] yieldnest_clisbnb_strategy_audit_report.pdf
- [6071] yieldnest_default_asset_index_audit_report.pdf
- [6072] yieldnest_max_vault_withdrawer_audit_report.pdf
- [6077] zokyo_yneigen_audit_yieldnest_april_2025.pdf

Fork inheritance lineage and inherited audits are included when available.
