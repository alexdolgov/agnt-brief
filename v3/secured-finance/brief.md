# Agentic Audit Brief: Secured Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Secured Finance (`secured-finance`)
- Website: [https://secured.finance/](https://secured.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, ethereum, polygon-zkevm
- Contract surface: 121 unique implementations (221 raw deployments)
- Coverage basis: 4/6 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $589,511.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Secured Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across ethereum, polygon, polygon-zkevm. Structural roles: 6 core, 2 supporting, 1 unclassified. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (6), supporting (2), unclassified (1)
- Contract kinds: contract (5), abstract (3), unclassified (1)
- Detected standards: erc1967proxy (3), ownable (3), accesscontrol (2), erc165 (2), multicall (2), pausable (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (7), chainlink (3)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x35e9d8...779fe2`, chain 1)
- UnnamedContract (`0x581e46...08719f`, chain 1)
- UnnamedContract (`0x7dca6b...2bf2dc`, chain 1)
- GenesisValueVault (`0x43b7a3...dc5145`, chain 1)
- ProxyController (`0x1634d2...020ebb`, chain 1)
- ReserveFund (`0x8bd2e1...bda6fb`, chain 1)
- Strategy (`0x6f6046...ab8935`, chain 1)
- TokenVault (`0x4675b1...3135d4`, chain 1)
- UpgradeabilityProxy (`0xa2700d...a07f2b`, chain 1)
- UpgradeabilityProxy (`0xb74749...b69393`, chain 1)
- UpgradeabilityProxy (`0xd2683e...d2778e`, chain 1)
- Yearn V3 Vault (`0x7a6e36...028789`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/6 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 112 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 9 of 121 unique; 112 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/32
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 89
- Unique implementations: 121
- Raw deployments: 221
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 4 | 12.5% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GenesisValueVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254271 | 2 deployments: ethereum `0x43b7a3...dc5145`; ethereum `0xa2700d...a07f2b` | ✅ Audited |
| ProxyController | governance | project_anchor | own_supporting | 0 | ethereum | unit-254259 | `0x1634d2...020ebb` | ✅ Audited |
| ReserveFund | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254273 | 2 deployments: ethereum `0x8bd2e1...bda6fb`; ethereum `0xd2683e...d2778e` | ✅ Audited |
| TokenVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254272 | 2 deployments: ethereum `0x4675b1...3135d4`; ethereum `0xb74749...b69393` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fc649...f53f1f`; ethereum `0xa3719b...368e4a` | ⚠️ Unaudited |
| BeaconProxyController | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3dd09b...3be313`; ethereum `0x8a44ed...c4c897`; ethereum `0x93dabb...1cf632`; ethereum `0xad6861...a2851b`; ethereum `0xbfa7e7...286211` | ⚠️ Unaudited |
| CurrencyController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd024f3...62a18b`; ethereum `0xfc8c59...007439` | ⚠️ Unaudited |
| DepositManagementLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1fa5d5...0bef95`; ethereum `0x3dc65b...530bf3`; ethereum `0x6afe00...b86ed4`; ethereum `0xd60551...fd9765`; ethereum `0xe825f9...7eba89` | ⚠️ Unaudited |
| FundManagementLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3482cf...8bb820`; ethereum `0x449d3a...07cf94`; ethereum `0x4beabc...72a3c8`; ethereum `0xd4e37b...824223`; ethereum `0xf4f496...9ee2f0` | ⚠️ Unaudited |
| FutureValueVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x01fa28...a437fe`; ethereum `0x077ea4...a63879`; ethereum `0x68eb5c...da97ce`; ethereum `0xc860e5...344816`; ethereum `0xe05e26...c0a1f6` | ⚠️ Unaudited |
| GenesisValueVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0bbe24...3e7da0`; ethereum `0x224f43...2060b4`; ethereum `0x24c8c6...b19da4`; ethereum `0xaed8d7...5fd92d`; ethereum `0xf49cc5...cd3e9d`; ethereum `0xfe6225...58bb1a` | ⚠️ Unaudited |
| LendingMarket | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x39fce9...efac9e`; ethereum `0x5a3207...777030`; ethereum `0x819cc1...46b52d`; ethereum `0x927160...29dd1d`; ethereum `0xacc7f4...624d97`; ethereum `0xbc542b...a16819`; ethereum `0xd06dd4...57e521` | ⚠️ Unaudited |
| LendingMarketController | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1237b5...6b61e7`; ethereum `0x60ccbf...0e5fc7`; ethereum `0x6caf98...61e873`; ethereum `0x79b9bf...a51b8f`; ethereum `0xd0ae7b...f0214c`; ethereum `0xf50875...b5f6ec` | ⚠️ Unaudited |
| LendingMarketOperationLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1c9579...7e2f22`; ethereum `0x293c4e...512810`; ethereum `0x3a2a5a...71fb8b`; ethereum `0xa4c30d...1b8f30`; ethereum `0xe4f5c6...a9582a` | ⚠️ Unaudited |
| LendingMarketUserLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x378083...b32efc`; ethereum `0x3efcfc...b679a2`; ethereum `0xc521f8...ac614b`; ethereum `0xc66399...fcd081`; ethereum `0xc901ed...e4b67b` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0722e0...1a20c3`; ethereum `0x0e1913...aa2b34`; ethereum `0x11ec43...eba1d9`; ethereum `0xb5b236...cb9fb9`; ethereum `0xf64ebc...8b406a`; ethereum `0xf90ef8...405093` | ⚠️ Unaudited |
| MigrationAddressResolver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x5a074d...36cb59`; ethereum `0xcfec1a...e2f885`; ethereum `0xdda594...943d2c`; ethereum `0xde683a...e9bf53`; ethereum `0xefdd05...9b97a5`; ethereum `0xf53327...ba753c` | ⚠️ Unaudited |
| OrderActionLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2feb57...faa1ef`; ethereum `0x41eb72...30750b`; ethereum `0x54a3f4...1d7926`; ethereum `0x867f87...96ab8a`; ethereum `0xb9e1af...e9dc79`; ethereum `0xefabd8...413c8c` | ⚠️ Unaudited |
| OrderBookLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x05e71d...7f21b5`; ethereum `0xc58700...89103a`; ethereum `0xef430f...185120` | ⚠️ Unaudited |
| OrderReaderLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0b063c...11dbfe`; ethereum `0x21ee63...91b33d`; ethereum `0x64a055...654e90`; ethereum `0xacd8f5...c30941` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e671...831b67` | ⚠️ Unaudited |
| ProxyController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x561507...1fa960` | ⚠️ Unaudited |
| QuickSort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac98b3...b817fc` | ⚠️ Unaudited |
| ReserveFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x5f4ca7...73379e`; ethereum `0x6518f2...71cbdc`; ethereum `0xb4c852...fd01ad`; ethereum `0xc360e1...06c52a`; ethereum `0xfcb48a...d55d4e` | ⚠️ Unaudited |
| StaticPriceAggregator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 19 deployments: ethereum `0x1bb66b...abe10d`; ethereum `0x3179d2...761b84`; ethereum `0x354662...e4dc04`; ethereum `0x379423...106848`; ethereum `0x40786c...f6b08c`; ethereum `0x40bb4f...22a349`; ethereum `0x4ce6bd...5e5eae`; ethereum `0x4cfb76...24be09`; ethereum `0x51dfbe...0a51b7`; ethereum `0x6221b6...6cf19c`; ethereum `0x72f550...e09331`; ethereum `0x732bad...c01262`; ethereum `0x7fd3cc...06d034`; ethereum `0x813dd1...de74ee`; ethereum `0xd0fdb0...587b37`; ethereum `0xd778d1...4df7ef`; ethereum `0xe8e0c1...91a4eb`; ethereum `0xf15359...abf288`; ethereum `0xf15b2a...e616c1` | ⚠️ Unaudited |
| TokenFaucet | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x59d580...d846c1`; ethereum `0x675d43...774dfa`; ethereum `0xb92ac5...d7cb26`; ethereum `0xed3908...1e6f70` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254274 | `0x6f6046...ab8935` | ⚠️ Unaudited |
| TokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x185272...a84e44`; ethereum `0x4aed62...1f649d`; ethereum `0x6eadcc...f3f25f`; ethereum `0x83c785...1408bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b6fff...bf7158`; ethereum `0xed890f...6863c5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xafc8cf...38c4a7`; ethereum `0xff3b44...8c038d` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-254262 | `0x7a6e36...028789` | ⚠️ Unaudited |
| ZCToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d8202...8b1e9a`; ethereum `0x6bb750...11ef37`; ethereum `0x7a1932...e7b3c8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (89)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f2de...ceeb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d2b9...4b46cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050c73...6cbc6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08cdef...6c51cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095117...6c942f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09d39e...903645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10651c...edc995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107a8a...90bc59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x151a9c...3cea32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159a1f...bee89e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18f082...951cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d812...4da42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b4e56...574d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28eb84...de7e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297c64...eff517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad86f...7bbe7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c15fd...ef45f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d92b3...f27fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x324886...a06470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a5f7...3d9060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34b5fd...fd7d8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254260 | `0x35e9d8...779fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431d7f...1fcf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43eede...f89928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x457671...4833a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4742ad...865866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6eab...f29a4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254261 | `0x581e46...08719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1cdc...5f10b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b47e0...aef331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b5f2f...685b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60fcd0...eeded4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63dbcf...adc2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6523fc...298020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655056...169e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f06b1...15a686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71c9bb...421dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74c75c...9b0421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75045f...68e2d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75f8c7...15adcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x793fc4...5a7c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bde2b...ba9e7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254263 | `0x7dca6b...2bf2dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a16aa...54f95d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b29d1...cd0722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c8098...4fed7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f3d1b...4e313e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7878...596daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d02d...d0bdf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96a3ae...07807d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d7e0...d56c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98d7a9...c5c063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa041a1...0e9176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1925f...d73f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d9f8...5ea9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63422...7634bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a6b5...d654dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91a09...a9f099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b039...dc1203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae342e...7ac3e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb034d5...d56bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6bf26...85cdc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d4f0...3f051b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd4585...097cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea8b9...716d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc052a3...fa3c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1decd...47bee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25f6f...a98e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79a6f...345770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca4112...93d553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc348e...99fe89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd36c6...60c987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce9813...857e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2f21d...7865bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd795c9...4d310c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd84bde...ac740a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02a6b...dc8802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe453ff...986cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4b990...d97ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9bda3...539e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea83f7...f0f9cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7cad...2f0549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedbd0e...c59fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf141ee...d3fc83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf87de2...106943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3170...356dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc8274...c58f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc882e...652cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | 4 deployments: polygon-zkevm `0x0896ac...d68824`; polygon-zkevm `0x7dca6b...2bf2dc`; polygon-zkevm `0x9e1254...27a74b`; polygon-zkevm `0xb74749...b69393` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-01-Hexens.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-01-Hexens.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2025-03-Decurity.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-03-Decurity.pdf) | Decurity | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2025-08-Hexens.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-08-Hexens.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2023-11-Quantstamp.pdf](https://github.com/Secured-Finance/contracts/blob/develop/audits/2023-11-Quantstamp.pdf) | Quantstamp | Audit | 2023-11 | stale | Direct | contract_name | matched | 7 | 3 | 0 | 62 | high |
| [2024-03-Quantstamp.pdf](https://github.com/Secured-Finance/contracts/blob/develop/audits/2024-03-Quantstamp.pdf) | Quantstamp | Audit | 2024-03 | stale | Direct | n/a | matched | 5 | 2 | 0 | 8 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13817] 2025-01-Hexens.pdf — no match: Extracted contract names from scope section and findings. Audit date from 'delivered 20.01.2025'.
- [13818] 2025-03-Decurity.pdf — no match: Extracted contract names from scope section and findings. Audit period end date used as audit date.
- [13819] 2025-08-Hexens.pdf — no match: Contracts extracted from findings and scope section; audit date from final report date.
- [13820] 2023-11-Quantstamp.pdf — matched: All files listed in the 'Files Included' section under 'Scope' are considered in scope. The audit date is the end date of the timeline (2023-10-16 through 2023-11-30).
- [13821] 2024-03-Quantstamp.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-01-Hexens.pdf | LockupContractFactory | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | ProtocolToken | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | PriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | TellorCaller | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | CommunityIssuance | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | ActivePool | unmatched — not counted | — | mentioned in finding SECFIN1-2 | no |
| 2025-01-Hexens.pdf | MultiTroveGetter | unmatched — not counted | — | mentioned in finding SECFIN1-17 | no |
| 2025-01-Hexens.pdf | IPyth | unmatched — not counted | — | mentioned in finding SECFIN1-17 | no |
| 2025-01-Hexens.pdf | PythCaller | unmatched — not counted | — | mentioned in finding SECFIN1-17 | no |
| 2025-01-Hexens.pdf | SortedTroves | unmatched — not counted | — | mentioned in finding SECFIN1-4 | no |
| 2025-01-Hexens.pdf | TroveBase | unmatched — not counted | — | mentioned in finding SECFIN1-4 | no |
| 2025-01-Hexens.pdf | DebtToken | unmatched — not counted | — | mentioned in finding SECFIN1-18 | no |
| 2025-01-Hexens.pdf | IPool | unmatched — not counted | — | mentioned in finding SECFIN1-6 | no |
| 2025-03-Decurity.pdf | TellorCaller | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | TroveBase | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | Unipool | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | ProtocolToken | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | PriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | PythCaller | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | ProtocolStakingScript | unmatched — not counted | — | listed in scope and findings | no |
| 2025-08-Hexens.pdf | DebtToken | unmatched — not counted | — | listed in scope and findings | no |
| 2025-08-Hexens.pdf | ProtocolToken | unmatched — not counted | — | mentioned in findings | no |
| 2025-08-Hexens.pdf | BorrowerOperations | unmatched — not counted | — | mentioned in findings | no |
| 2025-08-Hexens.pdf | ActivePool | unmatched — not counted | — | mentioned in findings | no |
| 2025-08-Hexens.pdf | SortedTroves | unmatched — not counted | — | mentioned in findings | no |
| 2023-11-Quantstamp.pdf | BeaconProxyController | own contract | 0x581e46… (selected) `0x581e46...08719f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | FutureValueVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | GenesisValueVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xa2700d...a07f2b` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | CurrencyController | own contract | 0x7dca6b… (selected) `0x7dca6b...2bf2dc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | TokenVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xb74749...b69393` — deployed 2023-12-14 03:46:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | AddressResolver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ReserveFund | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xd2683e...d2778e` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | LendingMarketController | own contract | 0x35e9d8… (selected) `0x35e9d8...779fe2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | ProxyController | own contract | ProxyController (selected) `0x1634d2...020ebb` — deployed 2023-12-14 03:43:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | LendingMarket | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | INativeToken | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ILiquidationReceiver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IAddressResolver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IBeaconProxyController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IProxyController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ILendingMarketController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ILendingMarket | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IFutureValueVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ITokenVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IGenesisValueVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ICurrencyController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IReserveFund | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Proxyable | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | UpgradeabilityProxy | ambiguous — not counted | UpgradeabilityProxy (proxy) (alternative) `0xa2700d...a07f2b` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code)<br>UpgradeabilityProxy (proxy) (alternative) `0xb74749...b69393` — deployed 2023-12-14 03:46:59+03 — liveness: live (code_present_context)<br>UpgradeabilityProxy (proxy) (alternative) `0xd2683e...d2778e` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-11-Quantstamp.pdf | LockAndMsgSender | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | UpgradeabilityBeaconProxy | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | QuickSort | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderBookLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AddressResolverLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Contracts | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderStatisticsTreeLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | BokkyPooBahsDateTimeLibrary | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderActionLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketUserLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | DepositManagementLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketOperationLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | FundManagementLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderReaderLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderBookLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | RoundingUint256 | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | RoundingInt256 | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinAccessControl | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinAddressResolver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinWallet | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinLendingMarketConfiguration | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinLiquidationConfiguration | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ProtocolTypes | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | CurrencyControllerStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ReserveFundStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | BeaconProxyControllerStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AddressResolverStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | GenesisValueVaultStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | FutureValueVaultStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | TokenVaultStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketControllerStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AccessControlStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OwnableStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | PausableStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | TransferHelperStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinAddressResolverStorage | unmatched — not counted | — | listed in scope | no |
| 2024-03-Quantstamp.pdf | AddressResolver | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | BeaconProxyController | own contract | 0x581e46… (selected) `0x581e46...08719f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | CurrencyController | own contract | 0x7dca6b… (selected) `0x7dca6b...2bf2dc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | FundManagementLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | FutureValueVault | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | GenesisValueVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xa2700d...a07f2b` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | LendingMarket | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | LendingMarketController | own contract | 0x35e9d8… (selected) `0x35e9d8...779fe2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | LendingMarketOperationLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | LendingMarketUserLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | MixinLiquidationConfiguration | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | OrderBookLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | TokenVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xb74749...b69393` — deployed 2023-12-14 03:46:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6f6046...ab8935` | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 94 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=12

Zero-match audit list:

- [13817] 2025-01-Hexens.pdf
- [13818] 2025-03-Decurity.pdf
- [13819] 2025-08-Hexens.pdf

Fork inheritance lineage and inherited audits are included when available.
