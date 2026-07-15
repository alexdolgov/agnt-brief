# Agentic Audit Brief: Bedrock

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 6 audit(s)
- Eligible audit results: 9 (6 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Bedrock (`bedrock`)
- Website: [https://www.bedrock.technology](https://www.bedrock.technology)
- Lifecycle: active (Tier 0, 58.9% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, ink, linea, mantle, merlin, mode, optimism, scroll, sei, sonic, unichain
- Contract surface: 79 unique implementations (148 raw deployments)
- Coverage basis: 2/33 confirmed own live verified implementations (6.1%); conservative 6.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $264,222,055.00
- On-chain TVL (included contracts): $16,703,965.28
- TVL by chain: Ethereum $16,513,805.19 | Bsc $189,294.49 | Optimism $865.59

## Project Description

This brief describes the observed EVM deployment and audit surface for Bedrock. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 47 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, ink, linea, mantle, mode, optimism, scroll, sei, sonic, unichain. Structural roles: 20 supporting, 15 unclassified, 12 core. 29 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 47
- Structural roles: supporting (20), unclassified (15), core (12)
- Contract kinds: contract (46), abstract (1)
- Detected standards: erc1967proxy (27), accesscontrol (2), erc165 (2), erc20 (2), ownable (2), pausable (1)
- Frameworks: openzeppelin (31), openzeppelin-upgradeable (29)
- Upgradeable-pattern rows: 29

## Fork Analysis

0 of 52 contracts are derived from known codebases. 52 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9609af...440262`, chain 1)
- UnnamedContract (`0x939197...2b593e`, chain 130)
- UnnamedContract (`0xa16113...2059be`, chain 130)
- UnnamedContract (`0xd3c8da...b1d58d`, chain 130)
- UnnamedContract (`0xf97750...31ab18`, chain 130)
- UnnamedContract (`0xdfc7d2...2b511e`, chain 1329)
- BeaconProxy (`0x926720...d01cce`, chain 1)
- brBTC (`0xa16113...2059be`, chain 999)
- brBTC (`0x89b2c7...740aeb`, chain 8453)
- brVault (`0x6518b4...1dba0f`, chain 56)
- brVault (`0xd3c8da...b1d58d`, chain 80094)
- MultiBridgeToken (`0x3d15fd...e2c3a0`, chain 42161)
- MultiBridgeToken (`0x15eefe...ef4d25`, chain 59144)
- MultiBridgeToken (`0x15eefe...ef4d25`, chain 534352)
- Staking (`0xf047d1...9df110`, chain 1)
- TransparentUpgradeableProxy (`0x004e9c...350568`, chain 1)
- TransparentUpgradeableProxy (`0x047d41...10d6da`, chain 1)
- TransparentUpgradeableProxy (`0x1419b4...0e3386`, chain 1)
- TransparentUpgradeableProxy (`0x2ec37d...8f6646`, chain 1)
- TransparentUpgradeableProxy (`0x3f4eac...6e9850`, chain 1)
- TransparentUpgradeableProxy (`0x4befa2...269e9d`, chain 1)
- TransparentUpgradeableProxy (`0xf1376b...df51f4`, chain 1)
- TransparentUpgradeableProxy (`0x939197...2b593e`, chain 10)
- TransparentUpgradeableProxy (`0xf97750...31ab18`, chain 10)
- TransparentUpgradeableProxy (`0x1df46e...90ad93`, chain 56)
- TransparentUpgradeableProxy (`0x6b2a01...bd726a`, chain 56)
- TransparentUpgradeableProxy (`0x733a6c...f01df3`, chain 56)
- TransparentUpgradeableProxy (`0x84e5c8...c26800`, chain 56)
- TransparentUpgradeableProxy (`0xc3827a...db6e90`, chain 146)
- TransparentUpgradeableProxy (`0xdfc7d2...2b511e`, chain 999)
- TransparentUpgradeableProxy (`0xf97750...31ab18`, chain 999)
- TransparentUpgradeableProxy (`0x939197...2b593e`, chain 5000)
- TransparentUpgradeableProxy (`0xf97750...31ab18`, chain 5000)
- TransparentUpgradeableProxy (`0x3376eb...61514a`, chain 8453)
- TransparentUpgradeableProxy (`0x939197...2b593e`, chain 8453)
- TransparentUpgradeableProxy (`0x6b2a01...bd726a`, chain 34443)
- TransparentUpgradeableProxy (`0x84e5c8...c26800`, chain 34443)
- TransparentUpgradeableProxy (`0x6b2a01...bd726a`, chain 42161)
- TransparentUpgradeableProxy (`0x84e5c8...c26800`, chain 42161)
- TransparentUpgradeableProxy (`0x939197...2b593e`, chain 80094)
- TransparentUpgradeableProxy (`0xc3827a...db6e90`, chain 80094)
- TransparentUpgradeableProxy (`0xf97750...31ab18`, chain 80094)
- uniBTC (`0x939197...2b593e`, chain 999)
- uniBTC (`0x552b0c...42fa05`, chain 8453)
- UnnamedContract (`0xa16113...2059be`, chain 57073)
- UnnamedContract (`0xd3c8da...b1d58d`, chain 57073)
- VaultWithoutNative (`0x3376eb...61514a`, chain 10)
- VaultWithoutNative (`0xdfc7d2...2b511e`, chain 56)
- VaultWithoutNative (`0xe1061f...838a8c`, chain 146)
- VaultWithoutNative (`0x89b2c7...740aeb`, chain 5000)
- VaultWithoutNative (`0xd4b6b3...4a7509`, chain 8453)
- VaultWithoutNative (`0xa93322...4ffadd`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 47; live-surface rows included: 47 (47 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/33 (6.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 45
- Confirmed-live implementations: 39 of 79 unique; 40 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/66
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 79
- Raw deployments: 148
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $309,230.01
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 3.0% | 2024-12 |
| BlockSec | Tier 2 | 1 | 1.5% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RockXETH | token | project_anchor | own_supporting | 1 | ethereum | unit-229230 | `0xf1376b...df51f4` | ✅ Audited |
| brVault | unknown | project_anchor | own_supporting | 1 | berachain | unit-229254 | 2 deployments: berachain `0xd3c8da...b1d58d`; berachain `0xf97750...31ab18` | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| brVault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229244 | 2 deployments: bsc `0x1df46e...90ad93`; bsc `0x6518b4...1dba0f` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-229226 | `0x047d41...10d6da` | ⚠️ Unaudited |
| brVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-229231 | `0x1419b4...0e3386` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229246 | 2 deployments: bsc `0x84e5c8...c26800`; bsc `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | optimism | unit-229234 | 2 deployments: optimism `0x3376eb...61514a`; optimism `0xf97750...31ab18` | ⚠️ Unaudited |
| EigenPod | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-229228 | `0x926720...d01cce` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109228...19bda9` | ⚠️ Unaudited |
| Bedrock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff7d6a...f56b41` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229229 | `0x2ec37d...8f6646` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | bsc | unit-229245 | `0x733a6c...f01df3` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-229266 | 2 deployments: hyperliquid `0xa16113...2059be`; hyperliquid `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | base | unit-229260 | 2 deployments: base `0x3376eb...61514a`; base `0x89b2c7...740aeb` | ⚠️ Unaudited |
| brBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa16113...2059be`; base `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| brBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd3c8da...b1d58d`; base `0xf97750...31ab18` | ⚠️ Unaudited |
| brBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: bsc `0x5e8fd0...618ae0`; berachain `0x552b0c...42fa05` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | berachain | unit-229249 | `0x939197...2b593e` | ⚠️ Unaudited |
| brBTCOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbefc7d...d6633d` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xab3630...defa83`; ethereum `0xdf1925...756e59` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xd498e4...acc656`; bsc `0x3774af...4ba818`; sonic `0xd8b81b...a6649c` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x5e3787...58d2f9` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xab3630...defa83`; sonic `0xbefc7d...d6633d` | ⚠️ Unaudited |
| cuniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x247918...af43f3` | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c4c2f...8faeae` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6f10dc...601370`; ethereum `0x79cf1c...e7c53d` | ⚠️ Unaudited |
| FBTCProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: bsc `0x3376eb...61514a`; mantle `0x02e3e2...af25ea`; mantle `0x11b380...66be7b` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-229225 | 2 deployments: arbitrum `0x3d15fd...e2c3a0`; linea `0x15eefe...ef4d25` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-229222 | `0x15eefe...ef4d25` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: ethereum `0xc3827a...db6e90`; bsc `0x79f2c3...449597`; sonic `0x17c3b6...d551ab`; hyperliquid `0x9203ce...718031`; base `0x321c67...b42ef7`; base `0x886eaf...3616bf`; berachain `0x17c3b6...d551ab`; berachain `0x9203ce...718031` | ⚠️ Unaudited |
| Restaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229227 | `0x3f4eac...6e9850` | ⚠️ Unaudited |
| Restaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x563a27...731fe5`; ethereum `0xb290be...69ec47` | ⚠️ Unaudited |
| RockXETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3376eb...61514a` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: optimism `0x58cb26...9d187d`; bsc `0x1f6c2e...257b5a`; mantle `0x3376eb...61514a`; mantle `0x58cb26...9d187d`; mode `0x1f6c2e...257b5a`; arbitrum `0x1f6c2e...257b5a` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x89b2c7...740aeb`; bsc `0x8cc6d6...853915` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x169185...9fb932`; base `0x4519c8...5f0caf` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8cc6d6...853915` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x563a27...731fe5`; berachain `0xb290be...69ec47` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229233 | 2 deployments: ethereum `0x4befa2...269e9d`; ethereum `0xf047d1...9df110` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c74e7...c51d6f`; ethereum `0xe0240d...88dea3` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa93322...4ffadd` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: optimism `0xbc48e8...33d03d`; bsc `0x981692...1d3b8d`; bsc `0xbc48e8...33d03d`; mantle `0x3e904a...33eab5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-229219 | `0x6b2a01...bd726a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-229220 | `0x84e5c8...c26800` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8cc6d6...853915` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229232 | `0x004e9c...350568` | ⚠️ Unaudited |
| uniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x20d702...634510`; ethereum `0xd8b81b...a6649c` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | optimism | unit-229235 | `0x939197...2b593e` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | bsc | unit-229247 | `0x6b2a01...bd726a` | ⚠️ Unaudited |
| uniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: optimism `0x552b0c...42fa05`; optimism `0x89b2c7...740aeb`; optimism `0xdfc7d2...2b511e`; bsc `0x9203ce...718031`; bsc `0x94c7f8...cce2b3`; sonic `0x50fa14...1b8190`; mantle `0x552b0c...42fa05`; mantle `0xdfc7d2...2b511e`; mode `0x94c7f8...cce2b3`; arbitrum `0x94c7f8...cce2b3`; berachain `0x50fa14...1b8190` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | sonic | unit-229238 | `0xc3827a...db6e90` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-229265 | 2 deployments: hyperliquid `0x939197...2b593e`; hyperliquid `0xf97750...31ab18` | ⚠️ Unaudited |
| uniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xd3c8da...b1d58d` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | mantle | unit-229243 | `0x939197...2b593e` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | base | unit-229258 | 2 deployments: base `0x552b0c...42fa05`; base `0x939197...2b593e` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-229241 | `0x6b2a01...bd726a` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | berachain | unit-229256 | `0xc3827a...db6e90` | ⚠️ Unaudited |
| uniBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x17c3b6...d551ab`; ethereum `0x50fa14...1b8190` | ⚠️ Unaudited |
| uniBTCRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x02643a...870c5e`; base `0xc651dd...c11680` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: ethereum `0x285afd...77b458`; optimism `0xd3c8da...b1d58d`; bsc `0x08cb45...46775d`; bsc `0x8891c1...c9c533`; mantle `0xd3c8da...b1d58d`; mode `0x08cb45...46775d`; mode `0xfa8c3e...f41e5f`; arbitrum `0x08cb45...46775d`; arbitrum `0xfa8c3e...f41e5f` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x552b0c...42fa05`; bsc `0xa16113...2059be`; bsc `0xd3c8da...b1d58d` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | sonic | unit-229239 | 2 deployments: sonic `0x20d702...634510`; sonic `0xe1061f...838a8c` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | mantle | unit-229242 | 2 deployments: mantle `0x89b2c7...740aeb`; mantle `0xf97750...31ab18` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | base | unit-229262 | 2 deployments: base `0x9f283b...dcfefb`; base `0xd4b6b3...4a7509` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-229240 | `0x84e5c8...c26800` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | berachain | unit-229251 | 2 deployments: berachain `0xa93322...4ffadd`; berachain `0xe0240d...88dea3` | ⚠️ Unaudited |

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
| Proxy (impl: 0xf9775085d726e782e83585033b58606f7731ab18) | proxy | project_anchor | own_supporting | 1 | unichain | unit-229237 | 2 deployments: unichain `0xa16113...2059be`; unichain `0xf97750...31ab18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c914b...4c7e5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-229217 | `0x9609af...440262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x11b380...66be7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11b380...66be7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58cb26...9d187d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9203ce...718031` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 1 | unichain | unit-229236 | 2 deployments: unichain `0x939197...2b593e`; unichain `0xd3c8da...b1d58d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-229218 | `0xdfc7d2...2b511e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-229223 | `0xa16113...2059be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-229224 | `0xd3c8da...b1d58d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdf1925...756e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe1061f...838a8c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-RockXStaking-v1.0.pdf](https://github.com/RockX-SG/stake/blob/main/PeckShield-Audit-Report-RockXStaking-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | n/a | matched | 1 | 1 | 0 | 1 | n/a |
| [blocksec_bedrock_br_v1.0-signed.pdf](https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_bedrock_unibtc_v1.0-signed.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [PeckShield-Audit-Report-uniBTC-v1.0.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [code audit blocksec.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [PeckShield-Audit-Report-Bedrock-v1.0.pdf](https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | n/a | matched | 1 | 1 | 0 | 1 | n/a |
| [PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf](https://github.com/RockX-SG/uniiotx/blob/main/docs/PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_bedrock_unibtc_v1.1-signed.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.1-signed.pdf) | BlockSec | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 7 | high |
| [PeckShield Audit Report RockX Eth Staking.pdf](https://github.com/Bedrock-Technology/docs/blob/main/PeckShield%20Audit%20Report%20RockX%20Eth%20Staking.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12765] PeckShield-Audit-Report-RockXStaking-v1.0.pdf — matched: No reason recorded
- [12767] blocksec_bedrock_br_v1.0-signed.pdf — no match: Scope explicitly lists contracts/brBTC.sol and contracts/brVault.sol. Audit date is December 16, 2024 from the report header.
- [12768] blocksec_bedrock_unibtc_v1.0-signed.pdf — matched: Scope explicitly states only source code files in folders contracts/contracts/ and ccip/ are in scope. All contracts mentioned in findings are from these folders.
- [12769] PeckShield-Audit-Report-uniBTC-v1.0.pdf — matched: The report explicitly lists 'Target: uniBTC' and mentions 'Vault' and 'DelayRedeemRouter' as audited contracts in findings. No file paths provided.
- [12770] code audit blocksec.pdf — matched: Scope explicitly lists three source files: uniBTC.sol, Peer.sol, Vault.sol. Audit date from cover page.
- [12771] PeckShield-Audit-Report-Bedrock-v1.0.pdf — matched: No reason recorded
- [12772] PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf — no match: Scope section states 'all files under the contracts/ directory' and findings target IOTXClear and IOTXStaking. No other contract names explicitly mentioned.
- [12773] blocksec_bedrock_unibtc_v1.1-signed.pdf — matched: Scope explicitly mentions two folders: contracts/contracts/ and ccip/. All contracts referenced in findings from these folders are included.
- [12774] PeckShield Audit Report RockX Eth Staking.pdf — no match: The report does not have a dedicated scope section or table listing contracts. However, the findings consistently target 'RockXStaking' as the audited contract. No other contract names are explicitly mentioned as in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-RockXStaking-v1.0.pdf | RockXETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf1376b...df51f4` — deployed 2022-09-29 07:19:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-RockXStaking-v1.0.pdf | RockXStaking | unmatched — not counted | — | — | no |
| blocksec_bedrock_br_v1.0-signed.pdf | brBTC | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x2ec37d...8f6646` — deployed 2024-12-19 09:07:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x733a6c...f01df3` — deployed 2024-12-19 09:21:45+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x939197...2b593e` — deployed 2025-02-06 08:36:50+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3376eb...61514a` — deployed 2025-06-13 10:36:19+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdfc7d2...2b511e` — deployed 2025-08-12 10:36:25+03 — liveness: live (current_address_book_code)<br>0xa16113… (proxy) (alternative) `0xa16113...2059be` — deployed 2025-08-08 06:33:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_bedrock_br_v1.0-signed.pdf | brVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1df46e...90ad93` — deployed 2024-12-19 09:22:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf97750...31ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1419b4...0e3386` — deployed 2024-12-19 09:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | ccipPeer | unmatched — not counted | — | Listed in scope folder ccip/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | DelayRedeemRouter | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | BitLayerNativeProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf97750...31ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | BR | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | Bedrock | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings (contract name is Bedrock) | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | DirectBTCMinter | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | MBTCProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | SwapProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| PeckShield-Audit-Report-uniBTC-v1.0.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf97750...31ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-uniBTC-v1.0.pdf | DelayRedeemRouter | unmatched — not counted | — | Listed in findings target DelayRedeemRouter | no |
| code audit blocksec.pdf | uniBTC | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x939197...2b593e` — deployed 2025-06-13 10:29:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x939197...2b593e` — deployed 2024-07-08 06:29:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6b2a01...bd726a` — deployed 2024-09-10 13:25:26+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6b2a01...bd726a` — deployed 2024-09-02 12:27:34+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf97750...31ab18` — deployed 2025-08-12 10:33:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc3827a...db6e90` — deployed 2025-01-23 07:10:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x939197...2b593e` — deployed 2024-07-12 11:31:06+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc3827a...db6e90` — deployed 2025-02-17 11:53:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x004e9c...350568` — deployed 2024-04-13 11:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code audit blocksec.pdf | Peer | unmatched — not counted | — | listed in scope | no |
| code audit blocksec.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf97750...31ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Bedrock-v1.0.pdf | RockXETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf1376b...df51f4` — deployed 2022-09-29 07:19:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Bedrock-v1.0.pdf | RockXStaking | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf | IOTXClear | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf | IOTXStaking | unmatched — not counted | — | Target in finding PVE-002 and PVE-003 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | ccipPeer | unmatched — not counted | — | Listed in scope folder ccip/ and referenced in findings | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | DelayRedeemRouter | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in findings | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | BitLayerNativeProxy | unmatched — not counted | — | Referenced in finding 2.1.2 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf97750...31ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | BR | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in finding 2.3.1 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | DirectBTCMinter | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in finding 2.3.2 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | MBTCProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in finding 2.3.4 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | SwapProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in finding 2.4.3 | no |
| PeckShield Audit Report RockX Eth Staking.pdf | RockXStaking | unmatched — not counted | — | Listed as target in findings (PVE-001, PVE-002, PVE-003, PVE-004) and mentioned as the main contract in scope. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x3376eb...61514a` | VaultWithoutNative | unknown | $865.59 | Verified native implementation with $865.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xa16113...2059be` | brBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x939197...2b593e` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x552b0c...42fa05` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x20d702...634510` | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x89b2c7...740aeb` | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9f283b...dcfefb` | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xa93322...4ffadd` | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 24 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 22 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: unique_name=6

Zero-match audit list:

- [12767] blocksec_bedrock_br_v1.0-signed.pdf
- [12772] PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf
- [12774] PeckShield Audit Report RockX Eth Staking.pdf

Fork inheritance lineage and inherited audits are included when available.
