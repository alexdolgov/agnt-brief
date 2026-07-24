# Agentic Audit Brief: MochiFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: MochiFi (`mochifi`)
- Website: [https://mochi.fi](https://mochi.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 60 unique implementations (62 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $391,973.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MochiFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x09e9efd406bb2c3fc7d06f31c74174cd09c5963e`, chain 1)
- UnnamedContract (`0x5d278481af7c543c1cd565a2506b5951048d175f`, chain 1)
- UnnamedContract (`0x62a1c67eeb86543b9c704eaf876789deb6264c14`, chain 1)
- UnnamedContract (`0xa6046bf666dbb1493e4a6a5fa1906f109d8e896b`, chain 1)
- UnnamedContract (`0xa8347e1266efc18bd0d79ff16aa2262f77cb28c8`, chain 1)
- UnnamedContract (`0xa8dad48b9e59b670524a755c95a9a2cfbea91a3f`, chain 1)
- UnnamedContract (`0xc944b238b8aa4cd696e0bdebb2055c3024bc4932`, chain 1)
- UnnamedContract (`0xe9f9f3f04e778f955259b28e1a70d94ca7d81752`, chain 1)
- MochiCSSRv0 (`0x766f7f7e249dbd0003916f52b2efe1ac44dad836`, chain 1)
- MochiEngine (`0x860e47e6d6f4a6bcaaddfc7f17f772d2ab55be2f`, chain 1)
- MochiVaultFactory (`0x96076026ae262f1d6a9b88be49bba0e8a80367ef`, chain 1)
- USDM (`0x31d4eb09a216e181ec8a43ce79226a487d6f0ba9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 48 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 12 of 60 unique; 48 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/26
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 60
- Raw deployments: 62
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DutchAuctionLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ad803d61ecabc64f32edaae97c2fffb0617ff6` | ⚠️ Unaudited |
| FixedPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0f438482ce5ee70d859d1f463c9b4d323081f3` | ⚠️ Unaudited |
| gCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x06f05a658b88d6d324d84a5da13d549ea06c9ad6`; ethereum `0x3274c28e83a063be70521933263e747e60bd2803` | ⚠️ Unaudited |
| MinterV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595df7d8f414f485303c4913947686117185ebda` | ⚠️ Unaudited |
| MinterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cadb2c8735a120c4d3292dca2b7f03d5f7dd6b4` | ⚠️ Unaudited |
| MochiCSSRv0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247666 | `0x766f7f7e249dbd0003916f52b2efe1ac44dad836` | ⚠️ Unaudited |
| MochiEngine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247667 | `0x860e47e6d6f4a6bcaaddfc7f17f772d2ab55be2f` | ⚠️ Unaudited |
| MochiInu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x60ef10edff6d600cd91caeca04caed2a2e605fe5`; ethereum `0xc9fb714cf8901d993dc2db2533d3bf526b12b650` | ⚠️ Unaudited |
| MochiNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734b12847980580037b6cca8ee0a6c5da339ee69` | ⚠️ Unaudited |
| MochiNFTEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091a8460e20761bb3ced9bc3a0de62aab3d24115` | ⚠️ Unaudited |
| MochiNFTVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaf6138073e93c18a190295916f38b6197068774` | ⚠️ Unaudited |
| MochiNFTVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc1f0b9c4ce1b72a2581fd4ea3b71a9a2a656f0` | ⚠️ Unaudited |
| MochiPositionNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f90fea999b0b823bacfc57bbf47477638cc35c3` | ⚠️ Unaudited |
| MochiProfileV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083c0c100426ab4758435180c836ca11be2f457c` | ⚠️ Unaudited |
| MochiStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0722aca64623633924b35b96ce6d8548fe4526f2` | ⚠️ Unaudited |
| MochiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e99506fa2643368943065aac0495437834b6f8d` | ⚠️ Unaudited |
| MochiVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247668 | `0x96076026ae262f1d6a9b88be49bba0e8a80367ef` | ⚠️ Unaudited |
| NoDiscountProfile | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5005bd0fe21d2ed57df4dbbbc159a6734d5dcb34` | ⚠️ Unaudited |
| NoMochiFeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5721cbae26de32c2fe9b729f32762c6ef4298bfe` | ⚠️ Unaudited |
| NoMochiReferralFeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727f413331c6841458ba27c4a27c74bc40486546` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f362c05ef7f631d99e81e72cec917e86ca02cf8` | ⚠️ Unaudited |
| PegRecoveryModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3084ba03b49a912b40fa0ec8e20b777a430976da` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aeb811b63a58e85e7b88d52013726bab04c3d47` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be3e334582466d378f3268f60689c26c3ca5dce` | ⚠️ Unaudited |
| USDM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247663 | `0x31d4eb09a216e181ec8a43ce79226a487d6f0ba9` | ⚠️ Unaudited |
| wsOHMAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3d4c0dac3ce8d41b909b13919638f89505f81a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247662 | `0x09e9efd406bb2c3fc7d06f31c74174cd09c5963e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260d698533438d74d51ecb465466ba22fef3fa97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26f0b2b16c3964e29e87dd625613a1e4ff35536c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289de6252ca8f337630600d2802f6d3283b629d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37518f62dad4e4b39a111d2a42a804762bfb4276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aac2a828fa4a5bc3ae6849cc5afb4ad2a4fc438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42aef132658e5a59418d2b355dcccebdb820bdee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5993eeb3bd0ccd5fa192996ce75c7dc40b95f9d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247664 | `0x5d278481af7c543c1cd565a2506b5951048d175f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f8c6311b2bd5bc5faf2136b80368c1f0a64b566` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247665 | `0x62a1c67eeb86543b9c704eaf876789deb6264c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728aae4252a216f563f7b389d4ae93ddb6373e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76bb65986e2a8b439649185439fd334b7b17dc57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e63c485f624bb3cba4eaa9a51e55deef22b5a5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ba29af65a74464938f796b1e49d2d8a692dde9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214313fa34a97ebd785fd9007edb5aba8933f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07590771a9cd60eaacaed23afd9a58349c33234` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247669 | `0xa6046bf666dbb1493e4a6a5fa1906f109d8e896b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247670 | `0xa8347e1266efc18bd0d79ff16aa2262f77cb28c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247671 | `0xa8dad48b9e59b670524a755c95a9a2cfbea91a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8ebc718afb06a4b6a8462f0a1aae4dae26bd3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae7c4a9ec7f2406e6cac54710fc59b3db52f33e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf27d875ed3744a66c8567ab08bc1f1e012a2a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1f30505136e181861cc9348aa799415ff614201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb879e32d68f68c392a664badf66fc2650450fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc45b4188311faa6797de9e4806be7f4bbfc71ead` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247672 | `0xc944b238b8aa4cd696e0bdebb2055c3024bc4932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd491634d7ffa151ce3f0453c0f390a361737f0a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5193d2ad43b67b002f1302c5c431652b5214d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd53e571a5a24879a0e82ef87f835130897b43caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b4a25882f48edf6a9e686ab294b00a51d36f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe839a8353992aca13899cff0c87f531e883d021e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247673 | `0xe9f9f3f04e778f955259b28e1a70d94ca7d81752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebce91ebb23290a96c81028a0ba442e51b0de8e0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 28
- Live contracts: 0
- Unknown liveness contracts: 28
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=28

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x260d698533438d74d51ecb465466ba22fef3fa97` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x26f0b2b16c3964e29e87dd625613a1e4ff35536c` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x289de6252ca8f337630600d2802f6d3283b629d3` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x3274c28e83a063be70521933263e747e60bd2803` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x37518f62dad4e4b39a111d2a42a804762bfb4276` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x3aac2a828fa4a5bc3ae6849cc5afb4ad2a4fc438` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x42aef132658e5a59418d2b355dcccebdb820bdee` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x5993eeb3bd0ccd5fa192996ce75c7dc40b95f9d0` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x5f8c6311b2bd5bc5faf2136b80368c1f0a64b566` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x728aae4252a216f563f7b389d4ae93ddb6373e89` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x76bb65986e2a8b439649185439fd334b7b17dc57` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x7e63c485f624bb3cba4eaa9a51e55deef22b5a5b` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x84ba29af65a74464938f796b1e49d2d8a692dde9` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0x9214313fa34a97ebd785fd9007edb5aba8933f74` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xa07590771a9cd60eaacaed23afd9a58349c33234` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xa8ebc718afb06a4b6a8462f0a1aae4dae26bd3af` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xae7c4a9ec7f2406e6cac54710fc59b3db52f33e9` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xaf27d875ed3744a66c8567ab08bc1f1e012a2a8d` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xb1f30505136e181861cc9348aa799415ff614201` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xbb879e32d68f68c392a664badf66fc2650450fef` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xc45b4188311faa6797de9e4806be7f4bbfc71ead` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xc9fb714cf8901d993dc2db2533d3bf526b12b650` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xd491634d7ffa151ce3f0453c0f390a361737f0a5` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xd5193d2ad43b67b002f1302c5c431652b5214d09` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xd53e571a5a24879a0e82ef87f835130897b43caa` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xe0b4a25882f48edf6a9e686ab294b00a51d36f3d` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xe839a8353992aca13899cff0c87f531e883d021e` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |
| unverified unclassified | UnnamedContract<br>`0xebce91ebb23290a96c81028a0ba442e51b0de8e0` | non_address_book | unknown | unknown | unverified | n/a | `0x067fa954b94134a67a8a4772aa24cfea3d20c033` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mochi Audit.pdf](https://2168743637-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MVHdpDdG_VbukdOb9DJ%2F-MhTlDaFRcJAtXOad6tq%2F-MhTlcFC40_BApv4BanQ%2FMochi%20Audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Mochi CSSR Audit.pdf](https://2168743637-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MVHdpDdG_VbukdOb9DJ%2F-MhTlDaFRcJAtXOad6tq%2F-MhTleNOhp_qgDkXO7Xs%2FMochi%20CSSR%20Audit.pdf) | CSSR | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24139] Mochi Audit.pdf — no match: Extracted contract names from findings and code references. No explicit scope section found; date from cover page.
- [24140] Mochi CSSR Audit.pdf — no match: No explicit scope section; contracts inferred from findings and file references.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mochi Audit.pdf | VestedRewardPool | unmatched — not counted | — | mentioned in findings C1, H4, A1 | no |
| Mochi Audit.pdf | Mochi | unmatched — not counted | — | mentioned in findings C2, L1, A1 | no |
| Mochi Audit.pdf | MochiVault | unmatched — not counted | — | mentioned in findings H1, H2, H3, A4 | no |
| Mochi Audit.pdf | OracleRouter | unmatched — not counted | — | mentioned in finding H5 | no |
| Mochi Audit.pdf | MochiHybridOracleV0 | unmatched — not counted | — | mentioned in findings M1, A3 | no |
| Mochi Audit.pdf | DutchAuctionLiquidator | unmatched — not counted | — | mentioned in finding A1 | no |
| Mochi Audit.pdf | MochiProfileV0 | unmatched — not counted | — | mentioned in finding A1 | no |
| Mochi Audit.pdf | FeePoolV0 | unmatched — not counted | — | mentioned in finding A2 | no |
| Mochi Audit.pdf | IMochi | unmatched — not counted | — | mentioned in VestedRewardPool | no |
| Mochi Audit.pdf | IVMochi | unmatched — not counted | — | mentioned in VestedRewardPool | no |
| Mochi Audit.pdf | IMochiEngine | unmatched — not counted | — | mentioned in DutchAuctionLiquidator | no |
| Mochi Audit.pdf | IFeePool | unmatched — not counted | — | mentioned in FeePoolV0 | no |
| Mochi Audit.pdf | IPriceOracle | unmatched — not counted | — | mentioned in MochiHybridOracleV0 | no |
| Mochi Audit.pdf | ILiquidityOracle | unmatched — not counted | — | mentioned in MochiHybridOracleV0 | no |
| Mochi Audit.pdf | IERC3156FlashLender | unmatched — not counted | — | mentioned in MochiVault | no |
| Mochi Audit.pdf | ERC721Enumerable | unmatched — not counted | — | mentioned in MochiVault | no |
| Mochi CSSR Audit.pdf | OracleRouter | unmatched — not counted | — | mentioned in findings M1 and A1 | no |
| Mochi CSSR Audit.pdf | UniswapV2TokenAdapter | unmatched — not counted | — | mentioned in findings H1, M2 | no |
| Mochi CSSR Audit.pdf | UniswapOracle | unmatched — not counted | — | mentioned in finding A2 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x766f7f7e249dbd0003916f52b2efe1ac44dad836` | MochiCSSRv0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x860e47e6d6f4a6bcaaddfc7f17f772d2ab55be2f` | MochiEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96076026ae262f1d6a9b88be49bba0e8a80367ef` | MochiVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31d4eb09a216e181ec8a43ce79226a487d6f0ba9` | USDM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 19 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [24139] Mochi Audit.pdf
- [24140] Mochi CSSR Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
