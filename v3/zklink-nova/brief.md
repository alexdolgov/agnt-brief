# Agentic Audit Brief: zkLink Nova

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 7 audit(s)
- Eligible audit results: 15 (7 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: zkLink Nova (`zklink-nova`)
- Website: [https://zklink.io](https://zklink.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, base-sepolia, blast, ethereum, linea, manta-pacific, mantle, optimism, optimism-sepolia, scroll, sepolia, zklink-nova, zksync-era
- Contract surface: 97 unique implementations (97 raw deployments)
- Coverage basis: 3/13 confirmed own live verified implementations (23.1%); conservative 23.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,436,392.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for zkLink Nova. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, arbitrum-sepolia, base, base-sepolia, blast, ethereum, linea, manta-pacific, mantle, optimism, optimism-sepolia, scroll, sepolia, zklink-nova, zksync-era. Structural roles: 6 supporting, 4 core, 3 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: supporting (6), core (4), unclassified (3)
- Contract kinds: contract (13)
- Detected standards: erc1967proxy (3), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 53 contracts are derived from known codebases. 53 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ee09a...4c6002`, chain 1)
- UnnamedContract (`0x273d59...7583c0`, chain 1)
- UnnamedContract (`0x41faf4...bb1158`, chain 1)
- UnnamedContract (`0x4eea93...1d2b7e`, chain 1)
- UnnamedContract (`0x5fd9f7...e015cf`, chain 1)
- UnnamedContract (`0x649dfa...7cd82d`, chain 1)
- UnnamedContract (`0x668e8f...af3026`, chain 1)
- UnnamedContract (`0x803460...f2809b`, chain 1)
- UnnamedContract (`0x83bc73...c0055c`, chain 1)
- UnnamedContract (`0x986c90...388e92`, chain 1)
- UnnamedContract (`0xad16ed...44b6b6`, chain 1)
- UnnamedContract (`0xde1ce7...3be269`, chain 1)
- UnnamedContract (`0xecd189...c942ab`, chain 1)
- UnnamedContract (`0xfc385a...0fcede`, chain 1)
- UnnamedContract (`0x46c8d0...a3fa1b`, chain 10)
- UnnamedContract (`0x5bd512...326eaa`, chain 10)
- UnnamedContract (`0xad5d72...25b51c`, chain 10)
- UnnamedContract (`0xab3ddb...bf2d08`, chain 324)
- UnnamedContract (`0xafe8c7...83273a`, chain 324)
- UnnamedContract (`0xc203a2...182535`, chain 324)
- UnnamedContract (`0x62351b...a5f2b2`, chain 5000)
- UnnamedContract (`0x1054ff...c69011`, chain 8453)
- UnnamedContract (`0x80d12a...1674d5`, chain 8453)
- UnnamedContract (`0xe473ce...7264dd`, chain 8453)
- UnnamedContract (`0x7bd79d...18483a`, chain 42161)
- UnnamedContract (`0xfb0ad0...8f5585`, chain 42161)
- UnnamedContract (`0xff73a1...d5420a`, chain 42161)
- UnnamedContract (`0x7b5780...e937db`, chain 59144)
- UnnamedContract (`0xef528a...7454ec`, chain 59144)
- UnnamedContract (`0x29ba92...5078fd`, chain 81457)
- UnnamedContract (`0x3f64e2...e66af1`, chain 81457)
- UnnamedContract (`0x8df0c2...9f500b`, chain 81457)
- UnnamedContract (`0xd8428a...f1bce7`, chain 534352)
- UnnamedContract (`0x1a1a3b...464509`, chain 810180)
- UnnamedContract (`0x2f8a25...699059`, chain 810180)
- UnnamedContract (`0x8280a4...54f169`, chain 810180)
- UnnamedContract (`0x83fd59...5e1104`, chain 810180)
- UnnamedContract (`0xc967da...7af19e`, chain 810180)
- UnnamedContract (`0xda4aae...3af71f`, chain 810180)
- UnnamedContract (`0xf573fa...3cdeab`, chain 810180)
- AdminFacet (`0xce8e69...f35503`, chain 59144)
- DiamondProxy (`0x5cb18b...c5df05`, chain 59144)
- ERC1967Proxy (`0xd784d7...455657`, chain 169)
- ERC1967Proxy (`0xe946ab...ea39d0`, chain 169)
- ERC1967Proxy (`0x119b94...4fd1a2`, chain 534352)
- ExecutorFacet (`0x1b1928...7d1206`, chain 59144)
- GettersFacet (`0xb1d035...12e3cb`, chain 59144)
- MailboxFacet (`0x11bf5b...5780ba`, chain 59144)
- TransparentUpgradeableProxy (`0x44a65d...7168ff`, chain 169)
- TransparentUpgradeableProxy (`0x62ce24...e630f8`, chain 59144)
- TransparentUpgradeableProxy (`0x3c7c0e...db976c`, chain 534352)
- ValidatorTimelock (`0x509ff5...507e01`, chain 59144)
- Verifier (`0x902c38...400458`, chain 59144)

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 53/87 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/13 (23.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 53 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 53 of 97 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/13
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 40
- Unique implementations: 97
- Raw deployments: 97
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 15 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 23.1% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 3 | 23.1% | 2024-01 |
| ABDK | Tier 2 | 2 | 15.4% | 2024-07 |
| Secure3 | Tier 2 | 1 | 7.7% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | project_anchor | own_supporting | 1 | linea | unit-398455 | `0x5cb18b...c5df05` | ✅ Audited |
| L1ERC20Bridge | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-398456 | `0x62ce24...e630f8` | ✅ Audited |
| ValidatorTimelock | governance | project_anchor | own_supporting | 0 | linea | unit-398430 | `0x509ff5...507e01` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398434 | `0xce8e69...f35503` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | manta-pacific | unit-398407 | `0xd784d7...455657` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | manta-pacific | unit-398408 | `0xe946ab...ea39d0` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-398423 | `0x119b94...4fd1a2` | ⚠️ Unaudited |
| ExecutorFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398429 | `0x1b1928...7d1206` | ⚠️ Unaudited |
| GettersFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398433 | `0xb1d035...12e3cb` | ⚠️ Unaudited |
| MailboxFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398428 | `0x11bf5b...5780ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | manta-pacific | unit-398405 | `0x44a65d...7168ff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-398424 | `0x3c7c0e...db976c` | ⚠️ Unaudited |
| Verifier | periphery | project_anchor | own_supporting | 0 | linea | unit-398432 | `0x902c38...400458` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (84)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1054ff...c69011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119b94...4fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398370 | `0x1ee09a...4c6002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398371 | `0x273d59...7583c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7c0e...db976c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398373 | `0x41faf4...bb1158` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398374 | `0x4eea93...1d2b7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398375 | `0x5fd9f7...e015cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398376 | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398377 | `0x668e8f...af3026` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398378 | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80d12a...1674d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398379 | `0x83bc73...c0055c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398380 | `0x986c90...388e92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398381 | `0xad16ed...44b6b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ebbd...87b3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc967da...7af19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc4320...15f888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398382 | `0xde1ce7...3be269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe473ce...7264dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398383 | `0xecd189...c942ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398384 | `0xfc385a...0fcede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07476d...844b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f2433...01a4e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398385 | `0x46c8d0...a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398386 | `0x5bd512...326eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x668e8f...af3026` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398388 | `0xad5d72...25b51c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398410 | `0xab3ddb...bf2d08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398411 | `0xafe8c7...83273a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398412 | `0xc203a2...182535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xecd189...c942ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-398422 | `0x62351b...a5f2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xde1ce7...3be269` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398447 | `0x1054ff...c69011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e2d5b...a06f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eea93...1d2b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c3c5c...fdc513` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398448 | `0x80d12a...1674d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398450 | `0xe473ce...7264dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398414 | `0x7bd79d...18483a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e1b15...457478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd75f08...28bd9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398415 | `0xfb0ad0...8f5585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398416 | `0xff73a1...d5420a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x521bcd...0035ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6336d1...7736ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-398431 | `0x7b5780...e937db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-398435 | `0xef528a...7454ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-398444 | `0x29ba92...5078fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-398445 | `0x3f64e2...e66af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x41faf4...bb1158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4e5622...12c82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x83d3f5...d00c53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-398446 | `0x8df0c2...9f500b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-398451 | `0x2d973c...ed2bd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-398453 | `0x8c4b80...87b6c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-398454 | `0xea6232...1aab05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-398417 | `0x6419a6...ec3380` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-398419 | `0xae1875...e0b1fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-398420 | `0xfc31ff...af25ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-398426 | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398436 | `0x1a1a3b...464509` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398437 | `0x2f8a25...699059` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398438 | `0x8280a4...54f169` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398439 | `0x83fd59...5e1104` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398440 | `0xc967da...7af19e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398441 | `0xda4aae...3af71f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398442 | `0xf573fa...3cdeab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398389 | `0x168792...ebc137` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398390 | `0x2f2433...01a4e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398391 | `0x4e2d5b...a06f85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398392 | `0x521bcd...0035ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398393 | `0x63e059...86c3cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398394 | `0x67ba43...77bf2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398395 | `0x83d3f5...d00c53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398396 | `0x9719cd...aa01e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398397 | `0xc6ebbd...87b3ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398398 | `0xc8a31a...250e67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398400 | `0xd75f08...28bd9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-398402 | `0x70194e...dae76c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-398403 | `0xa8d527...154b80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-398404 | `0xbac8ef...3e6bc1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Secure3_zklink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zklink_Nova_2024.3.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | n/a | matched | 1 | 0 | 0 | 24 | n/a |
| [ABDK_zkLink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Nova_2024.3.pdf) | ABDK | Audit | 2024-03 | stale | Direct | n/a | matched | 2 | 0 | 0 | 47 | n/a |
| [Secure3_zkLink_Nova_mergeToken_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink_Nova_mergeToken_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 1 | 0 | 8 | n/a |
| [ABDK_zkLink_Mergetoken_2024.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Mergetoken_2024.7.pdf) | ABDK | Audit | 2024-07 | stale | Direct | n/a | matched | 2 | 1 | 0 | 10 | n/a |
| [Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink%20Nova%20Arbitrator%20Upgrade_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [ABDK_zkLink_CostOptimisation_2024.6.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_CostOptimisation_2024.6.pdf) | ABDK | Audit | 2024-06 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [www.openzeppelin.com/news/december-diff-and-governance-audit](https://www.openzeppelin.com/news/december-diff-and-governance-audit) | OpenZeppelin | Audit | 2024-01 | stale | Direct | n/a | matched | 4 | 2 | 0 | 40 | n/a |
| [ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf) | ABDK | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf) | ABDK | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [ABDK_zkLink_Circuits_2023.2.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_Circuits_2023.2.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [ABDK_zkLink_Solidity_2023.2.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_Solidity_2023.2.pdf) | ABDK | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [v.1.0 Protocol](https://static.zk.link/audit/ABDK_zkLink_Circuits_v_2_0.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [v.2.0 Protocol](https://static.zk.link/audit/ABDK_zkLink_Solidity_v_1_0.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [v.4.0 Protocol](https://static.zk.link/audit/ABDK_zkLink_CircuitsSmartContracts_v_4_0.pdf) | ABDK | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [v.6.0 Protocol](https://static.zk.link/audit/ABDK_zkLink_CircuitsSmartContracts_v_6_0.pdf) | ABDK | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2001] Secure3_zklink_Nova_2024.3.pdf — matched: No reason recorded
- [2002] ABDK_zkLink_Nova_2024.3.pdf — matched: No reason recorded
- [2003] Secure3_zkLink_Nova_mergeToken_2024.4.pdf — matched: No reason recorded
- [2004] ABDK_zkLink_Mergetoken_2024.7.pdf — matched: No reason recorded
- [2005] Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf — matched: No reason recorded
- [2006] ABDK_zkLink_CostOptimisation_2024.6.pdf — matched: No reason recorded
- [2007] www.openzeppelin.com/news/december-diff-and-governance-audit — matched: No reason recorded
- [15111] ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf — no match: No reason recorded
- [15112] ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf — no match: No reason recorded
- [15113] ABDK_zkLink_Circuits_2023.2.pdf — no match: The audit report lists files in the scope section. All files are Rust source files (.rs) for zkLink circuits. The date is from the cover page: '7th February 2023'.
- [15114] ABDK_zkLink_Solidity_2023.2.pdf — no match: No reason recorded
- [28637] v.1.0 Protocol — no match: Extracted from the 'Project scope' section listing files in the original and fix repositories. The date is from the cover page: '7th February 2023'.
- [28638] v.2.0 Protocol — no match: Scope section lists files explicitly. Audit date from changelog: 1.0 07.02.23 Release.
- [28639] v.4.0 Protocol — no match: Extracted 8 Solidity contract names from the scope section listing Solidity files. Rust files are also in scope but are not smart contracts; they are circuit code. The audit date is from the cover page: '4thJuly2023'.
- [28640] v.6.0 Protocol — no match: Extracted 8 Solidity contract names from the scope section. Rust files are also in scope but are not smart contracts; they are circuit implementations. The audit date is from the cover page: '9th August 2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Secure3_zklink_Nova_2024.3.pdf | Arbitrator | own contract | 0x1ee09a… (selected) `0x1ee09a...4c6002` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Secure3_zklink_Nova_2024.3.pdf | ArbitrumL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ArbitrumL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | BaseGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | EthereumGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | IAdmin | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | IGetters | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | IMailbox | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | L1BaseGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | L2BaseGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | LineaGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | LineaL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | LineaL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | OptimismGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | OptimismL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | OptimismL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ScrollGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ScrollL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ScrollL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | Storage | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkLink | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkPolygonL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkPolygonL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkSyncL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkSyncL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Admin | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Arbitrator | own contract | 0x1ee09a… (selected) `0x1ee09a...4c6002` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_Nova_2024.3.pdf | ArbitrumL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ArbitrumL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Base | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | BaseGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | EthereumGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Executor | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Getters | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IAdmin | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IArbitrator | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IBridgeMessageReceiver | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IExecutor | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IGetters | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL2ETHToken | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL2MessageService | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL2Messenger | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IMailbox | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IMessageClaimer | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IMessageService | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IOptimismMessenger | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IScrollMessenger | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IZkPolygon | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IZkSync | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IZkSyncL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | L1BaseGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | L2BaseGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | LineaGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | LineaL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | LineaL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Mailbox | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | OptimismGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | OptimismL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | OptimismL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | PriorityQueue | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ScrollGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ScrollL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ScrollL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Storage | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ValidatorTimelock | own contract | ValidatorTimelock (selected) `0x509ff5...507e01` — deployed 2024-03-09 12:50:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_Nova_2024.3.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ZkPolygonL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ZkPolygonL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ZkSyncL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ZkSyncL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | ERC20MergeToken | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | IL1Bridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | IL2Bridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | IMergeTokenPortal | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | L1ERC20Bridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x62ce24...e630f8` — deployed 2024-02-29 17:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | L1WethBridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | L2ERC20Bridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | L2WethBridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | MergeTokenPortal | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | ERC20MergeToken | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | Governance | own contract | ValidatorTimelock (selected) `0x509ff5...507e01` — deployed 2024-03-09 12:50:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IERC20MergeToken | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IGovernance | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IL1Bridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IL2Bridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IMergeTokenPortal | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | L1ERC20Bridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x62ce24...e630f8` — deployed 2024-02-29 17:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_Mergetoken_2024.7.pdf | L1WethBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | L2ERC20Bridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | L2WethBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | MergeTokenPortal | unmatched — not counted | — | — | no |
| Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf | Arbitrator | own contract | 0x1ee09a… (selected) `0x1ee09a...4c6002` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf | Mailbox | unmatched — not counted | — | — | no |
| Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | Arbitrator | own contract | 0x1ee09a… (selected) `0x1ee09a...4c6002` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | EthereumGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | IArbitrator | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | IMailbox | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | IZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | Mailbox | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | Merkle | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | ZkLink | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | BaseZkSyncUpgrade | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | BootloaderUtilities | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ComplexUpgrader | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Config | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Constants | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | DefaultUpgrade | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Diamond | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | DiamondInit | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | DiamondProxy | own proxy deployment | DiamondProxy (proxy) (selected) `0x5cb18b...c5df05` — deployed 2024-02-29 17:48:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Governance | own contract | ValidatorTimelock (selected) `0x509ff5...507e01` — deployed 2024-03-09 12:50:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IComplexUpgrader | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ICompressor | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IGovernance | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IKnownCodesStorage | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IL1Bridge | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IL1Messenger | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ISystemContext | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ISystemContextDeprecated | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ISystemContract | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ImmutableSimulator | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | KnownCodesStorage | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L1ERC20Bridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x62ce24...e630f8` — deployed 2024-02-29 17:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L1WethBridge | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2ContractAddresses | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2ContractHelper | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2ERC20Bridge | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2EthToken | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2StandardERC20 | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2Weth | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2WethBridge | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | LibMap | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Merkle | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | MsgValueSimulator | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | NonceHolder | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | PriorityQueue | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | RLPEncoder | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ReentrancyGuard | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Storage | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | SystemContext | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | SystemContractHelper | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | UncheckedMath | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | UnsafeBytes | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | UnsafeBytesCalldata | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ValidatorTimelock | own contract | ValidatorTimelock (selected) `0x509ff5...507e01` — deployed 2024-03-09 12:50:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | DeployFactory | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | EmptyVerifier | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | Iverifier | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | LayerZeroBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | LayerZeroStorage | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | Storage | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | ZkLinkPeriphery | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | DeployFactory | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | EmptyVerifier | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | Iverifier | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | LayerZeroBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | LayerZeroStorage | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | Storage | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | ZkLinkPeriphery | unmatched — not counted | — | — | no |
| ABDK_zkLink_Circuits_2023.2.pdf | account | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | allocated_structures | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | circuit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | element | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | exit_circuit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | operation | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | serialization | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | signature | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | utils | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | change_pubkey_offchain | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | close_account | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | deposit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | forced_Exit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | full_exit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | nop | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | order_matching | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | transfer | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | transfer_to_new | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | withdraw | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Solidity_2023.2.pdf | DeployFactory | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ILayerZeroEndpoint | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ILayerZeroReceiver | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ILayerZeroUserApplicationConfig | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | IZKL | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | LayerZeroBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | LayerZeroStorage | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | Storage | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ZkLinkPeriphery | unmatched — not counted | — | — | no |
| v.1.0 Protocol | account | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | allocated_structures | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | circuit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | element | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | exit_circuit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | operation | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | serialization | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | signature | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | utils | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | change_pubkey_offchain | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | close_account | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | deposit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | forced_Exit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | full_exit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | nop | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | order_matching | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | transfer | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | transfer_to_new | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | withdraw | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | DeployFactory | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | Storage | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ZkLink | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ZkLinkPeriphery | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | IZKL | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ILayerZeroEndpoint | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ILayerZeroReceiver | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ILayerZeroUserApplicationConfig | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | LayerZeroBridge | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | LayerZeroStorage | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | DeployFactory | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | EmptyVerifier | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | Storage | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | ZkLink | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | ZkLinkPeriphery | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | LayerZeroBridge | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | LayerZeroStorage | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | Iverifier | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | DeployFactory | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | EmptyVerifier | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | Storage | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | ZkLink | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | ZkLinkPeriphery | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | LayerZeroBridge | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | LayerZeroStorage | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | Iverifier | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0xce8e69...f35503` | AdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x1b1928...7d1206` | ExecutorFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb1d035...12e3cb` | GettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x11bf5b...5780ba` | MailboxFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x902c38...400458` | Verifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 84 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 228 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=11

Zero-match audit list:

- [15111] ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf
- [15112] ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf
- [15113] ABDK_zkLink_Circuits_2023.2.pdf
- [15114] ABDK_zkLink_Solidity_2023.2.pdf
- [28637] v.1.0 Protocol
- [28638] v.2.0 Protocol
- [28639] v.4.0 Protocol
- [28640] v.6.0 Protocol

Fork inheritance lineage and inherited audits are included when available.
