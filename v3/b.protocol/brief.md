# Agentic Audit Brief: B.Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL dropped 1.3% over 90 days

## Project Overview

- Project: B.Protocol (`b.protocol`)
- Website: [https://app.bprotocol.org/](https://app.bprotocol.org/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 186 unique implementations (324 raw deployments)
- Coverage basis: 1/10 confirmed own live verified implementations (10.0%); conservative 10.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,754,312.88
- On-chain TVL (included contracts): $46,215,007.68
- TVL by chain: Ethereum $46,142,619.15 | Polygon $72,388.53

## Project Description

This brief describes the observed EVM deployment and audit surface for B.Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, ethereum, fantom, polygon. Structural roles: 6 core, 4 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (6), unclassified (4), supporting (1)
- Contract kinds: contract (11)
- Detected standards: ownable (5)
- Frameworks: openzeppelin (6), foundry (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 13 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

**BCdpManager** (`0x3f30c2...24bbed`, chain 1)
Origin: b.protocol (`0x3320f0...f7e147`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5cbe12...c86af2`, chain 1)
- UnnamedContract (`0x5eae77...5a094d`, chain 1)
- UnnamedContract (`0x896d8a...7dc20b`, chain 1)
- Arb (`0x12c60b...24329e`, chain 1)
- BAMM (`0x00ff66...a0849a`, chain 1)
- BAMM (`0x0a3096...034c41`, chain 42161)
- BAMM (`0x12c60b...24329e`, chain 42161)
- BAMM (`0xebf825...afe66b`, chain 42161)
- PBAMM (`0x54bc91...f6d972`, chain 1)
- UnnamedContract (`0x6d62d6...634d22`, chain 250)
- UnnamedContract (`0xedc790...138a3d`, chain 250)
- Vault (`0x7095f0...cf52c9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/10 (10.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 170 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 15 of 186 unique; 171 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/117
- Verified + Unaudited implementations: 114
- Verified by bytecode match: 2
- Unverified implementations: 69
- Unique implementations: 186
- Raw deployments: 324
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $66.49
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $66.49 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 1 | 0.9% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BCdpManager | governance | project_anchor | own_core | 0 | ethereum | n/a | 3 deployments: ethereum `0x22d3fb...f051ae`; ethereum `0x3320f0...f7e147`; ethereum `0x3f30c2...24bbed` | ✅ Audited |

### ⚠️ Verified + Unaudited (114)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LUSDToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f9880...568ba0` | ⚠️ Unaudited |
| LQTYToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dea81...88c54d` | ⚠️ Unaudited |
| CErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 9 | polygon | n/a | 10 deployments: polygon `0x103f2c...4e9a27`; polygon `0x243e33...8818ee`; polygon `0x30a026...66beb8`; polygon `0x5b9451...f7bb22`; polygon `0x607312...6e69d0`; polygon `0x6bb6eb...ce8586`; polygon `0xb4300e...b5f2bc`; polygon `0xbb93c7...a55807`; polygon `0xe4e438...ab7fcc`; polygon `0xfcd857...0bd64d` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66017d...5a21bb` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24179c...83e007` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x090a00...f394fe`; polygon `0x2c7a9d...09be7c`; polygon `0x36208a...8ac35d` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | n/a | 6 deployments: ethereum `0x3328d5...54b6ce`; ethereum `0x7095f0...cf52c9`; ethereum `0x9f69be...a9843a`; ethereum `0xb03927...a0bbb2`; ethereum `0xc507a2...288880`; arbitrum `0xf2bb80...c93a39` | ⚠️ Unaudited |
| ActivePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9eb2...fe3d7f` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32e8...ce5521` | ⚠️ Unaudited |
| Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x0bdcbc...1e10cd`; polygon `0x30129f...989b5e`; polygon `0x838766...576bfc`; polygon `0xe1561e...e94eb9`; polygon `0xe5d36f...9bde63`; polygon `0xe71355...6d349a` | ⚠️ Unaudited |
| Arb | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228682 | `0x12c60b...24329e` | ⚠️ Unaudited |
| Arb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0xb19aae...253a2a`; ethereum `0xbc7e25...ead7f3`; ethereum `0xcaf3e0...de28e6`; arbitrum `0xceaf62...4fc7b2` | ⚠️ Unaudited |
| ArbChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x364854...695ce0`; ethereum `0xde843d...e9ab9d` | ⚠️ Unaudited |
| BAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x214937...ef4c1c`; arbitrum `0x28cd4a...82b1a3`; arbitrum `0x547e25...e69e76`; arbitrum `0x654b41...8017be`; arbitrum `0x711f66...ec2971` | ⚠️ Unaudited |
| BalanceInfo | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd0c40...55344b` | ⚠️ Unaudited |
| Balances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae823...478082` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228679 | `0x00ff66...a0849a` | ⚠️ Unaudited |
| BAMM | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-228681 | `0x0d3aba...a8c598` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228692 | `0x04208f...5eb719` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228693 | `0x0a3096...034c41` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228694 | `0x12c60b...24329e` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228695 | `0x240990...29b168` | ⚠️ Unaudited |
| BAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa00cdc...db2a79` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228696 | `0xebf825...afe66b` | ⚠️ Unaudited |
| BAMMLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfae2e2...414ccb` | ⚠️ Unaudited |
| BCdpScore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46dfdf...2344cf` | ⚠️ Unaudited |
| BGelato | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0c8405...7cf380`; ethereum `0x221ab7...389102`; ethereum `0x9552d6...2433ac` | ⚠️ Unaudited |
| BIP1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ceca...85da4e` | ⚠️ Unaudited |
| BIP3to6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc133...e7e1b4` | ⚠️ Unaudited |
| BKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31d85e...b6eade`; ethereum `0x48420f...e0e778` | ⚠️ Unaudited |
| BKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8676cb...e1c1f2`; ethereum `0xc57071...d941ac` | ⚠️ Unaudited |
| BKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xeae019...bb5371`; arbitrum `0x102887...e542c8`; arbitrum `0xddcaf1...8e0323` | ⚠️ Unaudited |
| BlackFriday | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f7cf...35a7e6` | ⚠️ Unaudited |
| BLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x384301...0c7129`; ethereum `0x9dcc15...572064`; arbitrum `0x539a3f...26e7d9` | ⚠️ Unaudited |
| BPRO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbb...725f61` | ⚠️ Unaudited |
| BPROAggregated | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6eaa36...358194`; ethereum `0x78000b...3efd2a`; ethereum `0xa01eb8...c41cc5`; ethereum `0xcfadc0...599c5d` | ⚠️ Unaudited |
| BProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x351626...c9e6a1`; ethereum `0x4bcad4...725ab0` | ⚠️ Unaudited |
| BStats | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79c3ce...86a7ad` | ⚠️ Unaudited |
| BTCArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82b414...784770` | ⚠️ Unaudited |
| BTVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60312e...9b20cf` | ⚠️ Unaudited |
| BudConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2325aa...c79dc3`; ethereum `0x47f935...cb2553`; ethereum `0x78a049...0cac6d` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebd7f3...b55e31` | ⚠️ Unaudited |
| ChainLogConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb043f...54a31b` | ⚠️ Unaudited |
| CheapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7d140...7e001f` | ⚠️ Unaudited |
| CLiquidationBotHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x8ede50...c1bb6e`; polygon `0xd739a7...c02c4a` | ⚠️ Unaudited |
| CollateralAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: polygon `0x7d30d0...6e1245`; polygon `0xe8f99d...daccef`; arbitrum `0x447945...3a9a57`; arbitrum `0x6a28e3...cf053d`; arbitrum `0xc1de3c...b604c4` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x100100...073c73` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d9819...c9cd3b` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x287072...f6fb79`; polygon `0x8c6139...a0a831` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x376020...078d8a`; polygon `0xa8cd5d...ea48f8` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb426c1...c7df13`; polygon `0xedba32...26e499` | ⚠️ Unaudited |
| ConnectV2BLiquity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19574e...29b2ff` | ⚠️ Unaudited |
| Dripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc86097...e8ac71` | ⚠️ Unaudited |
| DutchReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3d4575...ae3958`; ethereum `0x625302...f497db`; ethereum `0x7c6fc9...86ae50`; ethereum `0x918308...5d1b37`; ethereum `0xa45f9b...46ca1d`; ethereum `0xa58c6d...32ea1a`; ethereum `0xb173dd...d2431e` | ⚠️ Unaudited |
| EIP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x606b54...759605`; polygon `0x851bcc...6c63f1` | ⚠️ Unaudited |
| ETHArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x8e0f69...159475`; arbitrum `0x8f8043...eaf0d6`; arbitrum `0xb8b451...c29331`; arbitrum `0xc199d1...70ead9`; arbitrum `0xc7b03b...279f68`; arbitrum `0xdb872f...4108a8`; arbitrum `0xeb66db...ca0d4b` | ⚠️ Unaudited |
| ETHFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3d39a1...df6919`; arbitrum `0x4fe29c...f5f990` | ⚠️ Unaudited |
| Experiment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e80b3...062472` | ⚠️ Unaudited |
| Exponent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x29c24a...f08332`; ethereum `0x515643...e44a8d`; ethereum `0x89f58d...e4d54b`; ethereum `0xf79a20...70997c` | ⚠️ Unaudited |
| FakeAmpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x89d4f9...6a414e`; arbitrum `0xc9ac45...0790e6` | ⚠️ Unaudited |
| FakeBComptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6ba9a...008b6e` | ⚠️ Unaudited |
| FeeBurnerResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb7932...09c669` | ⚠️ Unaudited |
| FeeVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x07de5d...ae33b3`; polygon `0x61c790...91c750`; polygon `0x8cf0b1...8161eb`; polygon `0x902810...019bbb`; polygon `0xb48bd8...fe63e7`; polygon `0xb9bc08...b80d34`; polygon `0xc4518e...f9ae31` | ⚠️ Unaudited |
| FixedSupplyToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x094c87...99c446`; ethereum `0x09677d...f4228d`; ethereum `0x3d3b48...6f61d1`; ethereum `0x6132db...fbb381`; ethereum `0x71168c...48f8a2` | ⚠️ Unaudited |
| FlashArbPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x07f8c1...2933e2`; polygon `0x315358...d41939` | ⚠️ Unaudited |
| FlashKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x0bc51a...d01f2a`; polygon `0x83b806...6874c0`; polygon `0x86efe1...b7b154` | ⚠️ Unaudited |
| FlashKeeperFantom | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc969e...40abba` | ⚠️ Unaudited |
| FlashLoanImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5c48e...5e11d6` | ⚠️ Unaudited |
| FuseBAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2227a0...26c70c`; arbitrum `0x94fd84...399ef4` | ⚠️ Unaudited |
| GaugeHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf689f...24d382` | ⚠️ Unaudited |
| GetDecimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7bfd2c...950fd5`; ethereum `0xb4acba...1fb0b6`; ethereum `0xfa1ba4...c99d2d` | ⚠️ Unaudited |
| GOHMArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x787af9...105f91` | ⚠️ Unaudited |
| GOHMOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x471059...8887d0` | ⚠️ Unaudited |
| GovernanceExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x09908c...dff9fe`; ethereum `0x7b57a6...2301ad`; ethereum `0x81c4b9...c4ac68`; ethereum `0x8f95c9...31a7f7` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3c36cc...763cff`; ethereum `0xbde0ba...a2e6c1`; ethereum `0xdb89a7...c1d50f` | ⚠️ Unaudited |
| JarConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2cd6ea...99c34c`; ethereum `0xf10bb2...1aaa69` | ⚠️ Unaudited |
| JumpRateModelV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x29ddb4...4425b0`; polygon `0x42b458...e1f559` | ⚠️ Unaudited |
| KeeperProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0f18...cf14db` | ⚠️ Unaudited |
| KeeperRebate | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb67200...b38f82` | ⚠️ Unaudited |
| KyberBancorReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb02063...d6d6ce`; ethereum `0xba9298...f47239` | ⚠️ Unaudited |
| KyberNetworkENSResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x198213...8c9759` | ⚠️ Unaudited |
| LiquidationBotHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x198300...5151d8` | ⚠️ Unaudited |
| LiquidatorBalanceInfo | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1f3b21...cc90d0`; ethereum `0xdba0bf...59aeb2`; ethereum `0xf0c02c...655ebe` | ⚠️ Unaudited |
| LiquidatorInfo | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0b7497...cccc6b`; ethereum `0x5fd74c...a1064d`; ethereum `0x720a2b...5ad9fd`; ethereum `0xbe02c5...8ce884` | ⚠️ Unaudited |
| LQTYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9fbb...fc605d` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89db3b...78ef02` | ⚠️ Unaudited |
| Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9eacb9...bd0a49`; ethereum `0xa30b96...a17c89`; ethereum `0xf4062d...7ed0ca` | ⚠️ Unaudited |
| MockComptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5c18...78f123` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4dbbbf...851e80`; ethereum `0x7ba651...db3538`; ethereum `0xb7d931...b7862c` | ⚠️ Unaudited |
| OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x190b8c...87820f`; arbitrum `0xa5e1ae...4a4cdb` | ⚠️ Unaudited |
| PauseGuardian | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x110614...2ce8cf` | ⚠️ Unaudited |
| Pay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0ab366...176bde`; ethereum `0x1ea6f1...48a157` | ⚠️ Unaudited |
| PBAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2c6af4...54ea02`; ethereum `0x5123bf...31c70f`; ethereum `0xe4c3d5...43e6f3` | ⚠️ Unaudited |
| PBAMM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228684 | `0x54bc91...f6d972` | ⚠️ Unaudited |
| PickleUniLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x495559...1b5ab8` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3add75...186a2c`; ethereum `0x84ff97...4faf23`; ethereum `0x912d19...362d4c`; ethereum `0xba791e...0aa47f` | ⚠️ Unaudited |
| PTToDaiConversionRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3b755a...8b9f75`; ethereum `0x7c3f1c...be8c17` | ⚠️ Unaudited |
| PublicKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48420f...e0e778` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xe4086c...f629d7`; arbitrum `0xea6b7b...bde55d` | ⚠️ Unaudited |
| Registry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf698d...ed666a` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf50fe...1d0d57` | ⚠️ Unaudited |
| SafeChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2686ad...1e4bc5` | ⚠️ Unaudited |
| Split3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceaf62...4fc7b2` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: polygon `0xb5b8df...7bf02d`; arbitrum `0x2980ba...a9f824` | ⚠️ Unaudited |
| TransferToReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0bc250...11256a`; ethereum `0x9c58e0...5182bc` | ⚠️ Unaudited |
| TroveManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39739...cf4bb2` | ⚠️ Unaudited |
| Unipool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37a77...bdf0d5` | ⚠️ Unaudited |
| UniV3Twap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1459da...1f17d6` | ⚠️ Unaudited |
| UserInfo | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x468960...6ad3ff`; ethereum `0x791678...1ddfb1`; ethereum `0x907403...f233ea` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fc613...20ee02`; ethereum `0xaec7fa...018dcc` | ⚠️ Unaudited |
| VoteAndClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x923e21...4ed404` | ⚠️ Unaudited |
| WhitePaperInterestRateModelV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x772918...96bb65`; polygon `0xb1c442...d1f5a8` | ⚠️ Unaudited |
| Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f1a36...fcb608`; ethereum `0xb6a1c0...e382b2` | ⚠️ Unaudited |
| wstETHArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d3377...c9e076` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: polygon `0x7025cb...51d32b`; polygon `0xdbb8aa...723d36`; arbitrum `0x0ab366...176bde`; arbitrum `0x7874fd...60f869`; arbitrum `0x96d240...60c21a` | ⚠️ Unaudited (bytecode match) |
| HundredBAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 15 deployments: polygon `0x0f0dd6...b80d56`; polygon `0x1346e1...1e05ca`; polygon `0x1ecf1b...17b41d`; polygon `0x240b3e...810247`; polygon `0x2da135...0f9feb`; polygon `0x2ee900...4d64c7`; polygon `0x753c75...d0feac`; polygon `0x998bf3...078f49`; polygon `0xa5e148...85e0e4`; polygon `0xa8d60f...449e3d`; polygon `0xbdac31...5c7247`; polygon `0xcebdf1...b17e25`; polygon `0xda57c0...c00bdb`; polygon `0xedce1c...a440f1`; arbitrum `0x51fbf8...5d9565` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04208f...5eb719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad1af...62fbf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183994...12e28a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f97df...c793dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e7d0...80c3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e8be...bcacbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228685 | `0x5cbe12...c86af2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228686 | `0x5eae77...5a094d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad29d...c98865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d444c...da8322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d62d6...634d22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228688 | `0x896d8a...7dc20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d11ec...8abf3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9247d4...c79c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa42c5...bb3bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc970e2...30570a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe574cc...e06545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedc790...138a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf06c81...9d2e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc0898...a49200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x028245...6f44b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0aed20...2bb039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ba89d...7ae2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x138f5b...6aeee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17625a...15a086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a1d74...361c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cbdf5...27094e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x207a0b...d5dff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x262175...1ac0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x285e2e...592d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x288a38...0ded55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28da2d...1bb532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4db1d2...eb1e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55fb2a...5c415e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60d7de...4e7c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f5e88...2d118e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x757ad8...26bd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a0187...ff4a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a0d63...e82c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e15a2...ff0235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9062d1...3fc27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94a64b...eb2a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a79a2...517a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a9e6e...9e4374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d5680...7caf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f99f6...423d92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2fa2b...81d8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8236e...e3db00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadeba4...e0bb27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae6277...bbfdf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafbc55...d542e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb04cc6...4868ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1ace6...3e21a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb54f98...52521e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe76cd...cba11c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb6e2f...08b697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc2e62...fe937e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe539b9...e91186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8f12f...6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2feba...ab0252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf426eb...feb8f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9c45c...511f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfacd20...75738c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff6a0d...f238f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x240990...29b168` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-228690 | `0x6d62d6...634d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xbbbbbb...725f61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-228691 | `0xedc790...138a3d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report - Backstop Protocol [02.10.2020].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Backstop%20Protocol%20%5B02.10.2020%5D.pdf) | Solidified | Audit | 2020-10 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |
| [FPS_B.AMM_Liquity_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Liquity_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [FPS_B.AMM_Rari_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Rari_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Solidified | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/60778395ae2f78fc1caec0085bfa96c6f70c4573/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Code4rena | Contest | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2976] Audit Report - Backstop Protocol [02.10.2020].pdf — matched: All contracts listed in 'Audited Files' section are in scope.
- [2978] FPS_B.AMM_Liquity_Assessment_FINAL.pdf — no match: Scope explicitly mentions B.AMM Liquity-specific smart contracts in the repository, and findings reference BAMM.sol, crop.sol (CropJoin), and PriceFormula.sol.
- [2979] FPS_B.AMM_Rari_Assessment_FINAL.pdf — no match: Scope section lists three contracts: BAMM.sol, PriceFormula.sol, TokenAdapter.sol. Audit date is 2021/12/19 from the header.
- [2980] Audit Report - B-Protocol [16.02.2021].pdf — matched: All contracts listed in the 'Audited Files' section under 'contracts' folder.
- [14828] Audit Report - B-Protocol [16.02.2021].pdf — matched: All contracts listed in the 'Audited Files' section under 'contracts' folder.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report - Backstop Protocol [02.10.2020].pdf | BCdpManager | own contract | BCdpManager (selected) `0x3f30c2...24bbed` — deployed 2020-10-17 22:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - Backstop Protocol [02.10.2020].pdf | BCdpScoreConnector | unmatched — not counted | — | listed in audited files | no |
| Audit Report - Backstop Protocol [02.10.2020].pdf | LiquidationMachine | unmatched — not counted | — | listed in audited files | no |
| Audit Report - Backstop Protocol [02.10.2020].pdf | Math | unmatched — not counted | — | listed in audited files | no |
| Audit Report - Backstop Protocol [02.10.2020].pdf | Pool | own contract | 0x5cbe12… (selected) `0x5cbe12...c86af2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - Backstop Protocol [02.10.2020].pdf | BProxyActions | own contract | 0x5eae77… (selected) `0x5eae77...5a094d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FPS_B.AMM_Liquity_Assessment_FINAL.pdf | BAMM | ambiguous — not counted | BAMM (alternative) `0x12c60b...24329e` — deployed 2022-02-07 16:34:55+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x0a3096...034c41` — deployed 2022-02-07 16:55:03+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x240990...29b168` — deployed 2021-11-10 15:42:39+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0xebf825...afe66b` — deployed 2022-02-07 16:45:33+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x00ff66...a0849a` — deployed 2022-01-24 13:32:56+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x04208f...5eb719` — deployed 2021-11-21 12:56:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| FPS_B.AMM_Liquity_Assessment_FINAL.pdf | CropJoin | unmatched — not counted | — | listed in scope and findings | no |
| FPS_B.AMM_Liquity_Assessment_FINAL.pdf | PriceFormula | unmatched — not counted | — | listed in scope and findings | no |
| FPS_B.AMM_Rari_Assessment_FINAL.pdf | BAMM | ambiguous — not counted | BAMM (alternative) `0x12c60b...24329e` — deployed 2022-02-07 16:34:55+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x0a3096...034c41` — deployed 2022-02-07 16:55:03+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x240990...29b168` — deployed 2021-11-10 15:42:39+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0xebf825...afe66b` — deployed 2022-02-07 16:45:33+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x00ff66...a0849a` — deployed 2022-01-24 13:32:56+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x04208f...5eb719` — deployed 2021-11-21 12:56:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| FPS_B.AMM_Rari_Assessment_FINAL.pdf | PriceFormula | unmatched — not counted | — | listed in scope | no |
| FPS_B.AMM_Rari_Assessment_FINAL.pdf | TokenAdapter | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BErc20 | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsBToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BEther | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Pool | own contract | 0x5cbe12… (selected) `0x5cbe12...c86af2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - B-Protocol [16.02.2021].pdf | Registry | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Import | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsCToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Avatar | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsAvatarBase | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | IBTokenScore | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BErc20 | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsBToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BEther | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Pool | own contract | 0x5cbe12… (selected) `0x5cbe12...c86af2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - B-Protocol [16.02.2021].pdf | Registry | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Import | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsCToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Avatar | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsAvatarBase | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | IBTokenScore | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3328d5...54b6ce` | Vault | core_logic | $66.49 | Verified native implementation with $66.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12c60b...24329e` | Arb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00ff66...a0849a` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x04208f...5eb719` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0a3096...034c41` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x12c60b...24329e` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x240990...29b168` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xebf825...afe66b` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54bc91...f6d972` | PBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 110 |
| upstream | 18 |
| standard_library | 2 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 29 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=5

Zero-match audit list:

- [2978] FPS_B.AMM_Liquity_Assessment_FINAL.pdf
- [2979] FPS_B.AMM_Rari_Assessment_FINAL.pdf

Fork inheritance lineage and inherited audits are included when available.
