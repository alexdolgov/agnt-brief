# Agentic Audit Brief: The Arena

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: The Arena (`the-arena`)
- Website: [https://arena.social/](https://arena.social/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 123 unique implementations (226 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,515,363.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for The Arena. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across avalanche. Structural roles: 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ArenaFactory (`0xf16784...c39bd1`, chain 43114)
- ArenaRouter02 (`0xf56d52...b9066e`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 121 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 2 of 123 unique; 121 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 81
- Unique implementations: 123
- Raw deployments: 226
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

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArenaAirdropVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x30f587...bd755d`; avalanche `0xb0357a...f01120` | ⚠️ Unaudited |
| ArenaFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-394007 | `0xf16784...c39bd1` | ⚠️ Unaudited |
| ArenaFeeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x537505...189077`; avalanche `0xde174f...df17f8` | ⚠️ Unaudited |
| ArenaFeeRecipient | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ab4de...550d66` | ⚠️ Unaudited |
| ArenaMultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x472db6...8aa365`; avalanche `0x608c6c...cde6d5`; avalanche `0xf0bda7...395984`; avalanche `0xf60fad...08fd61` | ⚠️ Unaudited |
| ArenaPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73b365...4bbe95` | ⚠️ Unaudited |
| ArenaPoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x73ffe4...666ad1`; avalanche `0xfd75b3...d9030f` | ⚠️ Unaudited |
| ArenaReferralRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6a0fbe...b8ac7a`; avalanche `0xff4e5d...a54a40` | ⚠️ Unaudited |
| ArenaRouter02 | adapter | project_anchor | own_supporting | 0 | avalanche | unit-394008 | `0xf56d52...b9066e` | ⚠️ Unaudited |
| ArenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0e2d0c...5eec97`; avalanche `0xe805a6...6f5bd3` | ⚠️ Unaudited |
| ArenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xedf106...bf9f94`; avalanche `0xeffb80...4aaec4` | ⚠️ Unaudited |
| ArenaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xb8d771...2dad0c`; avalanche `0xf5acf3...ff247e` | ⚠️ Unaudited |
| AvaxHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: avalanche `0x0359a2...0d15ff`; avalanche `0x03f1a1...1b8dfa`; avalanche `0x191378...3fe582`; avalanche `0x1d6eff...0a1402`; avalanche `0x51ba6f...6062ff`; avalanche `0x5e0538...76f323`; avalanche `0x8e7a69...5dec94`; avalanche `0xaa7a11...5ae675`; avalanche `0xbce3a1...275c69`; avalanche `0xcf6bc1...d97aa3`; avalanche `0xdd0088...53e529`; avalanche `0xf7dc59...7ce599` | ⚠️ Unaudited |
| BareAggregatorExecutorConst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x1d31a9...c5414f`; avalanche `0x24bb79...794f65`; avalanche `0x548e11...9a6837` | ⚠️ Unaudited |
| Counter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d4b53...b7ecce` | ⚠️ Unaudited |
| FeeCompoundHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f8c33...9c9694` | ⚠️ Unaudited |
| FeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0af2fb...598704`; avalanche `0x14a2c3...bfa6f6` | ⚠️ Unaudited |
| FeeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x132cc2...84820c` | ⚠️ Unaudited |
| FeeHelperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x1f15ba...c73d04`; avalanche `0xb7ac1e...f31b09` | ⚠️ Unaudited |
| InverseHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 14 deployments: avalanche `0x25aaf9...652bb7`; avalanche `0x2b43e5...7079c1`; avalanche `0x330404...9e9a6f`; avalanche `0x41a75b...bc89b4`; avalanche `0x64ef55...c38602`; avalanche `0x752950...1296b9`; avalanche `0x76b52e...4d8fe6`; avalanche `0x80bb0d...d12c46`; avalanche `0x80f92d...76ace5`; avalanche `0x883aa9...fa029c`; avalanche `0xa88e53...14b701`; avalanche `0xc42c22...1e0b5d`; avalanche `0xe2c989...46c12c`; avalanche `0xfe73e0...e69651` | ⚠️ Unaudited |
| MCHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x0eeaee...329154`; avalanche `0x28c255...a7f666`; avalanche `0x2a6dca...65db62`; avalanche `0x39753d...00dcf1`; avalanche `0x3d920d...1a9974`; avalanche `0x6c62bc...4b13b1`; avalanche `0x72a1fd...df1694`; avalanche `0xc0dab0...95d076`; avalanche `0xd31ca7...a4f39a` | ⚠️ Unaudited |
| MigrateToV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9ab627...069c15`; avalanche `0xb84d4d...8252b8` | ⚠️ Unaudited |
| SingleTxBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x659427...fe7402` | ⚠️ Unaudited |
| SingleTxQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x0ab3d3...136640`; avalanche `0xc5786e...cdfe6a`; avalanche `0xed5437...62c85e`; avalanche `0xf80408...9a87df` | ⚠️ Unaudited |
| TokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: avalanche `0x12428e...9f6316`; avalanche `0x386ab5...084dd6`; avalanche `0x71ec76...360132`; avalanche `0x727a1b...a3f771`; avalanche `0x85dbb5...6f751f`; avalanche `0x8b986c...4d809e`; avalanche `0x963a0f...f9cdcb`; avalanche `0xac33c3...d869f2`; avalanche `0xbf3e70...8d1b6a`; avalanche `0xeb6556...e965da`; avalanche `0xf2609f...80f855`; avalanche `0xfa303f...8bd112` | ⚠️ Unaudited |
| TokenInfoProvider | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x448b9e...14af32` | ⚠️ Unaudited |
| TokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 11 deployments: avalanche `0x05b7e8...5392e5`; avalanche `0x0e89f3...c7d146`; avalanche `0x118ee0...b30606`; avalanche `0x1a5e7e...9da504`; avalanche `0x203a0f...b064d0`; avalanche `0x8157da...c6b5d7`; avalanche `0x976ed0...7282c1`; avalanche `0x9a617f...1b31db`; avalanche `0x9f7852...36cb02`; avalanche `0xb14044...31edd2`; avalanche `0xba147f...aa1d05` | ⚠️ Unaudited |
| TokenManagerERC20 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: avalanche `0x0005f6...db7178`; avalanche `0x0436d9...94b2f6`; avalanche `0x0bb2db...609923`; avalanche `0x4f42a8...2bcba7`; avalanche `0x7dcacc...4a4c9a`; avalanche `0xa5f678...2e0375`; avalanche `0xe71a36...c66701`; avalanche `0xe92072...585375` | ⚠️ Unaudited |
| TokenManagerERC20 | governance | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x2196e1...758464`; avalanche `0x4ff1bd...39badc` | ⚠️ Unaudited |
| TokenManagerERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x36a288...c1970f`; avalanche `0xf4037a...c69691` | ⚠️ Unaudited |
| TokenManagerERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8c2d14...3c2718`; avalanche `0xe04dd2...a087f1` | ⚠️ Unaudited |
| TokenManagerERC20PriceHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x1cfa65...bb4a62`; avalanche `0x5048fb...17abd7`; avalanche `0x780590...e7e6bc`; avalanche `0x7bb543...3f7f8b`; avalanche `0x90c1e7...0fbcc5`; avalanche `0xcb8814...47be5d` | ⚠️ Unaudited |
| TokenManagerPriceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x238c47...a72d79`; avalanche `0xbe3f25...e7b927` | ⚠️ Unaudited |
| TokenSeller | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: avalanche `0x840f7f...52fe4e`; avalanche `0x9382ea...0276d1`; avalanche `0xa41160...b63924`; avalanche `0xcaf70f...e2c7d2`; avalanche `0xd0494e...b9e331`; avalanche `0xd16cc5...0a54f0`; avalanche `0xfe5079...49ab30` | ⚠️ Unaudited |
| USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce49cc...96cfd4` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x074bad...3b9fe7`; avalanche `0x4714aa...00e3d0` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x218a65...01788f`; avalanche `0xb03b99...558b2f` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x40005f...738765`; avalanche `0x58e94b...de491a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4db1b2...6292de`; avalanche `0xdca6ee...255bfc` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x820d68...cdad83`; avalanche `0x8315f1...446c6e` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xb95ba6...344666`; avalanche `0xb9794e...6b1ce1` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xc36462...cdb1ea`; avalanche `0xf0d126...417ef2` | ⚠️ Unaudited |

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
| Proxy (impl: 0x5814eed10d61dea47aeadd74e13de5041ae460a5) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x1d33a8...d1c3c4`; avalanche `0x5814ee...e460a5` | ❓ Unverified |
| Proxy (impl: 0x83a71a2f1751d8b895253a05869d966151c86717) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4867ba...82fd19`; avalanche `0x83a71a...c86717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x040b98...d36992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07e777...c57373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x086edb...82e32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f8820...3cd31c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fe3dc...75a73d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x100be4...794f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x157a6b...340a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x196bed...c02e36`; avalanche `0x8d227b...d9904c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f563b...a4fa0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fdf56...b6fb96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21de69...898374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x231df4...a09c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23b592...082632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x275129...d07406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29684d...1a6475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f863c...c5668f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fbff2...901507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37039e...335d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a6f16...649d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ab366...e8e5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40f2d3...65d46d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x420c70...7eddd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x442bc9...cf514c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x481333...ac27a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ad044...a9b0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4dcb83...ae9aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ea09c...1655ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58136c...7b71ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5910ba...adad3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a5596...55746c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64e4a9...00425f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x656c21...bf7037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x696935...ab2a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6dea35...fa831c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7016e0...8e9023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7434c3...c8fa4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x791cd0...8f6088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x847b95...c73efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84e696...dea716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84ee56...d453e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8859dc...8c4cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b9bec...f22b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e370a...2e95fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f0017...bedb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90bedc...860f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90e09b...f7aaba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x959cc0...cc4d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x979249...87c5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98346e...dc1180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99ab6c...3fc17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a93cc...05226b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4cc02...f72da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa99757...0e5035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad22c8...baece4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf1cf8...face30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9f184...c699be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf7d3b...cd35dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc31104...f174c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4a438...b808e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc76d46...32568e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbf1f1...ab928b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf56d4...0eacd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd02711...f094ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ff61...f5cd65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0463f...e0bbac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe28c65...303df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe80edc...425321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9f304...b87e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeae968...81dcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb92d7...f6ddb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0518f...4153d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf18f6c...bbb468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf394be...6ac36d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3d7a4...27c487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf57c54...28a7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf68b12...a6448b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf843f3...655692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcd44a...5d2d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff5986...dc099f` | ❓ Unverified |

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
| avalanche | `0xf16784...c39bd1` | ArenaFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xf56d52...b9066e` | ArenaRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 86 |

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
