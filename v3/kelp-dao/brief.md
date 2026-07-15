# Agentic Audit Brief: Kelp

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

- Project: Kelp (`kelp-dao`)
- Website: [https://kerneldao.com/kelp/](https://kerneldao.com/kelp/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, base-sepolia, berachain, blast, bsc, chain-17000, ethereum, hemi, hoodi, linea, manta-pacific, mode, optimism, scroll, sonic, swellchain, x-layer, zircuit, zksync-era
- Contract surface: 73 unique implementations (73 raw deployments)
- Coverage basis: 0/31 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kelp. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across arbitrum, base, base-sepolia, berachain, blast, bsc, chain-17000, ethereum, hemi, hoodi, linea, manta-pacific, mode, optimism, scroll, sonic, swellchain, x-layer, zircuit, zksync-era. Structural roles: 25 supporting, 6 core. 25 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: supporting (25), core (6)
- Contract kinds: abstract (23), contract (8)
- Detected standards: erc1967proxy (24), accesscontrol (3), erc165 (3), ownable (2)
- Frameworks: openzeppelin (30), openzeppelin-upgradeable (25)
- Upgradeable-pattern rows: 25

## Fork Analysis

0 of 31 contracts are derived from known codebases. 31 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ETH Mainnet Admin Safe / ProxyAdmin owner (`0xb9577e...fe0da2`, chain 1)
- L1Vault (Arbitrum) (`0x4b7b39...046be8`, chain 1)
- L1Vault (Base) (`0x48cdad...0a60f6`, chain 1)
- L1Vault (Linea) (`0x6224c5...6979ef`, chain 1)
- L1Vault (Optimism) (`0x83d4b4...0ab4e0`, chain 1)
- L1Vault (Scroll) (`0x32064a...8a36a6`, chain 1)
- L1Vault (zkSync) (`0xdadb65...efbf76`, chain 1)
- L1Vault and multichain rate-provider TimelockController (`0x10e563...deb869`, chain 1)
- L1Vault ProxyAdmin (`0x2155ab...b2b2c1`, chain 1)
- LRTConfig (`0x947cb4...d65ec7`, chain 1)
- LRTConverter (`0x598dbc...939dfa`, chain 1)
- LRTDepositPool (`0x036676...2d375d`, chain 1)
- LRTOracle (`0x349a73...70020d`, chain 1)
- LRTUnstakingVault (`0xc66830...8184ba`, chain 1)
- LRTWithdrawalManager (`0x62de59...65ec16`, chain 1)
- Manager TimelockController (`0x1fda02...08e674`, chain 1)
- NodeDelegator proxy 0 (`0xfc5619...f1cb85`, chain 1)
- NodeDelegator proxy 1 (Luganodes) (`0x395884...788946`, chain 1)
- NodeDelegator proxy 2 (P2P) (`0x79f172...082c32`, chain 1)
- NodeDelegator proxy 3 (`0x4c798c...712f83`, chain 1)
- NodeDelegator proxy 4 (`0xee5470...2d53d3`, chain 1)
- NodeDelegator proxy 5 (Allnodes/Pier2) (`0x049ea1...0fba7b`, chain 1)
- NodeDelegator proxy 6 (Luganodes) (`0x545d69...6d3ab9`, chain 1)
- ProxyAdmin (Admin Safe-owned) (`0x7550ea...8753fa`, chain 1)
- ProxyAdmin (Timelock-owned) (`0xb61e0e...59dc78`, chain 1)
- ProxyFactory (`0x673a66...41cee2`, chain 1)
- rsETH (`0xa1290d...99e5a7`, chain 1)
- RSETHMultiChainRateProvider (`0x078890...9d9ab6`, chain 1)
- RSETHRateProvider (`0xf1cccb...fd2c8a`, chain 1)
- TimelockController / ProxyAdmin owner (`0x49bd99...3135b1`, chain 1)
- UnlockedWithdrawalsInitializer (`0xa9b1ce...b35595`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 31; live-surface rows included: 31 (31 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 31/74 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/31 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 31 own, 42 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (19 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 31 of 73 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/31
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 73
- Raw deployments: 73
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

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ETH Mainnet Admin Safe / ProxyAdmin owner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388266 | `0xb9577e...fe0da2` | ⚠️ Unaudited |
| L1Vault (Arbitrum) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388248 | `0x4b7b39...046be8` | ⚠️ Unaudited |
| L1Vault (Base) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388246 | `0x48cdad...0a60f6` | ⚠️ Unaudited |
| L1Vault (Linea) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388253 | `0x6224c5...6979ef` | ⚠️ Unaudited |
| L1Vault (Optimism) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388258 | `0x83d4b4...0ab4e0` | ⚠️ Unaudited |
| L1Vault (Scroll) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388241 | `0x32064a...8a36a6` | ⚠️ Unaudited |
| L1Vault (zkSync) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388268 | `0xdadb65...efbf76` | ⚠️ Unaudited |
| L1Vault and multichain rate-provider TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388238 | `0x10e563...deb869` | ⚠️ Unaudited |
| L1Vault ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388240 | `0x2155ab...b2b2c1` | ⚠️ Unaudited |
| LRTConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388261 | `0x947cb4...d65ec7` | ⚠️ Unaudited |
| LRTConverter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388252 | `0x598dbc...939dfa` | ⚠️ Unaudited |
| LRTDepositPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388234 | `0x036676...2d375d` | ⚠️ Unaudited |
| LRTOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388243 | `0x349a73...70020d` | ⚠️ Unaudited |
| LRTUnstakingVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388267 | `0xc66830...8184ba` | ⚠️ Unaudited |
| LRTWithdrawalManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388254 | `0x62de59...65ec16` | ⚠️ Unaudited |
| Manager TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388239 | `0x1fda02...08e674` | ⚠️ Unaudited |
| NodeDelegator proxy 0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388273 | `0xfc5619...f1cb85` | ⚠️ Unaudited |
| NodeDelegator proxy 1 (Luganodes) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388244 | `0x395884...788946` | ⚠️ Unaudited |
| NodeDelegator proxy 2 (P2P) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388257 | `0x79f172...082c32` | ⚠️ Unaudited |
| NodeDelegator proxy 3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388249 | `0x4c798c...712f83` | ⚠️ Unaudited |
| NodeDelegator proxy 4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388271 | `0xee5470...2d53d3` | ⚠️ Unaudited |
| NodeDelegator proxy 5 (Allnodes/Pier2) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388235 | `0x049ea1...0fba7b` | ⚠️ Unaudited |
| NodeDelegator proxy 6 (Luganodes) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388251 | `0x545d69...6d3ab9` | ⚠️ Unaudited |
| ProxyAdmin (Admin Safe-owned) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388256 | `0x7550ea...8753fa` | ⚠️ Unaudited |
| ProxyAdmin (Timelock-owned) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388265 | `0xb61e0e...59dc78` | ⚠️ Unaudited |
| ProxyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388255 | `0x673a66...41cee2` | ⚠️ Unaudited |
| rsETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388263 | `0xa1290d...99e5a7` | ⚠️ Unaudited |
| RSETHMultiChainRateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388236 | `0x078890...9d9ab6` | ⚠️ Unaudited |
| RSETHRateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388272 | `0xf1cccb...fd2c8a` | ⚠️ Unaudited |
| TimelockController / ProxyAdmin owner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388247 | `0x49bd99...3135b1` | ⚠️ Unaudited |
| UnlockedWithdrawalsInitializer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388264 | `0xa9b1ce...b35595` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388237 | `0x07b96c...429473` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388242 | `0x322f2d...c36f78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388245 | `0x429554...7748b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388250 | `0x4e24a7...c98c62` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-388259 | `0x85d456...e98ef3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388260 | `0x92b4f5...e6e388` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388262 | `0x9d2fc9...31c4ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388269 | `0xdbc336...fb477c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388270 | `0xe80382...8374e4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-388274 | `0x043849...1fc44d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-388275 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-388276 | `0x68a9ec...4e2b72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-388294 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-388277 | `0xd75787...5099b1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | manta-pacific | unit-388278 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | unit-388285 | `0x1b3a9a...d5a0f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zksync-era | unit-388286 | `0x6be242...ab7236` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | swellchain | unit-388284 | `0xc3eacf...b09f58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-388305 | `0x1bc711...a45993` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388279 | `0x1b132c...58386f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388280 | `0x6aa9cb...0b5c13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388281 | `0xa0f9f6...41557b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388282 | `0xf8e4b7...cc1af7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388283 | `0xf9336f...7542d5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mode | unit-388287 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-388288 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-388289 | `0xe119d2...064a6b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hemi | unit-388290 | `0xc3eacf...b09f58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zircuit | unit-388291 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zircuit | unit-388292 | `0x571405...5e8659` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-388301 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-388302 | `0xb999ea...2fd577` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | berachain | unit-388303 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | unit-388304 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-388306 | `0x4ff0b2...abb61f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-388307 | `0xa321d2...1bbade` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | scroll | unit-388293 | `0x65421b...781b66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388295 | `0x0b4ace...919a6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388296 | `0x335a87...2ba371` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388297 | `0x44167e...9bd1a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388299 | `0xc11480...3cdfc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388300 | `0xeb26b4...e59c0b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 73 |

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
