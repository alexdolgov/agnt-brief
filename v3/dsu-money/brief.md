# Agentic Audit Brief: DSU Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: DSU Money (`dsu-money`)
- Website: [https://app.dsu.money](https://app.dsu.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 107 unique implementations (107 raw deployments)
- Coverage basis: 3/17 confirmed own live verified implementations (17.6%); conservative 17.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $469,285.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for DSU Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 10 core, 3 supporting, 2 infra, 2 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (10), supporting (3), infra (2), unclassified (2)
- Contract kinds: contract (16), unclassified (1)
- Detected standards: ownable (6), erc20 (4), erc1967proxy (3), erc20permit (2), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (13), uniswap-v2 (4)
- Upgradeable-pattern rows: 3

## Fork Analysis

1 of 27 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

**Incentivizer** (`0x0d49c4...3a0c27`, chain 1)
Origin: perennial (`0x5b495f...fa92b4`)
Containment: 94.7% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- claimFor(address,IProduct,uint256[])

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x52c64b...6b841b`, chain 1)
- UnnamedContract (`0x605d26...667109`, chain 1)
- UnnamedContract (`0xc6e09f...1bf3c8`, chain 1)
- UnnamedContract (`0xd05ace...86da4b`, chain 1)
- UnnamedContract (`0xd353a6...9b18fd`, chain 1)
- UnnamedContract (`0x5fa881...c2f56d`, chain 8453)
- UnnamedContract (`0x7b4adf...562a84`, chain 8453)
- UnnamedContract (`0x0d49c4...3a0c27`, chain 42161)
- UnnamedContract (`0x52c64b...6b841b`, chain 42161)
- UnnamedContract (`0xaf88d0...8e5831`, chain 42161)
- Dollar (`0x36f3fd...89d723`, chain 1)
- DSU (`0x52c64b...6b841b`, chain 10)
- FiatTokenProxy (`0x833589...a02913`, chain 8453)
- Funder (`0x87f6b2...25bc4c`, chain 1)
- GovernorAlpha (`0x0599f0...a8bfcb`, chain 1)
- Implementation (`0x443d2f...3313d3`, chain 1)
- MigrationReserve (`0x0d49c4...3a0c27`, chain 10)
- Migrator (`0xc61d12...ab2ce7`, chain 1)
- OVMFiatToken (`0x7f5c76...c31607`, chain 10)
- ProxyRoot (`0x4d2a5e...f35fec`, chain 1)
- Registry (`0xc5285e...38c7a9`, chain 1)
- ReserveImpl (`0x42340c...5f9ee4`, chain 1)
- Stake (`0x24ae12...ac8b3e`, chain 1)
- Timelock (`0x1bba92...64cb7a`, chain 1)
- UniswapV2Pair (`0xcadd30...486159`, chain 1)
- Vyper_contract (`0x6ec80d...d9109a`, chain 1)

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/17 (17.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 80 discovered implementations excluded (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 27 of 107 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/17
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 107
- Raw deployments: 107
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 17.6% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 3 | 17.6% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Dollar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384075 | `0x36f3fd...89d723` | ✅ Audited |
| GovernorAlpha | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384071 | `0x0599f0...a8bfcb` | ✅ Audited |
| Stake | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384074 | `0x24ae12...ac8b3e` | ✅ Audited |

### ⚠️ Verified + Unaudited (94)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca7fb0...a0e826` | ⚠️ Unaudited |
| BalancedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x477fb9...08385e` | ⚠️ Unaudited |
| BatchKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a8557...b9f118` | ⚠️ Unaudited |
| CentimilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33117f...116d1c` | ⚠️ Unaudited |
| ChainlinkFeedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc5182...70a3b6` | ⚠️ Unaudited |
| CheckpointLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x609f98...93a1d2` | ⚠️ Unaudited |
| CheckpointStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x074fb1...9406d9` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9c962...6851f5` | ⚠️ Unaudited |
| Collateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b9922...a2a15b` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159331...a74c3d` | ⚠️ Unaudited |
| Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ecb01...edcc5e` | ⚠️ Unaudited |
| Deployer1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x408a45...4f1df3` | ⚠️ Unaudited |
| Deployer2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabbc87...f3121f` | ⚠️ Unaudited |
| Deployer3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fac5...7e897a` | ⚠️ Unaudited |
| DSU | unknown | project_anchor | own_supporting | 0 | optimism | unit-384089 | `0x52c64b...6b841b` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | base | unit-384098 | `0x833589...a02913` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f4fb9...b6e04a` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc20bc...3ab37e` | ⚠️ Unaudited |
| Funder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384081 | `0x87f6b2...25bc4c` | ⚠️ Unaudited |
| GasOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x038901...4a2bc7` | ⚠️ Unaudited |
| Giga | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x234253...cab7dc` | ⚠️ Unaudited |
| GlobalStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b18a9...291ed0` | ⚠️ Unaudited |
| Implementation | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384096 | `0x443d2f...3313d3` | ⚠️ Unaudited |
| Incentivizer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384072 | `0x0d49c4...3a0c27` | ⚠️ Unaudited |
| InvariantLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1451ba...c1a8c8` | ⚠️ Unaudited |
| Inverse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd166f9...30b5e9` | ⚠️ Unaudited |
| KeeperOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1990fa...40f1d8` | ⚠️ Unaudited |
| KeeperOracle_Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3186b...12641b` | ⚠️ Unaudited |
| Kilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde7e2d...49acab` | ⚠️ Unaudited |
| KiloPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aaf91...edf753` | ⚠️ Unaudited |
| KiloPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf94f18...16cbc9` | ⚠️ Unaudited |
| MagicValueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28158d...9df48c` | ⚠️ Unaudited |
| Manager_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3af57c...ca4671` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17ebca...a3b255` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x046d60...9b4cde` | ⚠️ Unaudited |
| MarketParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d07e3...8f2e16` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x223039...ed52e1` | ⚠️ Unaudited |
| Mega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffb33f...5248e1` | ⚠️ Unaudited |
| MegaPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe833e9...f0f7d7` | ⚠️ Unaudited |
| MetaQuantsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x309ad3...5687f1` | ⚠️ Unaudited |
| MetaQuantsFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7df5f...ca0b5c` | ⚠️ Unaudited |
| Micro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f7a6c...e74179` | ⚠️ Unaudited |
| MicroPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18ad45...8cd632` | ⚠️ Unaudited |
| MigrationReserve | unknown | project_anchor | own_supporting | 1 | optimism | unit-384097 | `0x0d49c4...3a0c27` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6472...a765ad` | ⚠️ Unaudited |
| Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384084 | `0xc61d12...ab2ce7` | ⚠️ Unaudited |
| Milli | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae794c...68bd62` | ⚠️ Unaudited |
| MilliPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca65c...5f4e0e` | ⚠️ Unaudited |
| MilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x443cef...a43166` | ⚠️ Unaudited |
| MilliSqueethPayoff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x560276...4ce0b1` | ⚠️ Unaudited |
| Multicall4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b12ff...8fe607` | ⚠️ Unaudited |
| MultiInvoker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14c444...44c26a` | ⚠️ Unaudited |
| MultiInvoker_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0092f3...fdd873` | ⚠️ Unaudited |
| Names | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298e0b...cfe47d` | ⚠️ Unaudited |
| Nano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc0e7...0645e7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a47bb...246bb7` | ⚠️ Unaudited |
| OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19a401...be4b22` | ⚠️ Unaudited |
| OrderVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x886e59...908581` | ⚠️ Unaudited |
| OVMFiatToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-384090 | `0x7f5c76...c31607` | ⚠️ Unaudited |
| PayoffFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf81752...27805d` | ⚠️ Unaudited |
| PerennialLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x159331...a74c3d` | ⚠️ Unaudited |
| PositionStorageLocalLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d43c9...745a4c` | ⚠️ Unaudited |
| PowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07b891...c8af9c` | ⚠️ Unaudited |
| PowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b1c49...ed696c` | ⚠️ Unaudited |
| Product | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc5f9...286f53` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16b383...3f3535` | ⚠️ Unaudited |
| ProxyRoot | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384077 | `0x4d2a5e...f35fec` | ⚠️ Unaudited |
| PythFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63dd40...687bb6` | ⚠️ Unaudited |
| PythFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x143c5e...74c1ad` | ⚠️ Unaudited |
| PythOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a18a5...395ca7` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384083 | `0xc5285e...38c7a9` | ⚠️ Unaudited |
| ReserveImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384076 | `0x42340c...5f9ee4` | ⚠️ Unaudited |
| RiskParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02608d...aa0ca7` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80ad6...55e014` | ⚠️ Unaudited |
| SeasonalMerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fc1cc...301f30` | ⚠️ Unaudited |
| SimpleReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58e0c5...196bfe` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384073 | `0x1bba92...64cb7a` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b7a7...5be841` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x0e9d1d...8aaf5c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x196062...8f016f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x197de1...6ddd7c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b87c5...a27cbc` | ⚠️ Unaudited |
| TwoWayBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef566...9d9094` | ⚠️ Unaudited |
| UCrossChainOwner_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a0f50...4d9314` | ⚠️ Unaudited |
| UCrossChainOwner_Optimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b4adf...562a84` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384086 | `0xcadd30...486159` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc12b0f...c77bc6` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03557b...61a0d7` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d6a63...9e0067` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x492bf4...babd73` | ⚠️ Unaudited |
| VersionLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fd2b0...3b45be` | ⚠️ Unaudited |
| VersionStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x107507...ead05b` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035a24...d6d158` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384080 | `0x6ec80d...d9109a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384078 | `0x52c64b...6b841b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384079 | `0x605d26...667109` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384085 | `0xc6e09f...1bf3c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384087 | `0xd05ace...86da4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384088 | `0xd353a6...9b18fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-384094 | `0x5fa881...c2f56d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-384095 | `0x7b4adf...562a84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384091 | `0x0d49c4...3a0c27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384092 | `0x52c64b...6b841b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384093 | `0xaf88d0...8e5831` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [result.md](https://github.com/emptysetsquad/emptyset/blob/master/audit/result.md) | OpenZeppelin | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [scope.md](https://github.com/emptysetsquad/emptyset/blob/master/audit/scope.md) | OpenZeppelin | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21385] result.md — no match: No explicit scope section or contract names found; only findings and fixes mentioned.
- [21386] scope.md — matched: Extracted contract names from scope sections; directories like common/*, incentivizer/*, migrator/*, oracle/*, registry/*, reserve/*, stabilizer/* are not individual contracts. Date from header [4/1/21].

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| scope.md | Decimal | unmatched — not counted | — | listed in scope | no |
| scope.md | TimeUtils | unmatched — not counted | — | listed in scope | no |
| scope.md | Dollar | own contract | Dollar (selected) `0x36f3fd...89d723` — deployed 2020-08-24 13:31:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| scope.md | Vester | unmatched — not counted | — | listed in scope | no |
| scope.md | GovernorAlpha | own contract | GovernorAlpha (selected) `0x0599f0...a8bfcb` — deployed 2021-07-27 20:22:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| scope.md | Stake | own contract | Stake (selected) `0x24ae12...ac8b3e` — deployed 2021-07-27 20:21:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x52c64b...6b841b` | DSU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589...a02913` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x87f6b2...25bc4c` | Funder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x443d2f...3313d3` | Implementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d49c4...3a0c27` | Incentivizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0d49c4...3a0c27` | MigrationReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc61d12...ab2ce7` | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7f5c76...c31607` | OVMFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d2a5e...f35fec` | ProxyRoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5285e...38c7a9` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x42340c...5f9ee4` | ReserveImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bba92...64cb7a` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ec80d...d9109a` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 2 |
| standard_library | 7 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [21385] result.md

Fork inheritance lineage and inherited audits are included when available.
