# Agentic Audit Brief: Stout

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

- Project: Stout (`stout`)
- Website: [https://stout.fi/](https://stout.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic
- Contract surface: 149 unique implementations (213 raw deployments)
- Coverage basis: 0/29 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,097,839.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Stout. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across sonic. Structural roles: 15 supporting, 14 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: supporting (15), core (14), unclassified (1)
- Contract kinds: contract (30)
- Detected standards: ownable (21), chainlinkaggregator (5), erc20 (4), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (23)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 28 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BaseContracts (`0x5ce899...f13d5c`, chain 146)
- DUSX (`0xe30e73...76f854`, chain 146)
- DynamicInterestRate (`0x252ddc...993ff7`, chain 146)
- FeesDistributor (`0xfa925d...1aaa83`, chain 146)
- FeesWithdrawer (`0x1efd8d...5f9e97`, chain 146)
- Floor (`0xb8c30c...5bac0e`, chain 146)
- Lender (`0x40e0fa...ad4c48`, chain 146)
- LenderOwner (`0xec7fa6...39a6a7`, chain 146)
- LiquidationHelper (`0xef2d85...1aec75`, chain 146)
- MarketLens (`0x56f0b1...17db48`, chain 146)
- Minter (`0x5ed2e9...64b28e`, chain 146)
- MiscHelper (`0xa1ba6e...52fd0a`, chain 146)
- OracleApi3Reader (`0x25456c...042264`, chain 146)
- OracleApi3Reader (`0x6d5154...c10f82`, chain 146)
- OracleApi3Reader (`0x863a1d...4aa60c`, chain 146)
- OracleApi3Reader (`0x943697...fbd7bf`, chain 146)
- OracleApi3Reader (`0xfc73f4...5f76a9`, chain 146)
- OracleChainlink (`0x2a7d5d...7a1b45`, chain 146)
- PegStabilityModule (`0x24e2a8...44a89a`, chain 146)
- PegStabilityModule (`0xb96919...72a494`, chain 146)
- RepayHelper (`0x652427...dbb121`, chain 146)
- StableOwner (`0x002c4c...30fa86`, chain 146)
- StakedDUSX (`0xa0b0cb...d0cc6d`, chain 146)
- StoutTimelock (`0xd3a6b1...21744b`, chain 146)
- StoutVault (`0x88d6d8...f7cabf`, chain 146)
- STTX (`0x97a10b...957dea`, chain 146)
- SupplyHangingCalculator (`0x322544...e76e13`, chain 146)
- VoteEscrowedSTTX (`0x822131...f1cf9e`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 30; live-surface rows included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/29 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 119 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 30 of 149 unique; 119 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/63
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 149
- Raw deployments: 213
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

### ⚠️ Verified + Unaudited (63)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseContracts | unknown | project_anchor | own_supporting | 0 | sonic | unit-400538 | `0x5ce899...f13d5c` | ⚠️ Unaudited |
| BaseContracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xad1a7c...65ccb1`; sonic `0xc2235d...be5874` | ⚠️ Unaudited |
| DUSX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3341ba...d4d661`; sonic `0x480763...ad64af` | ⚠️ Unaudited |
| DUSX | unknown | project_anchor | own_supporting | 0 | sonic | unit-400552 | `0xe30e73...76f854` | ⚠️ Unaudited |
| DUSXProvider | unknown | project_anchor | own_supporting | 0 | sonic | unit-400528 | `0x089313...d81aad` | ⚠️ Unaudited |
| DynamicInterestRate | unknown | project_anchor | own_supporting | 0 | sonic | unit-400532 | `0x252ddc...993ff7` | ⚠️ Unaudited |
| EGGS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf26ff7...f019bc` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x91f2dd...2d6f58` | ⚠️ Unaudited |
| FeeFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xec44aa...da0e8b` | ⚠️ Unaudited |
| FeesDistributor | unknown | project_anchor | own_supporting | 0 | sonic | unit-400555 | `0xfa925d...1aaa83` | ⚠️ Unaudited |
| FeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b425c...45e855` | ⚠️ Unaudited |
| FeesWithdrawer | unknown | project_anchor | own_supporting | 0 | sonic | unit-400530 | `0x1efd8d...5f9e97` | ⚠️ Unaudited |
| FixedRateDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5b7299...281f03`; sonic `0xc5685a...dad992` | ⚠️ Unaudited |
| FixedRateDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x681ac7...0e6542` | ⚠️ Unaudited |
| FixOwnerEggs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb8e17...52695a` | ⚠️ Unaudited |
| Floor | unknown | project_anchor | own_supporting | 0 | sonic | unit-400549 | `0xb8c30c...5bac0e` | ⚠️ Unaudited |
| Lender | unknown | project_anchor | own_supporting | 0 | sonic | unit-400536 | `0x40e0fa...ad4c48` | ⚠️ Unaudited |
| Lender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: sonic `0x57c02e...5f2709`; sonic `0x669fd3...1dd198`; sonic `0x711de8...584a62`; sonic `0x94395f...8ed3f2`; sonic `0x9c1b02...0e10e1`; sonic `0xbf7104...45de13`; sonic `0xf49e97...a48b7a`; sonic `0xf55e1e...1c1a91` | ⚠️ Unaudited |
| LenderOwner | unknown | project_anchor | own_supporting | 0 | sonic | unit-400553 | `0xec7fa6...39a6a7` | ⚠️ Unaudited |
| LiquidationHelper | periphery | project_anchor | own_supporting | 0 | sonic | unit-400554 | `0xef2d85...1aec75` | ⚠️ Unaudited |
| MarketLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-400537 | `0x56f0b1...17db48` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-400539 | `0x5ed2e9...64b28e` | ⚠️ Unaudited |
| MiscHelper | periphery | project_anchor | own_supporting | 0 | sonic | unit-400548 | `0xa1ba6e...52fd0a` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400533 | `0x25456c...042264` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x5df1ef...b8fae5`; sonic `0x761c59...8199b7` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400541 | `0x6d5154...c10f82` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400543 | `0x863a1d...4aa60c` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400545 | `0x943697...fbd7bf` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400556 | `0xfc73f4...5f76a9` | ⚠️ Unaudited |
| OracleChainlink | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-400534 | `0x2a7d5d...7a1b45` | ⚠️ Unaudited |
| OracleFloorPrice | unknown | project_anchor | own_supporting | 0 | sonic | unit-400529 | `0x19b3a4...cb713f` | ⚠️ Unaudited |
| OraclePythStSUSDReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xca1ecc...7f8fea` | ⚠️ Unaudited |
| OraclePythWSTKSCETHReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8caed8...3d1e50` | ⚠️ Unaudited |
| OraclePythWSTKSCUSDReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe3b141...6ef2b6` | ⚠️ Unaudited |
| OSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x170526...5857c6`; sonic `0x67895d...751fdf`; sonic `0x8fb9a0...502add`; sonic `0xb75137...c9951d`; sonic `0xdb1604...2a1076` | ⚠️ Unaudited |
| OSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xb1e256...f8a794` | ⚠️ Unaudited |
| OSonicDripperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb570a2...3182ba` | ⚠️ Unaudited |
| OSonicOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe68e0c...c4e88b` | ⚠️ Unaudited |
| OSonicVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x1a44f4...9ec59f`; sonic `0x2c3141...74fed0`; sonic `0x3c1106...0b71f0`; sonic `0x4bc730...a879f8`; sonic `0x5217ff...8c5583`; sonic `0xf611cc...86d2af` | ⚠️ Unaudited |
| OSonicVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x087a3e...8dcbd9`; sonic `0x48bb73...0fe277`; sonic `0x48e483...409ebd`; sonic `0x4a83ce...4e994c`; sonic `0xb3d6e8...f9906c`; sonic `0xb5c4cd...37ac16`; sonic `0xd66afa...836cf3` | ⚠️ Unaudited |
| OSonicVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 12 deployments: sonic `0x062225...13f3d2`; sonic `0x33015e...37df3d`; sonic `0x3e07dc...7776a2`; sonic `0x57e407...4f3721`; sonic `0x83e4bc...60ea95`; sonic `0x8a8378...a9a958`; sonic `0xb08442...227dae`; sonic `0xbb3b88...e1b1a8`; sonic `0xd95345...aa7345`; sonic `0xe09676...d55fb2`; sonic `0xeab26f...fc358b`; sonic `0xf85a68...9d2358` | ⚠️ Unaudited |
| OSonicZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x8bb678...7d07ac`; sonic `0xe25a2b...2fab21` | ⚠️ Unaudited |
| OSVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xa3c0ec...180186` | ⚠️ Unaudited |
| PegStabilityModule | unknown | project_anchor | own_supporting | 0 | sonic | unit-400531 | `0x24e2a8...44a89a` | ⚠️ Unaudited |
| PegStabilityModule | unknown | project_anchor | own_supporting | 0 | sonic | unit-400550 | `0xb96919...72a494` | ⚠️ Unaudited |
| PoolBoostCentralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x246594...24b3b3`; sonic `0x6f9468...82bfdc`; sonic `0x7399a8...ae6be8`; sonic `0xe1ee14...9d4aa1` | ⚠️ Unaudited |
| PoolBoostCentralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x4f3b65...4a218a` | ⚠️ Unaudited |
| PoolBoostCentralRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x7c5cb7...4ca4a7`; sonic `0xa63e47...d17dc5`; sonic `0xc10f52...145d81` | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x27281c...5f7689`; sonic `0x840081...5a3b49`; sonic `0xb2e9d0...c3ffe7`; sonic `0xf43f0f...28674f` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: sonic `0x11e1c7...14204f`; sonic `0x1310ea...51382a`; sonic `0x2c945a...f597b8`; sonic `0x859984...d85fe9`; sonic `0x963fd4...dd19dc`; sonic `0x9cce36...6cd1e1`; sonic `0xcae456...07ee60`; sonic `0xcb3249...139953` | ⚠️ Unaudited |
| RepayHelper | periphery | project_anchor | own_supporting | 0 | sonic | unit-400540 | `0x652427...dbb121` | ⚠️ Unaudited |
| StableOwner | unknown | project_anchor | own_supporting | 0 | sonic | unit-400527 | `0x002c4c...30fa86` | ⚠️ Unaudited |
| StakedDUSX | token | project_anchor | own_supporting | 0 | sonic | unit-400547 | `0xa0b0cb...d0cc6d` | ⚠️ Unaudited |
| StoutTimelock | governance | project_anchor | own_supporting | 0 | sonic | unit-400551 | `0xd3a6b1...21744b` | ⚠️ Unaudited |
| StoutVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-400544 | `0x88d6d8...f7cabf` | ⚠️ Unaudited |
| STTX | unknown | project_anchor | own_supporting | 0 | sonic | unit-400546 | `0x97a10b...957dea` | ⚠️ Unaudited |
| SupplyHangingCalculator | unknown | project_anchor | own_supporting | 0 | sonic | unit-400535 | `0x322544...e76e13` | ⚠️ Unaudited |
| SupplyHangingCalculatorOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcaf8e9...eff99f` | ⚠️ Unaudited |
| VaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x06f172...3d2c40` | ⚠️ Unaudited |
| VoteEscrowedSTTX | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-400542 | `0x822131...f1cf9e` | ⚠️ Unaudited |
| WOSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1ccb48...6c5805`; sonic `0x9f0df7...3df4b1` | ⚠️ Unaudited |
| WOSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x563045...e55d0b`; sonic `0x574cb8...b58983`; sonic `0x8cb72f...5558f8`; sonic `0xa369fa...9657ef`; sonic `0xa8e00f...569cbe`; sonic `0xba7785...3bd2d7` | ⚠️ Unaudited |
| WOSonicProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x52a10d...de8342`; sonic `0xbd57cf...240841`; sonic `0xc29a44...7e4506`; sonic `0xda0d34...236479`; sonic `0xe1b612...8be4a2`; sonic `0xfb6985...821836` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x006bce...88699f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x033725...d36e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0957b3...71cefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x121383...b221f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x18e624...c5234e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a436a...c8f901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ea473...f70b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f1d3b...858a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x204329...fe8e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x25c436...bc7777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2776f2...54151f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x292003...729105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d88f8...a51db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2eff96...77285b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3a9b66...60b063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3f80f3...9a18e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x425a62...4ed56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x46c06f...29d6ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4bf238...888315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4f1aef...b836d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50a68c...b7739a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5220ff...8ea29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54527e...3d40bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55fefa...a44153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5847b1...3193da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x58cc8b...ba0a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x597982...42bb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5c9ad1...c49db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x608a61...9867d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6276d4...6bf4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63b173...16a79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63cde3...5ce654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x657af6...d58720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x66f2df...63f590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67d570...c437cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b26d4...80a0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x748ee7...05a4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x74f54f...1b55ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x77dd3b...c3da28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x800063...43d68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x81a140...17567a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83c117...5a33e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x842c91...899238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x846fb3...ac813a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8cce20...e28a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d0ea3...0aa322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8e0687...8a77f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8fde1f...e0cd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94cbd2...c10599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x951881...0858a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9ddb17...1e7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9e3143...c174b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9e8895...7ad43d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5e1b0...7e381e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa6c53a...02e0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa97db...3023da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xac3c72...210eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xae3dcf...e864a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb275f1...af8d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb64246...4f6a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba09a5...613e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3ca8f...b5c8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc4c732...baba48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc82bd7...58fc69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9ec89...a1675e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcd3d2d...9f062a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcdcf8e...600846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcf8990...536b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcfce49...9637c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd0cc28...72ac8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd1a9c3...3cee21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd3001a...8c5121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd4ccea...8b7ce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd5909a...bb4040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd9efb0...4cbb66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdae5a3...4d8775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdb564b...c9f06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe3717f...e7d230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe504b2...1577e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe64d5d...e242e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6a162...3a3450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe9f739...1fc51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xed6bb8...cabcfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf22f28...4b13cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2625c...6306e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf8fcbb...e81104` | ❓ Unverified |

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
| sonic | `0x5ce899...f13d5c` | BaseContracts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe30e73...76f854` | DUSX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x089313...d81aad` | DUSXProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x252ddc...993ff7` | DynamicInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xfa925d...1aaa83` | FeesDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1efd8d...5f9e97` | FeesWithdrawer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb8c30c...5bac0e` | Floor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x40e0fa...ad4c48` | Lender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xec7fa6...39a6a7` | LenderOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xef2d85...1aec75` | LiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x56f0b1...17db48` | MarketLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5ed2e9...64b28e` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa1ba6e...52fd0a` | MiscHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x25456c...042264` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6d5154...c10f82` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x863a1d...4aa60c` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x943697...fbd7bf` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xfc73f4...5f76a9` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x19b3a4...cb713f` | OracleFloorPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x24e2a8...44a89a` | PegStabilityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb96919...72a494` | PegStabilityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x652427...dbb121` | RepayHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x002c4c...30fa86` | StableOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa0b0cb...d0cc6d` | StakedDUSX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xd3a6b1...21744b` | StoutTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x88d6d8...f7cabf` | StoutVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x97a10b...957dea` | STTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x322544...e76e13` | SupplyHangingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x822131...f1cf9e` | VoteEscrowedSTTX | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 87 |

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
