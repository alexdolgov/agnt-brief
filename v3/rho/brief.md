# Agentic Audit Brief: Rho

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Rho (`rho`)
- Website: [https://www.rho.trading/](https://www.rho.trading/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 166 unique implementations (176 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $2,288,113.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Rho in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x461ffa...f7ba36`, chain 1)
- UnnamedContract (`0x6f93c4...48d77c`, chain 1)
- UnnamedContract (`0xfbb3c9...bdcd4a`, chain 1)

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
- Outside the address book: 164 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 2 of 166 unique; 164 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 164
- Unique implementations: 166
- Raw deployments: 176
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xced447...55493b`; ethereum `0xed96fe...c91fc1` | ⚠️ Unaudited |
| FixedRateMaturityVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x535a5d...e9bb68`; ethereum `0x9fc8b7...92b297`; ethereum `0xfa01d7...a6948a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (164)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x0feef3d05fedad3290c73cfff2f250bf0246bd8e) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xbef011...b87e8c` | ❓ Unverified |
| Proxy (impl: 0x6f93c4845e5f80b288c894e7936fd769e348d77c) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391450 | 2 deployments: ethereum `0x461ffa...f7ba36`; ethereum `0x6f93c4...48d77c` | ❓ Unverified |
| Proxy (impl: 0xb4c8c61318b5904e97244a243f14f385f625e16c) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7f7166...b7ab1c`; arbitrum `0xb4c8c6...25e16c` | ❓ Unverified |
| Proxy (impl: 0xbbf60a272eb36a8684666528e99b1723b8eb6b34) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1e5024...d5aaca`; arbitrum `0xbbf60a...eb6b34` | ❓ Unverified |
| Proxy (impl: 0xecfb433f5bd510770b5a3ac824c6d33f4001bc10) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x031d8a...477978`; arbitrum `0xecfb43...01bc10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037b13...677bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061765...f6c242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x111b39...bce0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184506...8bb00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18c1c0...26e8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38e1b0...6cb603`; ethereum `0xcf60f0...a340ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a8931...1634f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d27c0...a51fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9573...7ceb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695ce4...a218ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e1ea5...cdcfce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7094d8...cd1862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78daa3...a09e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83a321...ae2f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853e21...4bc0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cf959...002b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7561a...bb1af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab0313...e98a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc77f3...31bfea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2aebd...924c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd15a09...924942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2b85f...ec4932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefe4c3...7a1685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a940...cd5e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf33bcb...a5330d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95441...aaed06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391449 | `0xfbb3c9...bdcd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x015a3e...a4e700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x024b7d...ca131d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x063c9b...388371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0756d1...11ef4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07bf5b...546834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x096cce...6db1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09d1d7...26e2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c1f50...42ef88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c99a4...1d1490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f7945...072bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1263a0...d1f3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x135239...2daebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13a32b...7a805b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145c3c...20d155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c435a...ed5d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x206efe...8161d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20a5e8...2c68e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x221147...3143c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2243ad...5fb027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x227ff1...dda46d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x23d21a...54af8b`; arbitrum `0xfb1983...46f5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2652c9...010b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26747a...619097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x268740...67e216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27a8d3...00679e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29b177...6a63b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d0719...2056d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2dbfe6...f9ad9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x300a7d...4076fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x301edc...4de813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x305ed1...e1220c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30b950...02352d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31edea...ef7504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3364e4...979295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c5902...4893da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d86ed...2cf708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eb948...f335ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41cb27...e4ae12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x434a9d...5172af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x471610...85f38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48bad6...973406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d4379...e8838e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fea18...2f2a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x505960...f2510f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55fae8...c37418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x580ac8...83d243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59dc1d...fe3510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bc3e4...882c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61f178...54c156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63facd...684f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x646360...ddd07d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64aed7...ac82a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x668449...30d753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x679364...6fbc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67c1f6...38e939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6991b1...5d5c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ce5db...d38525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d16ac...bfc328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f3062...7974ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x725673...ee67bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x742a25...990c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74d080...4dd519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x786ae9...fb328e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78fbd7...93d330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x792588...2e66ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7c4a7c...a60b2b`; arbitrum `0xdcb233...f86586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7dd73e...74c121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e5cae...0cc109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f7352...67262b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8225ad...a9127b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84522d...e39bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x884ee0...20485d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x886017...d28e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89c9cd...43719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ad3a4...13f890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d8a27...0ad046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94eb5b...520c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x970e10...440874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97a95f...71826f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a1e63...00ad91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0fd66...ac6fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa27d1e...80abeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2e4fb...775824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad151d...558bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad3e24...7d9945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaddb50...8a19c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaedb5c...90019a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaeeae5...655d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4f200...470c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5855e...621a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7317c...e0ea0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8f8fa...0f9fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb02fc...57bb7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbe7a5...0a2e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc354e...eef37c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc459a...1f3a49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc6a7d...52eb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf50b1...4830f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc13e16...9799bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3d527...64bb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8ce07...93b85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9a5db...ce4e69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb1a1a...b450c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbcc4a...a9eb0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xced159...ef1567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xceda7c...0fe23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd42a2b...42b588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd84c95...d63d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd94812...6e90b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdac9ca...c39f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb6ed9...143082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc7de3...991fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdef67e...a4e835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0e9cf...ad52a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe278b7...66dfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe44d2f...ba8c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe54ebc...b487a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe56b30...8761c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8e5cd...3d98a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee0df2...e68f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee2be8...6cd63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef8740...16a8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefe8cd...41ee84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf09b79...ff6634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0c8ce...5e960c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1782b...257b90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf515dc...ce5794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf67805...041420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf81960...7c528d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf90652...242ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe6e56...59de21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff7ceb...dba2ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.oxor.io/reports/-NsF0vIwYyzQJhrgL2nf](https://audits.oxor.io/reports/-NsF0vIwYyzQJhrgL2nf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Rho%20Labs/Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf) | Zokyo | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb](https://www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb) | Halborn | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 49 | high |
| [Rho Protocol Audit Report.pdf](https://oxor-io.github.io/public_audits/Rho/Rho%20Protocol%20Audit%20Report.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2811] audits.oxor.io/reports/-NsF0vIwYyzQJhrgL2nf — no match: The provided text is just a header 'Oxorio Web Audit Reports' with no actual report content, contract names, or dates.
- [2812] Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf — no match: Extracted 34 contract names from the scope listing on page 5 of the audit report. The audit date is from the cover page: 'September 23rd 2025'.
- [2813] www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb — no match: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the engagement (July 29, 2025).
- [14353] Rho Protocol Audit Report.pdf — no match: Extracted contracts from scope section (page 10) and findings. Audit date from cover page: APRIL 10, 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | ContractProvider | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IContractProviderErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | MainContracts | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | Configurator | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IContractProvider | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IConfigurator | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IterableIdAddressSet | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | ContractIds | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IIterableIdAddressSetErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | ITimeProviderErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IWrappedNativeToken | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IAddressValidatorErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IInterfaceValidationErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | AddressValidator | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | TimeProvider | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IDepositary | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | DepositaryLogic | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | DepositaryStorage | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IDepositaryStorage | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | DepositaryStorageParamKeys | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IDepositaryStorageErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | Depositary | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IDepositaryErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | DepositaryRelatedRoles | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IAccessControlManagerErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | AccessControlManager | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IAccessControlManager | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IRouterErrors | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | RouterLogic | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | IRouter | unmatched — not counted | — | listed in scope | no |
| Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf | Router | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | AccessControlManager | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IAccessControlManager | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IAccessControlManagerErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | Roles | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | Configurator | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ContractProvider | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IConfigurator | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IContractProvider | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IContractProviderErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | OracleDomain | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ContractIds | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IIterableIdAddressSetErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IterableIdAddressSet | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | WithdrawalRequestsQueue | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | WithdrawalRequestsQueueErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | RouterLogic | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRouter | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRouterErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | Router | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | AddressValidator | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IAddressValidatorErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IInterfaceValidationErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IPausable | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ITimeProviderErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IWrappedNativeToken | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ReentrancyGuardUpgradeable | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | TimeProvider | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | VaultBaseLogic | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IVaultBase | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IVaultBaseErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | VaultBase | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ERC20Logic | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ERC20Storage | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IERC20Storage | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRhoERC20 | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | RhoERC20 | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | ERC4626Logic | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRhoERC4626 | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IRhoERC4626Errors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | RhoERC4626 | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | AllocatorVault | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IAllocatorVault | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IOffchainStrategiesVault | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IOffchainStrategiesVaultErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | OffchainStrategiesVault | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IVaultStorage | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | IVaultStorageErrors | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | Parameters | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb | VaultStorage | unmatched — not counted | — | listed in scope | no |
| Rho Protocol Audit Report.pdf | VAMM | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | SwapLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | FutureLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | Future | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | MarketLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | RatePoint | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | CollateralManager | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | Router | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | RouterLogic | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | FutureStorage | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | Issuer | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | BaseFloatIndexOracle | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | ContractProvider | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | MarketStorage | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | VAMMStorage | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | ViewDataProvider | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | CompoundingRateMath | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | LinearRateMath | unmatched — not counted | — | listed in scope and findings | no |
| Rho Protocol Audit Report.pdf | SettlingLogic | unmatched — not counted | — | mentioned in findings | no |
| Rho Protocol Audit Report.pdf | ProvisionsLimitChecker | unmatched — not counted | — | mentioned in findings | no |
| Rho Protocol Audit Report.pdf | LiquidityLogic | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 165 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 104 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: n/a

Zero-match audit list:

- [2811] audits.oxor.io/reports/-NsF0vIwYyzQJhrgL2nf
- [2812] Rho_Labs_Zokyo_audit_report_Sep23rd_2025.pdf
- [2813] www.halborn.com/audits/rho-labs/vault-contracts-v2-9d7cbb
- [14353] Rho Protocol Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
