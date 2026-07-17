# Agentic Audit Brief: M0

## Export Authority

- Production state: **published scope**
- Raw selected rows: 72 across 27 audit(s)
- Eligible audit results: 54 (27 matched; 27 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: M0 (`m0`)
- Website: [https://www.m0.org/](https://www.m0.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, bsc, ethereum, hyperliquid, linea, monad, optimism, plasma, sepolia
- Contract surface: 117 unique implementations (117 raw deployments)
- Coverage basis: 8/14 confirmed own live verified implementations (57.1%); conservative 57.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $330,354,580.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for M0. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across arbitrum, arbitrum-sepolia, base, bsc, ethereum, hyperliquid, linea, monad, optimism, plasma, sepolia. Structural roles: 9 core, 5 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: core (9), supporting (5)
- Contract kinds: contract (14)
- Detected standards: erc1967proxy (5), erc20 (2), erc20permit (2), ownable (1)
- Frameworks: openzeppelin-upgradeable (4), openzeppelin (2)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 78 contracts are derived from known codebases. 78 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0bc305e7e13113caed3f5486849e9518a1cc4173`, chain 1)
- UnnamedContract (`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`, chain 1)
- UnnamedContract (`0xaad1466fe33d373189fb9dcc47270e608feee8a7`, chain 1)
- UnnamedContract (`0xb6807116b3b1b321a390594e31ecd6e0076f6278`, chain 1)
- UnnamedContract (`0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd`, chain 1)
- UnnamedContract (`0xebdb0942ce16386ab90718c7bd10c91cdb66b14d`, chain 1)
- UnnamedContract (`0xeff09b0c726789f4c123397c04f5ed4a9a20070d`, chain 1)
- UnnamedContract (`0x119fbeedd4f4f4298fb59b720d5654442b81ae2c`, chain 56)
- UnnamedContract (`0x3349e443068f76666789c4f76f00d9c4f38a4dde`, chain 56)
- UnnamedContract (`0x36f586a30502ae3afb555b8aa4dcc05d233c2ece`, chain 56)
- UnnamedContract (`0x437cc33344a0b27a429f795ff6b469c72698b291`, chain 56)
- UnnamedContract (`0x51dce104e5ba88fabc19a2c519f955bb834b0dc3`, chain 56)
- UnnamedContract (`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`, chain 56)
- UnnamedContract (`0xb6807116b3b1b321a390594e31ecd6e0076f6278`, chain 56)
- UnnamedContract (`0x119fbeedd4f4f4298fb59b720d5654442b81ae2c`, chain 143)
- UnnamedContract (`0x437cc33344a0b27a429f795ff6b469c72698b291`, chain 143)
- UnnamedContract (`0x77ef4e9d37524069f81890c537a5c5d390bb4b4d`, chain 143)
- UnnamedContract (`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`, chain 143)
- UnnamedContract (`0xb6807116b3b1b321a390594e31ecd6e0076f6278`, chain 143)
- UnnamedContract (`0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd`, chain 143)
- UnnamedContract (`0xfcc1d596ad6cab0b5394eaa447d8626813180f32`, chain 143)
- UnnamedContract (`0x119fbeedd4f4f4298fb59b720d5654442b81ae2c`, chain 999)
- UnnamedContract (`0x3349e443068f76666789c4f76f00d9c4f38a4dde`, chain 999)
- UnnamedContract (`0x36f586a30502ae3afb555b8aa4dcc05d233c2ece`, chain 999)
- UnnamedContract (`0x437cc33344a0b27a429f795ff6b469c72698b291`, chain 999)
- UnnamedContract (`0x51dce104e5ba88fabc19a2c519f955bb834b0dc3`, chain 999)
- UnnamedContract (`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`, chain 999)
- UnnamedContract (`0xb6807116b3b1b321a390594e31ecd6e0076f6278`, chain 999)
- UnnamedContract (`0x119fbeedd4f4f4298fb59b720d5654442b81ae2c`, chain 8453)
- UnnamedContract (`0x3349e443068f76666789c4f76f00d9c4f38a4dde`, chain 8453)
- UnnamedContract (`0x437cc33344a0b27a429f795ff6b469c72698b291`, chain 8453)
- UnnamedContract (`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`, chain 8453)
- UnnamedContract (`0xacffec28c4eee21c889a4e6c0704c540ed9d4fdd`, chain 8453)
- UnnamedContract (`0xb6807116b3b1b321a390594e31ecd6e0076f6278`, chain 8453)
- UnnamedContract (`0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd`, chain 8453)
- UnnamedContract (`0x119fbeedd4f4f4298fb59b720d5654442b81ae2c`, chain 9745)
- UnnamedContract (`0x3349e443068f76666789c4f76f00d9c4f38a4dde`, chain 9745)
- UnnamedContract (`0x36f586a30502ae3afb555b8aa4dcc05d233c2ece`, chain 9745)
- UnnamedContract (`0x437cc33344a0b27a429f795ff6b469c72698b291`, chain 9745)
- UnnamedContract (`0x51dce104e5ba88fabc19a2c519f955bb834b0dc3`, chain 9745)
- UnnamedContract (`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`, chain 9745)
- UnnamedContract (`0xb6807116b3b1b321a390594e31ecd6e0076f6278`, chain 9745)
- UnnamedContract (`0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd`, chain 9745)
- UnnamedContract (`0xfcc1d596ad6cab0b5394eaa447d8626813180f32`, chain 9745)
- UnnamedContract (`0x0bc305e7e13113caed3f5486849e9518a1cc4173`, chain 42161)
- UnnamedContract (`0x119fbeedd4f4f4298fb59b720d5654442b81ae2c`, chain 42161)
- UnnamedContract (`0x25c8affc5a63d8e047c12918c0438aba5aa09c2a`, chain 42161)
- UnnamedContract (`0x3349e443068f76666789c4f76f00d9c4f38a4dde`, chain 42161)
- UnnamedContract (`0x437cc33344a0b27a429f795ff6b469c72698b291`, chain 42161)
- UnnamedContract (`0x693cc3305342b02ac1549b509a704ff944cd9499`, chain 42161)
- UnnamedContract (`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`, chain 42161)
- UnnamedContract (`0xaad1466fe33d373189fb9dcc47270e608feee8a7`, chain 42161)
- UnnamedContract (`0xacffec28c4eee21c889a4e6c0704c540ed9d4fdd`, chain 42161)
- UnnamedContract (`0xb6807116b3b1b321a390594e31ecd6e0076f6278`, chain 42161)
- UnnamedContract (`0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd`, chain 42161)
- UnnamedContract (`0xebdb0942ce16386ab90718c7bd10c91cdb66b14d`, chain 42161)
- UnnamedContract (`0xeff09b0c726789f4c123397c04f5ed4a9a20070d`, chain 42161)
- UnnamedContract (`0x119fbeedd4f4f4298fb59b720d5654442b81ae2c`, chain 59144)
- UnnamedContract (`0x3349e443068f76666789c4f76f00d9c4f38a4dde`, chain 59144)
- UnnamedContract (`0x36f586a30502ae3afb555b8aa4dcc05d233c2ece`, chain 59144)
- UnnamedContract (`0x437cc33344a0b27a429f795ff6b469c72698b291`, chain 59144)
- UnnamedContract (`0x51dce104e5ba88fabc19a2c519f955bb834b0dc3`, chain 59144)
- UnnamedContract (`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`, chain 59144)
- UnnamedContract (`0xb6807116b3b1b321a390594e31ecd6e0076f6278`, chain 59144)
- DistributionVault (`0xd7298f620b0f752cf41bd818a16c756d9dcaa34f`, chain 1)
- EmergencyGovernor (`0x886d405949f709bc3f4451491bdd07ff51cdf90a`, chain 1)
- ERC1967Proxy (`0x36f586a30502ae3afb555b8aa4dcc05d233c2ece`, chain 1)
- ERC1967Proxy (`0xacffec28c4eee21c889a4e6c0704c540ed9d4fdd`, chain 1)
- HyperlaneBridge (`0x51dce104e5ba88fabc19a2c519f955bb834b0dc3`, chain 1)
- MinterGateway (`0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e`, chain 1)
- PowerToken (`0x5983b89fa184f14917013b9c3062afd9434c5b03`, chain 1)
- Proxy (`0x437cc33344a0b27a429f795ff6b469c72698b291`, chain 1)
- Registrar (`0x119fbeedd4f4f4298fb59b720d5654442b81ae2c`, chain 1)
- StandardGovernor (`0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016`, chain 1)
- TransparentUpgradeableProxy (`0x25c8affc5a63d8e047c12918c0438aba5aa09c2a`, chain 1)
- TransparentUpgradeableProxy (`0x693cc3305342b02ac1549b509a704ff944cd9499`, chain 1)
- ZeroGovernor (`0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe`, chain 1)
- ZeroToken (`0x988567fe094570cce1ffda29d1f2d842b70492be`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 78/96 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/14 (57.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 78 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 25 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 78 of 117 unique; 39 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/33
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 84
- Unique implementations: 117
- Raw deployments: 117
- Audits discovered: 52 (52 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 26
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 24 fresh, 14 aging, 12 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 50.0% (Certora, OpenZeppelin, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 8 | 24.2% | 2025-05 |
| Certora | Tier 1 | 7 | 21.2% | 2025-07 |
| OpenZeppelin | Tier 1 | 7 | 21.2% | 2024-01 |
| Quantstamp | Tier 2 | 7 | 21.2% | 2024-01 |
| Unknown | Tier 2 | 7 | 21.2% | 2024-03 |
| Guardian | Tier 2 | 1 | 3.0% | 2026-06 |
| Sherlock | Tier 1 | 1 | 3.0% | 2025-12 |
| Three Sigma | Tier 2 | 1 | 3.0% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DistributionVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388654 | `0xd7298f620b0f752cf41bd818a16c756d9dcaa34f` | ✅ Audited |
| EmergencyGovernor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388648 | `0x886d405949f709bc3f4451491bdd07ff51cdf90a` | ✅ Audited |
| HyperlaneBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388645 | `0x51dce104e5ba88fabc19a2c519f955bb834b0dc3` | ✅ Audited |
| MinterGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388658 | `0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` | ✅ Audited |
| PowerToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388646 | `0x5983b89fa184f14917013b9c3062afd9434c5b03` | ✅ Audited |
| StandardGovernor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388652 | `0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016` | ✅ Audited |
| ZeroGovernor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388650 | `0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe` | ✅ Audited |
| ZeroToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388649 | `0x988567fe094570cce1ffda29d1f2d842b70492be` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388736 | `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388734 | `0xacffec28c4eee21c889a4e6c0704c540ed9d4fdd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x3349e443068f76666789c4f76f00d9c4f38a4dde` | ⚠️ Unaudited |
| ExecutorEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4db06053edb413899454bad5bf25213b22fda979` | ⚠️ Unaudited |
| ExtensionBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb823280379f3e057ccae4ba5f6f772528979a931` | ⚠️ Unaudited |
| HyperlaneBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x01ffa0003a21f14e039d249af4f4d770f8403b6d` | ⚠️ Unaudited |
| JMIExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf2414b88c565b53fbb3923c96bdf826333973a27` | ⚠️ Unaudited |
| LayerZeroBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x77ef4e9d37524069f81890c537a5c5d390bb4b4d` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1051adbfd1e9981d08d3d64c221878b2befd1029` | ⚠️ Unaudited |
| MToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23a62a85fa6d6bfa78ae2924060c051e28234bc8` | ⚠️ Unaudited |
| MultiMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ffbc316cf29e8eb39cbf819cfd3d5f5b34033ef` | ⚠️ Unaudited |
| MUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23d8162e084aa33d8ef6fcc0ab33f4028a53ee79` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23ca665c8a73292fc7ac2cc4493d2ce883bba468` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388735 | `0x437cc33344a0b27a429f795ff6b469c72698b291` | ⚠️ Unaudited |
| PYUSDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dfb7c8ce5e67ace965520b134b4aca8fd71c5e0` | ⚠️ Unaudited |
| Registrar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388643 | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | ⚠️ Unaudited |
| SpokePortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01ffa0003a21f14e039d249af4f4d770f8403b6d` | ⚠️ Unaudited |
| SpokePortalV1StorageCleaner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x593ffa1ad180c3c872628761697c5288fdea7bae` | ⚠️ Unaudited |
| SwapFacility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07dd9e3b00002f9cb178670159d4e6fe0d8cd146` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e98f104dcec706d087cc58db1e92ba7fc2cd52a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388733 | `0x25c8affc5a63d8e047c12918c0438aba5aa09c2a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388737 | `0x693cc3305342b02ac1549b509a704ff944cd9499` | ⚠️ Unaudited |
| UniswapV3SwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023bd2f0a95373c55fc8d1c5f8e60cc3b9bc4f4b` | ⚠️ Unaudited |
| USDZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd87c75a92db19fe334fe7812890f893449ff1bda` | ⚠️ Unaudited |
| YieldToOne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc560c9b8ed6d589ee676d279f2649a236c678803` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388642 | `0x0bc305e7e13113caed3f5486849e9518a1cc4173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c4de4e1f3ba848f447151635e1bc2e120bee26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733183c4b50d4426b1118cc1b412ef7eb6410bf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388647 | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388651 | `0xaad1466fe33d373189fb9dcc47270e608feee8a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388653 | `0xb6807116b3b1b321a390594e31ecd6e0076f6278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388655 | `0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388656 | `0xebdb0942ce16386ab90718c7bd10c91cdb66b14d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388657 | `0xeff09b0c726789f4c123397c04f5ed4a9a20070d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcc1d596ad6cab0b5394eaa447d8626813180f32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388694 | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388695 | `0x3349e443068f76666789c4f76f00d9c4f38a4dde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388696 | `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388697 | `0x437cc33344a0b27a429f795ff6b469c72698b291` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388698 | `0x51dce104e5ba88fabc19a2c519f955bb834b0dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388699 | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388700 | `0xb6807116b3b1b321a390594e31ecd6e0076f6278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-388667 | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-388668 | `0x437cc33344a0b27a429f795ff6b469c72698b291` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-388669 | `0x77ef4e9d37524069f81890c537a5c5d390bb4b4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-388670 | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-388671 | `0xb6807116b3b1b321a390594e31ecd6e0076f6278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-388672 | `0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-388673 | `0xfcc1d596ad6cab0b5394eaa447d8626813180f32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388726 | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388727 | `0x3349e443068f76666789c4f76f00d9c4f38a4dde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388728 | `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388729 | `0x437cc33344a0b27a429f795ff6b469c72698b291` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388730 | `0x51dce104e5ba88fabc19a2c519f955bb834b0dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388731 | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388732 | `0xb6807116b3b1b321a390594e31ecd6e0076f6278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388708 | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388709 | `0x3349e443068f76666789c4f76f00d9c4f38a4dde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388710 | `0x437cc33344a0b27a429f795ff6b469c72698b291` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388711 | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388712 | `0xacffec28c4eee21c889a4e6c0704c540ed9d4fdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388713 | `0xb6807116b3b1b321a390594e31ecd6e0076f6278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388714 | `0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388715 | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388716 | `0x3349e443068f76666789c4f76f00d9c4f38a4dde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388717 | `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388718 | `0x437cc33344a0b27a429f795ff6b469c72698b291` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388719 | `0x51dce104e5ba88fabc19a2c519f955bb834b0dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x77ef4e9d37524069f81890c537a5c5d390bb4b4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388720 | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388722 | `0xb6807116b3b1b321a390594e31ecd6e0076f6278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388723 | `0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388724 | `0xfcc1d596ad6cab0b5394eaa447d8626813180f32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388674 | `0x0bc305e7e13113caed3f5486849e9518a1cc4173` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388675 | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17c4de4e1f3ba848f447151635e1bc2e120bee26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388676 | `0x25c8affc5a63d8e047c12918c0438aba5aa09c2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388677 | `0x3349e443068f76666789c4f76f00d9c4f38a4dde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388678 | `0x437cc33344a0b27a429f795ff6b469c72698b291` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388679 | `0x693cc3305342b02ac1549b509a704ff944cd9499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x733183c4b50d4426b1118cc1b412ef7eb6410bf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388680 | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388681 | `0xaad1466fe33d373189fb9dcc47270e608feee8a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388682 | `0xacffec28c4eee21c889a4e6c0704c540ed9d4fdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388683 | `0xb6807116b3b1b321a390594e31ecd6e0076f6278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388684 | `0xd925c84b55e4e44a53749ff5f2a5a13f63d128fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388685 | `0xebdb0942ce16386ab90718c7bd10c91cdb66b14d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388686 | `0xeff09b0c726789f4c123397c04f5ed4a9a20070d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-388701 | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-388702 | `0x3349e443068f76666789c4f76f00d9c4f38a4dde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-388703 | `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-388704 | `0x437cc33344a0b27a429f795ff6b469c72698b291` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-388705 | `0x51dce104e5ba88fabc19a2c519f955bb834b0dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-388706 | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-388707 | `0xb6807116b3b1b321a390594e31ecd6e0076f6278` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-388687 | `0x0bc305e7e13113caed3f5486849e9518a1cc4173` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-388688 | `0x25c8affc5a63d8e047c12918c0438aba5aa09c2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-388689 | `0x693cc3305342b02ac1549b509a704ff944cd9499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-388690 | `0x733183c4b50d4426b1118cc1b412ef7eb6410bf8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-388691 | `0xaad1466fe33d373189fb9dcc47270e608feee8a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-388692 | `0xebdb0942ce16386ab90718c7bd10c91cdb66b14d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-388693 | `0xeff09b0c726789f4c123397c04f5ed4a9a20070d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388659 | `0x0bc305e7e13113caed3f5486849e9518a1cc4173` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388660 | `0x17c4de4e1f3ba848f447151635e1bc2e120bee26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388661 | `0x25c8affc5a63d8e047c12918c0438aba5aa09c2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388662 | `0x693cc3305342b02ac1549b509a704ff944cd9499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388664 | `0xaad1466fe33d373189fb9dcc47270e608feee8a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388665 | `0xebdb0942ce16386ab90718c7bd10c91cdb66b14d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388666 | `0xeff09b0c726789f4c123397c04f5ed4a9a20070d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [| Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Quantstamp%20Audit%20Report.pdf) | Quantstamp | Audit | 2024-01 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 58 | high |
| [| Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/ThreeSigma%20Audit%20Report.pdf) | Quantstamp | Audit | 2024-01 | stale | Direct | contract_name | matched | 6 | 0 | 0 | 24 | high |
| [| Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Certora%20Audit%20report.pdf) | Certora | Audit | 2024-01 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 45 | high |
| [| Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/ChainSecurity%20Audit%20Report.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 61 | high |
| [| OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/OpenZeppelin%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2024-01 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 15 | high |
| [| Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Prototech%20Labs%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2024-01 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 11 | high |
| [| Kirill Fedoseev | Dec 2023 - April 2024 | [Kirill Fedoseev report.md](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Kirill%20Fedoseev%20Independent%20Auditor%20Report.md) | Kirill Fedoseev | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [| Sherlock | March 2024 - April 2024 | [Sherlock\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Sherlock%20Audit%20Report.pdf) | Sherlock | Contest | 2024-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [| Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/wrapped-M-audit-reports/ChainSecurity%20Wrapped%20M%20Audit%20Report.pdf) | ChainSecurity | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [| Three Sigma | July 2024 - Aug 2024 | [Three Sigma Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/wrapped-M-audit-reports/ThreeSigma%20Wrapped%20M%20Audit%20Report.pdf) | ChainSecurity | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [| Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/wrapped-M-audit-reports/Kirill%20Fedoseev%20Audit%20Report.md) | Kirill Fedoseev | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [| Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/Certora%20MExtension%20Security%20Assessment%20Final%20Report.pdf) | Certora | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [| ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/ChainSecurity_M0_M_Extensions_audit_draft.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [| Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/Guardian%20Audits%20M0%20Extensions%20Report%20Aug%205.pdf) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [| Halborn | June 2025 | [Halborn\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m-extensions/blob/main/audits/halborn_m_extensions_audit_report.pdf) | Halborn | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [| Adevar | July 2025 | [Adevar\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m-extensions/blob/main/audits/adevar_m_extensions_audit_report.pdf) | Halborn | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| Ottersec | July 2025 | [Ottersec\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m-extensions/blob/main/audits/ottersec_m_extensions_audit_report.pdf) | Ottersec | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/Three%20Sigma%20-%20M0PortalLite.pdf) | Three Sigma | Audit | 2025-04 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 11 | high |
| [| ChainLight | May 2025 | [ChainLight\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/ChainLight%20-%20M%20Portal%20Lite%20Security%20Audit%20v1.0.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [| ChainSecurity | September 12, 2025 | [ChainSecurity\_M0\_M\_Portal\_Lite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/ChainSecurity_M0_M_Portal_Lite_audit.pdf) | ChainSecurity | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [| Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/GuardianAudits_M0_PortalLite_audit.pdf) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 31 | high |
| [| Halborn | October 27, 2025 | [Halborn - M Portal Lite 10-27-25.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/Halborn%20-%20M%20Portal%20Lite%2010-27-25.pdf) | Halborn | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [| Halborn | March 2025 | [Halborn\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m/blob/main/audits/halborn_solana_m_audit.pdf) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [| OtterSec | April 2025 | [OtterSec\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m/blob/main/audits/ottersec_solana_m_audit.pdf) | Halborn | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [| Sec3 | May 2025 | [Sec3\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m/blob/main/audits/sec3_solana_m_audit_report.pdf) | Sec3 | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [| ChainSecurity | August 26, 2025 | [ChainSecurity\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/mUSD/blob/main/audits/ChainSecurity_M0_MUSD_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| Consensys Diligence | August 2025 | [ConsensysDiligence\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/mUSD/blob/main/audits/ConsensysDiligence_M0_MUSD_audit.pdf) | Consensys Diligence | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [| Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_MUSD\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/mUSD/blob/main/audits/GuardianAudits_M0_MUSD_report.pdf) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [| Kirill Fedoseev | August 6, 2025 | [MZero-review-report-v1-private.md](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/mUSD/blob/main/audits/MZero-review-report-v1-private.md) | Guardian | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [| Adevar | January 21, 2026 | [Adevar\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/Adevar_M0_Portal_V2.pdf) | Adevar | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [| ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/ChainSecurity_M0_Portal_V2_Liquidity_Delivery.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 24 | high |
| [| Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/Guardian_M0_Portal_V2_Liquidity_Delivery.pdf) | Guardian | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 29 | high |
| [| Halborn | January 16, 2026 | [Halborn\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/Halborn_M0_Portal_V2.pdf) | Halborn | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [| Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/Sherlock_M0_Portal_V2.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 24 | high |
| [| Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/JMI/M0_EVM-M_Extensions_Review_report.pdf) | Guardian | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [| Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/JMI/2025_12_10_Final_M0_Collaborative_Audit_Report_1765332345.pdf) | Guardian | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Audits and fixes overview.pdf](https://github.com/m0-foundation/documentation/blob/main/protocol-audit-reports/Audits%20and%20fixes%20overview.pdf) | Unknown | Audit | 2024-03 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 19 | medium |
| [Quantstamp External Fix Review.pdf](https://github.com/m0-foundation/documentation/blob/main/protocol-audit-reports/Quantstamp%20External%20Fix%20Review.pdf) | Quantstamp | Audit | n/a | unknown | Direct | contract_name | matched | 3 | 0 | 0 | 1 | low |
| [ChainSecurity_M0_M_Extensions_audit.pdf](https://github.com/m0-foundation/evm-m-extensions/blob/main/audits/ChainSecurity_M0_M_Extensions_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [GuardianAudits_M0_MExtensions_report.pdf](https://github.com/m0-foundation/evm-m-extensions/blob/main/audits/GuardianAudits_M0_MExtensions_report.pdf) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [adevar_v2_audit.pdf (also discovered via alternate URL)](https://github.com/m0-foundation/solana-m-extensions/blob/main/audits/adevar_v2_audit.pdf) | Adevar | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [halborn_v2_audit.pdf (also discovered via alternate URL)](https://github.com/m0-foundation/solana-m/blob/main/audits/halborn_v2_audit.pdf) | Halborn | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [guardian_liquidity_delivery_update.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1.1/guardian_liquidity_delivery_update.pdf) | Guardian | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [chainsecurity_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_one/chainsecurity_report.pdf) | ChainSecurity | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 21 | high |
| [guardian_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_one/guardian_report.pdf) | Guardian | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 29 | high |
| [halborn_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_one/halborn_report.pdf) | Halborn | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [sherlock_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_one/sherlock_report.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [adevar_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_two/adevar_report.pdf) | Adevar | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2024-11-26-cyfrin-M0-Portals-v2.0.pdf](https://github.com/m0-foundation/m-portal/blob/main/audits/2024-11-26-cyfrin-M0-Portals-v2.0.pdf) | Cyfrin | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [Halborn - M Portal.pdf](https://github.com/m0-foundation/m-portal/blob/main/audits/Halborn%20-%20M%20Portal.pdf) | Halborn | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Kirill-Fedoseev-audit-report-v2.md](https://github.com/m0-foundation/m-portal/blob/main/audits/Kirill-Fedoseev-audit-report-v2.md) | Kirill Fedoseev | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [v1.1](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1.1) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17572] | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted all contracts from the scope section and file hashes appendix. Audit date from timeline: 2024-01-08 through 2024-01-29, using end date.
- [17573] | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: All contracts listed in the scope table on page 9 are extracted. Audit date from timeline: 08/01/2024 to 02/02/2024, using end date.
- [17574] | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted all contracts from the scope section listing TTG and Protocol contracts. Audit date from cover page 'April 2024' mapped to last day of month.
- [17575] | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted all contracts explicitly listed in the scope section (pages 5-6) and renamed contracts from version notes.
- [17576] | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Scope section states all contracts and interfaces in the src folder of three repositories are in scope. Contract names extracted from findings and system overview.
- [17577] | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted contract names from findings context and appendix invariants. No explicit scope section found; contracts are those audited as part of the M^0 protocol.
- [17578] | Kirill Fedoseev | Dec 2023 - April 2024 | [Kirill Fedoseev report.md](){rel="&#x22;nofollow&#x22;"} | — no match: The report does not list specific contract names in scope; it only mentions directories (common/src/** , protocol/src/** , ttg/src/**) and commit hashes. No individual contract names are extractable.
- [17579] | Sherlock | March 2024 - April 2024 | [Sherlock\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted from Sherlock audit report for M0 protocol. Scope includes repositories MZero-Labs/ttg, MZero-Labs/protocol, MZero-Labs/common. Contracts explicitly mentioned in findings: MToken, MinterGateway, StableEarnerRateModel, TTGRegistrarReader.
- [17580] | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Scope table explicitly lists 8 contracts/files. Audit date from cover page.
- [17581] | Three Sigma | July 2024 - Aug 2024 | [Three Sigma Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Scope table lists 4 files; contract names extracted from filenames. Audit date from timeline: 17-07-2024 to 19-07-2024, end date used.
- [17582] | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} | — no match: Scope section lists 8 contracts/files. Audit date is 09.08.24 (August 9, 2024).
- [17583] | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Scope section lists repository and commit hash; contracts in scope are all .sol files under src/. Extracted contract names from file paths and findings.
- [17584] | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Extracted 10 contracts from scope table and V2 update. Audit date from cover page.
- [17585] | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: All contracts listed in the 'Audit Scope & Methodology' scope table were extracted. The audit date is explicitly stated as 'Final Report Date August 5th, 2025' on the cover page.
- [17586] | Halborn | June 2025 | [Halborn\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Two Solana programs (m_ext and ext_swap) are explicitly listed in the scope section. The audit date is the end date of the engagement (June 23, 2025).
- [17587] | Adevar | July 2025 | [Adevar\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Extracted from Audit Scope section on page 6. Three programs: m_ext, ext_swap, and ext_earn (limited review). Date from cover page: July 02, 2025.
- [17588] | Ottersec | July 2025 | [Ottersec\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Scope section explicitly lists three programs: solana-extensions, m_ext, ext_swap. Audit date from cover page.
- [17589] | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: All contracts listed in the scope table on page 10 are extracted. Audit date from summary: 28/04/2025 to 05/05/2025, using end date.
- [17590] | ChainLight | May 2025 | [ChainLight\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Contracts extracted from findings and scope section. Audit date from revision history.
- [17591] | ChainSecurity | September 12, 2025 | [ChainSecurity\_M0\_M\_Portal\_Lite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Scope section explicitly lists files: HubPortal.sol, Portal.sol, SpokePortal.sol, Locker.sol, ReentrancyLock.sol. Audit date from cover page.
- [17592] | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted all contracts from the scope table on page 6, including source files and script files. Audit date from cover page.
- [17593] | Halborn | October 27, 2025 | [Halborn - M Portal Lite 10-27-25.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Scope section lists three contracts: HubPortal.sol, Portal.sol, SpokePortal.sol. Audit date is October 27th, 2025.
- [17594] | Halborn | March 2025 | [Halborn\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted three Solana programs (Earn, ExtEarn, Portal) from the scope section. Audit date is the end date of the engagement (April 10, 2025).
- [17595] | OtterSec | April 2025 | [OtterSec\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Scope section explicitly lists two programs: 'earn' and 'ext-earn'. Audit date is April 18th, 2025 from the cover page.
- [17596] | Sec3 | May 2025 | [Sec3\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Scope table lists two programs: earn and ext_earn. Audit date from report header.
- [17597] | ChainSecurity | August 26, 2025 | [ChainSecurity\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Only MUSD.sol is in scope; MYieldToOne and other contracts are explicitly excluded.
- [17598] | Consensys Diligence | August 2025 | [ConsensysDiligence\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: The audit scope explicitly lists src/IMUSD.sol and src/MUSD.sol. The audit date is from the document changelog: initial report version 1.0 dated 2025-08-15.
- [17599] | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_MUSD\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Scope table lists two contracts: IMUSD.sol and MUSD.sol. Audit date from cover page.
- [17600] | Kirill Fedoseev | August 6, 2025 | [MZero-review-report-v1-private.md](){rel="&#x22;nofollow&#x22;"} | — no match: Audit report for M^0 MUSD M Extension. Scope explicitly lists two contracts: IMUSD and MUSD. Date found in header: 06.08.25 (interpreted as June 8, 2025).
- [17601] | Adevar | January 21, 2026 | [Adevar\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted contract names from scope section and findings. Solana programs (portal, wormhole-adapter, hyperlane-adapter) are Rust programs, not Solidity contracts, so they are not included as contract names. Audit date from cover page.
- [17602] | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted contract names from the scope section (pages 5-6) and file paths. Audit date from cover page.
- [17603] | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted contracts from scope tables for M-Portal-V2, Solana-Portal, EVM Liquidity-Delivery, and SVM Liquidity-Delivery. Also included close_order_token_account from remediation findings.
- [17604] | Halborn | January 16, 2026 | [Halborn\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Scope section explicitly lists three contracts: HubPortal.sol, Portal.sol, SpokePortal.sol. Audit date is the end date of the engagement: December 31, 2025.
- [17605] | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | — matched: Extracted contract names from scope file listings for both EVM and Solana repositories. Audit date from header: 'Date Audited: December 9 - December 19, 2025' -> end date 2025-12-19.
- [17606] | Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Scope table lists three contracts; three additional files from previous audit changes are also in scope.
- [17607] | Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} | — no match: Extracted 7 contract names from the scope section listing files in two repositories. Audit date is the end date of the range 'November10-November13,2025'.
- [17608] Audits and fixes overview.pdf — matched: Extracted contract names from findings across multiple audit reports (ThreeSigma, Quantstamp, Certora, Chainsecurity, Prototech, OpenZeppelin, KirillFedoseev, M^0 internal). No explicit scope section found; names inferred from issues and file paths. Audit date estimated as March 2024 (last day of month) from header 'M^0LabsEngineering,March2024'.
- [17609] Quantstamp External Fix Review.pdf — matched: No explicit scope section found; contracts inferred from findings. No audit date found.
- [17610] ChainSecurity_M0_M_Extensions_audit.pdf — no match: Extracted contracts from scope table and subsequent updates. Audit date from cover page.
- [17611] GuardianAudits_M0_MExtensions_report.pdf — no match: All contracts listed in the audit scope table on page 6 are extracted. The audit date is explicitly given as 'August 15, 2025' on the cover page.
- [17612] adevar_v2_audit.pdf — matched: Audit scope lists two repositories: solana-m-extensions (PR #38) and solana-m (PR #138). The programs within are m_ext, ext_swap, earn, and portal. The audit date is explicitly stated as 'September 04, 2025' on the cover page.
- [17615] halborn_v2_audit.pdf — matched: The audit report scopes four Solana programs: earn, portal, m_ext, and ext_swap. The audit date is the end date of the engagement (September 1, 2025).
- [17616] guardian_liquidity_delivery_update.pdf — no match: Scope is a single PR affecting EVM and SVM order-book behavior. Only IOrderBook and OrderBook are explicitly referenced in findings. No other contracts are named.
- [17617] chainsecurity_report.pdf — matched: Extracted 22 contract names from the scope section (Section 2.1) and file paths. Audit date from cover page.
- [17618] guardian_report.pdf — matched: Extracted contract names from scope tables for EVM and SVM codebases, including libraries and instructions. Audit date from cover page.
- [17619] halborn_report.pdf — no match: Extracted contract names from scope section. EVM contract: OrderBook, IOrderBook. Solana program: order_book (with multiple source files). Audit date is end of engagement period.
- [17620] sherlock_report.pdf — no match: Extracted contract names from the scope section listing files. Audit date from 'Date Audited: December 8-December 16, 2025'.
- [17621] adevar_report.pdf — no match: Scope includes svm/src and evm/programs/order_book/src. Contract names extracted from file paths: OrderBook.sol, fill.rs, open.rs. Audit date from cover page.
- [17622] 2024-11-26-cyfrin-M0-Portals-v2.0.pdf — matched: All contracts listed in Audit Scope section. Date from cover page.
- [17623] Halborn - M Portal.pdf — matched: Scope section lists four contracts: ExecutorEntryPoint, HubExecutorEntryPoint, Portal, HubPortal. Audit date is the end date of engagement: September 24, 2025.
- [17624] Kirill-Fedoseev-audit-report-v2.md — no match: Extracted contracts from scope summary and findings. Audit date from cover page.
- [17625] v1.1 — no match: The provided text is a GitHub page listing a PDF file, not the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Registrar | ambiguous — not counted | Registrar (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — deployed 2024-05-07 16:17:59+03 — liveness: live (code_present_context)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerTokenDeployer | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerToken | own contract | PowerToken (selected) `0x5983b89fa184f14917013b9c3062afd9434c5b03` — deployed 2024-05-07 16:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernor | own contract | StandardGovernor (selected) `0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernorDeployer | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroToken | own contract | ZeroToken (selected) `0x988567fe094570cce1ffda29d1f2d842b70492be` — deployed 2024-05-07 16:17:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroGovernor | own contract | ZeroGovernor (selected) `0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | DistributionVault | own contract | DistributionVault (selected) `0xd7298f620b0f752cf41bd818a16c756d9dcaa34f` — deployed 2024-05-07 16:17:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernor | own contract | EmergencyGovernor (selected) `0x886d405949f709bc3f4451491bdd07ff51cdf90a` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernorDeployer | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerBootstrapToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IDeployer | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStandardGovernorDeployer | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEmergencyGovernor | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IDistributionVault | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPowerBootstrapToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IRegistrar | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStandardGovernor | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IZeroGovernor | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEmergencyGovernorDeployer | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IZeroToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPowerTokenDeployer | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPowerToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PureEpochs | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC5805 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ThresholdGovernor | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | BatchGovernor | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedVoteToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedInflationaryVoteToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC5805 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC6372 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEpochBasedVoteToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IGovernor | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IBatchGovernor | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IThresholdGovernor | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEpochBasedInflationaryVoteToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC3009 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC20Extended | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC712 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContractHelper | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StatefulERC712 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC20 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC20Extended | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC3009 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC712 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStatefulERC712 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC1271 | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | UIntMath | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SignatureChecker | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterGateway | own contract | MinterGateway (selected) `0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` — deployed 2024-05-07 16:19:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IContinuousIndexing | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ITTGRegistrar | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IRateModel | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMinterGateway | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMToken | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SplitEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StableEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterRateModel | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStableEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMinterRateModel | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | TTGRegistrarReader | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContinuousIndexingMath | unmatched — not counted | — | listed in scope | no |
| | Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContinuousIndexing | unmatched — not counted | — | listed in scope | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContractHelper | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC20Permit | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC712 | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SignatureChecker | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StatefulERC712 | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContinuousIndexing | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EarnerRateModel | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContinuousIndexingMath | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SPOGRegistrarReader | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | UIntMath | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterRateModel | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MToken | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Protocol | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | BatchGovernor | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedInflationaryVoteToken | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedVoteToken | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC5805 | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ThresholdGovernor | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | DistributionVault | own contract | DistributionVault (selected) `0xd7298f620b0f752cf41bd818a16c756d9dcaa34f` — deployed 2024-05-07 16:17:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernor | own contract | EmergencyGovernor (selected) `0x886d405949f709bc3f4451491bdd07ff51cdf90a` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernorDeployer | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PureEpochs | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerBootstrapToken | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerToken | own contract | PowerToken (selected) `0x5983b89fa184f14917013b9c3062afd9434c5b03` — deployed 2024-05-07 16:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerTokenDeployer | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Registrar | ambiguous — not counted | Registrar (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — deployed 2024-05-07 16:17:59+03 — liveness: live (code_present_context)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernor | own contract | StandardGovernor (selected) `0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernorDeployer | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroGovernor | own contract | ZeroGovernor (selected) `0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroToken | own contract | ZeroToken (selected) `0x988567fe094570cce1ffda29d1f2d842b70492be` — deployed 2024-05-07 16:17:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IBatchGovernor | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEpochBasedInflationaryVoteToken | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEpochBasedVoteToken | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC5805 | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC6372 | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IGovernor | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IThresholdGovernor | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | BatchGovernor | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedInflationaryVoteToken | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedVoteToken | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC5805 | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ThresholdGovernor | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IDeployer | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IDistributionVault | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEmergencyGovernor | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEmergencyGovernorDeployer | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPowerBootstrapToken | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPowerToken | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPowerTokenDeployer | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IRegistrar | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStandardGovernor | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStandardGovernorDeployer | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IZeroGovernor | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IZeroToken | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PureEpochs | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | DistributionVault | own contract | DistributionVault (selected) `0xd7298f620b0f752cf41bd818a16c756d9dcaa34f` — deployed 2024-05-07 16:17:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernor | own contract | EmergencyGovernor (selected) `0x886d405949f709bc3f4451491bdd07ff51cdf90a` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernorDeployer | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerBootstrapToken | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerToken | own contract | PowerToken (selected) `0x5983b89fa184f14917013b9c3062afd9434c5b03` — deployed 2024-05-07 16:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerTokenDeployer | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Registrar | ambiguous — not counted | Registrar (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — deployed 2024-05-07 16:17:59+03 — liveness: live (code_present_context)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernor | own contract | StandardGovernor (selected) `0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernorDeployer | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroGovernor | own contract | ZeroGovernor (selected) `0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroToken | own contract | ZeroToken (selected) `0x988567fe094570cce1ffda29d1f2d842b70492be` — deployed 2024-05-07 16:17:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContinuousIndexing | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IContinuousIndexing | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMinterGateway | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMToken | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IRateModel | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ITTGRegistrar | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContinuousIndexingMath | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | TTGRegistrarReader | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMinterRateModel | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStableEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterRateModel | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SplitEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StableEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterGateway | own contract | MinterGateway (selected) `0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` — deployed 2024-05-07 16:19:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MToken | unmatched — not counted | — | listed in scope | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | DistributionVault | own contract | DistributionVault (selected) `0xd7298f620b0f752cf41bd818a16c756d9dcaa34f` — deployed 2024-05-07 16:17:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernor | own contract | EmergencyGovernor (selected) `0x886d405949f709bc3f4451491bdd07ff51cdf90a` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernorDeployer | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerBootstrapToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerToken | own contract | PowerToken (selected) `0x5983b89fa184f14917013b9c3062afd9434c5b03` — deployed 2024-05-07 16:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerTokenDeployer | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Registrar | ambiguous — not counted | Registrar (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — deployed 2024-05-07 16:17:59+03 — liveness: live (code_present_context)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernor | own contract | StandardGovernor (selected) `0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernorDeployer | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroGovernor | own contract | ZeroGovernor (selected) `0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroToken | own contract | ZeroToken (selected) `0x988567fe094570cce1ffda29d1f2d842b70492be` — deployed 2024-05-07 16:17:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | BatchGovernor | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC5805 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedInflationaryVoteToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedVoteToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ThresholdGovernor | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IBatchGovernor | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC5805 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC6372 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEpochBasedInflationaryVoteToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEpochBasedVoteToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IGovernor | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IThresholdGovernor | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IDeployer | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IDistributionVault | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEmergencyGovernor | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEmergencyGovernorDeployer | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPowerBootstrapToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPowerToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPowerTokenDeployer | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IRegistrar | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStandardGovernor | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStandardGovernorDeployer | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IZeroGovernor | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IZeroToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PureEpochs | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterGateway | own contract | MinterGateway (selected) `0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` — deployed 2024-05-07 16:19:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContinuousIndexing | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IContinuousIndexing | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMinterGateway | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IRateModel | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ITTGRegistrar | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContinuousIndexingMath | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | TTGRegistrarReader | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterRateModel | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SplitEarnerRateModel | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StableEarnerRateModel | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IEarnerRateModel | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMinterRateModel | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStableEarnerRateModel | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContractHelper | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC20Extended | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC3009 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC712 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StatefulERC712 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC1271 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC20 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC20Extended | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC3009 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC712 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IStatefulERC712 | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SignatureChecker | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | UIntMath | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC712Extended | unmatched — not counted | — | renamed from ERC712 in version 2 | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC712Extended | unmatched — not counted | — | added in version 2 | no |
| | Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EarnerRateModel | unmatched — not counted | — | renamed from StableEarnerRateModel in version 3 | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterGateway | own contract | MinterGateway (selected) `0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` — deployed 2024-05-07 16:19:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | MToken | unmatched — not counted | — | mentioned in scope and findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | DistributionVault | own contract | DistributionVault (selected) `0xd7298f620b0f752cf41bd818a16c756d9dcaa34f` — deployed 2024-05-07 16:17:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerToken | own contract | PowerToken (selected) `0x5983b89fa184f14917013b9c3062afd9434c5b03` — deployed 2024-05-07 16:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroToken | own contract | ZeroToken (selected) `0x988567fe094570cce1ffda29d1f2d842b70492be` — deployed 2024-05-07 16:17:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernor | own contract | StandardGovernor (selected) `0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernor | own contract | EmergencyGovernor (selected) `0x886d405949f709bc3f4451491bdd07ff51cdf90a` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroGovernor | own contract | ZeroGovernor (selected) `0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | TTGRegistrarReader | unmatched — not counted | — | mentioned in scope and findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | Registrar | ambiguous — not counted | Registrar (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — deployed 2024-05-07 16:17:59+03 — liveness: live (code_present_context)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | BatchGovernor | unmatched — not counted | — | mentioned in scope and findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | ThresholdGovernor | unmatched — not counted | — | mentioned in scope and findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedVoteToken | unmatched — not counted | — | mentioned in scope and findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedInflationaryVoteToken | unmatched — not counted | — | mentioned in scope and findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC20Extended | unmatched — not counted | — | mentioned in findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC5805 | unmatched — not counted | — | mentioned in findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC3009 | unmatched — not counted | — | mentioned in findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | IBatchGovernor | unmatched — not counted | — | mentioned in findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | IERC5805 | unmatched — not counted | — | mentioned in findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernorDeployer | unmatched — not counted | — | mentioned in findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerTokenDeployer | unmatched — not counted | — | mentioned in findings | no |
| | OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernorDeployer | unmatched — not counted | — | mentioned in findings | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedVoteToken | unmatched — not counted | — | mentioned in context of findings (7.1, 7.2, 10.8) | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerToken | own contract | PowerToken (selected) `0x5983b89fa184f14917013b9c3062afd9434c5b03` — deployed 2024-05-07 16:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroToken | own contract | ZeroToken (selected) `0x988567fe094570cce1ffda29d1f2d842b70492be` — deployed 2024-05-07 16:17:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MToken | unmatched — not counted | — | mentioned in findings (8.1, 8.2, 10.1, 10.8) | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterGateway | own contract | MinterGateway (selected) `0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` — deployed 2024-05-07 16:19:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC3009 | unmatched — not counted | — | mentioned in finding 8.2 | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ERC20Extended | unmatched — not counted | — | mentioned in finding 11.2 | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SignatureChecker | unmatched — not counted | — | mentioned in finding 11.7 | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardGovernor | own contract | StandardGovernor (selected) `0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | DistributionVault | own contract | DistributionVault (selected) `0xd7298f620b0f752cf41bd818a16c756d9dcaa34f` — deployed 2024-05-07 16:17:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EmergencyGovernor | own contract | EmergencyGovernor (selected) `0x886d405949f709bc3f4451491bdd07ff51cdf90a` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PowerBootstrapToken | unmatched — not counted | — | mentioned in appendix invariants | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Registrar | ambiguous — not counted | Registrar (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — deployed 2024-05-07 16:17:59+03 — liveness: live (code_present_context)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ZeroGovernor | own contract | ZeroGovernor (selected) `0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ContinuousIndexing | unmatched — not counted | — | mentioned in findings 10.4, 10.5 | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | EpochBasedInflationaryVoteToken | unmatched — not counted | — | mentioned in finding 10.9 | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MockBootstrapToken | unmatched — not counted | — | mentioned in finding 8.4 | no |
| | Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MockCashToken | unmatched — not counted | — | mentioned in finding 7.3 | no |
| | Sherlock | March 2024 - April 2024 | [Sherlock\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MToken | unmatched — not counted | — | mentioned in scope and findings | no |
| | Sherlock | March 2024 - April 2024 | [Sherlock\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MinterGateway | own contract | MinterGateway (selected) `0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` — deployed 2024-05-07 16:19:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Sherlock | March 2024 - April 2024 | [Sherlock\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StableEarnerRateModel | unmatched — not counted | — | mentioned in findings | no |
| | Sherlock | March 2024 - April 2024 | [Sherlock\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | TTGRegistrarReader | unmatched — not counted | — | mentioned in findings | no |
| | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | Migratable | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | WrappedMToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x437cc33344a0b27a429f795ff6b469c72698b291` — deployed 2024-08-14 18:51:47+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | IndexingMath | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMigratable | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | IRegistrarLike | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | IWrappedMToken | unmatched — not counted | — | listed in scope table | no |
| | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMTokenLike | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | July 2024 - Aug 2024 | [Three Sigma Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | IndexingMath | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | July 2024 - Aug 2024 | [Three Sigma Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | Migratable | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | July 2024 - Aug 2024 | [Three Sigma Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x437cc33344a0b27a429f795ff6b469c72698b291` — deployed 2024-08-14 18:51:47+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| | Three Sigma | July 2024 - Aug 2024 | [Three Sigma Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} | | WrappedMToken | unmatched — not counted | — | listed in scope table | no |
| | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} | | IMigratable | unmatched — not counted | — | listed in scope | no |
| | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} | | IMTokenLike | unmatched — not counted | — | listed in scope | no |
| | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} | | IRegistrarLike | unmatched — not counted | — | listed in scope | no |
| | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} | | IWrappedMToken | unmatched — not counted | — | listed in scope | no |
| | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} | | IndexingMath | unmatched — not counted | — | listed in scope | no |
| | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} | | Migratable | unmatched — not counted | — | listed in scope | no |
| | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} | | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x437cc33344a0b27a429f795ff6b469c72698b291` — deployed 2024-08-14 18:51:47+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} | | WrappedMToken | unmatched — not counted | — | listed in scope | no |
| | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MYieldFee | unmatched — not counted | — | listed in scope and findings | no |
| | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SwapFacility | unmatched — not counted | — | listed in findings | no |
| | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | UniswapV3SwapAdapter | unmatched — not counted | — | listed in findings | no |
| | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MYieldToOne | unmatched — not counted | — | listed in finding L-01 | no |
| | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MEarnerManager | unmatched — not counted | — | listed in findings | no |
| | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Blacklistables | unmatched — not counted | — | mentioned in finding I-02 | no |
| | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IUniswapV3SwapAdapter | unmatched — not counted | — | mentioned in finding I-04 | no |
| | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IV3SwapRouter | unmatched — not counted | — | mentioned in finding I-05 | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MExtension | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Blacklistable | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IndexingMath | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MEarnerManager | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MSpokeYieldFee | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MYieldFee | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MYieldToOne | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SwapFacility | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | UniswapV3SwapAdapter | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ReentrancyLock | unmatched — not counted | — | added in V2 scope update | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MExtension | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMExtension | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMTokenLike | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SwapFacility | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | UniswapV3SwapAdapter | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IndexingMath | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Blacklistable | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IBlacklistable | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMYieldToOne | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MYieldToOne | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MSpokeYieldFee | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MYieldFee | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMEarnerManager | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MEarnerManager | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IRegistrarLike | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ISwapFacility | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IUniswapV3SwapAdapter | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IContinuousIndexing | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMSpokeYieldFee | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMYieldFee | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IRateOracle | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IV3SwapRouter | unmatched — not counted | — | listed in scope table | no |
| | Halborn | June 2025 | [Halborn\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | m_ext | unmatched — not counted | — | listed in scope | no |
| | Halborn | June 2025 | [Halborn\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ext_swap | unmatched — not counted | — | listed in scope | no |
| | Adevar | July 2025 | [Adevar\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | m_ext | unmatched — not counted | — | listed in scope | no |
| | Adevar | July 2025 | [Adevar\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ext_swap | unmatched — not counted | — | listed in scope | no |
| | Adevar | July 2025 | [Adevar\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ext_earn | unmatched — not counted | — | listed in scope (limited review) | no |
| | Ottersec | July 2025 | [Ottersec\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | solana-extensions | unmatched — not counted | — | Scope section: 'solana-extensions' program | no |
| | Ottersec | July 2025 | [Ottersec\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | m_ext | unmatched — not counted | — | Scope section: 'm_ext program defines extension tokens' | no |
| | Ottersec | July 2025 | [Ottersec\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ext_swap | unmatched — not counted | — | Scope section: 'ext_swap program allows seamless conversion' | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Blacklistable | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MExtension | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PausableOwnable | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | HyperlaneBridge | own contract | HyperlaneBridge (selected) `0x51dce104e5ba88fabc19a2c519f955bb834b0dc3` — deployed 2025-05-21 06:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardHookMetadata | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | BytesParser | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | PayloadEncoder | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SafeCall | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | TypeConverter | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MYieldToOne | unmatched — not counted | — | listed in scope table | no |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | listed in scope table | no |
| | ChainLight | May 2025 | [ChainLight\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | HyperlaneBridge | own contract | HyperlaneBridge (selected) `0x51dce104e5ba88fabc19a2c519f955bb834b0dc3` — deployed 2025-05-21 06:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | ChainLight | May 2025 | [ChainLight\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | mentioned in findings MPORTALLITE-002 and MPORTALLITE-003 | no |
| | ChainLight | May 2025 | [ChainLight\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | mentioned in finding MPORTALLITE-001 | no |
| | ChainLight | May 2025 | [ChainLight\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IndexingMath | unmatched — not counted | — | mentioned in findings MPORTALLITE-002 and MPORTALLITE-003 | no |
| | ChainSecurity | September 12, 2025 | [ChainSecurity\_M0\_M\_Portal\_Lite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | September 12, 2025 | [ChainSecurity\_M0\_M\_Portal\_Lite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | ChainSecurity | September 12, 2025 | [ChainSecurity\_M0\_M\_Portal\_Lite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | September 12, 2025 | [ChainSecurity\_M0\_M\_Portal\_Lite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | Locker | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | September 12, 2025 | [ChainSecurity\_M0\_M\_Portal\_Lite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | ReentrancyLock | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokeVault | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | ScriptBase | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | PausableOwnableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | BytesParser | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | PayloadEncoder | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | SafeCall | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | TypeConverter | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | DeployBase | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | DeployHub | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | DeployHubBase | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | DeploySpoke | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | DeploySpokeBase | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | DeploySpokeWrappedM | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | Configure | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | ConfigureBase | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | Chains | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | HyperlaneConfig | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | ExecuteBase | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | SendEarnerStatus | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | SendMTokenIndex | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | SendRegistrarKey | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | Transfer | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | TransferMLikeToken | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | Migrator | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | UpgradeHubPortal | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | UpgradeHubPortalBase | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | UpgradeSpokePortal | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | UpgradeSpokePortalBase | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | HyperlaneBridge | own contract | HyperlaneBridge (selected) `0x51dce104e5ba88fabc19a2c519f955bb834b0dc3` — deployed 2025-05-21 06:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | StandardHookMetadata | unmatched — not counted | — | listed in scope table | no |
| | Halborn | October 27, 2025 | [Halborn - M Portal Lite 10-27-25.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | listed in scope | no |
| | Halborn | October 27, 2025 | [Halborn - M Portal Lite 10-27-25.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Halborn | October 27, 2025 | [Halborn - M Portal Lite 10-27-25.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | listed in scope | no |
| | Halborn | March 2025 | [Halborn\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Earn | unmatched — not counted | — | listed in scope | no |
| | Halborn | March 2025 | [Halborn\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ExtEarn | unmatched — not counted | — | listed in scope | no |
| | Halborn | March 2025 | [Halborn\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | OtterSec | April 2025 | [OtterSec\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | earn | unmatched — not counted | — | Scope section: 'earn - A program for yield distribution logic and earner management for the M token.' | no |
| | OtterSec | April 2025 | [OtterSec\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ext-earn | unmatched — not counted | — | Scope section: 'ext-earn - A program to handle wrapping/unwrapping M to wM, as well as yield distribution and earner manager for the wM token.' | no |
| | Sec3 | May 2025 | [Sec3\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | earn | unmatched — not counted | — | listed in scope table as P1 | no |
| | Sec3 | May 2025 | [Sec3\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ext_earn | unmatched — not counted | — | listed in scope table as P2 | no |
| | ChainSecurity | August 26, 2025 | [ChainSecurity\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | MUSD | unmatched — not counted | — | listed in scope table: src: MUSD.sol | no |
| | Consensys Diligence | August 2025 | [ConsensysDiligence\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | IMUSD | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| | Consensys Diligence | August 2025 | [ConsensysDiligence\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} | | MUSD | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_MUSD\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IMUSD | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_MUSD\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MUSD | unmatched — not counted | — | listed in scope table | no |
| | Kirill Fedoseev | August 6, 2025 | [MZero-review-report-v1-private.md](){rel="&#x22;nofollow&#x22;"} | | IMUSD | unmatched — not counted | — | Reviewed contracts: src/IMUSD.sol | no |
| | Kirill Fedoseev | August 6, 2025 | [MZero-review-report-v1-private.md](){rel="&#x22;nofollow&#x22;"} | | MUSD | unmatched — not counted | — | Reviewed contracts: src/MUSD.sol | no |
| | Adevar | January 21, 2026 | [Adevar\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | listed in scope and findings | no |
| | Adevar | January 21, 2026 | [Adevar\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | listed in scope and findings | no |
| | Adevar | January 21, 2026 | [Adevar\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Adevar | January 21, 2026 | [Adevar\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | MigrateSpokePortalBase | unmatched — not counted | — | listed in findings | no |
| | Adevar | January 21, 2026 | [Adevar\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | IHubPortal | unmatched — not counted | — | referenced in HubPortal.sol | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | HyperlaneBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | WormholeBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | BridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | IBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | IHubPortal | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | IMerkleTreeBuilderLike | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | IMTokenLike | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | IOrderBookLike | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | IPortal | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | IRegistrarLike | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | ISpokeMTokenLike | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | ISpokePortal | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | ISwapFacilityLike | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | BytesParser | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | PayloadEncoder | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | TypeConverter | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | ReentrancyLock | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | ExecutorOptions | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | OptionsBuilder | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | LayerZeroBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | OrderBook | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | IOrderBook | unmatched — not counted | — | listed in scope | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | ReentrancyLock | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | BytesParser | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | PayloadEncoder | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | TypeConverter | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | BridgeAdapter | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | WormholeBridgeAdapter | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | HyperlaneBridgeAdapter | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | ExecutorMessages | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | RelayInstructions | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | OrderBook | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | resolve_execute | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | receive_message | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | send_token | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | send_message | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | transfer_admin | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | initialize | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | send_merkle_root | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | send_fill_report | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | send_index | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | sync_extensions | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | pause | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | set_peer | unmatched — not counted | — | listed in Solana-Portal scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | fill | unmatched — not counted | — | listed in SVM Liquidity-Delivery scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | open | unmatched — not counted | — | listed in SVM Liquidity-Delivery scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | report_fill | unmatched — not counted | — | listed in SVM Liquidity-Delivery scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | claim_refund | unmatched — not counted | — | listed in SVM Liquidity-Delivery scope table | no |
| | Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} | | close_order_token_account | unmatched — not counted | — | mentioned in remediation findings (M-04) | no |
| | Halborn | January 16, 2026 | [Halborn\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | listed in scope | no |
| | Halborn | January 16, 2026 | [Halborn\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Halborn | January 16, 2026 | [Halborn\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | BridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | HyperlaneBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | IHyperlaneBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | IWormholeBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | WormholeBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | HubPortal | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | IBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | IHubPortal | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | IMTokenLike | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | IOrderBookLike | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | IPortal | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | IRegistrarLike | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | ISpokeMTokenLike | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | ISpokePortal | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | ISwapFacilityLike | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | BytesParser | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | PayloadEncoder | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | TypeConverter | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | SpokePortal | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | ReentrancyLock | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | common | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | common-macros | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | hyperlane-adapter | unmatched — not counted | — | listed in scope | no |
| | Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} | | wormhole-adapter | unmatched — not counted | — | listed in scope | no |
| | Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Pausable | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | JMIExtension | unmatched — not counted | — | listed in scope table | no |
| | Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Freezable | unmatched — not counted | — | mentioned as changed file from previous audit | no |
| | Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | MYieldToOne | unmatched — not counted | — | mentioned as changed file from previous audit | no |
| | Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SwapFacility | unmatched — not counted | — | mentioned as changed file from previous audit | no |
| | Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | TransferHelper | unmatched — not counted | — | listed in scope | no |
| | Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IPausable | unmatched — not counted | — | listed in scope | no |
| | Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | Pausable | unmatched — not counted | — | listed in scope | no |
| | Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | IJMIExtension | unmatched — not counted | — | listed in scope | no |
| | Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | JMIExtension | unmatched — not counted | — | listed in scope | no |
| | Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | ISwapFacility | unmatched — not counted | — | listed in scope | no |
| | Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} | | SwapFacility | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | MToken | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | MinterGateway | own contract | MinterGateway (selected) `0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e` — deployed 2024-05-07 16:19:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audits and fixes overview.pdf | PowerToken | own contract | PowerToken (selected) `0x5983b89fa184f14917013b9c3062afd9434c5b03` — deployed 2024-05-07 16:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audits and fixes overview.pdf | StandardGovernor | own contract | StandardGovernor (selected) `0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audits and fixes overview.pdf | ThresholdGovernor | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | BatchGovernor | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | ZeroGovernor | own contract | ZeroGovernor (selected) `0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audits and fixes overview.pdf | EmergencyGovernor | own contract | EmergencyGovernor (selected) `0x886d405949f709bc3f4451491bdd07ff51cdf90a` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audits and fixes overview.pdf | DistributionVault | own contract | DistributionVault (selected) `0xd7298f620b0f752cf41bd818a16c756d9dcaa34f` — deployed 2024-05-07 16:17:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audits and fixes overview.pdf | StableEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | SplitEarnerRateModel | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | EpochBasedInflationaryVoteToken | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | EpochBasedVoteToken | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | ContinuousIndexingMath | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | PureEpochs | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | SignatureChecker | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | ERC712 | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | ERC20Extended | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | ERC3009 | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | ERC5805 | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | StatefulERC712 | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | TTGRegistrarReader | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | ContractHelper | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | UIntMath | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | PowerBootstrapToken | unmatched — not counted | — | listed in scope | no |
| Audits and fixes overview.pdf | ZeroToken | own contract | ZeroToken (selected) `0x988567fe094570cce1ffda29d1f2d842b70492be` — deployed 2024-05-07 16:17:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp External Fix Review.pdf | MToken | unmatched — not counted | — | mentioned in findings H01, H02, etc. | no |
| Quantstamp External Fix Review.pdf | PowerToken | own contract | PowerToken (selected) `0x5983b89fa184f14917013b9c3062afd9434c5b03` — deployed 2024-05-07 16:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp External Fix Review.pdf | StandardGovernor | own contract | StandardGovernor (selected) `0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016` — deployed 2024-05-07 16:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp External Fix Review.pdf | ZeroToken | own contract | ZeroToken (selected) `0x988567fe094570cce1ffda29d1f2d842b70492be` — deployed 2024-05-07 16:17:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_M0_M_Extensions_audit.pdf | MExtension | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | Blacklistable | unmatched — not counted | — | listed in scope table (later removed) | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | IndexingMath | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | MEarnerManager | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | MSpokeYieldFee | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | MYieldFee | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | MYieldToOne | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | SwapFacility | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | UniswapV3SwapAdapter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | ReentrancyLock | unmatched — not counted | — | added in V2 scope update | no |
| ChainSecurity_M0_M_Extensions_audit.pdf | Freezable | unmatched — not counted | — | added in V4 scope update (replaced Blacklistable) | no |
| GuardianAudits_M0_MExtensions_report.pdf | MExtension | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | IndexingMath | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | Freezable | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | IFreezable | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | IMYieldToOne | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | MYieldToOne | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | MSpokeYieldFee | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | MYieldFee | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | ReentrancyLock | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | SwapFacility | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | UniswapV3SwapAdapter | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | IMEarnerManager | unmatched — not counted | — | listed in scope table | no |
| GuardianAudits_M0_MExtensions_report.pdf | MEarnerManager | unmatched — not counted | — | listed in scope table | no |
| adevar_v2_audit.pdf | m_ext | unmatched — not counted | — | listed in scope as part of solana-m-extension repository | no |
| adevar_v2_audit.pdf | ext_swap | unmatched — not counted | — | mentioned in About M0 section as component of solana-m-extension programs | no |
| adevar_v2_audit.pdf | earn | unmatched — not counted | — | listed in scope as part of solana-m repository | no |
| adevar_v2_audit.pdf | portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_v2_audit.pdf | earn | unmatched — not counted | — | listed in scope as Solana program | no |
| halborn_v2_audit.pdf | portal | unmatched — not counted | — | listed in scope | no |
| halborn_v2_audit.pdf | m_ext | unmatched — not counted | — | listed in scope as Solana program | no |
| halborn_v2_audit.pdf | ext_swap | unmatched — not counted | — | listed in scope as Solana program | no |
| halborn_v2_audit.pdf | portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| guardian_liquidity_delivery_update.pdf | IOrderBook | unmatched — not counted | — | mentioned in finding I-01 location | no |
| guardian_liquidity_delivery_update.pdf | OrderBook | unmatched — not counted | — | mentioned in finding I-02 and L-01 locations | no |
| chainsecurity_report.pdf | HyperlaneBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | WormholeBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | BridgeAdapter | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | IBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | IHubPortal | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | IMerkleTreeBuilderLike | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | IMTokenLike | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | IOrderBookLike | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | IPortal | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | IRegistrarLike | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | ISpokeMTokenLike | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | ISpokePortal | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | ISwapFacilityLike | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | BytesParser | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | PayloadEncoder | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | TypeConverter | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | ReentrancyLock | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | HubPortal | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_report.pdf | SpokePortal | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | OrderBook | unmatched — not counted | — | listed in scope | no |
| chainsecurity_report.pdf | IOrderBook | unmatched — not counted | — | listed in scope | no |
| guardian_report.pdf | HubPortal | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| guardian_report.pdf | SpokePortal | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | ReentrancyLock | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | BytesParser | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | PayloadEncoder | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | TypeConverter | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | BridgeAdapter | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | WormholeBridgeAdapter | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | HyperlaneBridgeAdapter | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | ExecutorMessages | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | RelayInstructions | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | OrderBook | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | resolve_execute | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | receive_message | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | send_token | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | send_merkle_root | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | send_fill_report | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | send_index | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | send_message | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | transfer_admin | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | initialize | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | pause | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | set_peer | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | sync_extensions | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | fill | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | open | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | report_fill | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | claim_refund | unmatched — not counted | — | listed in scope table | no |
| guardian_report.pdf | close_order_token_account | unmatched — not counted | — | mentioned in remediation findings | no |
| halborn_report.pdf | OrderBook | unmatched — not counted | — | listed in scope | no |
| halborn_report.pdf | IOrderBook | unmatched — not counted | — | listed in scope | no |
| halborn_report.pdf | order_book | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | IOrderBook | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | OrderBook | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | constants | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | error | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | admin | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | claim_refund | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | configure_destination | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | fill | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | initialize | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | mod | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | open | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | report_fill | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | request_cancel | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | lib | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | orders | unmatched — not counted | — | listed in scope | no |
| sherlock_report.pdf | utils | unmatched — not counted | — | listed in scope | no |
| adevar_report.pdf | OrderBook | unmatched — not counted | — | listed in scope and findings | no |
| adevar_report.pdf | fill | unmatched — not counted | — | listed in scope and findings | no |
| adevar_report.pdf | open | unmatched — not counted | — | listed in scope and findings | no |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | HubPortal | unmatched — not counted | — | listed in scope | no |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | SpokePortal | unmatched — not counted | — | listed in scope | no |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | SpokeVault | unmatched — not counted | — | listed in scope | no |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | Governor | unmatched — not counted | — | listed in scope | no |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | Migrator | unmatched — not counted | — | listed in scope | no |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | Configurator | unmatched — not counted | — | listed in scope | no |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | PayloadEncoder | unmatched — not counted | — | listed in scope | no |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | RegistrarReader | unmatched — not counted | — | listed in scope | no |
| 2024-11-26-cyfrin-M0-Portals-v2.0.pdf | TypeConverter | unmatched — not counted | — | listed in scope | no |
| Halborn - M Portal.pdf | ExecutorEntryPoint | unmatched — not counted | — | listed in scope | no |
| Halborn - M Portal.pdf | HubExecutorEntryPoint | unmatched — not counted | — | listed in scope | no |
| Halborn - M Portal.pdf | Portal | own contract | 0x36f586… (selected) `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - M Portal.pdf | HubPortal | unmatched — not counted | — | listed in scope | no |
| Kirill-Fedoseev-audit-report-v2.md | HubPortal | unmatched — not counted | — | mentioned in scope summary and findings | no |
| Kirill-Fedoseev-audit-report-v2.md | SpokePortal | unmatched — not counted | — | mentioned in scope summary and findings | no |
| Kirill-Fedoseev-audit-report-v2.md | SpokeVault | unmatched — not counted | — | mentioned in scope summary and findings | no |
| Kirill-Fedoseev-audit-report-v2.md | SmartMToken | unmatched — not counted | — | mentioned in findings | no |
| Kirill-Fedoseev-audit-report-v2.md | Registrar | ambiguous — not counted | Registrar (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — deployed 2024-05-07 16:17:59+03 — liveness: live (code_present_context)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code)<br>0x119fbe… (alternative) `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Kirill-Fedoseev-audit-report-v2.md | IContinuousIndexing | unmatched — not counted | — | mentioned in findings | no |
| Kirill-Fedoseev-audit-report-v2.md | ISpokeVault | unmatched — not counted | — | mentioned in findings | no |
| Kirill-Fedoseev-audit-report-v2.md | PayloadEncoder | unmatched — not counted | — | mentioned in findings | no |
| Kirill-Fedoseev-audit-report-v2.md | NTTManager | unmatched — not counted | — | mentioned in findings | no |
| Kirill-Fedoseev-audit-report-v2.md | WormholeTransceiver | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x119fbeedd4f4f4298fb59b720d5654442b81ae2c` | Registrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 84 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 26
- Inherited remapped matches: 0
- Address-book scope dispositions: 71 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 583 unmatched
- Matched-own operational status: 71 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=48, low=3, medium=1
- Match method counts: unique_name=72

Zero-match audit list:

- [17578] | Kirill Fedoseev | Dec 2023 - April 2024 | [Kirill Fedoseev report.md](){rel="&#x22;nofollow&#x22;"} |
- [17580] | Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17581] | Three Sigma | July 2024 - Aug 2024 | [Three Sigma Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17582] | Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} |
- [17583] | Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17584] | ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17585] | Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17586] | Halborn | June 2025 | [Halborn\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17587] | Adevar | July 2025 | [Adevar\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17588] | Ottersec | July 2025 | [Ottersec\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17595] | OtterSec | April 2025 | [OtterSec\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17596] | Sec3 | May 2025 | [Sec3\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17597] | ChainSecurity | August 26, 2025 | [ChainSecurity\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17598] | Consensys Diligence | August 2025 | [ConsensysDiligence\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17599] | Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_MUSD\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17600] | Kirill Fedoseev | August 6, 2025 | [MZero-review-report-v1-private.md](){rel="&#x22;nofollow&#x22;"} |
- [17606] | Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17607] | Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17610] ChainSecurity_M0_M_Extensions_audit.pdf
- [17611] GuardianAudits_M0_MExtensions_report.pdf
- [17616] guardian_liquidity_delivery_update.pdf
- [17619] halborn_report.pdf
- [17620] sherlock_report.pdf
- [17621] adevar_report.pdf
- [17624] Kirill-Fedoseev-audit-report-v2.md
- [17625] v1.1

Fork inheritance lineage and inherited audits are included when available.
