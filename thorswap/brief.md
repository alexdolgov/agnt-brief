# Agentic Audit Brief: THORSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: THORSwap (`thorswap`)
- Website: [https://www.thorswap.finance/](https://www.thorswap.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 55 unique implementations (87 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,172,556.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for THORSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ThorToken (`0xa5f2211b9b8170f694421f2046281775e8468044`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 55 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 55
- Raw deployments: 87
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RewardsForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f631816043c8e8cad0c4c602bfe7bff1b22b182` | ⚠️ Unaudited |
| SingleStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6755630c583f12ffbd10568eb633c0319db34922`; ethereum `0xae1fc3947ee83aeb3b7fec237bcc1d194c88bc24` | ⚠️ Unaudited |
| SKChainflipHyperLiquid_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5`; arbitrum `0x199dab33f5d39f186f26a4aa30892e37c9a90d40`; arbitrum `0x78fd322bb51407849c7acc789be5e6e86639d799` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x16d48dd0b0f4b824ba92c057452eb2a9c54adbb1`; ethereum `0xa82b8d05514d4218a213a7f85d081bf632b46b75` | ⚠️ Unaudited |
| ThorchainSimpleAggregatorV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfbf2f46ba0a9ec3382e80171ecf191de3a0899d` | ⚠️ Unaudited |
| ThorToken | token | project_anchor | own_supporting | 0 | ethereum | unit-266969 | `0xa5f2211b9b8170f694421f2046281775e8468044` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223`; ethereum `0xb54147e6031086ed015602248e0cc34e64c0d25f` | ⚠️ Unaudited |
| TSAggregatorChainflip_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x029c7a9098d6efa723df308d3278211cd68b05ed`; ethereum `0xd917c32cfa50b0fca692a208118afe4d1d06f1f1` | ⚠️ Unaudited |
| TSAggregatorChainflip_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe797be356f833972fcc631b86ce30951e499ecdc` | ⚠️ Unaudited |
| TSAggregatorChainflip_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1047156a1a152672e287e7dfc9487c3566bfd1f5` | ⚠️ Unaudited |
| TSAggregatorGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0ccd5dd5bcf1af77dc358d1e2f06ee880ef63c3c`; ethereum `0x5727d8982723310f907483f9806221ecac7cd2ab`; ethereum `0x77cdf20e2442cd38c0a704e370fe8a75107abd95`; ethereum `0x97fce421db341038d599097493362346ce26cffc`; ethereum `0xd31f7e39afecec4855fecc51b693f9a0cec49fd2` | ⚠️ Unaudited |
| TSAggregatorGeneric_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0xaa68cf21b8040a2cc0ef78443997448fe4ea9e9f`; base `0xb1970f2157a1b24d40f98b252f4f60b45c7aaeed`; arbitrum `0x6e5add41c751e89432cda5763156a3f41f1b17ac`; arbitrum `0xfa3f3348a2765ec19d1598ad446e2ab463d01e9a` | ⚠️ Unaudited |
| TSAggregatorTokenTransferProxy | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xf892fef9da200d9e84c9b0647ecff0f34633abe8`; base `0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a`; arbitrum `0x5786efdb788466456a59d3bd7abef0ec42bef9ce`; arbitrum `0x8baf33e755ee29e5e37f370a11a0a889dac5d5f7` | ⚠️ Unaudited |
| TSAggregatorUniswapV3_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50cbe1330100df9086f6fbc994a300b75dd78012` | ⚠️ Unaudited |
| TSAggregatorWoofi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x30912b38618d3d37de3191a4ffe982c65a9aec2e`; arbitrum `0xcd6f8b17d19077f7f5a8fa30c9b645b689626ceb`; avalanche `0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a` | ⚠️ Unaudited |
| TSAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a` | ⚠️ Unaudited |
| TSDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf061e3f6068cdbb3b1ab042d0e022c06fb3e3528` | ⚠️ Unaudited |
| TSFeeDistributor_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd5060ca04efc02c9edc619f9047df1e1cb382d01`; ethereum `0xdfafdbe560c5bc373c2cd01a2cd0326917b419e5` | ⚠️ Unaudited |
| TSFeeDistributor_V3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7`; ethereum `0xfb6820693bf8b8cd75a358978f268e57bbb87b6a` | ⚠️ Unaudited |
| TSLedgerAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x004d1979c0b5c838ff891973c2611670b82187e5`; ethereum `0x8fec55866f4054788903c791f4ec06975b47745e`; ethereum `0xad545d047e34862121695f8e37aeeb71324a9e78`; ethereum `0xb81c7c2d2d078205d7fa515ddb2dea3d896f4016` | ⚠️ Unaudited |
| TSOracle_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x849ec611ee47bee012fe9274b78e10ddae167d05`; ethereum `0xd0b3854df1e221965788961427528da4f502f28c` | ⚠️ Unaudited |
| TSSwapGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x213255345a740324cbce0242e32076ab735906e2`; ethereum `0x8ca20a36989b6d6738b466e526272c8bfd5601ed` | ⚠️ Unaudited |
| TSWrapperLedger_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5e006856aa4ee2e0158a1fe2158df5b37378fb40`; ethereum `0xe4e8313abbadc8e18543ec9528f67fde2e44d3d6` | ⚠️ Unaudited |
| TSWrapperTCRouterV4_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x84fda63c0769b2478865074a0479d28f1a6003a2`; ethereum `0x94b7f2145c328dab2ec56ab982cab95f00941ae7`; ethereum `0xa701ec1ca9fdcfb4ded00cba3071f7329bffa454`; ethereum `0xc4a1d21313fc0e78cf0a8cdcc46bda5ae9fa0653`; ethereum `0xdd40f17b848ce3a30b4f71652535e744f45fa5a3` | ⚠️ Unaudited |
| uTHOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x34deff97889f3a6a483e3b9255cafcb9a6e03588`; ethereum `0xdd294e5f8891030349b9c7992a25523262fd89a3` | ⚠️ Unaudited |
| vTHOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815c23eca83261b6ec689b60cc4a58b54bc24d8d` | ⚠️ Unaudited |
| yTHOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8793cd69895c45b2d2474236b3cb28fc5c764775`; ethereum `0xc01eb1392f6d27015105a2bc60eff180b01e3d7f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32459c0efbc3645df0614e3287714e36b02b6e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f02745badeae8738104931cfd864d33fdb52310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8235a713b64c4278a2ab2d81f88536e16ec65078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8526cec1d97a68c0e69420488d04dec5f101b46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2ae034488275a9fa83be1e35c4e70dc42774311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb60edcaf0b5da43f0a2e16fdb65cead8fa870fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb73b8e66196f2af0762833304e3f15db2e8df0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2b2793314d317c14dd58b80468db9eb162fd0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1092980cec8c464a62d0f6ff3293deaf817c256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8bb792c7620ee16c8e37cea94badeaf29df06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb4db2fd17bee53f1b491292423c7dc7274bf6d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x082f52eeac890248f00a24b4ddec6efb55b61850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17e7e5016ac1d4527f211bebf5b11fe36bda7d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30912b38618d3d37de3191a4ffe982c65a9aec2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b08b8abbb2a59c19e680628f5aa7024ca783d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55cf4d1e35221f0a7ef3f5d1ce5a07e3ecdb25b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80d86b9c920c0c23501a4e81d4cf5dbf230d2dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa68cf21b8040a2cc0ef78443997448fe4ea9e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd46ee26b56f28e8a4a83ed853c47b51935dc48ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc01894a2559417f08edaf5f3b3adfaa89d28c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebc5e938d3f53d61c286a40e4042957c96be4654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf02f7a22ed0e9a1469c81f2d8419508a5910b0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17e7e5016ac1d4527f211bebf5b11fe36bda7d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55cf4d1e35221f0a7ef3f5d1ce5a07e3ecdb25b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8772b3a6c87dc23bf6ab93c5f04e3f87da0e9606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbd658862518ec05fb99e8e993fdb502cd795bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf02f7a22ed0e9a1469c81f2d8419508a5910b0af` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 69
- Live contracts: 0
- Unknown liveness contracts: 69
- Source-verified contracts: 42
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=26, contamination review=5, source verified unclassified=11, unverified unclassified=27

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | SKChainflipHyperLiquid_V1<br>`0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | candidate review | SKChainflipHyperLiquid_V1<br>`0x199dab33f5d39f186f26a4aa30892e37c9a90d40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | candidate review | SKChainflipHyperLiquid_V1<br>`0x78fd322bb51407849c7acc789be5e6e86639d799` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | candidate review | TSAggregatorGeneric_V1<br>`0x6e5add41c751e89432cda5763156a3f41f1b17ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | candidate review | TSAggregatorGeneric_V1<br>`0xfa3f3348a2765ec19d1598ad446e2ab463d01e9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | candidate review | TSAggregatorTokenTransferProxy<br>`0x5786efdb788466456a59d3bd7abef0ec42bef9ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | candidate review | TSAggregatorTokenTransferProxy<br>`0x8baf33e755ee29e5e37f370a11a0a889dac5d5f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | candidate review | TSAggregatorWoofi<br>`0xcd6f8b17d19077f7f5a8fa30c9b645b689626ceb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x082f52eeac890248f00a24b4ddec6efb55b61850` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17e7e5016ac1d4527f211bebf5b11fe36bda7d10` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x30912b38618d3d37de3191a4ffe982c65a9aec2e` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3b08b8abbb2a59c19e680628f5aa7024ca783d42` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x55cf4d1e35221f0a7ef3f5d1ce5a07e3ecdb25b2` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x80d86b9c920c0c23501a4e81d4cf5dbf230d2dbd` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaa68cf21b8040a2cc0ef78443997448fe4ea9e9f` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd46ee26b56f28e8a4a83ed853c47b51935dc48ef` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdc01894a2559417f08edaf5f3b3adfaa89d28c8e` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xebc5e938d3f53d61c286a40e4042957c96be4654` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf02f7a22ed0e9a1469c81f2d8419508a5910b0af` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| avalanche | candidate review | TSAggregatorWoofi<br>`0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x55cf4d1e35221f0a7ef3f5d1ce5a07e3ecdb25b2` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8772b3a6c87dc23bf6ab93c5f04e3f87da0e9606` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcbd658862518ec05fb99e8e993fdb502cd795bfc` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf02f7a22ed0e9a1469c81f2d8419508a5910b0af` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| base | candidate review | TSAggregatorGeneric_V1<br>`0xaa68cf21b8040a2cc0ef78443997448fe4ea9e9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| base | candidate review | TSAggregatorWoofi<br>`0x30912b38618d3d37de3191a4ffe982c65a9aec2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSAggregatorGeneric<br>`0x5727d8982723310f907483f9806221ecac7cd2ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x813288526ccbfade7aba8836a4ca2462eb886bb7` |
| ethereum | candidate review | TSAggregatorGeneric<br>`0x77cdf20e2442cd38c0a704e370fe8a75107abd95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x813288526ccbfade7aba8836a4ca2462eb886bb7` |
| ethereum | candidate review | TSAggregatorGeneric<br>`0x97fce421db341038d599097493362346ce26cffc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x813288526ccbfade7aba8836a4ca2462eb886bb7` |
| ethereum | contamination review | RewardsForwarder<br>`0x8f631816043c8e8cad0c4c602bfe7bff1b22b182` | non_address_book | unknown | unknown | verified | n/a | `0x813288526ccbfade7aba8836a4ca2462eb886bb7` |
| ethereum | source verified unclassified | Staking<br>`0x16d48dd0b0f4b824ba92c057452eb2a9c54adbb1` | non_address_book | unknown | unknown | verified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | source verified unclassified | Staking<br>`0xa82b8d05514d4218a213a7f85d081bf632b46b75` | non_address_book | unknown | unknown | verified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f02745badeae8738104931cfd864d33fdb52310` | non_address_book | unknown | unknown | unverified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8235a713b64c4278a2ab2d81f88536e16ec65078` | non_address_book | unknown | unknown | unverified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8526cec1d97a68c0e69420488d04dec5f101b46e` | non_address_book | unknown | unknown | unverified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2ae034488275a9fa83be1e35c4e70dc42774311` | non_address_book | unknown | unknown | unverified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb60edcaf0b5da43f0a2e16fdb65cead8fa870fca` | non_address_book | unknown | unknown | unverified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb73b8e66196f2af0762833304e3f15db2e8df0c3` | non_address_book | unknown | unknown | unverified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2b2793314d317c14dd58b80468db9eb162fd0d4` | non_address_book | unknown | unknown | unverified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1092980cec8c464a62d0f6ff3293deaf817c256` | non_address_book | unknown | unknown | unverified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec8bb792c7620ee16c8e37cea94badeaf29df06c` | non_address_book | unknown | unknown | unverified | n/a | `0xdd20057b8a4f9565cb871a244f04447be5b03e08` |
| ethereum | candidate review | TSAggregatorChainflip_V1<br>`0x029c7a9098d6efa723df308d3278211cd68b05ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSAggregatorChainflip_V1<br>`0xd917c32cfa50b0fca692a208118afe4d1d06f1f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSAggregatorChainflip_V2<br>`0xe797be356f833972fcc631b86ce30951e499ecdc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSAggregatorChainflip_V3<br>`0x1047156a1a152672e287e7dfc9487c3566bfd1f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSSwapGeneric<br>`0x8ca20a36989b6d6738b466e526272c8bfd5601ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSWrapperLedger_V1<br>`0x5e006856aa4ee2e0158a1fe2158df5b37378fb40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSWrapperLedger_V1<br>`0xe4e8313abbadc8e18543ec9528f67fde2e44d3d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSWrapperTCRouterV4_V1<br>`0x84fda63c0769b2478865074a0479d28f1a6003a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSWrapperTCRouterV4_V1<br>`0x94b7f2145c328dab2ec56ab982cab95f00941ae7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSWrapperTCRouterV4_V1<br>`0xa701ec1ca9fdcfb4ded00cba3071f7329bffa454` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSWrapperTCRouterV4_V1<br>`0xc4a1d21313fc0e78cf0a8cdcc46bda5ae9fa0653` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | candidate review | TSWrapperTCRouterV4_V1<br>`0xdd40f17b848ce3a30b4f71652535e744f45fa5a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | contamination review | ThorchainSimpleAggregatorV5<br>`0xcfbf2f46ba0a9ec3382e80171ecf191de3a0899d` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | contamination review | TSDistributor<br>`0xf061e3f6068cdbb3b1ab042d0e022c06fb3e3528` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | contamination review | TSLedgerAdapter<br>`0x004d1979c0b5c838ff891973c2611670b82187e5` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | contamination review | TSOracle_V1<br>`0x849ec611ee47bee012fe9274b78e10ddae167d05` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | source verified unclassified | TSFeeDistributor_V2<br>`0xd5060ca04efc02c9edc619f9047df1e1cb382d01` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | source verified unclassified | TSFeeDistributor_V2<br>`0xdfafdbe560c5bc373c2cd01a2cd0326917b419e5` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | source verified unclassified | TSFeeDistributor_V3<br>`0xfb6820693bf8b8cd75a358978f268e57bbb87b6a` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | source verified unclassified | TSLedgerAdapter<br>`0x8fec55866f4054788903c791f4ec06975b47745e` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | source verified unclassified | TSLedgerAdapter<br>`0xad545d047e34862121695f8e37aeeb71324a9e78` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | source verified unclassified | TSLedgerAdapter<br>`0xb81c7c2d2d078205d7fa515ddb2dea3d896f4016` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | source verified unclassified | TSOracle_V1<br>`0xd0b3854df1e221965788961427528da4f502f28c` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | source verified unclassified | uTHOR<br>`0xdd294e5f8891030349b9c7992a25523262fd89a3` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | source verified unclassified | yTHOR<br>`0xc01eb1392f6d27015105a2bc60eff180b01e3d7f` | non_address_book | unknown | unknown | verified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32459c0efbc3645df0614e3287714e36b02b6e66` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb4db2fd17bee53f1b491292423c7dc7274bf6d5` | non_address_book | unknown | unknown | unverified | n/a | `0xe30c6b39c91a4bb6fd734dae898b63985213032e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-THORSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-THORSwap-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2069] PeckShield-Audit-Report-THORSwap-v1.0.pdf — no match: No reason recorded
- [2070] THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | PledgeFactory | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | TSAggregator | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | TSAggregatorGeneric | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | TSAggregatorUniswapV2 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | vTHOR | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Owners | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregator | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregator2LegUniswapV2 | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregator2LegUniswapV3 | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregatorGeneric | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregatorTokenTransferProxy | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregatorUniswapV2 | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregatorUniswapV3 | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | vTHOR | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa5f2211b9b8170f694421f2046281775e8468044` | ThorToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2069] PeckShield-Audit-Report-THORSwap-v1.0.pdf
- [2070] THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
