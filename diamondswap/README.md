# Agentic Audit Brief: Diamondswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Diamondswap (`diamondswap`)
- Website: [https://diamondswap.com/exchange](https://diamondswap.com/exchange)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, base, bsc, ethereum, odyssey
- Contract surface: 75 unique implementations (75 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $132,537.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Diamondswap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7d57c45dc107497c5c5c0f544a84691d2b06bc83`, chain 153153)
- UnnamedContract (`0xeadbf63e6fed15b8b648177518b094fc142a00a8`, chain 153153)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 73 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 75 unique; 73 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 75
- Raw deployments: 75
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirDropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfda4f231efae3c88a9121970e1b408c5b862dbdc` | ⚠️ Unaudited |
| BasicAuth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a39d26641ed8c8061e8f58a73eff348345a5b2b` | ⚠️ Unaudited |
| CTOFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa8d16a2285613da39001b6f168e9e83135f3a34` | ⚠️ Unaudited |
| CTOInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36cadce52bbe76840a57aec4731444832026054a` | ⚠️ Unaudited |
| DefaultDiamondProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19ccc8e9796d278820c259f287c2ff5c42fc1b2f` | ⚠️ Unaudited |
| DiamondSwapV2FactoryFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9108ba9ff5570c31eb69fa039381e49dd036c150` | ⚠️ Unaudited |
| DiamondSwapV2FactoryInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e73154252484d67bad9966a44a32b45d9bc5c6b` | ⚠️ Unaudited |
| DiamondSwapV2RouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b48dbc21193d725bcea11a4ff9e2f8d7f0dbe67` | ⚠️ Unaudited |
| DiamondSwapV2RouterInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c3762fdaa608254f98a0071347ee471a504f14e` | ⚠️ Unaudited |
| DiamondSwapV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x80778a7b9d0e391bf45b9c7a76ee3cc9b4bc4637` | ⚠️ Unaudited |
| DYORFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa629d7e42f3041df983bf8011cc1d9b3229b156c` | ⚠️ Unaudited |
| DYORInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4428e82af311d8211a47f06b36f6cd433b02522` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66ab3d6a0fcec856a4d6ab709fe422d0c9332cc9` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07e0fd7588e9f1022f1bdbccfe16793792908e6c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x8b97db61c78b051d817e0cd226ecbfb1e4242a21` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e58120d59c3f18b8b456348eee4f712a4f5d308` | ⚠️ Unaudited |
| StakingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94cd5ba94c50fc5ed7ac889650dadff85110cc20` | ⚠️ Unaudited |
| StakingInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x792299d4e4473eb033051d71644a089d52f1f309` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94e656ddd2ec7f47154e10765ff5e664592bb4d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0xa4cbf1e40d8aaa011a667ae2082dde6b944e24bc` | ⚠️ Unaudited |
| VaultFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x530090b2ec1bbeb2fde9e47284af50e725353650` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05f0de5bd5888e93b911f6dc6985e9eb7931172b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x070a215b118358f39928c15d125b8e25955d0c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0825c8660bf8a413addc8f0ba26e11087a03a879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11a49eda4b944990a23a7841960173dc95b3a0ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a18fd656dc2b594f0a57a2a137c20c807d2b527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cc5cacf40db5f68e366ad2d7c633af857939acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ed97d65d790de76f0038719dde775f6a93fafd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x237a6f7b2515125f9040628a34f6507a1a804a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29586702a3702981b377ec746c89ed6e77f59dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x311ca10ff99fefac888a9af6000e79d740449f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39ae66ff6311975bd20150c905d8040e3a01c9ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4136c4d29eab2cc4f2bca3ca87efa54a17b7bbf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ea9935015f13f44b72a6439ddb500c790df4aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ed478abaca6c7fab9d11e4a067ae56dc0cbb71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4fae5ed7af6a272644766ab35e74f8b22eccb2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x518e01d6bc7f6725cd735a0c2a54a7757529d20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c3c0ac9dcbd106b62de82e2a6c70432f8ee6d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5cd69eb15fd06368afdefeba5f4c163f926fadfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6049cf04e150b684eb8f53c5e2d49282f799ebab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x687021c4649591f1387c2b71969fdb7e7eae2130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70e176afe72d78a47a7b51b97a9ab484ec5e4806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x75e1d8342ab1ce6140d4e1565ad4e1d957bb5d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a02ee111068fcb72f91a54a530da34d226d710d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8daab206ad0632d63f879b37ac710de0b183aa2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f8f40c902d6e6cb569fdc371c0df4755fc1877c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91d96db3fcefa42f3db79777883381a6441bbd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98a3d7c611f6da51b943d74d0b61529a7229931c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f9f68f1d17b98188fdcf6fa66ec64a49a30e01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4c710c5aee1dc6425ad72168c535b1507720811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9836c61137f6f89e82135b1498fd3804fad7a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb29828d5ed7106349388a727289093966ae19453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbef47af13eed742b1b118eaa340a2a55d82e3428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf3a2340221b9ead8fe0b6a1b2990e6e00dea092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc49dd3f970b306e3ac9bda48c66461b54729b92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc650b7c3593402f8791de874e49aaff268d045c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcaf0ae5815fe8d1ec67798d4b905f5182bf37e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd158e5df0c7f4e89a25432c82d283500cdd240c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1f3043ec487085344ed04eba3304c0a7756198e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3ae5edf1982045cc9b59bd9e140f8d3c171d5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6d352d1036a3f2045419143300b6f55da48ee4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9cc673d159ee93a5a2544f27d72be616a1dcecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc93aca9bf72ceb35d1f2cd305bd8335b5b88757` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd3669f371caf7270f475df36b1b587978c3dca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3762ac5a3547c2734590cb8a6e0cff3c690db84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe5910bc1b046dc05e3e8e03611144b7c63e843c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea4a487193c1326ba5e8a43257ef3d5e685566bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeaa05de8a7300e6baa8d05ce86d01140dd2d9374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed6e45a46e72a71173ffe595eac94ae6d1316807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf18a4bb1a6314d74c91534022fc77d0077e4a625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf7e5c739f4194068717b1b2d996404574f07346e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf993554969b5faeeab55243409bbc90a3c8497ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcc0f2263dabbc960ecd3d26cf884418260cfe8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | odyssey | unit-384062 | `0x7d57c45dc107497c5c5c0f544a84691d2b06bc83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | odyssey | unit-384063 | `0xeadbf63e6fed15b8b648177518b094fc142a00a8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 52
- Live contracts: 0
- Unknown liveness contracts: 52
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=52

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x05f0de5bd5888e93b911f6dc6985e9eb7931172b` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x070a215b118358f39928c15d125b8e25955d0c73` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x0825c8660bf8a413addc8f0ba26e11087a03a879` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x11a49eda4b944990a23a7841960173dc95b3a0ed` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x1a18fd656dc2b594f0a57a2a137c20c807d2b527` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x1cc5cacf40db5f68e366ad2d7c633af857939acf` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x1ed97d65d790de76f0038719dde775f6a93fafd6` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x237a6f7b2515125f9040628a34f6507a1a804a1a` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x29586702a3702981b377ec746c89ed6e77f59dcd` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x311ca10ff99fefac888a9af6000e79d740449f51` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x39ae66ff6311975bd20150c905d8040e3a01c9ab` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x4136c4d29eab2cc4f2bca3ca87efa54a17b7bbf1` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x4ea9935015f13f44b72a6439ddb500c790df4aa8` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x4ed478abaca6c7fab9d11e4a067ae56dc0cbb71d` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x4fae5ed7af6a272644766ab35e74f8b22eccb2ae` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x518e01d6bc7f6725cd735a0c2a54a7757529d20e` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x5c3c0ac9dcbd106b62de82e2a6c70432f8ee6d3d` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x5cd69eb15fd06368afdefeba5f4c163f926fadfa` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x6049cf04e150b684eb8f53c5e2d49282f799ebab` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x687021c4649591f1387c2b71969fdb7e7eae2130` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x70e176afe72d78a47a7b51b97a9ab484ec5e4806` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x75e1d8342ab1ce6140d4e1565ad4e1d957bb5d8e` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x7a02ee111068fcb72f91a54a530da34d226d710d` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x8daab206ad0632d63f879b37ac710de0b183aa2a` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x8f8f40c902d6e6cb569fdc371c0df4755fc1877c` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x91d96db3fcefa42f3db79777883381a6441bbd41` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x98a3d7c611f6da51b943d74d0b61529a7229931c` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0x9f9f68f1d17b98188fdcf6fa66ec64a49a30e01f` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xa4c710c5aee1dc6425ad72168c535b1507720811` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xa9836c61137f6f89e82135b1498fd3804fad7a12` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xb29828d5ed7106349388a727289093966ae19453` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xbef47af13eed742b1b118eaa340a2a55d82e3428` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xbf3a2340221b9ead8fe0b6a1b2990e6e00dea092` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xc49dd3f970b306e3ac9bda48c66461b54729b92d` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xc650b7c3593402f8791de874e49aaff268d045c6` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xcaf0ae5815fe8d1ec67798d4b905f5182bf37e18` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xcd158e5df0c7f4e89a25432c82d283500cdd240c` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xd1f3043ec487085344ed04eba3304c0a7756198e` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xd3ae5edf1982045cc9b59bd9e140f8d3c171d5d5` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xd6d352d1036a3f2045419143300b6f55da48ee4a` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xd9cc673d159ee93a5a2544f27d72be616a1dcecb` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xdc93aca9bf72ceb35d1f2cd305bd8335b5b88757` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xdd3669f371caf7270f475df36b1b587978c3dca7` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xe3762ac5a3547c2734590cb8a6e0cff3c690db84` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xe5910bc1b046dc05e3e8e03611144b7c63e843c8` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xea4a487193c1326ba5e8a43257ef3d5e685566bd` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xeaa05de8a7300e6baa8d05ce86d01140dd2d9374` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xed6e45a46e72a71173ffe595eac94ae6d1316807` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xf18a4bb1a6314d74c91534022fc77d0077e4a625` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xf7e5c739f4194068717b1b2d996404574f07346e` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xf993554969b5faeeab55243409bbc90a3c8497ca` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |
| unverified unclassified | UnnamedContract<br>`0xfcc0f2263dabbc960ecd3d26cf884418260cfe8d` | non_address_book | unknown | unknown | unverified | n/a | `0x47b3649a813db8a13e04088e9d4560369588384e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DiamondSwap_Security_Audit_Report.pdf (also discovered via alternate URL)](https://shellboxes.com/audit/reports/DiamondSwap_Security_Audit_Report.pdf) | ShellBoxes | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Manual audit seed](https://shellboxes.com/cases/diamondswap) | unknown | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21382] DiamondSwap_Security_Audit_Report.pdf — no match: Scope files listed in Section 7 (ScopeFiles) for both audit and re-audit. Audit date from cover page: Nov 12th, 2022 - Nov 29th, 2022, using end date.
- [24046] Manual audit seed — no match: The report does not list specific contract files or names; only 'DiamondSwap' is mentioned as the system. The audit date range is Nov 12-29, 2022, so the end date is used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DiamondSwap_Security_Audit_Report.pdf | DiamondSwap | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | manyToMany | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | ownedPool | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | ownedPoolContract | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | publicPool | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | publicPoolContract | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | DiamondEvents | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | DiamondSearch | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | DiamondStructs | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | UpdateDiamondStruct | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IDiamondContract | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IDiamondEvents | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IDiamondSwap | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IOwnedPoolContract | unmatched — not counted | — | listed in scope | no |
| DiamondSwap_Security_Audit_Report.pdf | IPublicPoolContract | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DiamondSwap | unmatched — not counted | — | mentioned as the main contract in the audit report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [21382] DiamondSwap_Security_Audit_Report.pdf
- [24046] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
