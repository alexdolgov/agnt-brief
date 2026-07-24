# Agentic Audit Brief: Thruster

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 5 audit(s)
- Eligible audit results: 13 (5 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Thruster (`thruster`)
- Website: [https://app.thruster.finance/](https://app.thruster.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: blast
- Contract surface: 44 unique implementations (44 raw deployments)
- Coverage basis: 3/14 confirmed own live verified implementations (21.4%); conservative 21.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,558,132.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Thruster. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across blast. Structural roles: 9 supporting, 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: supporting (9), core (6), unclassified (1)
- Contract kinds: contract (15), unclassified (1)
- Detected standards: erc20 (2), erc20permit (2), multicall (2), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- FeeOnTransferDetector (`0xeae1b3489ebf7bc8a621f440c59099a141d09a52`, chain 81457)
- NFTDescriptor (`0xe3cca3a48b907d0e26135025eaeea6431c083a8c`, chain 81457)
- NonfungiblePositionManager (`0x434575eaea081b735c985fa9bf63cd7b87e227f9`, chain 81457)
- QuoterV2 (`0x3b299f65b47c0bfaeff715bc73077ba7a0a685be`, chain 81457)
- SwapRouter (`0x337827814155ecbf24d20231fca4444f530c0555`, chain 81457)
- ThrusterFactory (`0x37836821a2c03c171fb1a595767f4a16e2b93fc4`, chain 81457)
- ThrusterFactory (`0xb4a7d971d0adea1c73198c97d7ab3f9ce4aafa13`, chain 81457)
- ThrusterMulticall (`0x2024c59ee713db918c9ba0cb84c5e2c6c6f834c5`, chain 81457)
- ThrusterPoolDeployer (`0xa08ae3d3f4da51c22d3c041e468bdf4c61405aab`, chain 81457)
- ThrusterPoolFactory (`0x71b08f13b3c3af35aadeb3949afeb1ded1016127`, chain 81457)
- ThrusterRouter (`0x44889b52b71e60de6ed7de82e2939fcc52fb2b4e`, chain 81457)
- ThrusterRouter (`0x98994a9a7a2570367554589189dc9772241650f6`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (14 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/14 (21.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 25 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 15 of 44 unique; 29 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/34
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 44
- Raw deployments: 44
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 11 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 14.3% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 4naly3er | Tier 2 | 3 | 8.8% | n/a |
| Code4rena | Tier 1 | 2 | 5.9% | 2024-02 |
| oakcobalt | Tier 2 | 1 | 2.9% | n/a |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | blast | unit-394089 | `0x434575eaea081b735c985fa9bf63cd7b87e227f9` | ✅ Audited |
| ThrusterPoolDeployer | unknown | project_anchor | own_supporting | 0 | blast | unit-394081 | `0xa08ae3d3f4da51c22d3c041e468bdf4c61405aab` | ✅ Audited |
| ThrusterPoolFactory | registry | project_anchor | own_supporting | 0 | blast | unit-394077 | `0x71b08f13b3c3af35aadeb3949afeb1ded1016127` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0561fc4e3c728afc9a0407fa109a2bd2981056ab` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4f0ad2d05ce79bf9834b02251dd15d085dc09d6f` | ⚠️ Unaudited |
| Curve Fee Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaafa3db42ea9c114c36a2a033e04c8bc0813c65c` | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | project_anchor | own_supporting | 0 | blast | unit-394082 | `0xa9eaaccae316982c04b8068fb08787de673475ab` | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc7867b9cb8c339bdb51204b4428453536a42ac99` | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | project_anchor | own_supporting | 0 | blast | unit-394086 | `0xeae1b3489ebf7bc8a621f440c59099a141d09a52` | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd40fb88b94d20d5d60a94e00492214061bdb2756` | ⚠️ Unaudited |
| Liquidity Gauge v5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb3c0971f3482d71f87c8d8f3adc5ee10b73d917d` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xce95373c250f2770f8a7857a8f68e8fd6cc4cdf8` | ⚠️ Unaudited |
| MerklGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9ef366fb5a1589a1f4f2346cf630424985a54981` | ⚠️ Unaudited |
| MerklGaugeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8e4cffbe1a8425216e54301dbb90ca2bb08336bb` | ⚠️ Unaudited |
| MerklGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x85c7e8b618b9cad0f0c40a0b40a4d31d8d51e2af` | ⚠️ Unaudited |
| NFTDescriptor | unknown | project_anchor | own_supporting | 0 | blast | unit-394085 | `0xe3cca3a48b907d0e26135025eaeea6431c083a8c` | ⚠️ Unaudited |
| Pump | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x216a5a1135a9dab49fa9ad865e0f22fe22b5630a` | ⚠️ Unaudited |
| PumpDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x12dc5db96df71a6623b23f904fe83baf60ebd991` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-394074 | `0x3b299f65b47c0bfaeff715bc73077ba7a0a685be` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe95499477def43fe8848f77775d176851d1c434d` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 1 | blast | unit-394088 | `0x337827814155ecbf24d20231fca4444f530c0555` | ⚠️ Unaudited |
| Thrust | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe36072dd051ce26261bf50cd966311cab62c596e` | ⚠️ Unaudited |
| ThrusterFactory | registry | project_anchor | own_supporting | 0 | blast | unit-394073 | `0x37836821a2c03c171fb1a595767f4a16e2b93fc4` | ⚠️ Unaudited |
| ThrusterFactory | registry | project_anchor | own_supporting | 0 | blast | unit-394083 | `0xb4a7d971d0adea1c73198c97d7ab3f9ce4aafa13` | ⚠️ Unaudited |
| ThrusterMulticall | unknown | project_anchor | own_supporting | 0 | blast | unit-394072 | `0x2024c59ee713db918c9ba0cb84c5e2c6c6f834c5` | ⚠️ Unaudited |
| ThrusterPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-394071 | `0x12c69bfa3fb3cba75a1defa6e976b87e233fc7df` | ⚠️ Unaudited |
| ThrusterPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-394084 | `0xd2f1a205959605550471762e7dea1a034edbf477` | ⚠️ Unaudited |
| ThrusterRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-394076 | `0x44889b52b71e60de6ed7de82e2939fcc52fb2b4e` | ⚠️ Unaudited |
| ThrusterRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-394080 | `0x98994a9a7a2570367554589189dc9772241650f6` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | blast | unit-394078 | `0x796b39328b92472b2bd950aeb20d950611e02ef6` | ⚠️ Unaudited |
| Token Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x90a4b92dbeabfca4e1a57dcc493d88610d641b59` | ⚠️ Unaudited |
| TokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc9b92bc5b0bf35feb5bb8df045edfca4858a5572` | ⚠️ Unaudited |
| TokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x29903f1e60aea99ac4319e6e7923e0b4bfa7f05e` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc6de1f30415352941f7ce784a67b2df1552386a4` | ⚠️ Unaudited |

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
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 0 | blast | unit-394079 | `0x9859246073f08d1644c496c19be7aa9c02735e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x18db7bd01ff9a30bdbdf3de98c41e2a54a428397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x32cad270abfa47a0b9f11da15641c6cb82a5b412` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | unit-394075 | `0x414991b742fbcbe3ef00d94ff9f9a63729091711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x44a2f2303933e71e5fa779ce463c7d71607e968a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x609fddd3fa63257c25ba0ac284d76c166bef3358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc4af384fa1ff36a49c55549811e1b2dc1f72ba44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd3aad230f86e8827b468ea811a1d49644522b6d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe79513f49f029f6cf1301c16913c4f50c011fd87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-394087 | `0xf00da13d2960cf113edcef6e3f30d92e52906537` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 28
- Live contracts: 8
- Unknown liveness contracts: 20
- Source-verified contracts: 20
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, contamination review=5, exact address book overlap=4, source verified unclassified=10, unverified unclassified=7

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| blast | contamination review | LiquidityGaugeFactory<br>`0xce95373c250f2770f8a7857a8f68e8fd6cc4cdf8` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | contamination review | MerklGauge<br>`0x9ef366fb5a1589a1f4f2346cf630424985a54981` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | contamination review | MerklGaugeFactory<br>`0x85c7e8b618b9cad0f0c40a0b40a4d31d8d51e2af` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | source verified unclassified | Boost Delegation V2<br>`0x4f0ad2d05ce79bf9834b02251dd15d085dc09d6f` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | source verified unclassified | Liquidity Gauge v5<br>`0xb3c0971f3482d71f87c8d8f3adc5ee10b73d917d` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | source verified unclassified | MerklGaugeConfig<br>`0x8e4cffbe1a8425216e54301dbb90ca2bb08336bb` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | source verified unclassified | SmartWalletChecker<br>`0xe95499477def43fe8848f77775d176851d1c434d` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | source verified unclassified | Thrust<br>`0xe36072dd051ce26261bf50cd966311cab62c596e` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | source verified unclassified | Token Minter<br>`0x90a4b92dbeabfca4e1a57dcc493d88610d641b59` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | source verified unclassified | TokenAdmin<br>`0xc9b92bc5b0bf35feb5bb8df045edfca4858a5572` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | source verified unclassified | TokenDistributor<br>`0x29903f1e60aea99ac4319e6e7923e0b4bfa7f05e` | non_address_book | unknown | unknown | verified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | unverified unclassified | UnnamedContract<br>`0x18db7bd01ff9a30bdbdf3de98c41e2a54a428397` | non_address_book | unknown | unknown | unverified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | unverified unclassified | UnnamedContract<br>`0xd3aad230f86e8827b468ea811a1d49644522b6d7` | non_address_book | unknown | unknown | unverified | n/a | `0x695decfb76b1c22deb0a4de3f8816bd03dfaf423` |
| blast | currently scope matched | NonfungibleTokenPositionDescriptor<br>`0x9859246073f08d1644c496c19be7aa9c02735e4a` | project_anchor | unknown | live | unverified | review: missing_fingerprint | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | currently scope matched | ThrusterPoolDeployer<br>`0xa08ae3d3f4da51c22d3c041e468bdf4c61405aab` | project_anchor | unknown | live | verified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | contamination review | FeeOnTransferDetector<br>`0xa9eaaccae316982c04b8068fb08787de673475ab` | project_anchor | unknown | live | verified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | contamination review | TickLens<br>`0x796b39328b92472b2bd950aeb20d950611e02ef6` | project_anchor | unknown | live | verified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | exact address book overlap | FeeOnTransferDetector<br>`0xeae1b3489ebf7bc8a621f440c59099a141d09a52` | project_anchor | unknown | live | verified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | exact address book overlap | NFTDescriptor<br>`0xe3cca3a48b907d0e26135025eaeea6431c083a8c` | project_anchor | unknown | live | verified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | exact address book overlap | QuoterV2<br>`0x3b299f65b47c0bfaeff715bc73077ba7a0a685be` | project_anchor | unknown | live | verified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | exact address book overlap | ThrusterMulticall<br>`0x2024c59ee713db918c9ba0cb84c5e2c6c6f834c5` | project_anchor | unknown | live | verified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | source verified unclassified | FeeOnTransferDetector<br>`0xc7867b9cb8c339bdb51204b4428453536a42ac99` | non_address_book | unknown | unknown | verified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | source verified unclassified | PumpDistributor<br>`0x12dc5db96df71a6623b23f904fe83baf60ebd991` | non_address_book | unknown | unknown | verified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | unverified unclassified | UnnamedContract<br>`0x32cad270abfa47a0b9f11da15641c6cb82a5b412` | non_address_book | unknown | unknown | unverified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | unverified unclassified | UnnamedContract<br>`0x44a2f2303933e71e5fa779ce463c7d71607e968a` | non_address_book | unknown | unknown | unverified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | unverified unclassified | UnnamedContract<br>`0x609fddd3fa63257c25ba0ac284d76c166bef3358` | non_address_book | unknown | unknown | unverified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | unverified unclassified | UnnamedContract<br>`0xc4af384fa1ff36a49c55549811e1b2dc1f72ba44` | non_address_book | unknown | unknown | unverified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |
| blast | unverified unclassified | UnnamedContract<br>`0xe79513f49f029f6cf1301c16913c4f50c011fd87` | non_address_book | unknown | unknown | unverified | n/a | `0xd6b64e44aae0938118ad0dae251b859d85351c22` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2024-02-thruster](https://code4rena.com/reports/2024-02-thruster) | Code4rena | Contest | 2024-02 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 7 | high |
| [4naly3er-report-thruster-clmm.md](https://github.com/code-423n4/2024-02-thruster/blob/main/4naly3er-report-thruster-clmm.md) | 4naly3er | Audit | n/a | unknown | Direct | contract_name | matched | 3 | 1 | 0 | 3 | medium |
| [4naly3er-report-thruster-treasure.md](https://github.com/code-423n4/2024-02-thruster/blob/main/4naly3er-report-thruster-treasure.md) | 4naly3er | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [bot-report.md](https://github.com/code-423n4/2024-02-thruster/blob/main/bot-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [report.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/report.md) | Code4rena | Contest | 2024-02 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 7 | high |
| [0xDING99YA-Q.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/0xDING99YA-Q.md) | 0xDING99YA | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [EV_om-Q.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/EV_om-Q.md) | EV_om | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [oakcobalt-Analysis.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/oakcobalt-Analysis.md) | oakcobalt | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [oakcobalt-G.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/oakcobalt-G.md) | oakcobalt | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [oakcobalt-Q.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/oakcobalt-Q.md) | oakcobalt | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 1 | 0 | 4 | medium |
| [rvierdiiev-Analysis.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/rvierdiiev-Analysis.md) | rvierdiiev | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [rvierdiiev-G.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/rvierdiiev-G.md) | rvierdiiev | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [rvierdiiev-Q.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/rvierdiiev-Q.md) | rvierdiiev | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 3 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21043] code4rena.com/reports/2024-02-thruster — matched: Extracted 9 contract names from scope and findings. Audit date from cover page.
- [21044] 4naly3er-report-thruster-clmm.md — matched: No explicit scope section found; contracts inferred from file paths in findings. No audit date found in the report text.
- [21045] 4naly3er-report-thruster-treasure.md — no match: Only one contract file is referenced throughout the report; no explicit scope section found.
- [21046] bot-report.md — no match: The document is a placeholder for an automated findings report; no audit report content or contract names are present.
- [21047] report.md — matched: Scope section states 12 smart contracts, but only 9 distinct contract names were extractable from the report text. The report mentions 'ThrusterTreasure', 'ThrusterPoolDeployer', 'ThrusterFactory', 'ThrusterPair', 'ThrusterYield', 'ThrusterPool', 'NonfungiblePositionManager', 'IThrusterPair', and 'IThrusterERC20'. The audit date is the end date of the audit period (February 23, 2024).
- [21048] 0xDING99YA-Q.md — no match: The provided text is a snippet of findings from an audit report, but does not contain a scope section or explicit listing of contracts in scope. No contract names are identifiable.
- [21049] EV_om-Q.md — no match: No explicit scope section found; contracts extracted from finding contexts. No audit date found.
- [21050] oakcobalt-Analysis.md — no match: No explicit scope table; contracts inferred from report sections. No date found.
- [21051] oakcobalt-G.md — no match: No explicit scope section found; contracts extracted from findings sections where they are assessed targets.
- [21052] oakcobalt-Q.md — matched: No explicit scope section found; contracts extracted from findings that reference specific files and contracts as audited targets.
- [21053] rvierdiiev-Analysis.md — no match: No explicit scope section; contract names extracted from overview sections. No date found.
- [21054] rvierdiiev-G.md — no match: No explicit scope section found; contracts extracted from findings only. No date found.
- [21055] rvierdiiev-Q.md — matched: No explicit scope section found; contracts extracted from QA findings. Audit date not found in provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2024-02-thruster | ThrusterTreasure | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-02-thruster | ThrusterPoolDeployer | own contract | ThrusterPoolDeployer (selected) `0xa08ae3d3f4da51c22d3c041e468bdf4c61405aab` — deployed 2024-02-28 16:31:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-02-thruster | ThrusterFactory | ambiguous — not counted | ThrusterFactory (alternative) `0xb4a7d971d0adea1c73198c97d7ab3f9ce4aafa13` — deployed 2024-02-28 15:40:27+03 — liveness: live (code_present_context)<br>ThrusterFactory (alternative) `0x37836821a2c03c171fb1a595767f4a16e2b93fc4` — deployed 2024-02-28 15:53:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2024-02-thruster | ThrusterPair | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-02-thruster | ThrusterPool | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-02-thruster | ThrusterYield | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-02-thruster | NonfungiblePositionManager | own proxy deployment | NonfungiblePositionManager (proxy) (selected) `0x434575eaea081b735c985fa9bf63cd7b87e227f9` — deployed 2024-02-28 16:31:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-02-thruster | IThrusterERC20 | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-02-thruster | IThrusterPair | unmatched — not counted | — | mentioned in findings | no |
| 4naly3er-report-thruster-clmm.md | NonfungiblePositionManager | own proxy deployment | NonfungiblePositionManager (proxy) (selected) `0x434575eaea081b735c985fa9bf63cd7b87e227f9` — deployed 2024-02-28 16:31:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report-thruster-clmm.md | ThrusterPool | unmatched — not counted | — | listed in scope via file references in findings | no |
| 4naly3er-report-thruster-clmm.md | ThrusterPoolDeployer | own contract | ThrusterPoolDeployer (selected) `0xa08ae3d3f4da51c22d3c041e468bdf4c61405aab` — deployed 2024-02-28 16:31:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report-thruster-clmm.md | ThrusterPoolFactory | own contract | ThrusterPoolFactory (selected) `0x71b08f13b3c3af35aadeb3949afeb1ded1016127` — deployed 2024-02-28 16:30:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report-thruster-clmm.md | PoolInitializer | unmatched — not counted | — | listed in scope via file references in findings | no |
| 4naly3er-report-thruster-clmm.md | PoolAddress | unmatched — not counted | — | listed in scope via file references in findings | no |
| 4naly3er-report-thruster-treasure.md | ThrusterTreasure | unmatched — not counted | — | listed in scope | no |
| report.md | ThrusterTreasure | unmatched — not counted | — | listed in scope and findings | no |
| report.md | ThrusterPoolDeployer | own contract | ThrusterPoolDeployer (selected) `0xa08ae3d3f4da51c22d3c041e468bdf4c61405aab` — deployed 2024-02-28 16:31:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | ThrusterFactory | ambiguous — not counted | ThrusterFactory (alternative) `0xb4a7d971d0adea1c73198c97d7ab3f9ce4aafa13` — deployed 2024-02-28 15:40:27+03 — liveness: live (code_present_context)<br>ThrusterFactory (alternative) `0x37836821a2c03c171fb1a595767f4a16e2b93fc4` — deployed 2024-02-28 15:53:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report.md | ThrusterPair | unmatched — not counted | — | findings and low issues | no |
| report.md | ThrusterYield | unmatched — not counted | — | low issues and analysis | no |
| report.md | ThrusterPool | unmatched — not counted | — | low issues and gas optimizations | no |
| report.md | NonfungiblePositionManager | own proxy deployment | NonfungiblePositionManager (proxy) (selected) `0x434575eaea081b735c985fa9bf63cd7b87e227f9` — deployed 2024-02-28 16:31:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | IThrusterPair | unmatched — not counted | — | low issue L-02 | no |
| report.md | IThrusterERC20 | unmatched — not counted | — | low issue L-02 | no |
| EV_om-Q.md | ThrusterTreasure | unmatched — not counted | — | mentioned in L-01 context | no |
| EV_om-Q.md | ThrusterGas | unmatched — not counted | — | mentioned in L-02 context | no |
| EV_om-Q.md | ThrusterYield | unmatched — not counted | — | mentioned in L-02 context | no |
| oakcobalt-Analysis.md | ThrusterPair | unmatched — not counted | — | mentioned in scope as pool contract | no |
| oakcobalt-Analysis.md | ThrusterPool | unmatched — not counted | — | mentioned in scope as pool contract | no |
| oakcobalt-Analysis.md | ThrusterFactory | ambiguous — not counted | ThrusterFactory (alternative) `0xb4a7d971d0adea1c73198c97d7ab3f9ce4aafa13` — deployed 2024-02-28 15:40:27+03 — liveness: live (code_present_context)<br>ThrusterFactory (alternative) `0x37836821a2c03c171fb1a595767f4a16e2b93fc4` — deployed 2024-02-28 15:53:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| oakcobalt-Analysis.md | ThrusterTreasure | unmatched — not counted | — | mentioned in scope as lottery contract | no |
| oakcobalt-Analysis.md | ThrusterYield | unmatched — not counted | — | mentioned in scope as yield contract | no |
| oakcobalt-G.md | ThrusterPair | unmatched — not counted | — | mentioned in Gas-01 finding | no |
| oakcobalt-G.md | ThrusterPool | unmatched — not counted | — | mentioned in Gas-01 finding | no |
| oakcobalt-G.md | ThrusterTreasure | unmatched — not counted | — | mentioned in Gas-02 and Gas-03 findings | no |
| oakcobalt-Q.md | ThrusterPair | unmatched — not counted | — | Listed in findings Low-01, Low-02, Low-10, Low-11 | no |
| oakcobalt-Q.md | ThrusterYield | unmatched — not counted | — | Listed in findings Low-03, Low-06 | no |
| oakcobalt-Q.md | ThrusterTreasure | unmatched — not counted | — | Listed in findings Low-04, Low-05, Low-07, Low-08, Low-09, Low-12 | no |
| oakcobalt-Q.md | ThrusterPool | unmatched — not counted | — | Listed in findings Low-06, Low-13 | no |
| oakcobalt-Q.md | NonfungiblePositionManager | own proxy deployment | NonfungiblePositionManager (proxy) (selected) `0x434575eaea081b735c985fa9bf63cd7b87e227f9` — deployed 2024-02-28 16:31:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| rvierdiiev-Analysis.md | Thruster-cfmm | unmatched — not counted | — | mentioned as a uniswap v2 fork deployed on Blast chain | no |
| rvierdiiev-Analysis.md | Thruster-clmm | unmatched — not counted | — | mentioned as a uniswap v3 fork deployed on Blast chain | no |
| rvierdiiev-Analysis.md | Thruster-treasure | unmatched — not counted | — | mentioned as a module for distributing prizes | no |
| rvierdiiev-G.md | ThrusterTreasure | unmatched — not counted | — | mentioned in findings G-01 and G-02 | no |
| rvierdiiev-G.md | ThrusterPool | unmatched — not counted | — | mentioned in finding G-03 | no |
| rvierdiiev-Q.md | ThrusterFactory | ambiguous — not counted | ThrusterFactory (alternative) `0xb4a7d971d0adea1c73198c97d7ab3f9ce4aafa13` — deployed 2024-02-28 15:40:27+03 — liveness: live (code_present_context)<br>ThrusterFactory (alternative) `0x37836821a2c03c171fb1a595767f4a16e2b93fc4` — deployed 2024-02-28 15:53:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| rvierdiiev-Q.md | ThrusterPair | unmatched — not counted | — | mentioned in QA-01 and QA-02 | no |
| rvierdiiev-Q.md | NonfungibleTokenPositionDescriptor | own contract | NonfungibleTokenPositionDescriptor (selected) `0x9859246073f08d1644c496c19be7aa9c02735e4a` — deployed 2024-02-28 16:31:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| rvierdiiev-Q.md | ThrusterTreasure | unmatched — not counted | — | mentioned in QA-04, QA-05, QA-06 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0xa9eaaccae316982c04b8068fb08787de673475ab` | FeeOnTransferDetector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xeae1b3489ebf7bc8a621f440c59099a141d09a52` | FeeOnTransferDetector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xe3cca3a48b907d0e26135025eaeea6431c083a8c` | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x3b299f65b47c0bfaeff715bc73077ba7a0a685be` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x337827814155ecbf24d20231fca4444f530c0555` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x37836821a2c03c171fb1a595767f4a16e2b93fc4` | ThrusterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xb4a7d971d0adea1c73198c97d7ab3f9ce4aafa13` | ThrusterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x2024c59ee713db918c9ba0cb84c5e2c6c6f834c5` | ThrusterMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x44889b52b71e60de6ed7de82e2939fcc52fb2b4e` | ThrusterRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x98994a9a7a2570367554589189dc9772241650f6` | ThrusterRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x796b39328b92472b2bd950aeb20d950611e02ef6` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 37 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=6, medium=5
- Match method counts: unique_name=9

Zero-match audit list:

- [21045] 4naly3er-report-thruster-treasure.md
- [21046] bot-report.md
- [21048] 0xDING99YA-Q.md
- [21049] EV_om-Q.md
- [21050] oakcobalt-Analysis.md
- [21051] oakcobalt-G.md
- [21053] rvierdiiev-Analysis.md
- [21054] rvierdiiev-G.md

Fork inheritance lineage and inherited audits are included when available.
