# Agentic Audit Brief: Ink Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 25 across 8 audit(s)
- Eligible audit results: 17 (8 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ink Bridge (`ink-bridge`)
- Website: [https://inkonchain.com/bridge](https://inkonchain.com/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, ink, optimism, sepolia
- Contract surface: 108 unique implementations (113 raw deployments)
- Coverage basis: 9/13 confirmed own live verified implementations (69.2%); conservative 69.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $41,858,116.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ink Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across ethereum, ink, optimism, sepolia. Structural roles: 11 supporting, 2 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: supporting (11), core (2)
- Contract kinds: contract (13)
- Detected standards: erc1967proxy (7), ownable (2)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (9), solmate (9)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 54 contracts are derived from known codebases. 54 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AddressManager (`0x9b7c9b...a71153`, chain 1)
- ERC5564Announcer (`0x55649e...d45564`, chain 1)
- ERC6538Registry (`0x6538e6...5d6538`, chain 1)
- L1ChugSplashProxy (`0x88ff1e...7663f0`, chain 1)
- Proxy (`0x10d7b3...5b12cd`, chain 1)
- Proxy (`0x14773a...920d38`, chain 1)
- Proxy (`0x5d66c1...5d3e4f`, chain 1)
- Proxy (`0x62c0a1...6e8364`, chain 1)
- Proxy (`0x661235...21e0be`, chain 1)
- Proxy (`0xa8b389...d34d29`, chain 1)
- Proxy (`0xde7444...5e2509`, chain 1)
- ProxyAdmin (`0xd56045...241f79`, chain 1)
- ResolvedDelegateProxy (`0x69d3cf...6c171f`, chain 1)
- UnnamedContract (`0x000000...c78ba3`, chain 57073)
- UnnamedContract (`0x000000...7da032`, chain 57073)
- UnnamedContract (`0x0200c2...8470c1`, chain 57073)
- UnnamedContract (`0x13b0d8...e9bef2`, chain 57073)
- UnnamedContract (`0x39fec5...f2344d`, chain 57073)
- UnnamedContract (`0x3ec384...7fde45`, chain 57073)
- UnnamedContract (`0x420000...000006`, chain 57073)
- UnnamedContract (`0x420000...000007`, chain 57073)
- UnnamedContract (`0x420000...00000f`, chain 57073)
- UnnamedContract (`0x420000...000010`, chain 57073)
- UnnamedContract (`0x420000...000011`, chain 57073)
- UnnamedContract (`0x420000...000012`, chain 57073)
- UnnamedContract (`0x420000...000014`, chain 57073)
- UnnamedContract (`0x420000...000016`, chain 57073)
- UnnamedContract (`0x420000...000017`, chain 57073)
- UnnamedContract (`0x420000...000018`, chain 57073)
- UnnamedContract (`0x420000...000019`, chain 57073)
- UnnamedContract (`0x420000...00001a`, chain 57073)
- UnnamedContract (`0x420000...000020`, chain 57073)
- UnnamedContract (`0x420000...000021`, chain 57073)
- UnnamedContract (`0x420000...000028`, chain 57073)
- UnnamedContract (`0x43edd7...5a9050`, chain 57073)
- UnnamedContract (`0x4e59b4...b4956c`, chain 57073)
- UnnamedContract (`0x55649e...d45564`, chain 57073)
- UnnamedContract (`0x5bff88...c070c0`, chain 57073)
- UnnamedContract (`0x5ff137...6d2789`, chain 57073)
- UnnamedContract (`0x64445f...4e561a`, chain 57073)
- UnnamedContract (`0x6538e6...5d6538`, chain 57073)
- UnnamedContract (`0x69f4d1...6e2938`, chain 57073)
- UnnamedContract (`0x7fc984...088348`, chain 57073)
- UnnamedContract (`0x80eede...d600df`, chain 57073)
- UnnamedContract (`0x90581e...cf7927`, chain 57073)
- UnnamedContract (`0x914d7f...5643d7`, chain 57073)
- UnnamedContract (`0x998739...8f9eda`, chain 57073)
- UnnamedContract (`0xa1dabe...44102b`, chain 57073)
- UnnamedContract (`0xac7367...c2ccb3`, chain 57073)
- UnnamedContract (`0xba5ed0...8ba5ed`, chain 57073)
- UnnamedContract (`0xca11bd...76ca11`, chain 57073)
- UnnamedContract (`0xefc2c1...7a167c`, chain 57073)
- UnnamedContract (`0xf1815b...045d14`, chain 57073)
- UnnamedContract (`0xfb1bff...7191ea`, chain 57073)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 54/81 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/13 (69.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 54 own, 27 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 54 of 108 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/27
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 81
- Unique implementations: 108
- Raw deployments: 113
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 69.2% (Sherlock, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 9 | 33.3% | 2025-03 |
| Sherlock | Tier 1 | 4 | 14.8% | 2024-05 |
| Trail of Bits | Tier 1 | 2 | 7.4% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnchorStateRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-387974 | `0xde7444...5e2509` | ✅ Audited |
| DelayedWETH | token | project_anchor | own_supporting | 1 | ethereum | unit-387972 | `0x14773a...920d38` | ✅ Audited |
| DisputeGameFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-387973 | `0x10d7b3...5b12cd` | ✅ Audited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387978 | `0x69d3cf...6c171f` | ✅ Audited |
| L1ERC721Bridge | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-387975 | `0x661235...21e0be` | ✅ Audited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-387977 | `0x88ff1e...7663f0` | ✅ Audited |
| OptimismMintableERC20Factory | registry | project_anchor | own_supporting | 1 | ethereum | unit-387976 | `0xa8b389...d34d29` | ✅ Audited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387979 | `0x5d66c1...5d3e4f` | ✅ Audited |
| SystemConfig | governance | project_anchor | own_supporting | 1 | ethereum | unit-387971 | `0x62c0a1...6e8364` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-387901 | `0x9b7c9b...a71153` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b0d8...e9bef2` | ⚠️ Unaudited |
| CreateX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5ed0...8ba5ed` | ⚠️ Unaudited |
| EntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x000000...7da032`; ethereum `0x5ff137...6d2789` | ⚠️ Unaudited |
| ERC5564Announcer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387899 | `0x55649e...d45564` | ⚠️ Unaudited |
| ERC6538Registry | registry | project_anchor | own_supporting | 0 | ethereum | unit-387900 | `0x6538e6...5d6538` | ⚠️ Unaudited |
| ETHLockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbd4abb...325a14` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x5a0aae...7c3d2a`; ethereum `0x847b5c...5b9d92`; ethereum `0xbea2bc...fa9bbb`; ethereum `0xc2819d...e3bd03` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f4d1...6e2938` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb1bff...7191ea` | ⚠️ Unaudited |
| Multicall3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca11bd...76ca11` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x998739...8f9eda` | ⚠️ Unaudited |
| MultiSendCallOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1dabe...44102b` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...c78ba3` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x420000...000028` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-387902 | `0xd56045...241f79` | ⚠️ Unaudited |
| SenderCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7fc984...088348`; ethereum `0xefc2c1...7a167c` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95703e...f04a4c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (81)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05c993...3bd525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x180ac4...2ac456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f607...51901c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3454f9...4f3197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c1d29...66a1d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x686f78...6674f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x860e62...db3d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89126a...dcea1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe1d3...c1acc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1c901...ae68c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7db31...442c8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387930 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387931 | `0x000000...7da032` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387932 | `0x0200c2...8470c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387933 | `0x13b0d8...e9bef2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387934 | `0x39fec5...f2344d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387935 | `0x3ec384...7fde45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387936 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387937 | `0x420000...000007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387938 | `0x420000...00000f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387939 | `0x420000...000010` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387940 | `0x420000...000011` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387941 | `0x420000...000012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387942 | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387943 | `0x420000...000016` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387944 | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387945 | `0x420000...000018` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387946 | `0x420000...000019` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387947 | `0x420000...00001a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387948 | `0x420000...000020` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387949 | `0x420000...000021` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387950 | `0x420000...000028` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387951 | `0x43edd7...5a9050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387952 | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387953 | `0x55649e...d45564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387954 | `0x5bff88...c070c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387955 | `0x5ff137...6d2789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387956 | `0x64445f...4e561a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387957 | `0x6538e6...5d6538` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387958 | `0x69f4d1...6e2938` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387959 | `0x7fc984...088348` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387960 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387961 | `0x90581e...cf7927` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387962 | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387963 | `0x998739...8f9eda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387964 | `0xa1dabe...44102b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387965 | `0xac7367...c2ccb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387966 | `0xba5ed0...8ba5ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387967 | `0xca11bd...76ca11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387968 | `0xefc2c1...7a167c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387969 | `0xf1815b...045d14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-387970 | `0xfb1bff...7191ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387903 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387904 | `0x000000...7da032` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387905 | `0x05c993...3bd525` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387906 | `0x13b0d8...e9bef2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387907 | `0x180ac4...2ac456` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387908 | `0x33f607...51901c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387909 | `0x3454f9...4f3197` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387910 | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387911 | `0x55649e...d45564` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387912 | `0x5c1d29...66a1d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387913 | `0x5ff137...6d2789` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387914 | `0x6538e6...5d6538` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387915 | `0x686f78...6674f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387916 | `0x69f4d1...6e2938` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387917 | `0x7fc984...088348` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387918 | `0x860e62...db3d5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387919 | `0x89126a...dcea1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387920 | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387921 | `0x998739...8f9eda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387922 | `0x9fe1d3...c1acc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387923 | `0xa1dabe...44102b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387924 | `0xba5ed0...8ba5ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387925 | `0xca11bd...76ca11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387926 | `0xd1c901...ae68c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387927 | `0xd7db31...442c8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387928 | `0xefc2c1...7a167c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387929 | `0xfb1bff...7191ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2020_10-Rollup-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2020_10-Rollup-TrailOfBits.pdf) | Trail of Bits | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [2021_03-OVM_and_Rollup-OpenZeppelin.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2021_03-OVM_and_Rollup-OpenZeppelin.pdf) | OpenZeppelin | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 53 | high |
| [2021_03-SafetyChecker-ConsenSysDiligence.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2021_03-SafetyChecker-ConsenSysDiligence.pdf) | Consensys Diligence | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2022_05-OpNode-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_05-OpNode-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [2022_08-Bedrock_GoLang-SigmaPrime.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_08-Bedrock_GoLang-SigmaPrime.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2022_10-Drippie-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_10-Drippie-Spearbit.pdf) | Spearbit | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2022_11-Invariant_Testing-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_11-Invariant_Testing-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-11 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 7 | high |
| [2023_01-Bedrock_Updates-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2023_01-Bedrock_Updates-TrailOfBits.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | n/a | matched | 2 | 2 | 0 | 6 | n/a |
| [2024_02-MCP_L1-Cantina.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_02-MCP_L1-Cantina.pdf) | Spearbit | Audit | 2024-02 | stale | Direct | contract_name | matched | 7 | 7 | 0 | 15 | high |
| [2024_05-FaultProofs-Sherlock.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_05-FaultProofs-Sherlock.pdf) | Sherlock | Contest | 2024-05 | stale | Direct | n/a | matched | 4 | 4 | 0 | 3 | n/a |
| [2024_05_SafeLivenessExtensions-Cantina.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_05_SafeLivenessExtensions-Cantina.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2024_08_Fault-Proofs-MIPS_Cantina.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_08_Fault-Proofs-MIPS_Cantina.pdf) | Spearbit | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf) | Spearbit | Audit | 2024-08 | aging | Direct | n/a | matched | 2 | 2 | 0 | 11 | n/a |
| [2024_12-DPM-MiloTruck.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_12-DPM-MiloTruck.pdf) | MiloTruck | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2025_01-MT-Cannon-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_01-MT-Cannon-Spearbit.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2025_02-Upgrade13-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_02-Upgrade13-Spearbit.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 6 | 6 | 0 | 4 | n/a |
| [2025_03-Interop-Contracts-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_03-Interop-Contracts-Spearbit.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | n/a | matched | 2 | 2 | 0 | 13 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5531] 2020_10-Rollup-TrailOfBits.pdf — no match: Extracted contracts from scope section and findings targets. Audit date from cover page.
- [5533] 2021_03-OVM_and_Rollup-OpenZeppelin.pdf — no match: Audit started March 15, 2021, lasted 7 weeks, so end date is approximately May 3, 2021. Scope includes contracts in contracts/optimistic-ethereum/OVM/ and contracts/optimistic-ethereum/libraries/ folders, excluding OVM_BondManager.sol, OVM_SafetyChecker.sol, ERC1820Registry.sol, OVM_DeployerWhitelist.sol, and Lib_RingBuffer.sol (deprecated). All other contracts in those folders are in scope.
- [5534] 2021_03-SafetyChecker-ConsenSysDiligence.pdf — no match: Only one contract in scope: OVM_SafetyChecker. Audit date is March 2021, mapped to last day of month.
- [5536] 2022_05-OpNode-TrailOfBits.pdf — matched: Extracted contract names from the 'Project Targets' section and finding targets. The audit date is from the cover page and delivery date.
- [5537] 2022_08-Bedrock_GoLang-SigmaPrime.pdf — no match: The report scope includes the op-node and op-geth programs (Golang implementations), not individual smart contracts. The date is October 2022, interpreted as end of month.
- [5539] 2022_10-Drippie-Spearbit.pdf — no match: Scope table on page 3 lists all contracts: Drippie, AssetReceiver, Transactor, CheckBalanceHigh, CheckBalanceLow, CheckGelatoLow, CheckTrue, IDripCheck. Audit date from cover page: October 3, 2022.
- [5540] 2022_11-Invariant_Testing-TrailOfBits.pdf — matched: Extracted contract names from Project Targets and Project Coverage sections. GasPriceOracle is explicitly mentioned in findings with file path. Other contracts are from Bedrock smart contracts coverage.
- [5542] 2023_01-Bedrock_Updates-TrailOfBits.pdf — matched: No reason recorded
- [5544] 2024_02-MCP_L1-Cantina.pdf — matched: Extracted contract names from findings context and deployment scripts. No explicit scope section found, but contracts are clearly audited targets.
- [5545] 2024_05-FaultProofs-Sherlock.pdf — matched: No reason recorded
- [5546] 2024_05_SafeLivenessExtensions-Cantina.pdf — no match: No explicit scope section found; contract names extracted from findings and context. Date from cover page: 'June6,2024'.
- [5547] 2024_08_Fault-Proofs-MIPS_Cantina.pdf — no match: The report title and date indicate the audit was completed on August 14, 2024. The scope is implicitly the fault-proofs-mips repository, with contracts MIPS.sol and MIPSInstructions.sol referenced throughout findings.
- [5548] 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf — matched: No reason recorded
- [5550] 2024_12-DPM-MiloTruck.pdf — no match: No explicit scope section found; contracts inferred from report title and findings context.
- [5554] 2025_01-MT-Cannon-Spearbit.pdf — no match: No explicit scope section; contracts inferred from findings context and file paths in report.
- [5555] 2025_02-Upgrade13-Spearbit.pdf — matched: No reason recorded
- [5556] 2025_03-Interop-Contracts-Spearbit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2020_10-Rollup-TrailOfBits.pdf | OVM_SafetyChecker | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_AddressManager | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_BaseChain | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_StateCommitmentChain | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_CanonicalTransactionChain | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_L1CrossDomainMessenger | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_L2CrossDomainMessenger | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_BaseCrossDomainMessenger | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_FraudVerifier | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_StateTransitioner | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_StateTransitionerFactory | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_MerkleUtils | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_TimeboundRingBuffer | unmatched — not counted | — | Listed in scope and findings target | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_MerkleTrie | unmatched — not counted | — | Listed in scope section | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_SecureMerkleTrie | unmatched — not counted | — | Listed in scope section | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_RLPReader | unmatched — not counted | — | Listed in scope section | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_RLPWriter | unmatched — not counted | — | Listed in scope section | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_OVMCodec | unmatched — not counted | — | Listed in scope section | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ExecutionManager | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_MerkleTrie | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_FraudVerifier | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_CanonicalTransactionChain | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ECDSAContractAccount | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Abs_FraudContributor | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_BondManager | unmatched — not counted | — | excluded from scope but mentioned in findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ProxySequencerEntrypoint | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_SequencerEntrypoint | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_StateTransitioner | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_StateManager | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1ERC20Gateway | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Abs_L1TokenGateway | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Abs_L2DepositedToken | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2ToL1MessagePasser | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2CrossDomainMessenger | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1CrossDomainMessenger | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_StateCommitmentChain | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ProxyEOA | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_ResolvedDelegateProxy | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_AddressManager | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_DeployerWhitelist | unmatched — not counted | — | excluded from scope but mentioned in findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1ETHGateway | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1MultiMessageRelayer | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2DepositedERC20 | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ETH | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_CrossDomainEnabled | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Abs_BaseCrossDomainMessenger | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ChainStorageContainer | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_RingBuffer | unmatched — not counted | — | listed in scope but deprecated | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_MerkleTree | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_BytesUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_RLPWriter | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_RLPReader | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_Bytes32Utils | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_SafeExecutionManagerWrapper | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_OVMCodec | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_Math | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_StateCommitmentChain | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_ChainStorageContainer | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_L2ToL1MessagePasser | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_L1TokenGateway | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_BondManager | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_SafetyChecker | unmatched — not counted | — | excluded from scope but mentioned in findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | ERC1820Registry | unmatched — not counted | — | excluded from scope but mentioned in findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_Proposer | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_Sequencer | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2MessageRelayer | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2BatchMessageRelayer | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1MessageSender | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_DecompressionPrecompileAddress | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_StateTransitionerFactory | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | UniswapV2ERC20 | unmatched — not counted | — | listed in scope and findings | no |
| 2021_03-SafetyChecker-ConsenSysDiligence.pdf | OVM_SafetyChecker | unmatched — not counted | — | listed in scope | no |
| 2022_05-OpNode-TrailOfBits.pdf | WithdrawalsRelay | unmatched — not counted | — | listed in scope and finding target | no |
| 2022_05-OpNode-TrailOfBits.pdf | L2CheckpointOracle | unmatched — not counted | — | listed in scope and finding target | no |
| 2022_05-OpNode-TrailOfBits.pdf | DepositFeed | unmatched — not counted | — | listed in scope and finding target | no |
| 2022_05-OpNode-TrailOfBits.pdf | L1Block | unmatched — not counted | — | listed in scope and finding target | no |
| 2022_05-OpNode-TrailOfBits.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x5d66c1...5d3e4f` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_08-Bedrock_GoLang-SigmaPrime.pdf | op-node | unmatched — not counted | — | listed in scope as the rollup node component | no |
| 2022_08-Bedrock_GoLang-SigmaPrime.pdf | op-geth | unmatched — not counted | — | listed in scope as the reference optimistic geth implementation | no |
| 2022_10-Drippie-Spearbit.pdf | Drippie | unmatched — not counted | — | Listed in scope table and findings context | no |
| 2022_10-Drippie-Spearbit.pdf | AssetReceiver | unmatched — not counted | — | Listed in scope table and findings context | no |
| 2022_10-Drippie-Spearbit.pdf | Transactor | unmatched — not counted | — | Listed in scope table and findings context | no |
| 2022_10-Drippie-Spearbit.pdf | CheckBalanceHigh | unmatched — not counted | — | Listed in scope table and findings context | no |
| 2022_10-Drippie-Spearbit.pdf | CheckBalanceLow | unmatched — not counted | — | Listed in scope table and findings context | no |
| 2022_10-Drippie-Spearbit.pdf | CheckGelatoLow | unmatched — not counted | — | Listed in scope table and findings context | no |
| 2022_10-Drippie-Spearbit.pdf | CheckTrue | unmatched — not counted | — | Listed in scope table and findings context | no |
| 2022_10-Drippie-Spearbit.pdf | IDripCheck | unmatched — not counted | — | Listed in scope table and findings context | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | GasPriceOracle | unmatched — not counted | — | listed in scope and detailed findings | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x5d66c1...5d3e4f` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | ResourceMetering | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | L2OutputOracle | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | AddressAliasHelper | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | Burn | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | Encoding | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | Hashing | unmatched — not counted | — | listed in scope and project coverage | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | CrossDomainMessenger | unmatched — not counted | — | — | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L1Block | unmatched — not counted | — | — | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2OutputOracle | unmatched — not counted | — | — | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2ToL1MessagePasser | unmatched — not counted | — | — | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | MerkleTrie | unmatched — not counted | — | — | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x5d66c1...5d3e4f` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | ResourceMetering | unmatched — not counted | — | — | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | SystemConfig | own proxy deployment | Proxy (proxy) (selected) `0x62c0a1...6e8364` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_02-MCP_L1-Cantina.pdf | L1CrossDomainMessenger | own proxy deployment | ResolvedDelegateProxy (proxy) (selected) `0x69d3cf...6c171f` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_02-MCP_L1-Cantina.pdf | L2CrossDomainMessenger | unmatched — not counted | — | mentioned in findings context and scope | no |
| 2024_02-MCP_L1-Cantina.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | FeeVault | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | BaseFeeVault | unmatched — not counted | — | inherits from FeeVault, mentioned in findings | no |
| 2024_02-MCP_L1-Cantina.pdf | L1FeeVault | unmatched — not counted | — | inherits from FeeVault, mentioned in findings | no |
| 2024_02-MCP_L1-Cantina.pdf | SequencerFeeVault | unmatched — not counted | — | inherits from FeeVault, mentioned in findings | no |
| 2024_02-MCP_L1-Cantina.pdf | SystemConfig | own proxy deployment | Proxy (proxy) (selected) `0x62c0a1...6e8364` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_02-MCP_L1-Cantina.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x5d66c1...5d3e4f` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_02-MCP_L1-Cantina.pdf | L2OutputOracle | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | OptimismMintableERC20Factory | own proxy deployment | Proxy (proxy) (selected) `0xa8b389...d34d29` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_02-MCP_L1-Cantina.pdf | L1StandardBridge | own proxy deployment | L1ChugSplashProxy (proxy) (selected) `0x88ff1e...7663f0` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_02-MCP_L1-Cantina.pdf | L2StandardBridge | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | L1ERC721Bridge | own proxy deployment | Proxy (proxy) (selected) `0x661235...21e0be` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_02-MCP_L1-Cantina.pdf | L2ERC721Bridge | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | ERC721Bridge | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | DisputeGameFactory | own proxy deployment | Proxy (proxy) (selected) `0x10d7b3...5b12cd` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_02-MCP_L1-Cantina.pdf | PreimageOracle | unmatched — not counted | — | mentioned in deployImplementations() | no |
| 2024_02-MCP_L1-Cantina.pdf | Mips | unmatched — not counted | — | mentioned in deployImplementations() | no |
| 2024_02-MCP_L1-Cantina.pdf | ResourceMetering | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0xa8b389...d34d29` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x5d66c1...5d3e4f` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x661235...21e0be` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x62c0a1...6e8364` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x14773a...920d38` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x10d7b3...5b12cd` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0xde7444...5e2509` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024_02-MCP_L1-Cantina.pdf | Initializable | unmatched — not counted | — | mentioned in findings context | no |
| 2024_05-FaultProofs-Sherlock.pdf | AnchorStateRegistry | own proxy deployment | Proxy (proxy) (selected) `0xde7444...5e2509` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_05-FaultProofs-Sherlock.pdf | DelayedWETH | own proxy deployment | Proxy (proxy) (selected) `0x14773a...920d38` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_05-FaultProofs-Sherlock.pdf | DisputeGameFactory | own proxy deployment | Proxy (proxy) (selected) `0x10d7b3...5b12cd` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_05-FaultProofs-Sherlock.pdf | FaultDisputeGame | unmatched — not counted | — | — | no |
| 2024_05-FaultProofs-Sherlock.pdf | GameTypes | unmatched — not counted | — | — | no |
| 2024_05-FaultProofs-Sherlock.pdf | LibUDT | unmatched — not counted | — | — | no |
| 2024_05-FaultProofs-Sherlock.pdf | OptimismPortal2 | own proxy deployment | Proxy (proxy) (selected) `0x5d66c1...5d3e4f` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_05_SafeLivenessExtensions-Cantina.pdf | LivenessGuard | unmatched — not counted | — | mentioned in findings context | no |
| 2024_05_SafeLivenessExtensions-Cantina.pdf | LivenessModule | unmatched — not counted | — | mentioned in findings context | no |
| 2024_05_SafeLivenessExtensions-Cantina.pdf | SafeSigners | unmatched — not counted | — | mentioned in findings context | no |
| 2024_05_SafeLivenessExtensions-Cantina.pdf | CouncilSafe | unmatched — not counted | — | mentioned in findings context | no |
| 2024_08_Fault-Proofs-MIPS_Cantina.pdf | MIPS | unmatched — not counted | — | listed in scope and findings context | no |
| 2024_08_Fault-Proofs-MIPS_Cantina.pdf | MIPSInstructions | unmatched — not counted | — | listed in scope and findings context | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | AlphabetVM | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | AnchorStateRegistry | own proxy deployment | Proxy (proxy) (selected) `0xde7444...5e2509` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | DisputeGameFactory | own proxy deployment | Proxy (proxy) (selected) `0x10d7b3...5b12cd` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | FaultDisputeGame | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | GameId | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | IFaultDisputeGame | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | LPPMetadataLib | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | LibClock | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | LibPosition | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | LibUDT | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | PreimageKeyLib | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | PreimageOracle | unmatched — not counted | — | — | no |
| 2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf | WETHMock | unmatched — not counted | — | — | no |
| 2024_12-DPM-MiloTruck.pdf | DeputyPauseModule | unmatched — not counted | — | listed in scope and findings | no |
| 2024_12-DPM-MiloTruck.pdf | SelfAuthorized | unmatched — not counted | — | mentioned in finding L-2 context | no |
| 2024_12-DPM-MiloTruck.pdf | Executor | unmatched — not counted | — | mentioned in finding I-1 context | no |
| 2024_12-DPM-MiloTruck.pdf | IDeputyGuardianModule | unmatched — not counted | — | interface referenced in findings | no |
| 2025_01-MT-Cannon-Spearbit.pdf | MIPS64 | unmatched — not counted | — | mentioned in findings context | no |
| 2025_01-MT-Cannon-Spearbit.pdf | MIPS64Instructions | unmatched — not counted | — | mentioned in findings context | no |
| 2025_01-MT-Cannon-Spearbit.pdf | MIPS64Syscalls | unmatched — not counted | — | mentioned in findings context | no |
| 2025_01-MT-Cannon-Spearbit.pdf | MIPS64Memory | unmatched — not counted | — | mentioned in findings context | no |
| 2025_02-Upgrade13-Spearbit.pdf | AnchorStateRegistry | own proxy deployment | Proxy (proxy) (selected) `0xde7444...5e2509` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_02-Upgrade13-Spearbit.pdf | DelayedWETH | own proxy deployment | Proxy (proxy) (selected) `0x14773a...920d38` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_02-Upgrade13-Spearbit.pdf | DisputeGameFactory | own proxy deployment | Proxy (proxy) (selected) `0x10d7b3...5b12cd` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_02-Upgrade13-Spearbit.pdf | FaultDisputeGame | unmatched — not counted | — | — | no |
| 2025_02-Upgrade13-Spearbit.pdf | L1StandardBridge | own proxy deployment | L1ChugSplashProxy (proxy) (selected) `0x88ff1e...7663f0` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_02-Upgrade13-Spearbit.pdf | OPContractsManager | unmatched — not counted | — | — | no |
| 2025_02-Upgrade13-Spearbit.pdf | OptimismPortal2 | own proxy deployment | Proxy (proxy) (selected) `0x5d66c1...5d3e4f` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_02-Upgrade13-Spearbit.pdf | ProtocolVersions | unmatched — not counted | — | — | no |
| 2025_02-Upgrade13-Spearbit.pdf | SuperchainConfig | unmatched — not counted | — | — | no |
| 2025_02-Upgrade13-Spearbit.pdf | SystemConfig | own proxy deployment | Proxy (proxy) (selected) `0x62c0a1...6e8364` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_03-Interop-Contracts-Spearbit.pdf | CrossL2Inbox | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | ETHLiquidity | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | L1Block | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | L1BlockInterop | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | L2ToL1MessagePasser | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | L2ToL2CrossDomainMessenger | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | OptimismPortal2 | own proxy deployment | Proxy (proxy) (selected) `0x5d66c1...5d3e4f` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_03-Interop-Contracts-Spearbit.pdf | OptimismPortalInterop | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SharedLockbox | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SuperchainConfig | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SuperchainConfigInterop | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SuperchainERC20 | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SuperchainTokenBridge | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SuperchainWETH | unmatched — not counted | — | — | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SystemConfig | own proxy deployment | Proxy (proxy) (selected) `0x62c0a1...6e8364` — deployed 2024-12-06 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9b7c9b...a71153` | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55649e...d45564` | ERC5564Announcer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6538e6...5d6538` | ERC6538Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 81 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 25 own (25 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 158 unmatched
- Matched-own operational status: 25 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, medium=3
- Match method counts: unique_name=25

Zero-match audit list:

- [5531] 2020_10-Rollup-TrailOfBits.pdf
- [5533] 2021_03-OVM_and_Rollup-OpenZeppelin.pdf
- [5534] 2021_03-SafetyChecker-ConsenSysDiligence.pdf
- [5537] 2022_08-Bedrock_GoLang-SigmaPrime.pdf
- [5539] 2022_10-Drippie-Spearbit.pdf
- [5546] 2024_05_SafeLivenessExtensions-Cantina.pdf
- [5547] 2024_08_Fault-Proofs-MIPS_Cantina.pdf
- [5550] 2024_12-DPM-MiloTruck.pdf
- [5554] 2025_01-MT-Cannon-Spearbit.pdf

Fork inheritance lineage and inherited audits are included when available.
