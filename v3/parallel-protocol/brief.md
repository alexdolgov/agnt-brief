# Agentic Audit Brief: Parallel Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Parallel Protocol (`parallel-protocol`)
- Website: [https://parallel.best/](https://parallel.best/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, fraxtal, gnosis, hyperliquid, ink, linea, optimism, plasma, polygon, scroll, sei, sonic, unichain
- Contract surface: 155 unique implementations (242 raw deployments)
- Coverage basis: 0/108 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,623,734.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Parallel Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 143 contract row(s) across arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, fraxtal, gnosis, hyperliquid, ink, linea, optimism, plasma, polygon, scroll, sei, sonic, unichain. Structural roles: 71 unclassified, 59 supporting, 13 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 143
- Structural roles: unclassified (71), supporting (59), core (13)
- Contract kinds: contract (141), abstract (2)
- Detected standards: erc20 (16), multicall (16), ownable (16), pausable (16), erc1967proxy (5)
- Frameworks: openzeppelin (70), chainlink (17), layerzero (16), openzeppelin-upgradeable (5), permit2 (2)
- Upgradeable-pattern rows: 5

## Fork Analysis

18 of 166 contracts are derived from known codebases. 148 contracts have no detected origin.

### Forked Contracts

**BridgeableTokenP** (`0x78bb48...95823c`, chain 1)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x76a9a0...759dd5`, chain 10)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x7b54f3...420c72`, chain 56)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb...c699ec`, chain 100)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb...c699ec`, chain 130)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9afdb5...4a2ca9`, chain 137)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0xda8189...a377e6`, chain 146)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9e79ec...3a9ee7`, chain 252)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0xc3bef2...8048ed`, chain 999)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x7b54f3...420c72`, chain 1329)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x4dde0e...8531fc`, chain 8453)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9e79ec...3a9ee7`, chain 9745)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x4dde0e...8531fc`, chain 42161)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb...c699ec`, chain 43114)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9e79ec...3a9ee7`, chain 59144)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb...c699ec`, chain 80094)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb...c699ec`, chain 534352)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 92.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- lzReceiveSimulate(Origin,bytes32,bytes,address,bytes)
- setMsgInspector(address)

