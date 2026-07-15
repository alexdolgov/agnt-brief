# Agentic Audit Brief: Ledgity Yield

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

- Project: Ledgity Yield (`ledgity-yield`)
- Website: [https://ledgity.finance/](https://ledgity.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, linea, sonic
- Contract surface: 183 unique implementations (344 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,551,547.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Ledgity Yield. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 35 contract row(s) across arbitrum, base, ethereum, linea, sonic. Structural roles: 28 unclassified, 7 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 35
- Structural roles: unclassified (28), core (7)
- Contract kinds: contract (33), abstract (2)
- Detected standards: erc20 (6), ownable (6), erc1967proxy (4), erc165 (3), pausable (3)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 35; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 19 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 164 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 107
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/142
- Verified + Unaudited implementations: 142
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 183
- Raw deployments: 344
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (142)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf55dde...4bc429` | ⚠️ Unaudited |
| APRHistory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x10ce08...2be5d4`; sonic `0x8872b8...ed4bea`; sonic `0xe34603...737cbf`; base `0xe34603...737cbf`; arbitrum `0x3f0ff9...ad4ac5`; linea `0x3f0ff9...ad4ac5` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0xcc1bef...e4f6f0`; sonic `0xad4a00...b41028`; base `0x70dee2...5b994f`; arbitrum `0x7b25b4...23060b`; linea `0xe34603...737cbf` | ⚠️ Unaudited |
| BatchTokenSender | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aed5d...bd293e` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x826c84...171d8e`; sonic `0xf77146...a3e079` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x9e70d1...2b56cd`; sonic `0xf06a64...2cd698` | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x391071...79c7e2` | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xba2b70...b0e563` | ⚠️ Unaudited |
| ConfigRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x33e1cc...956b00`; sonic `0xffd7c8...b670f3` | ⚠️ Unaudited |
| CouncilMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x236ae6...94b180`; base `0x99bc49...8c6c4b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x13e62b...56e955`; sonic `0x536e1c...6d9462`; sonic `0x613904...888b21`; sonic `0x68f3c6...6c2a63`; sonic `0xbea9da...18b05d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4c0b5b...9e9ec7`; sonic `0x910afa...d3caa5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5f9857...d9f3e8`; sonic `0x65f235...7c3477` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x034b03...03e442`; base `0xde1cd8...028370` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3c958e...ca7a15`; base `0xa86d9b...f83e8e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x833e36...44ee12`; base `0x8b72ec...bf5cb4`; base `0xe78d6c...89529f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x154964...a1939a`; arbitrum `0xadf8d7...49e683` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x73b7ea...784a39`; arbitrum `0xa3114c...b7dcc4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8b39bb...73a381`; arbitrum `0x98002b...f97137` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x154964...a1939a`; linea `0xadf8d7...49e683` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3fd4ea...1ee783`; sonic `0x7657f0...61fe35` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x229e64...d92dcc`; sonic `0x29219d...038894` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x23af48...544c1a`; sonic `0xe715cb...b17e57` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x35d511...186535`; sonic `0x767628...9a0801`; sonic `0xb070ad...47db87`; sonic `0xde95b3...9e09b3` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x60a3e3...1adb42` | ⚠️ Unaudited |
| FixedTermInvestmentVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x085b29...28d98f`; base `0x1f866f...b5b8d0` | ⚠️ Unaudited |
| GlobalAccessList | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x210482...ae1757`; ethereum `0x2aff77...6b5a59`; ethereum `0x43b3c6...9e698f`; ethereum `0x57791d...b3b925` | ⚠️ Unaudited |
| GlobalAccessList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: ethereum `0x12d5c7...205c00`; ethereum `0xf6cfb0...00d077`; sonic `0x071c9d...4caf29` | ⚠️ Unaudited |
| GlobalAccessList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x216648...3104e9`; base `0xac3433...26c67b` | ⚠️ Unaudited |
| GlobalAccessList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb05c62...e18da2`; arbitrum `0xc25030...c4a66b` | ⚠️ Unaudited |
| GlobalAccessList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x2aff77...6b5a59`; linea `0xf6cfb0...00d077` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x06ff95...ab145b`; sonic `0x93aaa2...3a0d29` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x210482...ae1757`; sonic `0x43b3c6...9e698f` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x210482...ae1757`; base `0x43b3c6...9e698f` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x896e3b...4d3bca`; arbitrum `0xca55a2...9cf350` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x896e3b...4d3bca`; linea `0xca55a2...9cf350` | ⚠️ Unaudited |
| GlobalBlacklistSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x61097f...7e39e0`; sonic `0xcafa29...fcc37e` | ⚠️ Unaudited |
| GlobalOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2aff77...6b5a59`; sonic `0xf6cfb0...00d077` | ⚠️ Unaudited |
| GlobalOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xeb163b...c6d108`; sonic `0xf2663b...d93649` | ⚠️ Unaudited |
| GlobalOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2aff77...6b5a59`; base `0xf6cfb0...00d077` | ⚠️ Unaudited |
| GlobalOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x36811e...2dc05f`; arbitrum `0xe4af45...9f2462` | ⚠️ Unaudited |
| GlobalOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x36811e...2dc05f`; linea `0xe4af45...9f2462` | ⚠️ Unaudited |
| GlobalOwnerSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x8ce2c4...1e9f5e`; sonic `0xbbb6f6...450011` | ⚠️ Unaudited |
| GlobalPause | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x12d5c7...205c00`; sonic `0x57791d...b3b925` | ⚠️ Unaudited |
| GlobalPause | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x7f9898...c59271`; sonic `0xa87d32...3dba6f` | ⚠️ Unaudited |
| GlobalPause | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x12d5c7...205c00`; base `0x57791d...b3b925` | ⚠️ Unaudited |
| GlobalPause | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xd4568d...552ddd`; arbitrum `0xd4d4c6...bdd4db` | ⚠️ Unaudited |
| GlobalPause | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xd4568d...552ddd`; linea `0xd4d4c6...bdd4db` | ⚠️ Unaudited |
| GlobalPauseSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x18fe72...8f150c`; sonic `0x8925a8...4a4e1b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | base | n/a | 2 deployments: base `0x972c17...809053`; base `0xf25a51...f491c3` | ⚠️ Unaudited |
| KrystalYieldVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x06ff95...ab145b`; ethereum `0x7f9898...c59271` | ⚠️ Unaudited |
| LDY | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-244545 | `0x482df7...ddfdbc` | ⚠️ Unaudited |
| LDY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x88d5dc...c0bb5b`; sonic `0x8db842...bd3165` | ⚠️ Unaudited |
| LDY | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-244550 | `0x9cfbf9...ed0bce` | ⚠️ Unaudited |
| LDY | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-244555 | `0x055d20...dd8a13` | ⚠️ Unaudited |
| LDY | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-244553 | `0x999faf...0d07e1` | ⚠️ Unaudited |
| LDYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x53909d...430940`; sonic `0x77ce97...83708f` | ⚠️ Unaudited |
| LDYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x891611...87d554`; sonic `0x94ed3c...b03ed1` | ⚠️ Unaudited |
| LDYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: base `0x8db842...bd3165`; arbitrum `0x06f54b...660ab4`; arbitrum `0x0dff38...1ead61`; arbitrum `0x4e80be...be2d02`; arbitrum `0x67efae...dc3e47`; linea `0x06f54b...660ab4`; linea `0x627ff3...5d89d1` | ⚠️ Unaudited |
| LDYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4ef075...a166ab`; arbitrum `0xd42b10...2c4e53` | ⚠️ Unaudited |
| LDYStakingSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x51231e...9e05ea`; sonic `0xbee6eb...35a87f` | ⚠️ Unaudited |
| LedgityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: ethereum `0xe34603...737cbf`; sonic `0xac5da8...72ea0d`; base `0xab4655...aac126`; base `0xda106c...818a39`; arbitrum `0x6cdb48...c3b2ca`; linea `0x12d5c7...205c00` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | ethereum | unit-244559 (2 proxies) | 2 deployments: ethereum `0x209681...d44bc8`; ethereum `0x3c769d...ecb6d4` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-244546 | `0x6ffc9a...21b411` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-244557 | `0x76f1f8...983f00` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | base | unit-244569 (2 proxies) | 2 deployments: base `0x916f17...6a6e38`; base `0xfaa1e3...33b134` | ⚠️ Unaudited |
| LedgityYieldVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0x8db842...bd3165`; ethereum `0x94ed3c...b03ed1`; base `0x9bb3be...c74361`; base `0xf9eece...a9b56f`; arbitrum `0x0a1ba9...0df98a`; linea `0x57791d...b3b925` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-244564 | `0x283f35...e157ee` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-244551 | `0x5baf90...660933` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-244554 | `0x209681...d44bc8` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | linea | unit-244565 | `0x43b3c6...9e698f` | ⚠️ Unaudited |
| LedgityYieldVaultSonic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x22c32d...9ba165` | ⚠️ Unaudited |
| LedgityYieldVaultSonic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-244548 | `0x3afcd7...951f64` | ⚠️ Unaudited |
| LedgityYieldVaultSonic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sonic | unit-244560 | `0x65f75c...223001` | ⚠️ Unaudited |
| LegacyStakingTransition | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x891611...87d554`; base `0xd70b76...4fbab0` | ⚠️ Unaudited |
| LeverageFiller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x053714...83f16a`; sonic `0xfe4a47...b31e7d` | ⚠️ Unaudited |
| LongTailIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x12f407...10305a` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0x6cdb48...c3b2ca`; sonic `0xb05c62...e18da2`; sonic `0xc25030...c4a66b` | ⚠️ Unaudited |
| LToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-244570 | 2 deployments: base `0x3c769d...ecb6d4`; base `0x94ed3c...b03ed1` | ⚠️ Unaudited |
| LToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | unit-244571 | 2 deployments: base `0x77ce97...83708f`; base `0x9cfbf9...ed0bce` | ⚠️ Unaudited |
| LToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: base `0x10ce08...2be5d4`; arbitrum `0x0e7785...b7e9aa`; arbitrum `0x41b0ee...cc70f0`; arbitrum `0x8584bc...d6aee3`; arbitrum `0xa3b0db...84a21f`; arbitrum `0xb5c691...f9e2de`; linea `0x768fa7...347d19`; linea `0xb644f3...11f667` | ⚠️ Unaudited |
| LToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | unit-244563 | 2 deployments: arbitrum `0x346245...98cd99`; arbitrum `0xd54d56...b77813` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xba4275...cbadfb`; arbitrum `0xeee2ca...39c331` | ⚠️ Unaudited |
| LToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | linea | unit-244566 | `0x4af215...b45b7a` | ⚠️ Unaudited |
| LTokenSignaler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0a1ba9...0df98a`; sonic `0x283f35...e157ee` | ⚠️ Unaudited |
| LTokenSignaler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4eec09...2fe877`; sonic `0x902982...f75144` | ⚠️ Unaudited |
| LTokenSignaler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4eec09...2fe877`; base `0xcc1bef...e4f6f0` | ⚠️ Unaudited |
| LTokenSignaler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3352b0...844398`; arbitrum `0xd723df...dbca1d` | ⚠️ Unaudited |
| LTokenSignaler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5bffc5...09985f`; arbitrum `0xe8a6c4...08e806` | ⚠️ Unaudited |
| LTokenSignaler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x627ff3...5d89d1`; arbitrum `0xf97dfc...4bbaf4` | ⚠️ Unaudited |
| LTokenSignaler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x5bffc5...09985f`; linea `0xe8a6c4...08e806` | ⚠️ Unaudited |
| LTokenSignaler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xba4275...cbadfb`; linea `0xeee2ca...39c331` | ⚠️ Unaudited |
| LTokenSignalerSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5111c3...565544`; sonic `0xf96af1...60a610` | ⚠️ Unaudited |
| LTokenSonic | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 2 | sonic | unit-244561 (2 proxies) | 3 deployments: sonic `0x88dc86...d6dc82`; sonic `0xd7ccab...e75e69`; sonic `0xedca8e...184cc6` | ⚠️ Unaudited |
| MajorIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x18fad5...5505fa` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: sonic `0x3c05fa...4996ed`; sonic `0x589cfd...94bec7`; sonic `0x7bc1cf...3ba48e`; sonic `0xad9ed0...570393`; sonic `0xafcb4b...2002d0`; sonic `0xbe9f04...63b954`; sonic `0xc787a9...4f8be1`; base `0x114b64...68726e` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x63c379...f8c654`; sonic `0xa71610...955006` | ⚠️ Unaudited |
| MPTProofVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x838e5d...5f8c3c`; sonic `0xa13fc0...4da6d0` | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xfb0497...5a32e8` | ⚠️ Unaudited |
| PositionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x31b57e...749a4b`; sonic `0x31b68b...ef0303` | ⚠️ Unaudited |
| PreMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9d7aed...5aa06c`; linea `0xd54d56...b77813` | ⚠️ Unaudited |
| PrizeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x40dcf9...d267e3`; sonic `0x78d976...d94c69` | ⚠️ Unaudited |
| RfqEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x201169...13e95b` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7616e...42acac` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x017980...e6bf1b`; sonic `0x26c060...7d4e81`; sonic `0x5d0311...68f887`; sonic `0x6edf3f...b6d820`; sonic `0xb4a197...2dd7cf`; sonic `0xb90f6a...b502fe` | ⚠️ Unaudited |
| StableIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4bd77b...edefd5` | ⚠️ Unaudited |
| StakingPositions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4eec09...2fe877`; ethereum `0xeb163b...c6d108`; base `0x54b36d...ef79ea`; arbitrum `0xea7c3f...73982d` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-244558 | `0x902982...f75144` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-244547 | `0xf2663b...d93649` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-244568 | `0x0fcfdf...2d6d88` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-244556 | `0x4caee6...28fd2a` | ⚠️ Unaudited |
| StakingPositions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7ce995...6f577b`; base `0x97ca5d...d379d6` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-244562 | `0x6e8361...eafd5b` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-244552 | `0x883108...2b1df5` | ⚠️ Unaudited |
| StakingPositions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x588eb8...287068`; linea `0xcc1bef...e4f6f0` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | linea | unit-244567 | 2 deployments: linea `0x891611...87d554`; linea `0x8db842...bd3165` | ⚠️ Unaudited |
| StakingPositionsSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x655c94...767cc8`; sonic `0xd1ec72...c5c306` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa87d32...3dba6f`; ethereum `0xd8fefe...35b6bf` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2ab82b...c217c1`; base `0xb5f875...f9a384` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4340b9...307528`; base `0x7143e7...128d4f` | ⚠️ Unaudited |
| StakingRewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x37eef1...a6c2bd`; base `0x6ebbff...fd37c2`; arbitrum `0x2ed903...40fd7e` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x841a13...e6c300`; arbitrum `0xeb4b05...6f7483` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x3c769d...ecb6d4`; linea `0x94ed3c...b03ed1` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x4eec09...2fe877`; linea `0x902982...f75144` | ⚠️ Unaudited |
| StakingRewardsDistributorSonic | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3bcb3c...b40e4c`; sonic `0xb91985...68640e` | ⚠️ Unaudited |
| StateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x6494ce...66d684`; sonic `0xad9f40...e150b9` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fec0c...135d73` | ⚠️ Unaudited |
| TicTacToe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x882171...1dcb47`; sonic `0xaa0944...e02c14` | ⚠️ Unaudited |
| TokenPairs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1109f1...5c81db`; sonic `0x36535d...f9cd43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3faf5b...5a4876`; sonic `0x62a572...dcd70a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x89c312...11df5e`; sonic `0xc1883f...992748`; sonic `0xd89992...4de721`; sonic `0xfb7040...a993f8` | ⚠️ Unaudited |
| TSTTOKEN | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1f003...853009` | ⚠️ Unaudited |
| UpdateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5d3850...d3cf2b`; sonic `0xa432cf...20187a` | ⚠️ Unaudited |
| UpdateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb63f4e...d5f0d3` | ⚠️ Unaudited |
| WrappedLToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0x058a72...cdbdf1`; sonic `0x0b8133...0feaa5`; sonic `0xa1f155...0d4870` | ⚠️ Unaudited |
| WrappedLToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x209681...d44bc8`; sonic `0x6ffc9a...21b411` | ⚠️ Unaudited |
| WrappedLToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0x2ed903...40fd7e`; sonic `0x6e8361...eafd5b`; sonic `0xea7c3f...73982d` | ⚠️ Unaudited |
| WrappedLToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 2 deployments: sonic `0x5baf90...660933`; sonic `0x883108...2b1df5` | ⚠️ Unaudited |
| WrappedLToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5bb664...63c0b0`; sonic `0xcc1bef...e4f6f0` | ⚠️ Unaudited |
| WrappedLToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-244549 | `0x841a13...e6c300` | ⚠️ Unaudited |
| WrappedLTokenSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0x2e6f1f...977045`; sonic `0xbb86ba...331c01`; sonic `0xff95be...5dd49e` | ⚠️ Unaudited |
| WrappedLTokenSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xed758d...f68262` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb05c62...e18da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ae71c...26f17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x352866...b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3665a6...462a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3c769d...ecb6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6697ee...e0e324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7779f5...313a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78f6a7...7bb2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x858657...8ce686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9522ba...d887c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9943af...b4e674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaecac5...3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc57afd...56e6ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe8500a...17cd00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe85df5...7ef797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06ff95...ab145b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ef8fc...e5d89f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c72e6...d9fb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ce42b...d295dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b013e...fa3ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x859b35...13a853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93aaa2...3a0d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95443a...bc79f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa467e...9dcade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeecc4c...48acf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x061b0b...aa49a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x209681...d44bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3308b5...9c14c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4eec09...2fe877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x530b6b...ab2361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x768fa7...347d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x902982...f75144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2b648...78a64b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb644f3...11f667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc1bef...e4f6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb163b...c6d108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1f9e5...a6f257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x210482...ae1757` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [report.md](https://github.com/LedgityLabs/LedgityYield/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20767] report.md — no match: No explicit scope section found; contracts extracted from findings referencing file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| report.md | LDYStaking | unmatched — not counted | — | listed in findings | no |
| report.md | LToken | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 128 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20767] report.md

Fork inheritance lineage and inherited audits are included when available.
