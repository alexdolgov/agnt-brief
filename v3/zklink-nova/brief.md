# Agentic Audit Brief: zkLink Nova

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 7 audit(s)
- Eligible audit results: 15 (7 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: zkLink Nova (`zklink-nova`)
- Website: [https://zklink.io](https://zklink.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, base-sepolia, blast, ethereum, linea, manta-pacific, mantle, merlin, optimism, optimism-sepolia, scroll, sepolia, zklink-nova, zksync-era
- Contract surface: 623 unique implementations (644 raw deployments)
- Coverage basis: 3/13 confirmed own live verified implementations (23.1%); conservative 23.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,436,392.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for zkLink Nova. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, arbitrum-sepolia, base, base-sepolia, blast, ethereum, linea, manta-pacific, mantle, merlin, optimism, optimism-sepolia, scroll, sepolia, zklink-nova, zksync-era. Structural roles: 6 supporting, 4 core, 3 unclassified. 3 row(s) use upgradeable patterns.

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

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 53/87 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/13 (23.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 53 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 550 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 53 of 623 unique; 570 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/48
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 575
- Unique implementations: 623
- Raw deployments: 644
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
| OpenZeppelin | Tier 1 | 3 | 6.3% | 2024-01 |
| ABDK | Tier 2 | 2 | 4.2% | 2024-07 |
| Secure3 | Tier 2 | 1 | 2.1% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | project_anchor | own_supporting | 1 | linea | unit-398455 | `0x5cb18b...c5df05` | ✅ Audited |
| L1ERC20Bridge | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-398456 | `0x62ce24...e630f8` | ✅ Audited |
| ValidatorTimelock | governance | project_anchor | own_supporting | 0 | linea | unit-398430 | `0x509ff5...507e01` | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398434 | `0xce8e69...f35503` | ⚠️ Unaudited |
| Baja | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5fe853...ab3204` | ⚠️ Unaudited |
| ComplexOrderRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6154dc...8ed3d8` | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1349a8...7b6610` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | linea | n/a | 2 deployments: linea `0x3aab22...05a9b4`; linea `0xb5bedd...68fc8f` | ⚠️ Unaudited |
| EmptyVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x437a10...2bbcac` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | manta-pacific | unit-398407 | `0xd784d7...455657` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | manta-pacific | unit-398408 | `0xe946ab...ea39d0` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-398423 | `0x119b94...4fd1a2` | ⚠️ Unaudited |
| ExecutorFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398429 | `0x1b1928...7d1206` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x391536...a377ca` | ⚠️ Unaudited |
| FrogRichToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x038f1c...27efce` | ⚠️ Unaudited |
| GettersFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398433 | `0xb1d035...12e3cb` | ⚠️ Unaudited |
| KTX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x779f4e...61159a` | ⚠️ Unaudited |
| L1ERC20Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x0d53ce...731470`; manta-pacific `0x5f58bc...fef28c` | ⚠️ Unaudited |
| LsdETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc7e1...b97c5b` | ⚠️ Unaudited |
| MailboxFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398428 | `0x11bf5b...5780ba` | ⚠️ Unaudited |
| Manta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x95cef1...c544e5` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 6 deployments: manta-pacific `0x34c7ad...201ce0`; manta-pacific `0x77b6f9...1c2300`; manta-pacific `0x9bf486...7a2c6c`; manta-pacific `0xa53e00...b6527e`; manta-pacific `0xbdad40...61fb07`; manta-pacific `0xc8d4bc...45b986` | ⚠️ Unaudited |
| MultiCall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xdc0771...d2208b` | ⚠️ Unaudited |
| NETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc65720...c7789a` | ⚠️ Unaudited |
| NethOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3343f9...3283ce` | ⚠️ Unaudited |
| OBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1e128...de0e3c` | ⚠️ Unaudited |
| OptimismL2Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 3 deployments: manta-pacific `0x50efc7...726211`; manta-pacific `0x55fa52...52235e`; manta-pacific `0xbfa352...63283f` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x661d88...471e7c` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9831aa...f677a0` | ⚠️ Unaudited |
| PositionRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8a7f1c...d1bd7c` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 5 deployments: manta-pacific `0x028781...7fa131`; manta-pacific `0x5bc75b...a73e61`; base `0x161f4b...0477f0`; arbitrum `0xed5d1e...082ac3`; linea `0x3e9856...0c2fa1` | ⚠️ Unaudited |
| RadiantOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3082cc...50aaa0` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x02170f...2e0a5f`; mantle `0x9c5582...32733c` | ⚠️ Unaudited |
| RewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x207d39...d688ca` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x57acdf...81f7ab` | ⚠️ Unaudited |
| RNethOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcea368...8ded56` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xea02de...dc4583` | ⚠️ Unaudited |
| TinyTigerCatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf782e1...957028` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | manta-pacific | unit-398405 | `0x44a65d...7168ff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-398424 | `0x3c7c0e...db976c` | ⚠️ Unaudited |
| UpgradeGatekeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9dc756...bbc88c` | ⚠️ Unaudited |
| Verifier | periphery | project_anchor | own_supporting | 0 | linea | unit-398432 | `0x902c38...400458` | ⚠️ Unaudited |
| Vester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x2e4f63...132f0c`; mantle `0xb6f417...6d227c` | ⚠️ Unaudited |
| WBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcabae6...aebfa2` | ⚠️ Unaudited |
| WithdrawalFinalizer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6fe38b...f414a2` | ⚠️ Unaudited |
| wUSDM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x57f5e0...af7812` | ⚠️ Unaudited |
| ZkLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 4 deployments: manta-pacific `0x5715de...b8ce05`; manta-pacific `0x7c56da...bc88b3`; manta-pacific `0xe89635...99cc13`; manta-pacific `0xfb0ad0...8f5585` | ⚠️ Unaudited |
| ZkLinkPeriphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xdd5097...7a3545` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (575)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1054ff...c69011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x116d63...3d5f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119b94...4fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13bc53...698a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f692...b5735b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178b74...f4e78a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19e488...8f9e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1befba...566ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398370 | `0x1ee09a...4c6002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x236962...740bd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398371 | `0x273d59...7583c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b763f...680863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dad78...523449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2eb710...9820f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x301365...6da6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d815...c38cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38260c...28e70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39b5dd...64ecb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad85a...99f700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7c0e...db976c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398373 | `0x41faf4...bb1158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bf7aa...5173bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398374 | `0x4eea93...1d2b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50cd55...23fddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x520b82...6dabd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b065b...3cf147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f1725...6b8495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398375 | `0x5fd9f7...e015cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398376 | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398377 | `0x668e8f...af3026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8104...766fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7699fb...eeec7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79285f...567afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f431a...67041b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398378 | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80d12a...1674d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823562...594d8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398379 | `0x83bc73...c0055c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x876ef3...24b019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87fdec...4d9a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926cf8...4bedf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398380 | `0x986c90...388e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20353...93dfe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6911b...de6359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398381 | `0xad16ed...44b6b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5b6c...e60c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4f3e1...193cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e0b4...4ab00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb836f0...bef53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc65e0a...e9d88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ebbd...87b3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc967da...7af19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc4320...15f888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb4209...a40913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbad2...04057a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398382 | `0xde1ce7...3be269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2964b...f8963f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe473ce...7264dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cdb8...8cea46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398383 | `0xecd189...c942ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23756...777972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5c560...442145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf64555...c02ede` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398384 | `0xfc385a...0fcede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07476d...844b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f2433...01a4e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398385 | `0x46c8d0...a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398386 | `0x5bd512...326eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x668e8f...af3026` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398388 | `0xad5d72...25b51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1f282e...d83ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc8a31a...250e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x67ba43...77bf2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398410 | `0xab3ddb...bf2d08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398411 | `0xafe8c7...83273a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398412 | `0xc203a2...182535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xebeaf6...34ade0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xecd189...c942ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | merlin | n/a | 4 deployments: merlin `0x41d903...fb0f71`; merlin `0xad16ed...44b6b6`; merlin `0xf5b90f...661d73`; merlin `0xfc385a...0fcede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x019473...8807d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x029661...52d912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x05e423...4876af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x064b5d...967ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x081762...6b92cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x08231b...af27b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x08dcc0...0b447c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0c251f...46b9ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0c4c75...11c676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0ce206...0a5b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0e27ed...ff1a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x12a39c...ddeb52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x13bb7c...8719b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x16690b...392e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x168e39...4ee76b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x16d8bf...8e0801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1872e8...7b63a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x198fba...ee6c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1bf0c8...f17d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1ca858...d6b694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1cc57d...0c76b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1d2941...ae7146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1f10e4...1ea481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1f8866...c0ba24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x201eba...e956ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2108e7...de9c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x216b02...290519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x229034...5f3efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x245ad6...629245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x25e71a...9d9e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x26d5a7...68b09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2a2721...dc75f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2a4891...974167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2ac030...6926d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2cbc8b...989855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2d1d69...7e2193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2e488d...50dae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2e564d...cae6c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2ed161...e6b373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2fd5fe...7fcd54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3023cc...d3715f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x315f1f...84470c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x357c8e...f15f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x36e067...362726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x37bb75...a309f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x39bc24...2c2729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3a1c8d...1d9687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3a7b05...5819dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3bb03b...c480ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3c4de8...27090e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3c9d34...8037e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3dbe7c...f1f3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3e65ac...deb474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x41736c...4c7cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x42a0ea...4c2a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4368fc...f6b6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x461064...ab8277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x487f6b...3ded27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x49397a...f20099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x49ac32...0ff397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4b1dbc...03e347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4d59ea...9b4d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x505294...e29cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x532e52...94163f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x542fd0...d825cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x545356...8751ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x548f29...7fd6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x574f55...1d2b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x57c90d...258c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x588354...a8cc6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x592f29...ac3a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d11b9...6fce31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d2445...c9b2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5e9012...4dd2d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x61dd26...332316` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-398422 | `0x62351b...a5f2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x636d40...eb87be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x63a14c...47574e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x650e88...1d9e87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x654e7d...199212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x664d6b...4290a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x679505...84fa63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x699d08...c8ade9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6ef8d8...b33bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6efff7...ec673b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x70364e...43300a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x708af8...f632d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x70c3de...18f979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x71f67c...0ceb7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x727df3...4fbb90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x746817...1e2e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7524b7...692d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x756f1d...60609c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x77446f...dc9085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x779fc2...766403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x780855...e6ddde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7b8eb5...9c9f52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7b9770...3a78e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7ca59a...2dabbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7db93f...39e7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7ea781...7bd7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7eb047...81a9ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8231e7...63a3fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x846e58...11a189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8551d2...00fdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x86056f...49648f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x87a1c0...24a1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x87dfa4...ed2aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x88ceb7...533fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8970c2...0d2b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x89f74f...289abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8cc118...cd1e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8deab8...545df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8f145f...84de67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x90108d...da77ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x901865...9d2809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x92351c...53e550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9270a9...b0670b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9355c7...23bf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9484f8...7bd201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x949cb5...1eca7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x94b180...5a290b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x973623...1f8826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x983820...8e081a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x983a26...cc27f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x98b799...bd4193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x98e34d...6d0ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x99875e...143564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9c2407...08950d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9c338e...bb0ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9ce150...f07084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9d0162...589177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9d42f4...478fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9f0239...03c8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa01c3f...4a1242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1819b...ae61a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1fde7...b3f7ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa236b7...895b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa2a795...ef58eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa59ae6...41a326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xaae698...a88fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xab1f2b...a03459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xac5b26...253daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xaf6f7d...46431f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb1fd68...a7771a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb230db...75bf38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb3328a...ea2ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb3a5ee...d5c0b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb44cba...d296b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb45610...549a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb9097b...8a08f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb98de1...79d9be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb9c70c...af2961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xba68bd...2de063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbaa9f1...6cdb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbb75fa...7ea6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbc3407...eb488a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbe3835...549538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbf0d05...2d4937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc10d8a...cb9492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc18e29...562861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc1cddf...6406fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc343b9...c99aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc35e2e...1bf571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc4c67c...aad74f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc943ce...8c39bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc9ef72...c99bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcabdd7...3e14fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcad889...2c2fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcc0246...4e249d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcc15ad...69b988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcdece5...606ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcee7b8...33c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcf5e1c...ef24f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd173b4...c0838c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd28c91...908634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd40bac...e3ada7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd7ceb9...fc081a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd84a32...1f811a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd9d455...56035e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdad689...a647f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdcb6d1...3efaee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xde1ce7...3be269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe064c5...0afa8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe2bef3...5d87e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe2c2db...917986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe34901...8be844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe38824...6f03be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe4779b...00c62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe4e53d...89ddd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe62619...02b597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe7a108...403aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xea0aad...93405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xeb0c39...7956ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xebeea5...fe4b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xedd1e8...3fe4b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xee4d71...a8fdd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf04b22...eec632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf1b4a1...e4cf6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf1eefa...76a4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf259e6...0a54e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf30c8c...222024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf399f6...535e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf50d60...00d49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf54f65...3616a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf627c5...263d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf91e7d...e73f10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf93a85...af9f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf9b603...91c0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfe4169...6e73f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfe8470...631f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x067c71...ea47ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08ca91...85e388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09cb6c...ee1c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c0404...f1e821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c89bc...2907aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398447 | `0x1054ff...c69011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12abac...5a5cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21fe89...86c3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x314bf0...51de47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31f0c8...7f3611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x413552...374b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46c8d0...a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ac2cc...bee425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c5629...27c563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e2d5b...a06f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eea93...1d2b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x502c84...34af12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53d9d2...c6db6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5715de...b8ce05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bd512...326eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x624658...c283ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x664e1c...a83e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67ebb0...accb3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x683669...2216f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x703651...2a62a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70df54...c2ed88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72343e...f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7769c1...3ea458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79926e...410db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ae056...a74040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c3c5c...fdc513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c56da...bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f0013...36e356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398448 | `0x80d12a...1674d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83bc73...c0055c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85079c...8b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87743f...9a43fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98ceda...00673b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa84860...256cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa89aa7...9ce715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9f1f8...680027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa46d9...81865a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad7e3e...878581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6b969...c3d78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb205c...275adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5941f...d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd784d7...455657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd923b6...f5ff66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd5097...7a3545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4589e...a1be0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398450 | `0xe473ce...7264dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe89635...99cc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec30c5...6e3417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee7981...fd59d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xef7007...e80cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf63e81...e0c3ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa7fb7...21a89c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb0ad0...8f5585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x028781...7fa131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04c6a5...325d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08ca91...85e388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09cb6c...ee1c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c0404...f1e821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ed6e9...63b3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x119b94...4fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1202e0...685ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x161f4b...0477f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ba934...1b4172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x235118...b6b68f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x238715...e7053c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x273d59...7583c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b73ab...e33fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e8ad1...f4a190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30b2c7...e81ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x316984...c8466a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31f0c8...7f3611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3203e8...307352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c3f4b...9aa98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fc412...0f92ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x413552...374b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43bcb7...b7a7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4563c3...cfc027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46c8d0...a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5715de...b8ce05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f58bc...fef28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69bdfb...00688c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c2256...c20bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d6ce5...927962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e21b3...69274a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72343e...f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7769c1...3ea458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79926e...410db0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398414 | `0x7bd79d...18483a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e1b15...457478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f0013...36e356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81dee5...f81f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89f273...24f0cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x928732...88bc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95fb80...e85f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x996bae...6ea506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa00509...36fb60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa194fb...dd3a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa84860...256cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa46d9...81865a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8d9f0...a3a2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8b602...3e427c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdcdf6...80613d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5941f...d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6bbb0...a2e86c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7425f...843b26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd75f08...28bd9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd784d7...455657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2510e...25ddb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2cd60...19a305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe469c1...6d344f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe54cac...34324f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe89635...99cc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4fe03...2dd32a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9c947...8eee64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9f8a1...341a70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398415 | `0xfb0ad0...8f5585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398416 | `0xff73a1...d5420a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0163a4...d88a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x04bf7c...14d716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08884b...6b7600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0b703a...3707c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c0404...f1e821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c25f3...dad518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c89bc...2907aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x119b94...4fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x139abb...5c22e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x161f4b...0477f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x16397b...a8dd1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1ee09a...4c6002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2132ff...fd9542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x213f44...44d00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x216319...d70c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x28b931...0fdb73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2e8ad1...f4a190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2fad6c...7fa6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x316984...c8466a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3203e8...307352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3782f9...25c7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x381b76...0770c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3c3f4b...9aa98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3d70dc...3a441e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x413552...374b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x42b43b...569e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x437a10...2bbcac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4516a3...b17f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x47767b...d783c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x47d141...637ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4ac2cc...bee425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4d4b1b...8b0d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50764c...dbf2a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x510ca2...35af68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x51ed2d...207723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x521bcd...0035ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x53d9d2...c6db6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x578f38...6ef55a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x582b2e...fc2f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5b884c...63f190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5bc75b...a73e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5bd512...326eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5cbe12...666d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x62351b...a5f2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x624658...c283ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x62646d...b2d7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6336d1...7736ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x64cd4a...9e2fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x66c02a...971872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x66eafe...dc96c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x67ebb0...accb3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x683669...2216f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6ff5e1...43f7f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x72343e...f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7769c1...3ea458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-398431 | `0x7b5780...e937db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7bd79d...18483a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7c56da...bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7f9de3...8a4c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x80d12a...1674d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x928732...88bc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x94f2eb...acac07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x975a87...6ef628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x986c90...388e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa107b6...a689d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa194fb...dd3a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa6df49...55d1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa84860...256cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa86ef3...ce9637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa89aa7...9ce715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa9f1f8...680027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xad5d72...25b51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaedfed...bf0809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xafc54e...89df0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb6b969...c3d78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb98ffd...30c9cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xba2be3...42602c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xba6163...9d7f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbfa352...63283f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc5dc25...b3fa0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc7b2a2...e90a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcc8256...c1f5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcdcdf6...80613d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd784d7...455657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd90bbc...82e378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb97db...7ecdfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd5097...7a3545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xde1ce7...3be269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe37f90...43a31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe38f8b...686dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe4589e...a1be0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe469c1...6d344f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe5da2b...591d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe75ef0...5b8afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeb79fe...39f4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xee7981...fd59d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-398435 | `0xef528a...7454ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xef7007...e80cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf2801f...6e35c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf7f67b...d8cb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf8fe43...e843f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfa3b67...4489cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfe3e63...96709f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff2568...27d79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff6a78...227966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff73a1...d5420a` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x986c90...388e92` | ❓ Unverified |
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
| native | 41 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 575 |

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
