# Agentic Audit Brief: Rhino.fi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Rhino.fi (`rhino.fi`)
- Website: [https://rhino.fi](https://rhino.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, celo, ethereum, gnosis, hyperliquid, ink, kaia, linea, mantle, opbnb, optimism, plasma, polygon, sonic, unichain, zksync-era
- Contract surface: 81 unique implementations (82 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,114,465.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rhino.fi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, celo, ethereum, gnosis, hyperliquid, ink, kaia, linea, mantle, opbnb, optimism, plasma, polygon, sonic, unichain, zksync-era. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbca3039a18c0d2f2f84ba8a028c67290bc045afa`, chain 1)
- UnnamedContract (`0x0bca65bf4b4c8803d2f0b49353ed57caaf3d66dc`, chain 10)
- UnnamedContract (`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1`, chain 100)
- UnnamedContract (`0xb0d7040b93fe5b099d3ce02ea86c4a1b695732d0`, chain 130)
- UnnamedContract (`0xba4eee20f434bc3908a0b18da496348657133a7e`, chain 137)
- UnnamedContract (`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1`, chain 146)
- UnnamedContract (`0x1fa66e2b38d0cc496ec51f81c3e05e6a6708986f`, chain 324)
- UnnamedContract (`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1`, chain 999)
- UnnamedContract (`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1`, chain 5000)
- UnnamedContract (`0x92650ddc467ed628868bdba23cf81eafaab60175`, chain 8217)
- UnnamedContract (`0x2f59e9086ec8130e21bd052065a9e6b2497bb102`, chain 8453)
- UnnamedContract (`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1`, chain 9745)
- UnnamedContract (`0x10417734001162ea139e8b044dfe28dbb8b28ad0`, chain 42161)
- UnnamedContract (`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1`, chain 42220)
- UnnamedContract (`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1`, chain 43114)
- UnnamedContract (`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1`, chain 57073)
- UnnamedContract (`0xcf68a2721394dcf5dcf66f6265c1819720f24528`, chain 59144)
- TransparentUpgradeableProxy (`0x2b4553122d960ca98075028d68735cc6b15deeb5`, chain 204)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 63 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 18 of 81 unique; 63 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 81
- Raw deployments: 82
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/rhinofi/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4eee20f434bc3908a0b18da496348657133a7e` | ⚠️ Unaudited |
| DVFDepositContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x04317f0e4795b1e1bab333234153fa10aaac79e9` | ⚠️ Unaudited |
| MintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb80a582fa430645a043bb4f6135321ee01005fef` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dbbd1bb03ed63ae2bea0ce892567884dffb70a5` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9196b06f339ad9f3ee752c987b401f2e1e2718` | ⚠️ Unaudited |
| MultiTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb8ee2cd0e210fac991e441dba767082d9cdceec3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x04317f0e4795b1e1bab333234153fa10aaac79e9` | ⚠️ Unaudited |
| RevokableVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09de35fbbd04e347368f65997a88121e3acfa232` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc3eb61737b3161438ab859d1d0dd1a1138c30ab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x73699b0c5542472b927dd779f2a1085ac9bd2704`; ethereum `0xec909352e059930e74dbefd471d16b9a920cf9b5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | opbnb | unit-253185 | `0x2b4553122d960ca98075028d68735cc6b15deeb5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70911642e4ea509735e77cba23ce1856abed87bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92650ddc467ed628868bdba23cf81eafaab60175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3db7558260423a539cbdc8aef0de9bc15b93b47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253168 | `0xbca3039a18c0d2f2f84ba8a028c67290bc045afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf192298bed3a411317bb87dc42e71b87dca47a3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-253169 | `0x0bca65bf4b4c8803d2f0b49353ed57caaf3d66dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x329f5a8d24503fc00b31b229835b6452a6723ae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e37731ff26810208b2dcc3860cd94db2f99d32a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4f4061e861fc0b7bf7a2df8c7568b068248f3e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd1891fea0446f56726d4c4edfc11ca13f943ca2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-253170 | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe32bd93e602383a591b3369b7d5ac36ac302b904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf192298bed3a411317bb87dc42e71b87dca47a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x31dc5cb51f147fd303971e7b5876e0cf8f6b9458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x73699b0c5542472b927dd779f2a1085ac9bd2704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x92650ddc467ed628868bdba23cf81eafaab60175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-253171 | `0xb0d7040b93fe5b099d3ce02ea86c4a1b695732d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdf47694f4749521ffb142b20ec8b79d9e8847355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe32bd93e602383a591b3369b7d5ac36ac302b904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xec909352e059930e74dbefd471d16b9a920cf9b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf192298bed3a411317bb87dc42e71b87dca47a3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-253172 | `0xba4eee20f434bc3908a0b18da496348657133a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x04317f0e4795b1e1bab333234153fa10aaac79e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-253173 | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x73699b0c5542472b927dd779f2a1085ac9bd2704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa3db7558260423a539cbdc8aef0de9bc15b93b47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe32bd93e602383a591b3369b7d5ac36ac302b904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1b8fd7c662a33a617b092fd12074745c72bd15fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x89935f4af5944078451ed528c2483359427a2946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xa7a2d56121280d053231451a5ac2ec9189524215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-253174 | `0x1fa66e2b38d0cc496ec51f81c3e05e6a6708986f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x04317f0e4795b1e1bab333234153fa10aaac79e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-253184 | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x73699b0c5542472b927dd779f2a1085ac9bd2704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe32bd93e602383a591b3369b7d5ac36ac302b904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x04317f0e4795b1e1bab333234153fa10aaac79e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-253178 | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x73699b0c5542472b927dd779f2a1085ac9bd2704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe32bd93e602383a591b3369b7d5ac36ac302b904` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-253181 | `0x92650ddc467ed628868bdba23cf81eafaab60175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b4553122d960ca98075028d68735cc6b15deeb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253182 | `0x2f59e9086ec8130e21bd052065a9e6b2497bb102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c7b13525a6c0f6fa1a4b0bff0a36e1842484ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x89935f4af5944078451ed528c2483359427a2946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6ae457ad24b75f423043800753b84b1d8ae465a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xedf6d2a16e8081f777eb623eeb4411466556af3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x04317f0e4795b1e1bab333234153fa10aaac79e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-253183 | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe32bd93e602383a591b3369b7d5ac36ac302b904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf192298bed3a411317bb87dc42e71b87dca47a3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253175 | `0x10417734001162ea139e8b044dfe28dbb8b28ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x04317f0e4795b1e1bab333234153fa10aaac79e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-253176 | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe32bd93e602383a591b3369b7d5ac36ac302b904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf192298bed3a411317bb87dc42e71b87dca47a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04317f0e4795b1e1bab333234153fa10aaac79e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-253177 | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73699b0c5542472b927dd779f2a1085ac9bd2704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe32bd93e602383a591b3369b7d5ac36ac302b904` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-253179 | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x09fd473e5affa08288d89c984ef4ff4e20657af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0f7b8403bab32b5a6476cab039e123a59701f508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa7a2d56121280d053231451a5ac2ec9189524215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-253180 | `0xcf68a2721394dcf5dcf66f6265c1819720f24528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe4b2d37daba87e865e811b240e07522414386de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeb146b1342d92ae66772278eb7ff89c30aab1280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xedf6d2a16e8081f777eb623eeb4411466556af3d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 53
- Live contracts: 0
- Unknown liveness contracts: 53
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=53

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x04317f0e4795b1e1bab333234153fa10aaac79e9` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x73699b0c5542472b927dd779f2a1085ac9bd2704` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe32bd93e602383a591b3369b7d5ac36ac302b904` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| base | unverified unclassified | UnnamedContract<br>`0x2b4553122d960ca98075028d68735cc6b15deeb5` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| base | unverified unclassified | UnnamedContract<br>`0x4c7b13525a6c0f6fa1a4b0bff0a36e1842484ca4` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| base | unverified unclassified | UnnamedContract<br>`0x89935f4af5944078451ed528c2483359427a2946` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| base | unverified unclassified | UnnamedContract<br>`0xd6ae457ad24b75f423043800753b84b1d8ae465a` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| base | unverified unclassified | UnnamedContract<br>`0xedf6d2a16e8081f777eb623eeb4411466556af3d` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| celo | unverified unclassified | UnnamedContract<br>`0x04317f0e4795b1e1bab333234153fa10aaac79e9` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| celo | unverified unclassified | UnnamedContract<br>`0xe32bd93e602383a591b3369b7d5ac36ac302b904` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| celo | unverified unclassified | UnnamedContract<br>`0xf192298bed3a411317bb87dc42e71b87dca47a3a` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70911642e4ea509735e77cba23ce1856abed87bf` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92650ddc467ed628868bdba23cf81eafaab60175` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3db7558260423a539cbdc8aef0de9bc15b93b47` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec909352e059930e74dbefd471d16b9a920cf9b5` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf192298bed3a411317bb87dc42e71b87dca47a3a` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xe32bd93e602383a591b3369b7d5ac36ac302b904` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xf192298bed3a411317bb87dc42e71b87dca47a3a` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x04317f0e4795b1e1bab333234153fa10aaac79e9` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x73699b0c5542472b927dd779f2a1085ac9bd2704` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xe32bd93e602383a591b3369b7d5ac36ac302b904` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| linea | unverified unclassified | UnnamedContract<br>`0x09fd473e5affa08288d89c984ef4ff4e20657af1` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| linea | unverified unclassified | UnnamedContract<br>`0x0f7b8403bab32b5a6476cab039e123a59701f508` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| linea | unverified unclassified | UnnamedContract<br>`0xa7a2d56121280d053231451a5ac2ec9189524215` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| linea | unverified unclassified | UnnamedContract<br>`0xe4b2d37daba87e865e811b240e07522414386de3` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| linea | unverified unclassified | UnnamedContract<br>`0xeb146b1342d92ae66772278eb7ff89c30aab1280` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| linea | unverified unclassified | UnnamedContract<br>`0xedf6d2a16e8081f777eb623eeb4411466556af3d` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| mantle | unverified unclassified | UnnamedContract<br>`0x04317f0e4795b1e1bab333234153fa10aaac79e9` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| mantle | unverified unclassified | UnnamedContract<br>`0x73699b0c5542472b927dd779f2a1085ac9bd2704` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| mantle | unverified unclassified | UnnamedContract<br>`0xe32bd93e602383a591b3369b7d5ac36ac302b904` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x1b8fd7c662a33a617b092fd12074745c72bd15fa` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x89935f4af5944078451ed528c2483359427a2946` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| opbnb | unverified unclassified | UnnamedContract<br>`0xa7a2d56121280d053231451a5ac2ec9189524215` | non_address_book | unknown | unknown | unverified | n/a | `0x48b47c07dccebdbecf76ec70890badc59e722386` |
| optimism | unverified unclassified | UnnamedContract<br>`0x329f5a8d24503fc00b31b229835b6452a6723ae4` | non_address_book | unknown | unknown | unverified | n/a | `0x5472cf4f1be2aa6ad27c6f93101f7899ccadbaf7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3e37731ff26810208b2dcc3860cd94db2f99d32a` | non_address_book | unknown | unknown | unverified | n/a | `0x5472cf4f1be2aa6ad27c6f93101f7899ccadbaf7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x4f4061e861fc0b7bf7a2df8c7568b068248f3e5b` | non_address_book | unknown | unknown | unverified | n/a | `0x5472cf4f1be2aa6ad27c6f93101f7899ccadbaf7` |
| optimism | unverified unclassified | UnnamedContract<br>`0xdd1891fea0446f56726d4c4edfc11ca13f943ca2` | non_address_book | unknown | unknown | unverified | n/a | `0x5472cf4f1be2aa6ad27c6f93101f7899ccadbaf7` |
| plasma | unverified unclassified | UnnamedContract<br>`0x04317f0e4795b1e1bab333234153fa10aaac79e9` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| plasma | unverified unclassified | UnnamedContract<br>`0xe32bd93e602383a591b3369b7d5ac36ac302b904` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| plasma | unverified unclassified | UnnamedContract<br>`0xf192298bed3a411317bb87dc42e71b87dca47a3a` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| sonic | unverified unclassified | UnnamedContract<br>`0x04317f0e4795b1e1bab333234153fa10aaac79e9` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| sonic | unverified unclassified | UnnamedContract<br>`0x73699b0c5542472b927dd779f2a1085ac9bd2704` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa3db7558260423a539cbdc8aef0de9bc15b93b47` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| sonic | unverified unclassified | UnnamedContract<br>`0xe32bd93e602383a591b3369b7d5ac36ac302b904` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unichain | unverified unclassified | UnnamedContract<br>`0x31dc5cb51f147fd303971e7b5876e0cf8f6b9458` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unichain | unverified unclassified | UnnamedContract<br>`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unichain | unverified unclassified | UnnamedContract<br>`0x73699b0c5542472b927dd779f2a1085ac9bd2704` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unichain | unverified unclassified | UnnamedContract<br>`0x92650ddc467ed628868bdba23cf81eafaab60175` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unichain | unverified unclassified | UnnamedContract<br>`0xdf47694f4749521ffb142b20ec8b79d9e8847355` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unichain | unverified unclassified | UnnamedContract<br>`0xe32bd93e602383a591b3369b7d5ac36ac302b904` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unichain | unverified unclassified | UnnamedContract<br>`0xec909352e059930e74dbefd471d16b9a920cf9b5` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unichain | unverified unclassified | UnnamedContract<br>`0xf192298bed3a411317bb87dc42e71b87dca47a3a` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/rhinofi/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [StarkEx v2.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/StarkEx_v2.0_Audit_Report.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [StarkEx v3.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/StarkEx_v3.0_Audit_Report.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Cairo and SHARP Verifiers v3.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [EVM STARK Verifier v4.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/EVM_STARK_Verifier_v4.0_Audit_Report.pdf) | CryptoExperts | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [StarkEx v4.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/StarkEx_v4.0_Audit_Report.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [StarkEx v4.5 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/StarkEx_v4.5_Audit_Report.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [CrossSwap v1.0 Audit Report](https://github.com/rhinofi/contracts_public/blob/master/PeckShield-Audit-Report-CrossSwap-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Smart Contract v1.0 Audit Report](https://github.com/rhinofi/contracts_public/blob/master/PeckShield-Audit-Report-RhinoFi-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18085] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No contracts in scope are explicitly listed; only a reference to 'Total Assets in Scope: 9' without naming them.
- [18086] StarkEx v2.0 Audit Report — no match: Extracted contract names from findings and file paths. Audit date from cover page and latest audit report date.
- [18087] StarkEx v3.0 Audit Report — no match: No explicit scope section; contracts extracted from findings targets. Audit date from cover page and latest audit report date.
- [18088] Cairo and SHARP Verifiers v3.0 Audit Report — no match: Extracted 19 contract/module names from the audit report. The audit date is inferred from the mention of July 2022 for the general bootloader audit.
- [18089] EVM STARK Verifier v4.0 Audit Report — no match: Audit conducted in November and December 2021; report date inferred as end of December 2021.
- [18090] StarkEx v4.0 Audit Report — no match: The report does not have a dedicated scope section listing all contracts. Only KeyGetters is explicitly mentioned as a target in the findings. The audit covers StarkEx v4.0 contracts, but no other contract names are provided.
- [18091] StarkEx v4.5 Audit Report — no match: Audit report for StarkEx v4.5.0 contracts. Scope includes the entire protocol with specific contracts mentioned in findings. Audit date from cover page and version info.
- [18092] CrossSwap v1.0 Audit Report — no match: No explicit scope section; contracts extracted from findings targets. Audit date from cover page.
- [18093] Smart Contract v1.0 Audit Report — no match: No explicit scope table; contract names extracted from finding targets. Audit date from cover page and metadata.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| StarkEx v2.0 Audit Report | Deposits | unmatched — not counted | — | Listed in findings PVE-001, PVE-004, PVE-009 | no |
| StarkEx v2.0 Audit Report | Withdrawals | unmatched — not counted | — | Listed in finding PVE-002 | no |
| StarkEx v2.0 Audit Report | Tokens | unmatched — not counted | — | Listed in findings PVE-006, PVE-008 | no |
| StarkEx v2.0 Audit Report | ApprovalChain | unmatched — not counted | — | Listed in findings PVE-003, PVE-010 | no |
| StarkEx v2.0 Audit Report | AcceptModifications | unmatched — not counted | — | Mentioned in finding PVE-005 as implementing acceptWithdrawal | no |
| StarkEx v2.0 Audit Report | UpdateState | unmatched — not counted | — | Mentioned in findings PVE-004, PVE-005 as transferring funds | no |
| StarkEx v2.0 Audit Report | MWithdrawal | unmatched — not counted | — | Listed in finding PVE-005 | no |
| StarkEx v2.0 Audit Report | GpsStatementVerifier | unmatched — not counted | — | Listed in finding PVE-007 | no |
| StarkEx v2.0 Audit Report | TransferRegistry | unmatched — not counted | — | Listed in finding PVE-008 | no |
| StarkEx v2.0 Audit Report | FactRegistry | unmatched — not counted | — | Listed in finding PVE-010 | no |
| StarkEx v2.0 Audit Report | GpsFactRegistryAdapter | unmatched — not counted | — | Listed in finding PVE-010 | no |
| StarkEx v2.0 Audit Report | Identity | unmatched — not counted | — | Mentioned in GpsFactRegistryAdapter contract | no |
| StarkEx v2.0 Audit Report | IQueryableFactRegistry | unmatched — not counted | — | Mentioned in GpsFactRegistryAdapter contract | no |
| StarkEx v2.0 Audit Report | StarkExTypes | unmatched — not counted | — | Mentioned in ApprovalChain contract | no |
| StarkEx v3.0 Audit Report | FactRegistry | unmatched — not counted | — | Target in finding PVE-001 | no |
| StarkEx v3.0 Audit Report | Committee | unmatched — not counted | — | Target in finding PVE-002 | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | PageInfo | unmatched — not counted | — | Section 3.1.1: ContractPageInfo | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | CpuPublicInputOffsetsBase | unmatched — not counted | — | Section 3.1.2: ContractCpuPublicInputOffsetsBase | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | CpuPublicInputOffsets | unmatched — not counted | — | Section 3.1.3: ContractCpuPublicInputOffsets | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | MemoryPageFactRegistry | unmatched — not counted | — | Section 3.2.1: ContractMemoryPageFactRegistry | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | MemoryPageFactRegistryConstants | unmatched — not counted | — | Section 3.2.1: parent virtual contract | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | CairoVerifierContract | unmatched — not counted | — | Section 3.3.1: ContractCairoVerifierContract | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | LayoutSpecific | unmatched — not counted | — | Section 3.3.2: ContractLayoutSpecific | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | StarkParameters | unmatched — not counted | — | Section 2.7.1: ContractStarkParameters | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | CpuVerifier | unmatched — not counted | — | Section 3.4.1: ContractCpuVerifier | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | CpuFriLessVerifier | unmatched — not counted | — | Section 3.4.2: ContractCpuFriLessVerifier | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | CpuConstraintPoly | unmatched — not counted | — | Section 2.7.3: ContractCpuConstraintPoly | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | CpuOODS | unmatched — not counted | — | Section 2.7.4: ContractCpuOODS | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | GpsOutputParser | unmatched — not counted | — | Section 5.1.1: ContractGpsOutputParser | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | GpsStatementVerifier | unmatched — not counted | — | Section 5.1.2: ContractGpsStatementVerifier | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | CairoBootloaderProgram | unmatched — not counted | — | Section 1.1: excluded from scope (auto-generated) | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | simple_bootloader | unmatched — not counted | — | Section 5.2.1: Filesimple_bootloader.cairo | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | bootloader | unmatched — not counted | — | Section 5.2.2: Filebootloader.cairo | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | run_simple_bootloader | unmatched — not counted | — | Section 5.2.3: Filerun_simple_bootloader.cairo | no |
| Cairo and SHARP Verifiers v3.0 Audit Report | execute_task | unmatched — not counted | — | Section 5.2.4: Fileexecute_task.cairo | no |
| EVM STARK Verifier v4.0 Audit Report | PrimeFieldElement0 | unmatched — not counted | — | Section 3.1.1: 'ContractPrimeFieldElement0' | no |
| EVM STARK Verifier v4.0 Audit Report | HornerEvaluator | unmatched — not counted | — | Section 3.1.2: 'ContractHornerEvaluator' | no |
| EVM STARK Verifier v4.0 Audit Report | Prng | unmatched — not counted | — | Section 3.2.1: 'ContractPrng' | no |
| EVM STARK Verifier v4.0 Audit Report | VerifierChannel | unmatched — not counted | — | Section 3.2.2: 'ContractVerifierChannel' | no |
| EVM STARK Verifier v4.0 Audit Report | IMerkleVerifier | unmatched — not counted | — | Section 3.3.1: 'ContractIMerkleVerifier' | no |
| EVM STARK Verifier v4.0 Audit Report | MerkleVerifier | unmatched — not counted | — | Section 3.3.2: 'ContractMerkleVerifier' | no |
| EVM STARK Verifier v4.0 Audit Report | MerkleStatementContract | unmatched — not counted | — | Section 3.3.3: 'ContractMerkleStatementContract' | no |
| EVM STARK Verifier v4.0 Audit Report | MerkleStatementVerifier | unmatched — not counted | — | Section 3.3.4: 'ContractMerkleStatementVerifier' | no |
| EVM STARK Verifier v4.0 Audit Report | FriLayer | unmatched — not counted | — | Section 3.4.1: 'ContractFriLayer' | no |
| EVM STARK Verifier v4.0 Audit Report | Fri | unmatched — not counted | — | Section 3.4.2: 'ContractFri' | no |
| EVM STARK Verifier v4.0 Audit Report | FriStatementContract | unmatched — not counted | — | Section 3.4.3: 'ContractFriStatementContract' | no |
| EVM STARK Verifier v4.0 Audit Report | FriStatementVerifier | unmatched — not counted | — | Section 3.4.4: 'ContractFriStatementVerifier' | no |
| EVM STARK Verifier v4.0 Audit Report | StarkVerifier | unmatched — not counted | — | Section 3.5.1: 'ContractStarkVerifier' | no |
| EVM STARK Verifier v4.0 Audit Report | MemoryMap | unmatched — not counted | — | Section 2.5.1: 'Memory mapping contract' | no |
| StarkEx v4.0 Audit Report | KeyGetters | unmatched — not counted | — | Listed as target in finding PVE-001 and described in Section 3.1 | no |
| StarkEx v4.5 Audit Report | StarkEx v4.5.0 | unmatched — not counted | — | Target of audit, mentioned throughout report | no |
| StarkEx v4.5 Audit Report | StarkExchange | unmatched — not counted | — | Mentioned as version for spot trading, uses globalConfigCode | no |
| StarkEx v4.5 Audit Report | StarkPerpetual | unmatched — not counted | — | Mentioned as version for derivative trading | no |
| StarkEx v4.5 Audit Report | Deposits | unmatched — not counted | — | Mentioned in PVE-002 as smart contract importing reference contracts | no |
| StarkEx v4.5 Audit Report | NamedStorage | unmatched — not counted | — | Target of finding PVE-002, library contract | no |
| StarkEx v4.5 Audit Report | GenericGovernance | unmatched — not counted | — | Target of finding PVE-002, contract not used in audit scope | no |
| StarkEx v4.5 Audit Report | MainStorage | unmatched — not counted | — | Target of finding PVE-003, contains globalConfigCode | no |
| StarkEx v4.5 Audit Report | TokenTransfers | unmatched — not counted | — | Target of finding PVE-001, functions transferInWithTokenId and transferOutWithTokenId | no |
| CrossSwap v1.0 Audit Report | UserWallet | unmatched — not counted | — | Target in finding PVE-001 and PVE-003 | no |
| CrossSwap v1.0 Audit Report | Swap | unmatched — not counted | — | Target in finding PVE-002 | no |
| Smart Contract v1.0 Audit Report | PairHolder | unmatched — not counted | — | Target in finding PVE-001 | no |
| Smart Contract v1.0 Audit Report | UniswapV2Router02 | unmatched — not counted | — | Target in findings PVE-002 and PVE-004 | no |
| Smart Contract v1.0 Audit Report | PairWithL2Overlay | unmatched — not counted | — | Target in finding PVE-003 | no |
| Smart Contract v1.0 Audit Report | DVFDepositContract | unmatched — not counted | — | Target in finding PVE-006 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 64 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1, medium=4
- Match method counts: n/a

Zero-match audit list:

- [18086] StarkEx v2.0 Audit Report
- [18087] StarkEx v3.0 Audit Report
- [18088] Cairo and SHARP Verifiers v3.0 Audit Report
- [18089] EVM STARK Verifier v4.0 Audit Report
- [18090] StarkEx v4.0 Audit Report
- [18091] StarkEx v4.5 Audit Report
- [18092] CrossSwap v1.0 Audit Report
- [18093] Smart Contract v1.0 Audit Report

Fork inheritance lineage and inherited audits are included when available.
