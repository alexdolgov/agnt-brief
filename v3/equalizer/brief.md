# Agentic Audit Brief: Equalizer

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Equalizer (`equalizer`)
- Website: [https://equalizer.exchange/](https://equalizer.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, fantom, sonic
- Contract surface: 121 unique implementations (121 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $741,145.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Equalizer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across base, fantom, sonic. Structural roles: 19 supporting, 3 core, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: supporting (19), core (3), unclassified (1)
- Contract kinds: contract (22), unclassified (1)
- Detected standards: multicall (5), erc165 (3), erc721 (3), erc1967proxy (2)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (2), uniswap-v3 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 90 contracts are derived from known codebases. 90 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x17fa9d...cb10b4`, chain 146)
- UnnamedContract (`0x1c065b...d303fa`, chain 146)
- UnnamedContract (`0x304511...f7235a`, chain 146)
- UnnamedContract (`0x30f45d...e5ce3b`, chain 146)
- UnnamedContract (`0x3fd3a0...4865a6`, chain 146)
- UnnamedContract (`0x547db6...6e937e`, chain 146)
- UnnamedContract (`0xbf4bfe...fb4b4b`, chain 146)
- UnnamedContract (`0xddd984...528fcc`, chain 146)
- UnnamedContract (`0xddf26b...0d5f19`, chain 146)
- UnnamedContract (`0x03f7ad...029ec5`, chain 250)
- UnnamedContract (`0x05733d...905ac9`, chain 250)
- UnnamedContract (`0x0b5c7b...de8516`, chain 250)
- UnnamedContract (`0x0d90b1...9fccf0`, chain 250)
- UnnamedContract (`0x0fb84a...e354c4`, chain 250)
- UnnamedContract (`0x162378...0c9113`, chain 250)
- UnnamedContract (`0x2c9344...484fce`, chain 250)
- UnnamedContract (`0x380bd5...e2c7dc`, chain 250)
- UnnamedContract (`0x59f557...05db35`, chain 250)
- UnnamedContract (`0x6690ad...863eca`, chain 250)
- UnnamedContract (`0x8e2a63...dfd06f`, chain 250)
- UnnamedContract (`0x940407...65b2b3`, chain 250)
- UnnamedContract (`0x9ca980...02a979`, chain 250)
- UnnamedContract (`0x9e4fb3...171060`, chain 250)
- UnnamedContract (`0xb0f598...eb079f`, chain 250)
- UnnamedContract (`0xc4a987...e7506c`, chain 250)
- UnnamedContract (`0xd0f8d5...a1ed8b`, chain 250)
- UnnamedContract (`0xe17e46...055c4e`, chain 250)
- UnnamedContract (`0x28c9c7...d51c53`, chain 8453)
- UnnamedContract (`0x30f45d...e5ce3b`, chain 8453)
- UnnamedContract (`0x44621c...005685`, chain 8453)
- UnnamedContract (`0x54016a...d9c32c`, chain 8453)
- UnnamedContract (`0x547db6...6e937e`, chain 8453)
- UnnamedContract (`0x9b500c...e542e7`, chain 8453)
- UnnamedContract (`0xcb418f...30ae18`, chain 8453)
- UnnamedContract (`0xe4ba08...7500df`, chain 8453)
- UnnamedContract (`0xed8db6...b5ec04`, chain 8453)
- NonfungiblePositionManager (`0x79c26d...516de5`, chain 146)
- NonfungiblePositionManager (`0x79c26d...516de5`, chain 8453)
- QuoterV2 (`0xc701e9...8db678`, chain 146)
- QuoterV2 (`0xc701e9...8db678`, chain 8453)
- Router02 (`0x7635cd...d27e4b`, chain 146)
- Router03 (`0xcc6169...d23fad`, chain 146)
- ScaleRouter (`0x2f87bf...2be6fa`, chain 8453)
- SuperVoter (`0xb6dfc3...fad93f`, chain 146)
- SwapRouter02 (`0xe4ba08...7500df`, chain 146)
- TransparentUpgradeableProxy (`0x46abb8...592687`, chain 8453)
- TransparentUpgradeableProxy (`0xb136b4...db13d6`, chain 8453)
- UniswapInterfaceMulticall (`0x9b500c...e542e7`, chain 146)
- UniswapV3Factory (`0x7ca1dc...8f1c40`, chain 146)
- UniswapV3Factory (`0x7ca1dc...8f1c40`, chain 8453)
- UnnamedContract (`0x07378e...442e60`, chain 250)
- UnnamedContract (`0x180da8...f86180`, chain 250)
- UnnamedContract (`0x1a05eb...f5a447`, chain 250)
- UnnamedContract (`0x2aa079...23b285`, chain 250)
- UnnamedContract (`0x30f45d...e5ce3b`, chain 250)
- UnnamedContract (`0x33da53...aaa470`, chain 250)
- UnnamedContract (`0x3e8b14...c946f4`, chain 250)
- UnnamedContract (`0x3fd3a0...4865a6`, chain 250)
- UnnamedContract (`0x4bebeb...060d5b`, chain 250)
- UnnamedContract (`0x547db6...6e937e`, chain 250)
- UnnamedContract (`0x58be1f...d746b0`, chain 250)
- UnnamedContract (`0x5b3220...85c157`, chain 250)
- UnnamedContract (`0x5d4589...9d4308`, chain 250)
- UnnamedContract (`0x6ef2fa...c34130`, chain 250)
- UnnamedContract (`0x777928...54cad8`, chain 250)
- UnnamedContract (`0x79c26d...516de5`, chain 250)
- UnnamedContract (`0x7ba9b1...69eb6a`, chain 250)
- UnnamedContract (`0x7ca1dc...8f1c40`, chain 250)
- UnnamedContract (`0x8313f3...63ce94`, chain 250)
- UnnamedContract (`0x85e7f5...80c72d`, chain 250)
- UnnamedContract (`0x881713...7edb74`, chain 250)
- UnnamedContract (`0x8b3e5e...f0b4d9`, chain 250)
- UnnamedContract (`0x8f0235...f05f43`, chain 250)
- UnnamedContract (`0x8f6666...11b2dc`, chain 250)
- UnnamedContract (`0x93b973...5041f8`, chain 250)
- UnnamedContract (`0x9b500c...e542e7`, chain 250)
- UnnamedContract (`0x9e4105...c91cb8`, chain 250)
- UnnamedContract (`0xa83f31...7301b8`, chain 250)
- UnnamedContract (`0xaec6d3...22bea9`, chain 250)
- UnnamedContract (`0xbf65ca...0c57cb`, chain 250)
- UnnamedContract (`0xc6366e...10832a`, chain 250)
- UnnamedContract (`0xc701e9...8db678`, chain 250)
- UnnamedContract (`0xc8be3d...2be578`, chain 250)
- UnnamedContract (`0xcc82bf...4c8c48`, chain 250)
- UnnamedContract (`0xd311fd...70d511`, chain 250)
- UnnamedContract (`0xe3d1a1...18dac1`, chain 250)
- UnnamedContract (`0xe4ba08...7500df`, chain 250)
- UnnamedContract (`0xe8ca91...4b60e8`, chain 250)
- UnnamedContract (`0xf2bfb9...0cc7e1`, chain 250)
- UnnamedContract (`0xfb0c0c...156887`, chain 250)

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (14 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 90/176 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 90 own, 31 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 90 of 121 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 76
- Unique implementations: 121
- Raw deployments: 121
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

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GaugeFactory | operational_periphery | project_anchor | own_supporting | 1 | base | unit-239130 | `0xb136b4...db13d6` | ⚠️ Unaudited |
| NFTDescriptor | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239112 | `0x97a7b2...d85073` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | sonic | unit-238979 | `0x79c26d...516de5` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239085 | `0x2b5229...6d7c2f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | base | unit-239106 | `0x79c26d...516de5` | ⚠️ Unaudited |
| ProxyAdmin | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239101 | `0x687dad...3f571e` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-238992 | `0xc701e9...8db678` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | base | unit-239119 | `0xc701e9...8db678` | ⚠️ Unaudited |
| QuoterV2 | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239129 | `0xf5b718...beff98` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-238977 | `0x7635cd...d27e4b` | ⚠️ Unaudited |
| Router03 | adapter | project_anchor | own_supporting | 0 | sonic | unit-238994 | `0xcc6169...d23fad` | ⚠️ Unaudited |
| ScaleRouter | adapter | project_anchor | own_supporting | 0 | base | unit-239086 | `0x2f87bf...2be6fa` | ⚠️ Unaudited |
| ScaleRouter | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239100 | `0x5e9d25...d11c94` | ⚠️ Unaudited |
| SuperVoter | unknown | project_anchor | own_supporting | 0 | sonic | unit-238988 | `0xb6dfc3...fad93f` | ⚠️ Unaudited |
| SwapRouter02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-238998 | `0xe4ba08...7500df` | ⚠️ Unaudited |
| SwapRouter02 | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239082 | `0x1f7a12...36d0e8` | ⚠️ Unaudited |
| TickLens | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239116 | `0xb80a72...e0d757` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | sonic | unit-238986 | `0x9b500c...e542e7` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239094 | `0x4c2968...1681e3` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-238981 | `0x7ca1dc...8f1c40` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | base | unit-239108 | `0x7ca1dc...8f1c40` | ⚠️ Unaudited |
| UniswapV3Factory | registry | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239127 | `0xe6da85...bb9d24` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 1 | base | unit-239131 | `0x46abb8...592687` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (98)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238957 | `0x17fa9d...cb10b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238959 | `0x1c065b...d303fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238960 | `0x1f7a12...36d0e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238962 | `0x2b5229...6d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238963 | `0x304511...f7235a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238964 | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238966 | `0x3fd3a0...4865a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238968 | `0x4bfb39...e047cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238969 | `0x4c2968...1681e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238970 | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238974 | `0x687dad...3f571e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238975 | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238985 | `0x97a7b2...d85073` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238989 | `0xb80a72...e0d757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238990 | `0xbf4bfe...fb4b4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238995 | `0xddd984...528fcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238996 | `0xddf26b...0d5f19` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238999 | `0xe6da85...bb9d24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-239000 | `0xf5b718...beff98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239001 | `0x03f7ad...029ec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239002 | `0x05733d...905ac9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239003 | `0x07378e...442e60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239004 | `0x0b5c7b...de8516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239005 | `0x0d90b1...9fccf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239006 | `0x0fb84a...e354c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239007 | `0x162378...0c9113` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239009 | `0x180da8...f86180` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239010 | `0x1a05eb...f5a447` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239012 | `0x1f7a12...36d0e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239013 | `0x2aa079...23b285` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239014 | `0x2b5229...6d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239015 | `0x2c9344...484fce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239017 | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239018 | `0x33da53...aaa470` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239019 | `0x380bd5...e2c7dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239020 | `0x3e8b14...c946f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239021 | `0x3fd3a0...4865a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239022 | `0x4bebeb...060d5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239023 | `0x4bfb39...e047cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239024 | `0x4c2968...1681e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239025 | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239026 | `0x58be1f...d746b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239027 | `0x59f557...05db35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239028 | `0x5b3220...85c157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239029 | `0x5d4589...9d4308` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239030 | `0x6690ad...863eca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239031 | `0x687dad...3f571e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239032 | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239033 | `0x6ef2fa...c34130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239035 | `0x777928...54cad8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239036 | `0x79c26d...516de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239037 | `0x7ba9b1...69eb6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239038 | `0x7ca1dc...8f1c40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239039 | `0x8313f3...63ce94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239040 | `0x85e7f5...80c72d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239041 | `0x881713...7edb74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239042 | `0x8b3e5e...f0b4d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239043 | `0x8e2a63...dfd06f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239044 | `0x8f0235...f05f43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239045 | `0x8f6666...11b2dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239046 | `0x93b973...5041f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239047 | `0x940407...65b2b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239048 | `0x97a7b2...d85073` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239049 | `0x9b500c...e542e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239050 | `0x9ca980...02a979` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239051 | `0x9e4105...c91cb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239052 | `0x9e4fb3...171060` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239053 | `0xa83f31...7301b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239054 | `0xaec6d3...22bea9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239055 | `0xb0f598...eb079f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239057 | `0xb80a72...e0d757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239059 | `0xbf65ca...0c57cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239060 | `0xc4a987...e7506c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239061 | `0xc6366e...10832a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239062 | `0xc701e9...8db678` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239063 | `0xc8be3d...2be578` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239065 | `0xcc82bf...4c8c48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239066 | `0xd0f8d5...a1ed8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239067 | `0xd311fd...70d511` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239070 | `0xe17e46...055c4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239071 | `0xe3d1a1...18dac1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239072 | `0xe4ba08...7500df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239073 | `0xe6da85...bb9d24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239074 | `0xe8ca91...4b60e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239075 | `0xf2bfb9...0cc7e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239076 | `0xf5b718...beff98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239077 | `0xfb0c0c...156887` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239083 | `0x28c9c7...d51c53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239088 | `0x30f45d...e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239091 | `0x44621c...005685` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239093 | `0x4bfb39...e047cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239095 | `0x54016a...d9c32c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239096 | `0x547db6...6e937e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239102 | `0x6bd735...acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239113 | `0x9b500c...e542e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239121 | `0xcb418f...30ae18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239126 | `0xe4ba08...7500df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239128 | `0xed8db6...b5ec04` | ❓ Unverified |

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
| base | `0xb136b4...db13d6` | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x79c26d...516de5` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x79c26d...516de5` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc701e9...8db678` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc701e9...8db678` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7635cd...d27e4b` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xcc6169...d23fad` | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2f87bf...2be6fa` | ScaleRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb6dfc3...fad93f` | SuperVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe4ba08...7500df` | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x46abb8...592687` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 98 |

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