**Getters** (`0x90e4ae...a4ee43`, chain 146)
Origin: mimo (`0x120805...06a9d2`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d45b1...32cae4`, chain 1)
- UnnamedContract (`0x1bb46f...8ff97e`, chain 1)
- UnnamedContract (`0x41d589...547c80`, chain 1)
- UnnamedContract (`0x473868...d8e74f`, chain 1)
- UnnamedContract (`0x506ba3...7f3c5a`, chain 1)
- UnnamedContract (`0x6efedd...f262a2`, chain 1)
- UnnamedContract (`0x9b3a8f...e24459`, chain 1)
- UnnamedContract (`0xa19c5d...f7c025`, chain 1)
- UnnamedContract (`0xa360e5...41c2f5`, chain 1)
- UnnamedContract (`0xa9c21c...59181d`, chain 1)
- UnnamedContract (`0xad58fc...e51b0d`, chain 1)
- UnnamedContract (`0xc743be...e4a92f`, chain 1)
- UnnamedContract (`0xc9b627...ba0bfc`, chain 1)
- UnnamedContract (`0xd8cc2a...309862`, chain 1)
- UnnamedContract (`0xeb1974...489095`, chain 1)
- UnnamedContract (`0x3dde24...a9a6c3`, chain 43114)
- UnnamedContract (`0x9e0dcf...991277`, chain 534352)
- UnnamedContract (`0xcb3e56...de600b`, chain 534352)
- UnnamedContract (`0xe23b5d...05cf7b`, chain 534352)
- DiamondCut (`0xe9fe47...5990e8`, chain 146)
- DiamondCut (`0xa65821...1759df`, chain 999)
- DiamondCut (`0x154524...9295b1`, chain 8453)
- DiamondCut (`0x657acb...ce0052`, chain 43114)
- DiamondLoupe (`0x2b6c7c...6e4dec`, chain 146)
- DiamondLoupe (`0xbefbae...5f8826`, chain 999)
- DiamondLoupe (`0x24cef2...13d3aa`, chain 8453)
- DiamondLoupe (`0x23d491...2ba95d`, chain 43114)
- DiamondProxy (`0xbefbae...5f8826`, chain 146)
- DiamondProxy (`0x125030...0f1707`, chain 999)
- DiamondProxy (`0xc3bef2...8048ed`, chain 8453)
- DiamondProxy (`0x41d589...547c80`, chain 43114)
- ERC1967Proxy (`0x3ebe33...8e54d9`, chain 10)
- ERC1967Proxy (`0x90337e...348545`, chain 10)
- ERC1967Proxy (`0x048c4e...133d5c`, chain 56)
- ERC1967Proxy (`0xc0e62f...4fe3fa`, chain 56)
- ERC1967Proxy (`0x9e0dcf...991277`, chain 100)
- ERC1967Proxy (`0x9ee196...f26aa4`, chain 100)
- ERC1967Proxy (`0x9e0dcf...991277`, chain 130)
- ERC1967Proxy (`0x9ee196...f26aa4`, chain 130)
- ERC1967Proxy (`0x125030...0f1707`, chain 137)
- ERC1967Proxy (`0xc15fd0...48da5f`, chain 137)
- ERC1967Proxy (`0x08417c...c3f182`, chain 146)
- ERC1967Proxy (`0x2cb56d...e885e7`, chain 146)
- ERC1967Proxy (`0xe8a3da...77517b`, chain 146)
- ERC1967Proxy (`0x46b053...e3faf2`, chain 252)
- ERC1967Proxy (`0x8fcf91...4140f3`, chain 252)
- ERC1967Proxy (`0x154524...9295b1`, chain 999)
- ERC1967Proxy (`0x9b3a8f...e24459`, chain 999)
- ERC1967Proxy (`0xbe65f0...57d588`, chain 999)
- ERC1967Proxy (`0x048c4e...133d5c`, chain 1329)
- ERC1967Proxy (`0xc0e62f...4fe3fa`, chain 1329)
- ERC1967Proxy (`0x08417c...c3f182`, chain 8453)
- ERC1967Proxy (`0x472ed5...e3e7e7`, chain 8453)
- ERC1967Proxy (`0x76a9a0...759dd5`, chain 8453)
- ERC1967Proxy (`0x46b053...e3faf2`, chain 9745)
- ERC1967Proxy (`0xc2f8b5...abcb8f`, chain 9745)
- ERC1967Proxy (`0x08417c...c3f182`, chain 42161)
- ERC1967Proxy (`0x76a9a0...759dd5`, chain 42161)
- ERC1967Proxy (`0x9d92c2...8ed3e0`, chain 43114)
- ERC1967Proxy (`0x9e0dcf...991277`, chain 43114)
- ERC1967Proxy (`0x9ee196...f26aa4`, chain 43114)
- ERC1967Proxy (`0x46b053...e3faf2`, chain 59144)
- ERC1967Proxy (`0x8fcf91...4140f3`, chain 59144)
- ERC1967Proxy (`0x9e0dcf...991277`, chain 80094)
- ERC1967Proxy (`0x9ee196...f26aa4`, chain 80094)
- ERC1967Proxy (`0x9ee196...f26aa4`, chain 534352)
- FlashParallelToken (`0x4def53...1eda14`, chain 10)
- FlashParallelToken (`0x9ffacb...c699ec`, chain 56)
- FlashParallelToken (`0xe23b5d...05cf7b`, chain 100)
- FlashParallelToken (`0xe23b5d...05cf7b`, chain 130)
- FlashParallelToken (`0x09f396...50ab72`, chain 137)
- FlashParallelToken (`0x4dde0e...8531fc`, chain 146)
- FlashParallelToken (`0x10eb3f...1b539b`, chain 252)
- FlashParallelToken (`0x3997f0...2298d7`, chain 999)
- FlashParallelToken (`0x9ffacb...c699ec`, chain 1329)
- FlashParallelToken (`0xb3dbec...26746c`, chain 8453)
- FlashParallelToken (`0x10eb3f...1b539b`, chain 9745)
- FlashParallelToken (`0xb3dbec...26746c`, chain 42161)
- FlashParallelToken (`0xe23b5d...05cf7b`, chain 43114)
- FlashParallelToken (`0x10eb3f...1b539b`, chain 59144)
- FlashParallelToken (`0xe23b5d...05cf7b`, chain 80094)
- GenericHarvester (`0x36da06...12636c`, chain 1)
- GenericHarvester (`0x120805...06a9d2`, chain 146)
- GenericHarvester (`0x57770c...db7e0e`, chain 999)
- GenericHarvester (`0xca43ec...6b410a`, chain 8453)
- GenericHarvester (`0x0d45b1...32cae4`, chain 43114)
- Getters (`0x120805...06a9d2`, chain 999)
- Getters (`0xbe65f0...57d588`, chain 8453)
- Getters (`0xf6cc47...e22dbb`, chain 43114)
- ParallelAccessManager (`0x94ea88...355f7a`, chain 1)
- ParallelAccessManager (`0x0e4e7c...debf46`, chain 10)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 56)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 100)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 130)
- ParallelAccessManager (`0x7df74b...6e2811`, chain 137)
- ParallelAccessManager (`0x8efb3d...094b78`, chain 146)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 252)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 999)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 1329)
- ParallelAccessManager (`0x0e4e7c...debf46`, chain 8453)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 9745)
- ParallelAccessManager (`0x0e4e7c...debf46`, chain 42161)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 43114)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 59144)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 80094)
- ParallelAccessManager (`0xfd28f1...85998e`, chain 534352)
- Redeemer (`0xe5c82b...032cc8`, chain 146)
- Redeemer (`0xf92ed9...bdf594`, chain 999)
- Redeemer (`0xe9fe47...5990e8`, chain 8453)
- Redeemer (`0x6efedd...f262a2`, chain 43114)
- RewardHandler (`0xfb2d07...91e3f7`, chain 146)
- RewardHandler (`0xa5d9ca...5cbd18`, chain 999)
- RewardHandler (`0x2b6c7c...6e4dec`, chain 8453)
- RewardHandler (`0x36da06...12636c`, chain 43114)
- SavingsNameable (`0xae2fb6...403e2e`, chain 146)
- SavingsNameable (`0x769f53...d400fd`, chain 999)
- SavingsNameable (`0xa65821...1759df`, chain 8453)
- SettersGovernor (`0xc3bef2...8048ed`, chain 146)
- SettersGovernor (`0x472ed5...e3e7e7`, chain 999)
- SettersGovernor (`0x90e4ae...a4ee43`, chain 8453)
- SettersGovernor (`0x5beada...5013a2`, chain 43114)
- SettersGuardian (`0xca43ec...6b410a`, chain 146)
- SettersGuardian (`0xe5c82b...032cc8`, chain 8453)
- SettersGuardian (`0xbbc90e...43fe84`, chain 43114)
- Swapper (`0xa65821...1759df`, chain 146)
- Swapper (`0xfb2d07...91e3f7`, chain 8453)
- Swapper (`0x57265a...ac1490`, chain 43114)
- TokenP (`0xe8a2d8...322135`, chain 10)
- TokenP (`0x411dc6...c783bd`, chain 56)
- TokenP (`0xcb3e56...de600b`, chain 100)
- TokenP (`0xcb3e56...de600b`, chain 130)
- TokenP (`0xfefc86...49c9bc`, chain 137)
- TokenP (`0xb3dbec...26746c`, chain 146)
- TokenP (`0x35c632...e0f1c7`, chain 252)
- TokenP (`0x24cef2...13d3aa`, chain 999)
- TokenP (`0x411dc6...c783bd`, chain 1329)
- TokenP (`0x3ebe33...8e54d9`, chain 8453)
- TokenP (`0x0e4e7c...debf46`, chain 9745)
- TokenP (`0x3ebe33...8e54d9`, chain 42161)
- TokenP (`0xcb3e56...de600b`, chain 43114)
- TokenP (`0x35c632...e0f1c7`, chain 59144)
- TokenP (`0xcb3e56...de600b`, chain 80094)
- UnnamedContract (`0x9e0dcf...991277`, chain 57073)
- UnnamedContract (`0x9ee196...f26aa4`, chain 57073)
- UnnamedContract (`0x9ffacb...c699ec`, chain 57073)
- UnnamedContract (`0xcb3e56...de600b`, chain 57073)
- UnnamedContract (`0xe23b5d...05cf7b`, chain 57073)
- UnnamedContract (`0xfd28f1...85998e`, chain 57073)

## Contract Surface Quality

- Logic-topography rows: 143; live-surface rows included: 143 (143 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 132/132 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/108 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 132 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 37
- Confirmed-live implementations: 132 of 155 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/125
- Verified + Unaudited implementations: 125
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 155
- Raw deployments: 242
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (125)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 12 deployments: ethereum `0x5208f5...c4ca3f`; ethereum `0x624615...815bfb`; ethereum `0x74e3f9...f60e30`; ethereum `0x86afa5...9668e9`; ethereum `0xd4dee6...c838eb`; ethereum `0xe0a86c...5022b2`; polygon `0x1b03d0...583342`; polygon `0x431132...32273b`; polygon `0x5e6c85...f2be85`; polygon `0x7e6bc0...d0a433`; polygon `0x917b9d...51afd7`; polygon `0xe462df...6bc9a8` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-251294 | `0x78bb48...95823c` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-251306 | `0x76a9a0...759dd5` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-251347 | `0x7b54f3...420c72` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-251307 | `0x9ffacb...c699ec` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-251309 | `0x9ffacb...c699ec` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-251314 | `0x9afdb5...4a2ca9` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-251321 | `0xda8189...a377e6` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | fraxtal | unit-251325 | `0x9e79ec...3a9ee7` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-251380 | `0xc3bef2...8048ed` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | sei | unit-251311 | `0x7b54f3...420c72` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | base | unit-251363 | `0x4dde0e...8531fc` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | plasma | unit-251369 | `0x9e79ec...3a9ee7` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-251328 | `0x4dde0e...8531fc` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-251337 | `0x9ffacb...c699ec` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-251355 | `0x9e79ec...3a9ee7` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-251357 | `0x9ffacb...c699ec` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-251343 | `0x9ffacb...c699ec` | ⚠️ Unaudited |
| DiamondCut | unknown | project_anchor | own_supporting | 0 | sonic | unit-251323 | `0xe9fe47...5990e8` | ⚠️ Unaudited |
| DiamondCut | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251377 | `0xa65821...1759df` | ⚠️ Unaudited |
| DiamondCut | unknown | project_anchor | own_supporting | 0 | base | unit-251360 | `0x154524...9295b1` | ⚠️ Unaudited |
| DiamondCut | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251335 | `0x657acb...ce0052` | ⚠️ Unaudited |
| DiamondInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 5 deployments: sonic `0xbe65f0...57d588`; hyperliquid `0x056566...cc2c3f`; hyperliquid `0x8b8997...7edaf1`; base `0x3997f0...2298d7`; avalanche `0x506ba3...7f3c5a` | ⚠️ Unaudited |
| DiamondLoupe | unknown | project_anchor | own_supporting | 0 | sonic | unit-251316 | `0x2b6c7c...6e4dec` | ⚠️ Unaudited |
| DiamondLoupe | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251379 | `0xbefbae...5f8826` | ⚠️ Unaudited |
| DiamondLoupe | unknown | project_anchor | own_supporting | 0 | base | unit-251361 | `0x24cef2...13d3aa` | ⚠️ Unaudited |
| DiamondLoupe | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251330 | `0x23d491...2ba95d` | ⚠️ Unaudited |
| DiamondProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251372 | `0x125030...0f1707` | ⚠️ Unaudited |
| DiamondProxy | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251332 | `0x41d589...547c80` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-251342 | `0x9ee196...f26aa4` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | optimism | unit-251383 | 2 deployments: optimism `0x3ebe33...8e54d9`; optimism `0x4def53...1eda14` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-251405 | 2 deployments: bsc `0x9ffacb...c699ec`; bsc `0xc0e62f...4fe3fa` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | gnosis | unit-251386 | 2 deployments: gnosis `0x9e0dcf...991277`; gnosis `0xe23b5d...05cf7b` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | unichain | unit-251388 | 2 deployments: unichain `0x9e0dcf...991277`; unichain `0xe23b5d...05cf7b` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | polygon | unit-251391 | 2 deployments: polygon `0x09f396...50ab72`; polygon `0xc15fd0...48da5f` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | sonic | unit-251393 | 2 deployments: sonic `0x2cb56d...e885e7`; sonic `0x4dde0e...8531fc` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-251397 | 2 deployments: fraxtal `0x10eb3f...1b539b`; fraxtal `0x46b053...e3faf2` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-251417 | 2 deployments: hyperliquid `0x154524...9295b1`; hyperliquid `0x3997f0...2298d7` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | sei | unit-251390 | 2 deployments: sei `0x9ffacb...c699ec`; sei `0xc0e62f...4fe3fa` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | base | unit-251412 | 2 deployments: base `0x08417c...c3f182`; base `0xb3dbec...26746c` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | plasma | unit-251415 | 2 deployments: plasma `0x10eb3f...1b539b`; plasma `0x46b053...e3faf2` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-251400 | 2 deployments: arbitrum `0x08417c...c3f182`; arbitrum `0xb3dbec...26746c` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | avalanche | unit-251403 | 2 deployments: avalanche `0x9e0dcf...991277`; avalanche `0xe23b5d...05cf7b` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | linea | unit-251406 | 2 deployments: linea `0x10eb3f...1b539b`; linea `0x46b053...e3faf2` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | berachain | unit-251409 | 2 deployments: berachain `0x9e0dcf...991277`; berachain `0xe23b5d...05cf7b` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-251289 | `0x36da06...12636c` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-251315 | `0x120805...06a9d2` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-251375 | `0x57770c...db7e0e` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | base | unit-251366 | `0xca43ec...6b410a` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-251329 | `0x0d45b1...32cae4` | ⚠️ Unaudited |
| Getters | unknown | project_anchor | own_supporting | 0 | sonic | unit-251318 | `0x90e4ae...a4ee43` | ⚠️ Unaudited |
| Getters | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251371 | `0x120805...06a9d2` | ⚠️ Unaudited |
| Getters | unknown | project_anchor | own_supporting | 0 | base | unit-251365 | `0xbe65f0...57d588` | ⚠️ Unaudited |
| Getters | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251339 | `0xf6cc47...e22dbb` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x25fc7f...706f9b` | ⚠️ Unaudited |
| MainFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: polygon `0x90337e...348545`; polygon `0xb4af56...7cbaa1`; base `0x5d49c8...59b7e3` | ⚠️ Unaudited |
| MIMOVaultActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x1d5825...f4c595`; polygon `0x6ae3cf...d2d4fe`; polygon `0xa8b25d...c13546`; polygon `0xde91eb...02a434`; polygon `0xeb259d...b66d4b`; polygon `0xf6abf8...c51f58` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-251295 | `0x94ea88...355f7a` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | optimism | unit-251305 | `0x0e4e7c...debf46` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | bsc | unit-251348 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | gnosis | unit-251308 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | unichain | unit-251310 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | polygon | unit-251313 | `0x7df74b...6e2811` | ⚠️ Unaudited |
| ParallelAccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x8fcf91...4140f3`; sonic `0xa7eb07...55a75c` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | sonic | unit-251317 | `0x8efb3d...094b78` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | fraxtal | unit-251326 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-251382 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | sei | unit-251312 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | base | unit-251359 | `0x0e4e7c...debf46` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | plasma | unit-251370 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-251327 | `0x0e4e7c...debf46` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | avalanche | unit-251340 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | linea | unit-251356 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | berachain | unit-251358 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | scroll | unit-251346 | `0xfd28f1...85998e` | ⚠️ Unaudited |
| PeripheralMigrationContract | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c6885...5316cb` | ⚠️ Unaudited |
| PeripheralPRL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: optimism `0xfd28f1...85998e`; polygon `0x7790dd...2d5948`; sonic `0xfd28f1...85998e`; base `0xfd28f1...85998e`; arbitrum `0xfd28f1...85998e` | ⚠️ Unaudited |
| Redeemer | unknown | project_anchor | own_supporting | 0 | sonic | unit-251322 | `0xe5c82b...032cc8` | ⚠️ Unaudited |
| Redeemer | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251381 | `0xf92ed9...bdf594` | ⚠️ Unaudited |
| Redeemer | unknown | project_anchor | own_supporting | 0 | base | unit-251368 | `0xe9fe47...5990e8` | ⚠️ Unaudited |
| Redeemer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251336 | `0x6efedd...f262a2` | ⚠️ Unaudited |
| RewardHandler | unknown | project_anchor | own_supporting | 0 | sonic | unit-251324 | `0xfb2d07...91e3f7` | ⚠️ Unaudited |
| RewardHandler | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251376 | `0xa5d9ca...5cbd18` | ⚠️ Unaudited |
| RewardHandler | unknown | project_anchor | own_supporting | 0 | base | unit-251362 | `0x2b6c7c...6e4dec` | ⚠️ Unaudited |
| RewardHandler | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251331 | `0x36da06...12636c` | ⚠️ Unaudited |
| RewardMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: polygon `0x7b54f3...420c72`; base `0x13e867...41a96b` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | sonic | unit-251395 | 2 deployments: sonic `0xae2fb6...403e2e`; sonic `0xe8a3da...77517b` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-251418 | 2 deployments: hyperliquid `0x769f53...d400fd`; hyperliquid `0x9b3a8f...e24459` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | base | unit-251411 | 2 deployments: base `0x472ed5...e3e7e7`; base `0xa65821...1759df` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | avalanche | unit-251401 | 2 deployments: avalanche `0x3dde24...a9a6c3`; avalanche `0x9d92c2...8ed3e0` | ⚠️ Unaudited |
| SavingsNameable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x645fea...25884d` | ⚠️ Unaudited |
| SettersGovernor | governance | project_anchor | own_supporting | 0 | sonic | unit-251319 | `0xc3bef2...8048ed` | ⚠️ Unaudited |
| SettersGovernor | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251374 | `0x472ed5...e3e7e7` | ⚠️ Unaudited |
| SettersGovernor | governance | project_anchor | own_supporting | 0 | base | unit-251364 | `0x90e4ae...a4ee43` | ⚠️ Unaudited |
| SettersGovernor | governance | project_anchor | own_supporting | 0 | avalanche | unit-251334 | `0x5beada...5013a2` | ⚠️ Unaudited |
| SettersGuardian | governance | project_anchor | own_supporting | 0 | sonic | unit-251320 | `0xca43ec...6b410a` | ⚠️ Unaudited |
| SettersGuardian | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251378 | `0xae2fb6...403e2e` | ⚠️ Unaudited |
| SettersGuardian | governance | project_anchor | own_supporting | 0 | base | unit-251367 | `0xe5c82b...032cc8` | ⚠️ Unaudited |
| SettersGuardian | governance | project_anchor | own_supporting | 0 | avalanche | unit-251338 | `0xbbc90e...43fe84` | ⚠️ Unaudited |
| SideChainFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2f77c2...908574`; avalanche `0x7d2c6c...4907c5` | ⚠️ Unaudited |
| sPRL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0xead729...1b5901`; polygon `0xdb7be3...aa9475`; sonic `0x7df74b...6e2811`; base `0x01fa35...922e48`; base `0xefc130...c4d2ce` | ⚠️ Unaudited |
| sPRL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8a2d8...322135` | ⚠️ Unaudited |
| sPRL2V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb22f5e...a00e24` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 1 | sonic | unit-251394 | 2 deployments: sonic `0xa65821...1759df`; sonic `0xbefbae...5f8826` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251373 | `0x1b2741...1b5179` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 1 | base | unit-251413 | 2 deployments: base `0xc3bef2...8048ed`; base `0xfb2d07...91e3f7` | ⚠️ Unaudited |
| Swapper | adapter | project_anchor | own_supporting | 0 | avalanche | unit-251333 | `0x57265a...ac1490` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | optimism | unit-251384 | 2 deployments: optimism `0x90337e...348545`; optimism `0xe8a2d8...322135` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | bsc | unit-251404 | 2 deployments: bsc `0x048c4e...133d5c`; bsc `0x411dc6...c783bd` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | gnosis | unit-251385 | 2 deployments: gnosis `0x9ee196...f26aa4`; gnosis `0xcb3e56...de600b` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | unichain | unit-251387 | 2 deployments: unichain `0x9ee196...f26aa4`; unichain `0xcb3e56...de600b` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | polygon | unit-251392 | 2 deployments: polygon `0x125030...0f1707`; polygon `0xfefc86...49c9bc` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | sonic | unit-251396 | 2 deployments: sonic `0x08417c...c3f182`; sonic `0xb3dbec...26746c` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-251398 | 2 deployments: fraxtal `0x35c632...e0f1c7`; fraxtal `0x8fcf91...4140f3` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-251416 | 2 deployments: hyperliquid `0x24cef2...13d3aa`; hyperliquid `0xbe65f0...57d588` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | sei | unit-251389 | 2 deployments: sei `0x048c4e...133d5c`; sei `0x411dc6...c783bd` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | base | unit-251410 | 2 deployments: base `0x3ebe33...8e54d9`; base `0x76a9a0...759dd5` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | plasma | unit-251414 | 2 deployments: plasma `0x0e4e7c...debf46`; plasma `0xc2f8b5...abcb8f` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-251399 | 2 deployments: arbitrum `0x3ebe33...8e54d9`; arbitrum `0x76a9a0...759dd5` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | avalanche | unit-251402 | 2 deployments: avalanche `0x9ee196...f26aa4`; avalanche `0xcb3e56...de600b` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | linea | unit-251407 | 2 deployments: linea `0x35c632...e0f1c7`; linea `0x8fcf91...4140f3` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | berachain | unit-251408 | 2 deployments: berachain `0x9ee196...f26aa4`; berachain `0xcb3e56...de600b` | ⚠️ Unaudited |
| VaultsCore | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 13 deployments: ethereum `0x173ae6...8c674b`; ethereum `0x4fbb33...20cd46`; ethereum `0x68e88c...509672`; ethereum `0x78c48a...a920e6`; ethereum `0x917b9d...51afd7`; ethereum `0xe26348...f93204`; polygon `0x0a9202...1b400f`; polygon `0x6cffe4...acd8c5`; polygon `0x78c48a...a920e6`; polygon `0x9912c1...11a172`; polygon `0xc0459e...16c1a4`; polygon `0xcababc...5e6e5f`; polygon `0xfaee16...6b5711` | ⚠️ Unaudited |
| VaultsCoreState | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x5362a6...e3de64`; ethereum `0x963d98...745249`; ethereum `0xdb7553...06386f`; polygon `0x02c69c...6f25d8`; polygon `0x0f3acb...662b48`; polygon `0xfad382...81f346` | ⚠️ Unaudited |
| VaultsV2Feed | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0xd8cc2a...309862`; sei `0xeb1974...489095` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251287 | `0x0d45b1...32cae4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251288 | `0x1bb46f...8ff97e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251290 | `0x41d589...547c80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251291 | `0x473868...d8e74f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251292 | `0x506ba3...7f3c5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251293 | `0x6efedd...f262a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251296 | `0x9b3a8f...e24459` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251297 | `0xa19c5d...f7c025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251298 | `0xa360e5...41c2f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251299 | `0xa9c21c...59181d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251300 | `0xad58fc...e51b0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251301 | `0xc743be...e4a92f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251302 | `0xc9b627...ba0bfc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251303 | `0xd8cc2a...309862` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251304 | `0xeb1974...489095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x098e37...02d8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e7733...2c64ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4dee6...c838eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xf6abf8...c51f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xca43ec...6b410a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa360e5...41c2f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251349 | `0x9e0dcf...991277` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251350 | `0x9ee196...f26aa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251351 | `0x9ffacb...c699ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251352 | `0xcb3e56...de600b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251353 | `0xe23b5d...05cf7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251354 | `0xfd28f1...85998e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251341 | `0x9e0dcf...991277` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251344 | `0xcb3e56...de600b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251345 | `0xe23b5d...05cf7b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [certik.pdf](https://raw.githubusercontent.com/code-423n4/2022-04-mimo/b18670f44d595483df2c0f76d1c57a7bfbfbc083/core/audits/certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [ten-x-titan.pdf](https://certificate.quantstamp.com/full/ten-x-titan.pdf) | Quantstamp | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [Parallel Protocol - Zenith Audit Report.pdf](https://raw.githubusercontent.com/parallel-protocol/parallel-prl/dba8cdcac982a9b59006730cd890870bfc807e15/docs/audits/Parallel%20Protocol%20-%20Zenith%20Audit%20Report.pdf) | Guardian | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf](https://raw.githubusercontent.com/parallel-protocol/parallel-prl/dba8cdcac982a9b59006730cd890870bfc807e15/docs/audits/Bailsec%20-%20Parallel%20Protocol%20-%20PRL%20Token%20-%20Final%20Report%20-%20January%202025.pdf) | Guardian | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf](https://raw.githubusercontent.com/parallel-protocol/bridging-module/ad58d439a5e0cae78fa7e53aa0698347bd83b921/docs/audits/Bailsec%20-%20Parallel%20Bridge%20-%20BridgeableToken%20-%20Final%20Report%20-%20December%202024.pdf) | Guardian | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2686] certik.pdf — no match: No reason recorded
- [2688] ten-x-titan.pdf — no match: No reason recorded
- [11981] Parallel Protocol - Zenith Audit Report.pdf — no match: No reason recorded
- [11982] Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf — no match: No reason recorded
- [11983] Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| certik.pdf | AddressProvider | unmatched — not counted | — | — | no |
| certik.pdf | AddressProviderV1 | unmatched — not counted | — | — | no |
| certik.pdf | ConfigProvider | unmatched — not counted | — | — | no |
| certik.pdf | ConfigProviderV1 | unmatched — not counted | — | — | no |
| certik.pdf | DemandMiner | unmatched — not counted | — | — | no |
| certik.pdf | FeeDistributor | unmatched — not counted | — | — | no |
| certik.pdf | FeeDistributorV1 | unmatched — not counted | — | — | no |
| certik.pdf | LiquidiationManager | unmatched — not counted | — | — | no |
| certik.pdf | MIMODistributor | unmatched — not counted | — | — | no |
| certik.pdf | PreUseAirdrop | unmatched — not counted | — | — | no |
| certik.pdf | PriceFeed | unmatched — not counted | — | — | no |
| certik.pdf | RepayVault | unmatched — not counted | — | — | no |
| certik.pdf | Upgrade | unmatched — not counted | — | — | no |
| certik.pdf | VaultsCore | unmatched — not counted | — | — | no |
| certik.pdf | VaultsCoreV1 | unmatched — not counted | — | — | no |
| certik.pdf | VaultsDataProvider | unmatched — not counted | — | — | no |
| certik.pdf | VaultsDataProviderV1 | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | AccessController | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | AddressProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | ConfigProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | EURX | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | FeeDistributor | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IAccessController | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IAddressProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IConfigProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IFeeDistributor | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | ILiquidationManager | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IPriceFeed | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IRatesManager | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | ISTABLEX | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IVaultsCore | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IVaultsDataProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | LiquidationManager | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | MathPow | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | PriceFeed | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | PriceFeedEUR | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | RatesManager | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | USDX | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | VaultsCore | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | VaultsDataProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | WadRayMath | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | MainFeeDistributor | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | PeripheralMigrationContract | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | PrincipalMigrationContract | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | RewardMerkleDistributor | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | SideChainFeeCollector | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | TimeLockPenaltyERC20 | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | sPRL1 | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | sPRL2 | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | Auctioneer | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | LockBox | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | MainFeeDistributor | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | OFT | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | OFTAdapter | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | OFTCore | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | PRL | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | PeripheralMigrationContract | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | PeripheralPRL | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | PrincipalMigrationContract | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | RewardMerkleDistributor | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | SideChainFeeCollector | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | TimeLockPenaltyERC20 | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | sPRL1 | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | sPRL2 | unmatched — not counted | — | — | no |
| Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf | BridgeableToken | unmatched — not counted | — | — | no |
| Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf | VaultsCoreState | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x78bb48...95823c` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x76a9a0...759dd5` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7b54f3...420c72` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9ffacb...c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x9ffacb...c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9afdb5...4a2ca9` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xda8189...a377e6` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x9e79ec...3a9ee7` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc3bef2...8048ed` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x7b54f3...420c72` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4dde0e...8531fc` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x9e79ec...3a9ee7` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4dde0e...8531fc` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9ffacb...c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9e79ec...3a9ee7` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x9ffacb...c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x9ffacb...c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe9fe47...5990e8` | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xa65821...1759df` | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x154524...9295b1` | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x657acb...ce0052` | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2b6c7c...6e4dec` | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xbefbae...5f8826` | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x24cef2...13d3aa` | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x23d491...2ba95d` | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x125030...0f1707` | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x41d589...547c80` | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3ebe33...8e54d9` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9ffacb...c699ec` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9e0dcf...991277` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x9e0dcf...991277` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x09f396...50ab72` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2cb56d...e885e7` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x10eb3f...1b539b` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x154524...9295b1` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x9ffacb...c699ec` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x08417c...c3f182` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x10eb3f...1b539b` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x08417c...c3f182` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9e0dcf...991277` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x10eb3f...1b539b` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x9e0dcf...991277` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x36da06...12636c` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x120805...06a9d2` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x57770c...db7e0e` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xca43ec...6b410a` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0d45b1...32cae4` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x90e4ae...a4ee43` | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x120805...06a9d2` | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbe65f0...57d588` | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xf6cc47...e22dbb` | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x94ea88...355f7a` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0e4e7c...debf46` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7df74b...6e2811` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8efb3d...094b78` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0e4e7c...debf46` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0e4e7c...debf46` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xfd28f1...85998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe5c82b...032cc8` | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xf92ed9...bdf594` | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe9fe47...5990e8` | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6efedd...f262a2` | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xfb2d07...91e3f7` | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xa5d9ca...5cbd18` | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2b6c7c...6e4dec` | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x36da06...12636c` | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xae2fb6...403e2e` | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x769f53...d400fd` | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x472ed5...e3e7e7` | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc3bef2...8048ed` | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x472ed5...e3e7e7` | SettersGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x90e4ae...a4ee43` | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5beada...5013a2` | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xca43ec...6b410a` | SettersGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xae2fb6...403e2e` | SettersGuardian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe5c82b...032cc8` | SettersGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xbbc90e...43fe84` | SettersGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa65821...1759df` | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x1b2741...1b5179` | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc3bef2...8048ed` | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x57265a...ac1490` | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x90337e...348545` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x048c4e...133d5c` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9ee196...f26aa4` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x9ee196...f26aa4` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x125030...0f1707` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x08417c...c3f182` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x35c632...e0f1c7` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x24cef2...13d3aa` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x048c4e...133d5c` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3ebe33...8e54d9` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x0e4e7c...debf46` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3ebe33...8e54d9` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9ee196...f26aa4` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x35c632...e0f1c7` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x9ee196...f26aa4` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 122 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 67 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2686] certik.pdf
- [2688] ten-x-titan.pdf
- [11981] Parallel Protocol - Zenith Audit Report.pdf
- [11982] Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf
- [11983] Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf

Fork inheritance lineage and inherited audits are included when available.
