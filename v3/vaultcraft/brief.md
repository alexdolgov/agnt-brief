# Agentic Audit Brief: VaultCraft

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 7 (1 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: VaultCraft (`vaultcraft`)
- Website: [https://vaultcraft.io/](https://vaultcraft.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, optimism, polygon
- Contract surface: 228 unique implementations (243 raw deployments)
- Coverage basis: 1/12 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $542,645.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for VaultCraft. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, bsc, ethereum, optimism, polygon. Structural roles: 6 core, 5 supporting, 2 unclassified. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (6), supporting (5), unclassified (2)
- Contract kinds: contract (12), unclassified (1)
- Detected standards: erc20 (3), erc20permit (2), erc165 (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (4), solmate (2)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x007318...412864`, chain 1)
- UnnamedContract (`0x47fd36...08655e`, chain 1)
- UnnamedContract (`0x6aa03e...48169a`, chain 1)
- UnnamedContract (`0xd57d8e...3eb1f4`, chain 1)
- UnnamedContract (`0x6f0fec...986394`, chain 10)
- UnnamedContract (`0xdd0d13...a6d23a`, chain 10)
- UnnamedContract (`0xe8647e...f52b5a`, chain 56)
- UnnamedContract (`0xb205e9...a7a6cc`, chain 42161)
- ClonableBeaconProxy (`0x59a696...94a230`, chain 42161)
- ClonableBeaconProxy (`0x68ead5...b885be`, chain 42161)
- FeeRecipientProxy (`0x74bb39...1afe3f`, chain 1)
- GnosisSafeProxy (`0xb85e0d...21f5da`, chain 1)
- MiniMeToken (`0xd0cd46...8a78c4`, chain 1)
- OptimismMintableERC20 (`0xd41d34...a1be45`, chain 10)
- OptionsToken (`0xafa52e...7c0ca2`, chain 1)
- UChildERC20Proxy (`0xc5b57e...7ee50c`, chain 137)
- VaultRouter (`0x4995f3...a243cd`, chain 1)
- VaultRouter (`0x382884...002919`, chain 10)
- VaultRouter (`0x48943f...1f777b`, chain 42161)
- Voting Escrow (`0x0ab4bc...819a1a`, chain 1)
- WeightedPool2Tokens (`0x577a7f...3f1920`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/12 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 208 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 20 of 228 unique; 208 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/22
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 206
- Unique implementations: 228
- Raw deployments: 243
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 4.5% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeRecipientProxy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260605 | `0x74bb39...1afe3f` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GenericVaultAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6dfe8...8cd828` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x770f4e...99f9b6` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-260627 | `0xb85e0d...21f5da` | ⚠️ Unaudited |
| LockVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5d383...367697` | ⚠️ Unaudited |
| MiniMeToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260609 | `0xd0cd46...8a78c4` | ⚠️ Unaudited |
| MultiStrategyVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xcede40...138b93`; arbitrum `0xe1543d...8f20f8` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-260617 | `0xd41d34...a1be45` | ⚠️ Unaudited |
| OptionsToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260607 | `0xafa52e...7c0ca2` | ⚠️ Unaudited |
| OracleVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x11eaa7...5366c8`; ethereum `0x54c551...9b7ccc`; ethereum `0x7b42e0...71498c`; ethereum `0xcf9273...f08edb`; ethereum `0xd13f3d...34c3ea`; ethereum `0xdb06a9...cb5554`; ethereum `0xdb435e...632a2a`; ethereum `0xe66f1a...aa4cbd` | ⚠️ Unaudited |
| PORExchangeRateFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7d27...3dc3f3` | ⚠️ Unaudited |
| StakingVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd0d13...a6d23a` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-260631 (2 proxies) | 2 deployments: arbitrum `0x59a696...94a230`; arbitrum `0x68ead5...b885be` | ⚠️ Unaudited |
| StringPoRAddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b2091...5a3219` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-260629 | `0xc5b57e...7ee50c` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x434e7e...c7ae02`; ethereum `0xa48d49...9d9658`; optimism `0x4e93cc...46c412`; arbitrum `0xc9ed56...3c284c`; arbitrum `0xd11a31...dabf72`; arbitrum `0xd3a179...d538a4` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-260599 | `0x4995f3...a243cd` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | optimism | unit-260613 | `0x382884...002919` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-260621 | `0x48943f...1f777b` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260595 | `0x0ab4bc...819a1a` | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260601 | `0x577a7f...3f1920` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x788dbb...082a12`; ethereum `0xf8207f...12f04d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (206)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260592 | `0x007318...412864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008a18...efecc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032f4d...3d192d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0989b0...36988d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dd50a...050649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dfb88...974dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121936...6d90a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c170...9d39c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153515...97f4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x194330...b72ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a48e2...2c1cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1aaafe...b08d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9432...870f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b546...f29869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2529a6...d2e6e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x268aef...09e6ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d5a6b...ceec8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31ccea...aaaac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31f687...d62f5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x377dfc...067e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b51bb...5aed49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d9dd8...dcc4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5936...0660a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x408338...900a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4485b5...9438db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260597 | `0x47fd36...08655e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a2a63...abc111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b2294...c2245c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dff3a...4407d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec671...f88111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0c92...6aa015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502a30...deb171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x508b2d...7139e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a768...84c6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564fbe...6dcde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57f0d2...f92f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58722b...7d62d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59fd90...234f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5af955...000778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7162...07d4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6028ad...7e25fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62ee7d...122057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639177...1dca94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e14...4b68e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x658a94...89bd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e2e5...ef648c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x670326...faf8c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260603 | `0x6aa03e...48169a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x724182...3a649c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x768ba3...415a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x779fc2...d963fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e88c...753e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x782b9c...d89567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d884...95b3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79e077...ab4e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a33b5...b15cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a6812...55f1ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d51ba...a7dbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8133ca...a92163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x841af3...6840ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84aa5c...42fd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x872418...c3c074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87520b...6b831d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877ff2...4af93b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8a73...8d1ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9481...5a2603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c0069...5966b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6e2c...04eaa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91b842...34624c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92f600...2947a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9495f3...90c5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c282...144d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ee89...e7ad6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x973f41...22bf0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99a53f...e94c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a5b41...82286f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9daaa6...685dd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0c5d...6364e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed1f8...8c1753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0b22d...f56b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa19940...70837d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5aef0...36988b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5f5e9...ce5d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7604c...00527b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa76331...bbd197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84397...204822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c581...126bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa733e...2d0467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaadcad...555440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8106...f3bed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0dde8...039b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1804e...32f0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3404f...bb99ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64d29...cb8814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb673c0...64aaf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7aadf...ab7483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e3db...7966f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb49b6...bd939c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5b77...c00574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd18c2...09fbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd4458...a70f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf8217...bcc8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59b7c...54583c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9b383...8f41ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca227f...8fbd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca8a62...31a574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3ac6...78b887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd158ec...50499e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1e538...7991a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd24844...d4c86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3035e...6d3fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3ffed...c25d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd522ce...37d29b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260611 | `0xd57d8e...3eb1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd76f37...405f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbb3a9...66c411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce45f...a22d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd21bc...7522dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9b9c...083110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3514a...93c799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f464...3dac37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecee4b...a8cdec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecef1f...bb2668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedfd61...f888fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef4e3a...1b4899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0fe24...51fd67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2a89b...c2b566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf76b7d...0598af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82316...551854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e466...5e3df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb398a...9e6de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc1437...c163cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc90a1...5db30d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd2f65...c86f4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdba40...49bcbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7ff5...0b722e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff30a5...876e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05cf4e...838de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x107105...44cc19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x133d81...a308ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2732a8...da28f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x276890...f8930b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3602c7...5e20be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b276e...f0414b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3fcc4e...883c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41813a...e84397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x432a97...29a68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x504f82...3cb109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x636204...f145eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64af9c...c212e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260615 | `0x6f0fec...986394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7226f3...f761ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x757d95...e09c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x795d90...0ea5aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b1987...27c15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d224f...bb457f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81fdf8...bca9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x823033...eae7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e69c9...c0fbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9854c6...f75d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x99470b...f57637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c45fe...c87675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9f7628...48599c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa04f54...2ef5b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa18735...9ec0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0da5a...dc609a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4cb04...ef410f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9cc3e...57e5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcfe6b9...527162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0789c...737a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd84d5d...2d3c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd9869e...a54733` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260619 | `0xdd0d13...a6d23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef2d4c...d773a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf58624...3bfff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf64f4f...a4c043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfed46b...986d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xffc8b5...a9cc6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260625 | `0xe8647e...f52b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b6420...0922f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bd690...7e472a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1db17a...26cb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ea65a...47d68c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23dbbe...ae5fcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x243331...78db9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25172c...dc2219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3602c7...5e20be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x504f82...3cb109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5769f1...b45ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57c041...19fc73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58a270...670f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b946b...bfc809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62ac43...0a9cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69c529...2a6a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x823033...eae7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87ebac...56936e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ac3b6...24482b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x932249...cbe824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x935c01...164552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99fdfc...17f460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260623 | `0xb205e9...a7a6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb67c4c...90a8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb3c6f...232c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc09f5...65ecc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeff109...078739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40749...ca9393` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf](https://1854965950-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FgF4N9JVFD9kYVbxfqUOJ%2Fblocksec_popcorn_v1.0-signed.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory)](https://gist.github.com/gjaldon/f3d1e2410f6e52370c8f19e72b98ea5c) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory)](https://gist.github.com/gjaldon/8d2067cd7b382a347c5ca4a5d01aa7c2) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [code4rena.com/audits/2023-01-popcorn-contest](https://code4rena.com/audits/2023-01-popcorn-contest) | Code4rena | Contest | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory)](https://gist.github.com/0xruhum/4252cee7e84da6bb5b0a19ed00b5e34e) | 0xRuhum | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FmBWIydyZzVeNBuK3u5an%2FZokyo%20Audit.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2F0NB6k44GVu1IW2B2mOcG%2FPopcornMay2022.pdf) | G0 Group | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14099] spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf — matched: Scope explicitly lists files in audit2/src folder. Contract names extracted from file paths and findings.
- [14100] f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) — no match: No explicit scope section found; contracts extracted from findings and file paths referenced in the report.
- [14101] 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) — no match: The report is a gist with findings for Peapods Strategies. No explicit scope section; contracts are inferred from findings.
- [14102] code4rena.com/audits/2023-01-popcorn-contest — no match: The provided text is a leaderboard for a Code4rena contest, not an audit report. No contracts in scope or audit date are identifiable.
- [14103] 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) — no match: No reason recorded
- [14104] spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf — no match: The audit report explicitly lists two contracts in scope: HysiBatchZapper and HysiBatchInteraction. The audit date is given as 'Nov 1st, 2021' on the cover page.
- [14105] spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf — no match: Scope explicitly lists three Solidity files: AffiliateToken.sol, Vault.sol, VaultFeeController.sol. Audit date inferred from 'June 2022' in title and header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | EIP | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | MultiRewardEscrow | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | MultiRewardStaking | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | Owned | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | OwnedUpgradeable | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | AdminProxy | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | CloneFactory | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | CloneRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | DeploymentController | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | FeeRecipientProxy | own contract | FeeRecipientProxy (selected) `0x74bb39...1afe3f` — deployed 2023-04-18 20:35:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | PermissionRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | TemplateRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | Vault | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | VaultController | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | VaultRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | VaultRouter | ambiguous — not counted | VaultRouter (alternative) `0x382884...002919` — deployed 2024-03-13 14:55:41+03 — liveness: live (current_address_book_code)<br>VaultRouter (alternative) `0x4995f3...a243cd` — deployed 2023-12-01 16:38:11+03 — liveness: live (current_address_book_code)<br>VaultRouter (alternative) `0x48943f...1f777b` — deployed 2024-03-13 14:56:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | AdapterBase | unmatched — not counted | — | mentioned in findings (Section 2.1.4, 2.3.1) | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | BeefyAdapter | unmatched — not counted | — | mentioned in findings (Section 2.1.7) | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | PendleAdapter | unmatched — not counted | — | mentioned in findings H-01, H-02, H-03, M-04, M-05, L-02 | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | AdapterBase | unmatched — not counted | — | mentioned in findings H-02, H-03 | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | PendleAdapterBalancerCurveHarvest | unmatched — not counted | — | mentioned in findings M-01, M-03, L-01 | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | PendleAdapterBalancerHarvest | unmatched — not counted | — | mentioned in findings M-03, L-01 | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | BaseUniV2LpCompounder | unmatched — not counted | — | Referenced in findings M-01, L-02, L-03 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | BaseBalancerLpCompounder | unmatched — not counted | — | Referenced in findings M-01, L-02, L-03 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | PeapodsBalancerUniV2Compounder | unmatched — not counted | — | Mentioned in L-01 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | PeapodsUniV2Compounder | unmatched — not counted | — | Mentioned in L-01 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | PeapodsBase | unmatched — not counted | — | Referenced in L-01 as __PeapodsBase_init(). | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | AaveV2Adapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | AaveV3Adapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | AdminProxy | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | CompoundV2Adapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | ConvexAdapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | DeploymentController | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | MasterChefAdapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | MultiRewardEscrow | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | MultiRewardStaking | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | Vault | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | VaultController | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | YearnAdapter | unmatched — not counted | — | — | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf | HysiBatchZapper | unmatched — not counted | — | Listed in scope: 'Contracts: HysiBatchZapper; HysiBatchInteraction.' | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf | HysiBatchInteraction | unmatched — not counted | — | Listed in scope: 'Contracts: HysiBatchZapper; HysiBatchInteraction.' | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf | AffiliateToken | unmatched — not counted | — | listed in scope | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf | VaultFeeController | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd0cd46...8a78c4` | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd41d34...a1be45` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xafa52e...7c0ca2` | OptionsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x59a696...94a230` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc5b57e...7ee50c` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4995f3...a243cd` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x382884...002919` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x48943f...1f777b` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ab4bc...819a1a` | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x577a7f...3f1920` | WeightedPool2Tokens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 206 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 42 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=2
- Match method counts: unique_name=1

Zero-match audit list:

- [14100] f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory)
- [14101] 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory)
- [14102] code4rena.com/audits/2023-01-popcorn-contest
- [14103] 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory)
- [14104] spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf
- [14105] spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf

Fork inheritance lineage and inherited audits are included when available.
