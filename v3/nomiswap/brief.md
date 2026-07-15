# Agentic Audit Brief: Nomiswap

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

- Project: Nomiswap (`nomiswap`)
- Website: [https://nomiswap.io](https://nomiswap.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, bsc-testnet
- Contract surface: 242 unique implementations (484 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,380,306.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Nomiswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, bsc-testnet. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Nmx (`0xd32d01...7d9d65`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 240 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 113
- Confirmed-live implementations: 1 of 242 unique; 241 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/172
- Verified + Unaudited implementations: 172
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 242
- Raw deployments: 484
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (172)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x07db87...3cfc50`; bsc `0x0d80d8...bcb2a4` | ⚠️ Unaudited |
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x7c1578...86e8cd`; bsc `0xbd97e4...60b562`; bsc `0xcd7437...8cef26` | ⚠️ Unaudited |
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb01460...957277` | ⚠️ Unaudited |
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc0de0c...844256` | ⚠️ Unaudited |
| Abra | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xdce52a...9c4e6b`; bsc `0xed5e17...a33798` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x218590...16acc5`; bsc `0xa31a64...bb84a2` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x251d0d...1e89ae`; bsc `0x92c467...6cb641` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x2888e5...1c070e`; bsc `0x355850...bbb76f`; bsc `0x3ee87f...072dc6`; bsc `0x6e9126...cfb588`; bsc `0x6fc64f...20f051`; bsc `0x848038...ea9a77`; bsc `0x9a9921...63d5d3`; bsc `0xae714c...907945`; bsc `0xc1ee4a...03ef7a` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2f8e88...f527b2`; bsc `0x733bd1...941c31` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x3faf2b...681f5c`; bsc `0x90cc3a...133fdc`; bsc `0x9b0c2e...4d7ce7` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x70426d...b3b473`; bsc `0x76aba6...19a878` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8e8a40...81a2e8`; bsc `0x902635...6a1aa7` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9ef732...5288dd`; bsc `0xa53af1...e46222` | ⚠️ Unaudited |
| AbraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc0c23c...93b9f1`; bsc `0xe6bcdb...895806` | ⚠️ Unaudited |
| AbraStaking0100 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x191c1b...44428a`; bsc `0x2e4334...b086e4` | ⚠️ Unaudited |
| AbraStaking0101 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x02991a...102fd6`; bsc `0xce15e0...aacb7c` | ⚠️ Unaudited |
| AbraStaking0101 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f9e2e...ae6b27` | ⚠️ Unaudited |
| AbraStaking0101 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x302019...58fa36`; bsc `0xffb43d...6590e4` | ⚠️ Unaudited |
| AbraStakingLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12d34d...c3fb81` | ⚠️ Unaudited |
| AbraStakingMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x015e11...21dca5`; bsc `0xe281fb...ed03d1` | ⚠️ Unaudited |
| AbraStakingMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0c1bc5...c3807c`; bsc `0x3a426d...bdaa9d` | ⚠️ Unaudited |
| AbraStakingMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5315c6...85bdc7`; bsc `0x6d6eaa...57952e` | ⚠️ Unaudited |
| AbraStakingRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x015a87...d337cb`; bsc `0x1b02f1...06dae8`; bsc `0x4a7c58...82f195`; bsc `0xe4331f...395bbe`; bsc `0xf007ad...45eb83`; bsc `0xfdecb9...4753a0` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1bb4ef...f0c509`; bsc `0x5ed4c4...872b01` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb4058b...0eb627`; bsc `0xc56d6b...1f106b` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd584fa...7dc511`; bsc `0xd75dd2...c3565b` | ⚠️ Unaudited |
| ArbitrageHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x01bb06...be9059`; bsc `0xa85f57...f7a88d` | ⚠️ Unaudited |
| ArbitrageHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4cc099...fae2cd`; bsc `0xa5f1a2...4a1617` | ⚠️ Unaudited |
| AutoMaxLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0c12eb...a9453f`; bsc `0x9e41e3...c1535b` | ⚠️ Unaudited |
| AutoMaxLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x972b59...ca078d`; bsc `0xb4d708...d297fb` | ⚠️ Unaudited |
| AutoMaxLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb5cf96...f47965`; bsc `0xd8541e...12e6cd` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x17cc0c...0b9433` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1b44f9...d958e9` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1b5b77...0167bd` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1fcd3b...c7754e` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3d17a0...9d7106` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x41c9ec...17c496` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x4d6f0b...a3bf9d` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x4e9978...b04da8`; bsc `0x89c71a...8d51ac` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x7c80e9...efde96` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x9da054...88fd0c` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb2d028...9b3627` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc9ecab...537628` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xcc7068...b7cccd` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xd3305b...696e0c` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xe574e4...31bd30` | ⚠️ Unaudited |
| BalancerGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf5eaf3...962132` | ⚠️ Unaudited |
| BalancerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x807793...cc23b1`; bsc `0x83efb7...f4123d` | ⚠️ Unaudited |
| BalancerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x8ae3fa...54ee81` | ⚠️ Unaudited |
| BoostingService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2c7f61...fc14bb`; bsc `0x36c9bb...53865a`; bsc `0xb6dc1c...e306ad`; bsc `0xe0cab2...581546` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6d9ef0...ffbb11`; bsc `0x9d6ad2...d239d4` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x785b17...1534f5`; bsc `0xef81b5...34e1b2` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xe07448...a0f42b`; bsc `0xeeb509...640b80` | ⚠️ Unaudited |
| BurnHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc9f09c...b4bd4b`; bsc `0xf520b2...1956d8` | ⚠️ Unaudited |
| CadabraFullRangePairLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a479c...dc258c` | ⚠️ Unaudited |
| CadabraWrappersLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08639a...257d85` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x065b13...aeca69` | ⚠️ Unaudited |
| DispatcherAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x61aa64...b93e13`; bsc `0xc27a99...39c6b1`; bsc `0xcb9c93...ff978f`; bsc `0xe2f17a...abcf43` | ⚠️ Unaudited |
| DoubleSupplyStakingRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x99b674...fb10d5`; bsc `0xd35181...91fe16`; bsc `0xdd7b0f...cd9994` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 41 deployments: bsc `0x14f7c1...7dd589`; bsc `0x1bf84e...5481f8`; bsc `0x26785a...680282`; bsc `0x2f8f6e...cad69d`; bsc `0x38c5e7...8843a3`; bsc `0x39a732...54de0c`; bsc `0x470bc1...022d90`; bsc `0x5b1fbf...ad7606`; bsc `0x62edf6...231895`; bsc `0x68986c...dc47a6`; bsc `0x6b123a...adebb6`; bsc `0x6cc515...74169c`; bsc `0x712ab9...09231b`; bsc `0x714e22...354002`; bsc `0x731b4a...7071cd`; bsc `0x776761...053e44`; bsc `0x79a4af...86c9b2`; bsc `0x81922f...54b85f`; bsc `0x85031f...030bd1`; bsc `0x8a7159...9ee7e6`; bsc `0x8b9fbe...2877ad`; bsc `0x8bb0af...df515a`; bsc `0x9cd280...15fab6`; bsc `0x9f7fc0...8cb62c`; bsc `0xa2956e...bb4ed0`; bsc `0xaa9cd1...4ad01c`; bsc `0xac3980...60aeff`; bsc `0xacc111...6b2367`; bsc `0xafd10a...9e2aa0`; bsc `0xb064a6...9d81de`; bsc `0xb5c88a...26e042`; bsc `0xb630a4...0f0d5c`; bsc `0xbd81be...3669e7`; bsc `0xbff695...19f5b2`; bsc `0xc5f795...d8dce5`; bsc `0xd5d6c0...57c6ad`; bsc `0xd73872...c49401`; bsc `0xdff124...29e0d4`; bsc `0xe0be69...a4ffd2`; bsc `0xe2b090...065b06`; bsc `0xe7350d...414d08` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x290180...dac2d0`; bsc `0x77d06a...14a665` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x4e1cda...890222`; bsc `0x9f5183...81fa39`; bsc `0xe92102...f00a0a`; bsc `0xf7317b...cc7704` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6d7db7...9f5dd7`; bsc `0xb2fb01...b6cdf3` | ⚠️ Unaudited |
| ExchangeAbraPlanHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0323fb...fb8082`; bsc `0x95921c...6d1fb7`; bsc `0xe018ea...d3aeda` | ⚠️ Unaudited |
| ExtendedAccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x4d09fc...13de24`; bsc `0x5d83ef...f38b75`; bsc `0x623cb1...d311b2`; bsc `0x697ddf...7da038`; bsc `0xa4894f...0be734`; bsc `0xaa3f31...9e8a84`; bsc `0xb2035b...d637a3` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f94f3...bcea08` | ⚠️ Unaudited |
| FactoryOwnerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4aa998...a1502e`; bsc `0x80f173...39ba63` | ⚠️ Unaudited |
| FarmingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xdf1e4c...6cb658`; bsc `0xf787d0...7a891f`; bsc `0xf91503...894ec6` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x394a67...c76384`; bsc `0xee5bb1...3ab785` | ⚠️ Unaudited |
| FixedRateMintSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x66fd55...89af96`; bsc `0xdcca39...cb5c5c` | ⚠️ Unaudited |
| FullRangeGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa21044...ac1810`; bsc `0xad98a0...a47443` | ⚠️ Unaudited |
| LiquidityUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99fabb...f69f0f` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8abdf6...4e29ff` | ⚠️ Unaudited |
| ManagedPoolAmmLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7290ae...a25bc9` | ⚠️ Unaudited |
| ManagedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x095e59...b51c9c`; bsc `0x1a1726...be63c0`; bsc `0xfa1103...699ea6` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x012ea4...d3a12b`; bsc `0xccf900...6e25b2` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x210ef4...38382e`; bsc `0xf66270...a93045` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4b0ae4...4c100c`; bsc `0x62c154...872201`; bsc `0xf8d1ec...0e67a0` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x78fe59...699d80`; bsc `0xc23064...69fb3d`; bsc `0xe4589c...b7142f` | ⚠️ Unaudited |
| ManagedPoolRebalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x81ff55...45570b`; bsc `0xd5fe83...ba21fe` | ⚠️ Unaudited |
| MarketApproxRemoveLiqLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe16597...e4db2e` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e87c2...c376b7` | ⚠️ Unaudited |
| MinterMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88462e...897cd9` | ⚠️ Unaudited |
| MinterMasterAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb114af...84a456` | ⚠️ Unaudited |
| MinterSub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x38eac1...c27c29`; bsc `0x9bb03b...8fae2d` | ⚠️ Unaudited |
| MinterSubAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xa0de51...fe4f43`; bsc `0xb1fe9a...f51868`; bsc `0xc23c7b...007e5f` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3769d4...b60460`; bsc `0xaf914c...4bf3c5` | ⚠️ Unaudited |
| MintSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc86e74...5cf4d0` | ⚠️ Unaudited |
| Nmx | unknown | project_anchor | own_supporting | 0 | bsc | unit-389857 | `0xd32d01...7d9d65` | ⚠️ Unaudited |
| NoBurnRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x69ebb1...df0612`; bsc `0xcb4fd0...691409` | ⚠️ Unaudited |
| NomiswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6715a...c29349` | ⚠️ Unaudited |
| NomiswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x13de25...a863e6`; bsc `0x33edc4...0573b6`; bsc `0xa5f2f2...5afa22`; bsc `0xe2bbf5...03bb27`; bsc `0xfc3a2a...2e18a7` | ⚠️ Unaudited |
| NomiswapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd65495...79413d` | ⚠️ Unaudited |
| NomiswapRouter03 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4ec343...2359e0`; bsc `0x9d15d0...fa6136`; bsc `0xa63a2e...fe1c68` | ⚠️ Unaudited |
| NomiswapRouter04 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x131478...d2e7b0`; bsc `0xbf4c0d...8c1d68`; bsc `0xd486d0...836dc8` | ⚠️ Unaudited |
| NomiswapStableFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x35ddc2...0bc4cf`; bsc `0x4c8214...3d92cc`; bsc `0xc443b6...d7b33b`; bsc `0xc6b7ee...1f6285` | ⚠️ Unaudited |
| NomiswapStableSwapOnlyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6f2d1...d39357` | ⚠️ Unaudited |
| OFTMediator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x22451b...05494b`; bsc `0x804954...f528f9`; bsc `0xaff0ef...07629d` | ⚠️ Unaudited |
| PairYieldDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb05c38...b4e798` | ⚠️ Unaudited |
| PancakeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x7e54f7...1e1f09` | ⚠️ Unaudited |
| PoolDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x5a2d0a...23dc01`; bsc `0x632fa6...1f7ee1`; bsc `0xa5a7e3...38e92a` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x00c476...7e774c`; bsc `0x1974f6...673606`; bsc `0x9e37aa...30830c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5aeef8...4f5ccd`; bsc `0x5b1eba...8f4691` | ⚠️ Unaudited |
| RecoveryModeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0f5819...43df28`; bsc `0x9ff4db...a22ca7`; bsc `0xeeaa29...afb1a3` | ⚠️ Unaudited |
| ReferralStakingMain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb23790...1bd957`; bsc `0xd3bc8b...330756` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x52bab4...e5893d`; bsc `0x8d0faa...7198f0`; bsc `0xbf42ba...7ad4ed` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9c8b8...0e568f` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ff420...8e4df2` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9b9aad...0fd2f1`; bsc `0xe7d0c9...a82940` | ⚠️ Unaudited |
| RewardsSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x32d77b...10c7b1`; bsc `0x7e532b...0cd630`; bsc `0x8a451f...740caa`; bsc `0x960045...3ae46e`; bsc `0xa04e77...1dd9fe`; bsc `0xe8e89a...77775d`; bsc `0xeb935f...618d15`; bsc `0xf6461c...f359bc` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x744d23...ff29e5`; bsc `0x78faac...1bdcad`; bsc `0x9ef046...cd6a18` | ⚠️ Unaudited |
| Shwabra | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x079ee6...9aa2a5`; bsc `0x9b42d1...112e66` | ⚠️ Unaudited |
| SHWABRAStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1f5836...33d5ba`; bsc `0x885cca...da1e84` | ⚠️ Unaudited |
| StableswapMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xf750ba...1146db`; bsc `0xfa8811...5f41ce` | ⚠️ Unaudited |
| StakingRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2f8f3...e00cdc` | ⚠️ Unaudited |
| StakingService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x03868d...b62a68`; bsc `0x268042...17da6a`; bsc `0x281e60...144928`; bsc `0x5c3177...669bfe`; bsc `0x5cd67d...258338`; bsc `0x63a81d...b3bd94`; bsc `0x8326e2...62805c`; bsc `0x857083...2bc9ab`; bsc `0x9cd2d1...a2f9a6`; bsc `0xa0f2c1...908797`; bsc `0xa937ed...e9d54c`; bsc `0xab2f42...a106d8`; bsc `0xd8925c...fa001d`; bsc `0xdbf1b1...81c3b3` | ⚠️ Unaudited |
| StakingService2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x06781d...86dc2c`; bsc `0x283567...37ce34`; bsc `0x2b530d...444a7b`; bsc `0x2d8b19...5edd74`; bsc `0x565756...e96beb`; bsc `0x6d543a...b56160`; bsc `0x85e3fa...39933b`; bsc `0xaef7aa...d7816a`; bsc `0xb475ef...765f96` | ⚠️ Unaudited |
| SwapExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x42d684...bcc51e`; bsc `0x7dbd9a...342b4a`; bsc `0xf1276b...76a251` | ⚠️ Unaudited |
| TestVoteAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x166cc7...ab1c44`; bsc `0x5a9605...86e87e`; bsc `0x9879ff...91e030` | ⚠️ Unaudited |
| ThenaGammaAdapter_qStablePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c0eaf...4baeb5`; bsc `0xcbccf3...70e196` | ⚠️ Unaudited |
| ThenaGammaPriceFeedAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x653737...77f6cd`; bsc `0xf85be3...f0df9f` | ⚠️ Unaudited |
| ThenaGammaTwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef4bf3...f16aaf` | ⚠️ Unaudited |
| ThenaPairAdapter_qEqualed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x111f96...09546e` | ⚠️ Unaudited |
| TwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51494b...0cde8d` | ⚠️ Unaudited |
| UniswapV3FullRangePair | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x452c91...130651` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x932a8d...b29772`; bsc `0xdb50b0...7133ba`; bsc `0xde864e...d69f62` | ⚠️ Unaudited |
| VoterAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x27493e...a15c2d`; bsc `0x4bb3e7...0370be`; bsc `0xe4f91b...cb5c0e`; bsc `0xfa7a34...77165d` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2cbafc...e495f9`; bsc `0x76ab4e...62e918`; bsc `0xf780cb...3db435` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3d4367...8ac193`; bsc `0x81f141...2c1e05`; bsc `0x9dde55...f91307`; bsc `0xf14d73...060ad1` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4bbfd9...99dd20`; bsc `0xb687c0...e1792e` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7eeb13...0ef4d2`; bsc `0xfbcd87...98cc10` | ⚠️ Unaudited |
| VoterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb0a199...23b222`; bsc `0xd2865c...17409d` | ⚠️ Unaudited |
| VotingRewardsHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x11aa82...cb65dd`; bsc `0x5a4923...7dccb1`; bsc `0xc38d20...49f6fe`; bsc `0xd1a5ba...293650`; bsc `0xea1068...63e392` | ⚠️ Unaudited |
| WrappedCakepieAML | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09efe2...7d2df4` | ⚠️ Unaudited |
| WrappedCakepieAML | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x370a9c...5d3965`; bsc `0x847434...3c32cd` | ⚠️ Unaudited |
| WrappedCakepieAML | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x50b357...ab8e06`; bsc `0xab5439...887c08` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2a7ed6...f7f929`; bsc `0xea6d11...1f65b9` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2f513d...435e8e`; bsc `0x50234c...860958` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x384d3d...108c48`; bsc `0x77d232...13d09a` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x89b9f3...a98398`; bsc `0xe32755...600ff0` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8e5ffc...1f5524`; bsc `0xf668e8...f5c33b` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x90e728...f815d9`; bsc `0xea3e45...f684da` | ⚠️ Unaudited |
| WrappedEquilibria | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa9f5f5...30140c`; bsc `0xc53e23...513b76` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1321a8...a3c419`; bsc `0x4b2781...b64468` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x14f3e3...238770`; bsc `0xed24a7...c760ff` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x25312a...911a98`; bsc `0x8113ea...21c63c` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4a28fa...cfa1aa`; bsc `0xa4833c...59410f` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c8372...e53a38` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6907ca...46e4f0`; bsc `0x7f647c...d873f1` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x85ae0e...90e95d`; bsc `0xdb7f04...b9c7d9` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9021cc...f5eca7`; bsc `0xe5214d...9e6348` | ⚠️ Unaudited |
| WrappedPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd612a0...f68a84`; bsc `0xfb545b...477dc3` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x341cbc...15f792` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x469cc4...e396ac` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x598763...830acf`; bsc `0xee93ec...dc91bb` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x6c7d68...5e68d0` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x8c9d18...993b6f` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xe84212...f59bb2` | ⚠️ Unaudited |
| WrappedStargate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xfbec25...cbe325` | ⚠️ Unaudited |
| WrappedThenaGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x002aac...8e01de`; bsc `0xf4673f...9a0f17` | ⚠️ Unaudited |
| WrappedThenaGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x52536d...03464d`; bsc `0x872ebb...612fd2` | ⚠️ Unaudited |
| WrappedThenaGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x649c44...e30aec` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x072d56...a41507`; bsc `0x7cbd54...5bac08` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x0b2b7d...b73ced`; bsc `0x63bfbe...50e3a4`; bsc `0xd61a2c...b086e1` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0f90f2...866524`; bsc `0x6a1f0f...6a2269` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2d72ac...d8a47f`; bsc `0x364d89...ebbed7`; bsc `0x58efa4...1935ec` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3d0eb9...a88f47`; bsc `0x6c38d1...678fe0`; bsc `0x6d8557...64a686` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4bbb18...3c10c5`; bsc `0x959f0c...1fe721` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x4dff76...deb29a`; bsc `0xcb1d59...e2001e`; bsc `0xdea98a...3f5810` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x67a0d6...60c07f`; bsc `0xaea710...23a6a8` | ⚠️ Unaudited |
| WrappedVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb9e991...2423f3`; bsc `0xe888e4...34bc39` | ⚠️ Unaudited |
| WrapperYieldDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x60d708...ca6339`; bsc `0xe73800...493275`; bsc `0xec5c02...7e5ac5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01f765...4d7233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x031200...8f521a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09f2b3...1febfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a15aa...12fe98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a54c7...63f673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1332b3...edff40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13484b...273a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13ba16...13c352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x153caa...91d4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x181164...bd9f8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x213bac...431a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x246c00...7d1a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301193...ff335d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32b383...a4e3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a37d2...7ecf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x416903...7920df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43f9e5...7b1cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4890b3...5d22f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bb856...c46823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e2239...d84a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50d76e...05dd25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52fb4c...b023cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bf628...754fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c92de...d74c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61c169...55de94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64b8c2...4e1957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68ae0f...74e9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a8de2...88f78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c03e8...febd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cb769...72c217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x733f83...72ec56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75097d...1caf22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x794052...3104cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x804a3c...d7cc00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81fee4...be5a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83674e...52a081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c4f7...42e7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c5fec...14ee82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92e302...7d6cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93133c...20260e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93ea70...a66eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a9a21...57b382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ad5a9...e34143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0a3e3...e8ec79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa82085...5b69c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae6936...4c2852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb98fc4...25c60a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba93ad...1d9cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb3738...8f5bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcc28b...a513b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd01d3...d76c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc15571...be5488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc87c1a...82db6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc996cf...d7c80e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd9205...5502c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce5f73...7207ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd40f10...333aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd78bbd...a14fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd11aa...44c4fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd413c...44b750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7e21f...9c6a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec64fe...671da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3b96d...6a0ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf53347...c30dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf690d6...8c035d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6f889...1ce86e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf79e53...3e68fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf97b33...a36711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa2d6d...871a9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-389858 | `0x818339...049dd4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/nomiswap](https://skynet.certik.com/projects/nomiswap) | CertiK | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3092] skynet.certik.com/projects/nomiswap — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/nomiswap | ConstantComplexity | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/nomiswap | NomiswapRouter | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/nomiswap | StakingRouter | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/nomiswap | StakingService2 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xd32d01...7d9d65` | Nmx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 148 |
| upstream | 19 |
| standard_library | 4 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3092] skynet.certik.com/projects/nomiswap

Fork inheritance lineage and inherited audits are included when available.
