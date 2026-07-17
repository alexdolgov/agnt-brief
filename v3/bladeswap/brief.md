# Agentic Audit Brief: BladeSwap

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

- Project: BladeSwap (`bladeswap`)
- Website: [https://bladeswap.xyz](https://bladeswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast
- Contract surface: 71 unique implementations (71 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $197,728.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BladeSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across blast. Structural roles: 5 core, 4 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (5), supporting (4)
- Contract kinds: contract (9)
- Detected standards: accesscontrol (3), erc165 (3), erc20 (1), multicall (1)
- Frameworks: openzeppelin (7), prb-math (2), foundry (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4e9f4e54afe30a296abce56b438f6818adb61a4e`, chain 81457)
- UnnamedContract (`0x52de29cd9623891fab26d26fd3f6425d4db18856`, chain 81457)
- UnnamedContract (`0x59dcec4fc9ff2d22c4b501639711ef0c461d54cd`, chain 81457)
- UnnamedContract (`0x7553b306773efa59e6f9676afe049d2d2abdfdd6`, chain 81457)
- UnnamedContract (`0x75cb3ec310d3d1e22637f79d61eab5d9abcd68bd`, chain 81457)
- UnnamedContract (`0x7adce99519db8b7d5a010e12e359ade0bbabb219`, chain 81457)
- UnnamedContract (`0x86ba05aa6d1e92fe0dc85bccbc7847370238fd22`, chain 81457)
- UnnamedContract (`0x918d73b3b11b9f2de74e6dd6a3524f9bfb471ab1`, chain 81457)
- UnnamedContract (`0x969195b66f95d8b70fa414671b438134889ba348`, chain 81457)
- UnnamedContract (`0x9b6d09975e29d1888b98b83e31e72c00bc4d93c5`, chain 81457)
- UnnamedContract (`0xa0cfb41a88f197d75fe2d07c7576679c1624a40e`, chain 81457)
- UnnamedContract (`0xa41dd8046c63a5195d7952dfcd83d1750acab565`, chain 81457)
- UnnamedContract (`0xa87dbf5082af26c9a6ab2b854e378f704638cca5`, chain 81457)
- UnnamedContract (`0xcadaf1467098830a1c2db059de7943397c2a2215`, chain 81457)
- UnnamedContract (`0xd1fedd031b92f50a50c05e2c45af1adb4cea82f4`, chain 81457)
- UnnamedContract (`0xdadb18dc78c3f2f94d8fd962f2ee13d7199740fa`, chain 81457)
- UnnamedContract (`0xe1d6a7498dcbca37dcb112018748c396ba749d66`, chain 81457)
- UnnamedContract (`0xf8f2ab7c84cdb6ccaf1f699eb54ba30c36b95d85`, chain 81457)
- UnnamedContract (`0xfa108ccb7cad3d21be3c9ae7d97c751715adfc83`, chain 81457)
- UnnamedContract (`0xffeecb1fe0eaaefee69d122f6b7a0368637cb593`, chain 81457)
- AlgebraVaultFactoryStub (`0x013802305a25a286f2dc95950b6254f4c3ceb8fd`, chain 81457)
- Box (`0x194fa3066d3a44c5b74394298a317839c7b3e943`, chain 81457)
- FarmingCenter (`0x8d2eb277a50c5aeef2c04ef4819055639f9bc168`, chain 81457)
- Lens (`0xce54ab6c79c259bbdb8f4babea97f05f225e376f`, chain 81457)
- SimpleAuthorizer (`0x06b1431b2cfc81fd1e428d6a4916fec395c9d9cb`, chain 81457)
- StableSwapPoolFactory (`0x5f0af33207aa4f62d678cdead8d2dd4e8e3a77f2`, chain 81457)
- SwapFacet (`0x10f6b147d51f7578f760065df7f174c3bc95382c`, chain 81457)
- TimelockController (`0x58534a65e415a2601092a769bb3ece09b17f8396`, chain 81457)
- XYKPool (`0xf4c92048f10b261e89f70c6dc4e4e9bbac0f6ec3`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 29 of 71 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 71
- Raw deployments: 71
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

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8be972bbaaf57f43bff5901a788df38b401ed3c1` | ⚠️ Unaudited |
| AlgebraBladeIncentiveMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x12aaba5a8ec297ade0e3d2c97ccc22a4156e0fb1` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x089124f146509359af0eb52f6cc7f06a2389fe71` | ⚠️ Unaudited |
| AlgebraConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6b75bb64a41b38d57c39381d0c285daaa89bf022` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x23d3a34c1723a83ece3db05405be0a9f78af47f3` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1757f1c224fc4cd99a5cb9d5db8f77122ad97a1e` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1ab39a79652929831e5333dc0edacb422d739b4e` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3120cb20646017e8cad24d3d0302ea2083827835` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | project_anchor | own_supporting | 0 | blast | unit-380641 | `0x013802305a25a286f2dc95950b6254f4c3ceb8fd` | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x073cce6afb187323eb704af107a9a728cc81f6c3` | ⚠️ Unaudited |
| Blade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3a439433dcb1cd6869dc23d3bedceff797322cbf` | ⚠️ Unaudited |
| Box | unknown | project_anchor | own_supporting | 0 | blast | unit-380643 | `0x194fa3066d3a44c5b74394298a317839c7b3e943` | ⚠️ Unaudited |
| Cherry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x75810655c507214da899b5ed46ef337b1505c333` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7fef67b108fc05e83a9bb8eb9f665791bf1c083b` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 0 | blast | unit-380656 | `0x8d2eb277a50c5aeef2c04ef4819055639f9bc168` | ⚠️ Unaudited |
| InspectorFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8e02ada26ecf813202735d0883977c098d2e4b5a` | ⚠️ Unaudited |
| Lens | unknown | project_anchor | own_supporting | 0 | blast | unit-380664 | `0xce54ab6c79c259bbdb8f4babea97f05f225e376f` | ⚠️ Unaudited |
| LinearBribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5045c448a06498c29694b7348ec5a5010b6946d9` | ⚠️ Unaudited |
| MarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0a3c4c899df38da088c93aea52cd8ce207b971da` | ⚠️ Unaudited |
| NFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7571058f0423d9bd24b798ecd4135c47f78dbf08` | ⚠️ Unaudited |
| NFTHolderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2641a05b44d5530fa44b1737415818174097377c` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4e3219980d3a4ed73c286cd6d828c6e54fa0094d` | ⚠️ Unaudited |
| OverflowICO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1bc5f075837e27fd1c02ed3742842dda5a2b4222` | ⚠️ Unaudited |
| PlainOverflowICO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x06ef68722da95ff858d1fbe6ac99be3e00e9a41f` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x96d1e789cb0992d15335a99af7e3531c6d2a6522` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4b1632b19a9d41cada6b78bced3205838534ed00` | ⚠️ Unaudited |
| SalaryPayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6c48d1d3ced5cd8d37e6626bb1cef02c696df14b` | ⚠️ Unaudited |
| SimpleAuthorizer | unknown | project_anchor | own_supporting | 0 | blast | unit-380642 | `0x06b1431b2cfc81fd1e428d6a4916fec395c9d9cb` | ⚠️ Unaudited |
| StableSwapPoolFactory | unknown | project_anchor | own_supporting | 0 | blast | unit-380650 | `0x5f0af33207aa4f62d678cdead8d2dd4e8e3a77f2` | ⚠️ Unaudited |
| SwapAuxillaryFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x94052fd2e9d6073eec85e9bede37cc71fc298620` | ⚠️ Unaudited |
| SwapFacet | unknown | project_anchor | own_supporting | 1 | blast | unit-380672 | `0x10f6b147d51f7578f760065df7f174c3bc95382c` | ⚠️ Unaudited |
| SwapHelperFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1e4f59a9bafd7c96dfce8c73a6a900b61d1727dd` | ⚠️ Unaudited |
| SwapHelperFacet2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0f8020ff5c2290b57db481f0c7db561c3e05cb7b` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x422f442e02df680336563f26a04e3754247db286` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x17fbdc4b95cb227e9700623f5cc381b0a9d2f3f0` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | blast | unit-380648 | `0x58534a65e415a2601092a769bb3ece09b17f8396` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ab5ba717cb20def2ed08bc03c8a3aa716b04997` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0x3cc69ccda8f0be8a6a52840862a17fb2615a64d7` | ⚠️ Unaudited |
| VeBlade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1f12e68869ff3432aac30217f0a129a240cfe07c` | ⚠️ Unaudited |
| VelocoreLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x11879da73f1edbe0f93d9cbaf1811c01d78a2ec7` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x57bda1e8d77e681a2be548c4ed5134283d4d54f9` | ⚠️ Unaudited |
| WETHConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5cf0552a0177ff00cb1e72b2390b2fd49606d2ff` | ⚠️ Unaudited |
| XYKPool | unknown | project_anchor | own_supporting | 0 | blast | unit-380668 | `0xf4c92048f10b261e89f70c6dc4e4e9bbac0f6ec3` | ⚠️ Unaudited |
| XYKPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x40f1dabface8ff25b3fe96e18ab426076dfac083` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x119adede46599e9743ffffc33945e6e48d9f21d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2f793c479d912c378dc42a5fe96487b097ba4875` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-380644 | `0x40c9b5ce413350bac9c5956abe4751d441a4b673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380646 | `0x4e9f4e54afe30a296abce56b438f6818adb61a4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380647 | `0x52de29cd9623891fab26d26fd3f6425d4db18856` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380649 | `0x59dcec4fc9ff2d22c4b501639711ef0c461d54cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-380651 | `0x7188675ad0b036775582a0066e168ca789e06235` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380652 | `0x7553b306773efa59e6f9676afe049d2d2abdfdd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380653 | `0x75cb3ec310d3d1e22637f79d61eab5d9abcd68bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380654 | `0x7adce99519db8b7d5a010e12e359ade0bbabb219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7d98803cfc3077370ba9bbb532c089c7635f191b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x825d2d376247b0737ff75a57a400e5488df4d557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x82eb3c8cc8f13fa1092779d70110f3c2623e5deb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380655 | `0x86ba05aa6d1e92fe0dc85bccbc7847370238fd22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380657 | `0x918d73b3b11b9f2de74e6dd6a3524f9bfb471ab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380658 | `0x969195b66f95d8b70fa414671b438134889ba348` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380659 | `0x9b6d09975e29d1888b98b83e31e72c00bc4d93c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380660 | `0xa0cfb41a88f197d75fe2d07c7576679c1624a40e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380661 | `0xa41dd8046c63a5195d7952dfcd83d1750acab565` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380662 | `0xa87dbf5082af26c9a6ab2b854e378f704638cca5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380663 | `0xcadaf1467098830a1c2db059de7943397c2a2215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380665 | `0xd1fedd031b92f50a50c05e2c45af1adb4cea82f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380666 | `0xdadb18dc78c3f2f94d8fd962f2ee13d7199740fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380667 | `0xe1d6a7498dcbca37dcb112018748c396ba749d66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380669 | `0xf8f2ab7c84cdb6ccaf1f699eb54ba30c36b95d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380670 | `0xfa108ccb7cad3d21be3c9ae7d97c751715adfc83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380671 | `0xffeecb1fe0eaaefee69d122f6b7a0368637cb593` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [- [Audits]()](https://bladeswap.gitbook.io/bladeswap/resources/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19575] - [Audits]() — no match: The document is a summary page listing multiple audits (Zokyo, Scalebit, Hacken) with dates and links, but does not contain the actual audit reports or scope sections listing specific contracts. No contract names are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0x013802305a25a286f2dc95950b6254f4c3ceb8fd` | AlgebraVaultFactoryStub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x194fa3066d3a44c5b74394298a317839c7b3e943` | Box | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x8d2eb277a50c5aeef2c04ef4819055639f9bc168` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xce54ab6c79c259bbdb8f4babea97f05f225e376f` | Lens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x06b1431b2cfc81fd1e428d6a4916fec395c9d9cb` | SimpleAuthorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x5f0af33207aa4f62d678cdead8d2dd4e8e3a77f2` | StableSwapPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x10f6b147d51f7578f760065df7f174c3bc95382c` | SwapFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xf4c92048f10b261e89f70c6dc4e4e9bbac0f6ec3` | XYKPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [19575] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
