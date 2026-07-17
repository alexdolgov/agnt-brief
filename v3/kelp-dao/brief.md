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

- ETH Mainnet Admin Safe / ProxyAdmin owner (`0xb9577e83a6d9a6de35047aa066e3758221fe0da2`, chain 1)
- L1Vault (Arbitrum) (`0x4b7b39793a84ab6eccda80795733480e7d046be8`, chain 1)
- L1Vault (Base) (`0x48cdad4c3c7a2f5818dab5eb08df7db5420a60f6`, chain 1)
- L1Vault (Linea) (`0x6224c582a0989cfecd232af28c68f446b46979ef`, chain 1)
- L1Vault (Optimism) (`0x83d4b497dbe3bd2d42e0f3ee5ab34f83e80ab4e0`, chain 1)
- L1Vault (Scroll) (`0x32064a427e8bdf59b14ac169d9835168328a36a6`, chain 1)
- L1Vault (zkSync) (`0xdadb65fb1fcc3d877d774e5e2b00013fe1efbf76`, chain 1)
- L1Vault and multichain rate-provider TimelockController (`0x10e5631320a6e7898f1b18aeade46acc81deb869`, chain 1)
- L1Vault ProxyAdmin (`0x2155ab0b399a71df8c464dfc1b02149b53b2b2c1`, chain 1)
- LRTConfig (`0x947cb49334e6571ccbfef1f1f1178d8469d65ec7`, chain 1)
- LRTConverter (`0x598dbcb99711e5577ff76ef4577417197b939dfa`, chain 1)
- LRTDepositPool (`0x036676389e48133b63a802f8635ad39e752d375d`, chain 1)
- LRTOracle (`0x349a73444b1a310bae67ef67973022020d70020d`, chain 1)
- LRTUnstakingVault (`0xc66830e2667bc740c0bed9a71f18b14b8c8184ba`, chain 1)
- LRTWithdrawalManager (`0x62de59c08eb5dae4b7e6f7a8cad3006d6965ec16`, chain 1)
- Manager TimelockController (`0x1fda02cf28f28a763d996ad5ee37b9f1b608e674`, chain 1)
- NodeDelegator proxy 0 (`0xfc561966ceaaa09f4d6cba4add54778c2bf1cb85`, chain 1)
- NodeDelegator proxy 1 (Luganodes) (`0x395884d1974a839702bcfcba176ac7871c788946`, chain 1)
- NodeDelegator proxy 2 (P2P) (`0x79f17234746344e0365d40be50d8d43db9082c32`, chain 1)
- NodeDelegator proxy 3 (`0x4c798c4653b1257d5149910523d7a6eed5712f83`, chain 1)
- NodeDelegator proxy 4 (`0xee5470e1519972c3ea95249d60ebd064af2d53d3`, chain 1)
- NodeDelegator proxy 5 (Allnodes/Pier2) (`0x049ea11d337f185b1aa910d98e8fbd991f0fba7b`, chain 1)
- NodeDelegator proxy 6 (Luganodes) (`0x545d69b99759e7b670df243b882700121d6d3ab9`, chain 1)
- ProxyAdmin (Admin Safe-owned) (`0x7550eaee86f649dc5cba74e92d3e2667b68753fa`, chain 1)
- ProxyAdmin (Timelock-owned) (`0xb61e0e39b6d4030c36a176f576aabe44bf59dc78`, chain 1)
- ProxyFactory (`0x673a669425457bcabeb247f56552a0fd8141cee2`, chain 1)
- rsETH (`0xa1290d69c65a6fe4df752f95823fae25cb99e5a7`, chain 1)
- RSETHMultiChainRateProvider (`0x0788906b19ba8f8d0e8a7015f0714df3179d9ab6`, chain 1)
- RSETHRateProvider (`0xf1cccba5558d31628216489a1435e068b1fd2c8a`, chain 1)
- TimelockController / ProxyAdmin owner (`0x49bd9989e31ad35b0a62c20be86335196a3135b1`, chain 1)
- UnlockedWithdrawalsInitializer (`0xa9b1ced1839ba07c4e8aaef45bb60c8b27b35595`, chain 1)

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
| ETH Mainnet Admin Safe / ProxyAdmin owner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388266 | `0xb9577e83a6d9a6de35047aa066e3758221fe0da2` | ⚠️ Unaudited |
| L1Vault (Arbitrum) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388248 | `0x4b7b39793a84ab6eccda80795733480e7d046be8` | ⚠️ Unaudited |
| L1Vault (Base) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388246 | `0x48cdad4c3c7a2f5818dab5eb08df7db5420a60f6` | ⚠️ Unaudited |
| L1Vault (Linea) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388253 | `0x6224c582a0989cfecd232af28c68f446b46979ef` | ⚠️ Unaudited |
| L1Vault (Optimism) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388258 | `0x83d4b497dbe3bd2d42e0f3ee5ab34f83e80ab4e0` | ⚠️ Unaudited |
| L1Vault (Scroll) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388241 | `0x32064a427e8bdf59b14ac169d9835168328a36a6` | ⚠️ Unaudited |
| L1Vault (zkSync) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388268 | `0xdadb65fb1fcc3d877d774e5e2b00013fe1efbf76` | ⚠️ Unaudited |
| L1Vault and multichain rate-provider TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388238 | `0x10e5631320a6e7898f1b18aeade46acc81deb869` | ⚠️ Unaudited |
| L1Vault ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388240 | `0x2155ab0b399a71df8c464dfc1b02149b53b2b2c1` | ⚠️ Unaudited |
| LRTConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388261 | `0x947cb49334e6571ccbfef1f1f1178d8469d65ec7` | ⚠️ Unaudited |
| LRTConverter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388252 | `0x598dbcb99711e5577ff76ef4577417197b939dfa` | ⚠️ Unaudited |
| LRTDepositPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388234 | `0x036676389e48133b63a802f8635ad39e752d375d` | ⚠️ Unaudited |
| LRTOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388243 | `0x349a73444b1a310bae67ef67973022020d70020d` | ⚠️ Unaudited |
| LRTUnstakingVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388267 | `0xc66830e2667bc740c0bed9a71f18b14b8c8184ba` | ⚠️ Unaudited |
| LRTWithdrawalManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388254 | `0x62de59c08eb5dae4b7e6f7a8cad3006d6965ec16` | ⚠️ Unaudited |
| Manager TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388239 | `0x1fda02cf28f28a763d996ad5ee37b9f1b608e674` | ⚠️ Unaudited |
| NodeDelegator proxy 0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388273 | `0xfc561966ceaaa09f4d6cba4add54778c2bf1cb85` | ⚠️ Unaudited |
| NodeDelegator proxy 1 (Luganodes) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388244 | `0x395884d1974a839702bcfcba176ac7871c788946` | ⚠️ Unaudited |
| NodeDelegator proxy 2 (P2P) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388257 | `0x79f17234746344e0365d40be50d8d43db9082c32` | ⚠️ Unaudited |
| NodeDelegator proxy 3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388249 | `0x4c798c4653b1257d5149910523d7a6eed5712f83` | ⚠️ Unaudited |
| NodeDelegator proxy 4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388271 | `0xee5470e1519972c3ea95249d60ebd064af2d53d3` | ⚠️ Unaudited |
| NodeDelegator proxy 5 (Allnodes/Pier2) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388235 | `0x049ea11d337f185b1aa910d98e8fbd991f0fba7b` | ⚠️ Unaudited |
| NodeDelegator proxy 6 (Luganodes) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388251 | `0x545d69b99759e7b670df243b882700121d6d3ab9` | ⚠️ Unaudited |
| ProxyAdmin (Admin Safe-owned) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388256 | `0x7550eaee86f649dc5cba74e92d3e2667b68753fa` | ⚠️ Unaudited |
| ProxyAdmin (Timelock-owned) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388265 | `0xb61e0e39b6d4030c36a176f576aabe44bf59dc78` | ⚠️ Unaudited |
| ProxyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388255 | `0x673a669425457bcabeb247f56552a0fd8141cee2` | ⚠️ Unaudited |
| rsETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388263 | `0xa1290d69c65a6fe4df752f95823fae25cb99e5a7` | ⚠️ Unaudited |
| RSETHMultiChainRateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388236 | `0x0788906b19ba8f8d0e8a7015f0714df3179d9ab6` | ⚠️ Unaudited |
| RSETHRateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388272 | `0xf1cccba5558d31628216489a1435e068b1fd2c8a` | ⚠️ Unaudited |
| TimelockController / ProxyAdmin owner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388247 | `0x49bd9989e31ad35b0a62c20be86335196a3135b1` | ⚠️ Unaudited |
| UnlockedWithdrawalsInitializer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388264 | `0xa9b1ced1839ba07c4e8aaef45bb60c8b27b35595` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388237 | `0x07b96cf1183c9bff2e43acf0e547a8c4e4429473` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388242 | `0x322f2d4bfe8280eeb713b7c51eeba42590c36f78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388245 | `0x429554411c8f0aceec899100d3aaccf2707748b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388250 | `0x4e24a7e8b276b8ed42124c9e09c811f3edc98c62` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-388259 | `0x85d456b2dff1fd8245387c0bfb64dfb700e98ef3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388260 | `0x92b4f5b9ffa1b5db3b976e89a75e87b332e6e388` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388262 | `0x9d2fc9287e1c3a1a814382b40aab13873031c4ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388269 | `0xdbc3363de051550d122d9c623cbaff441afb477c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388270 | `0xe8038228ff1aefd007d7a22c9f08ddaadf8374e4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-388274 | `0x043849686ee254ada46a432770e1a491491fc44d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-388275 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-388276 | `0x68a9ec5b93f04a60c77f486a664f283b2e4e2b72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-388294 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-388277 | `0xd75787ba9aba324420d522bda84c08c87e5099b1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | manta-pacific | unit-388278 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | unit-388285 | `0x1b3a9a689ba7555f9d7984d7ad4025574ed5a0f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zksync-era | unit-388286 | `0x6be2425c381eb034045b527780d2bf4e21ab7236` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | swellchain | unit-388284 | `0xc3eacf0612346366db554c991d7858716db09f58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-388305 | `0x1bc71130a0e39942a7658878169764bbd8a45993` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388279 | `0x1b132cbc40d35170d8c46614bc1c2282f458386f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388280 | `0x6aa9cb27581f266fd17895c7fb80cf22cf0b5c13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388281 | `0xa0f9f6d5d6ef60d80517adf3e8ab9d4e0a41557b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388282 | `0xf8e4b7b81dafd1c8642466ab1c12d37015cc1af7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388283 | `0xf9336f42a8c5ddde48e148208687444c707542d5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mode | unit-388287 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-388288 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-388289 | `0xe119d214a6efa7d3cf60e6e59481ede1b0064a6b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hemi | unit-388290 | `0xc3eacf0612346366db554c991d7858716db09f58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zircuit | unit-388291 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zircuit | unit-388292 | `0x571405d597091e8728d8240f558bac01275e8659` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-388301 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-388302 | `0xb999ea589e0a1cce9153601dac2d6e203c2fd577` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | berachain | unit-388303 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | unit-388304 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-388306 | `0x4ff0b2caefeed2906e96931ad74e265ee2abb61f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-388307 | `0xa321d2a72db265c04d5c1318ed69a719681bbade` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | scroll | unit-388293 | `0x65421ba909200b81640d98b979d07487c9781b66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388295 | `0x0b4acef96828f28bbebc6a0e5c5c6b2c84919a6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388296 | `0x335a87203f39e9134fbb336e73629bf0822ba371` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388297 | `0x44167e2db805feb0eca440f695dc0bf5679bd1a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388299 | `0xc114805227947248153478a10638d8e0e93cdfc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388300 | `0xeb26b4108d216e78d1ea4c136689d8c8f7e59c0b` | ❓ Unverified |

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
