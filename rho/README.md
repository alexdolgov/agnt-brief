# Agentic Audit Brief: Rho

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Rho (`rho`)
- Website: [https://www.rho.trading/](https://www.rho.trading/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 170 unique implementations (180 raw deployments)
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

- UnnamedContract (`0x461ffa24b716f68c5a4fb583592f295db5f7ba36`, chain 1)
- UnnamedContract (`0x6f93c4845e5f80b288c894e7936fd769e348d77c`, chain 1)
- UnnamedContract (`0xfbb3c976302e2e58a5467887e9150a8083bdcd4a`, chain 1)

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
- Outside the address book: 168 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 2 of 170 unique; 168 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 168
- Unique implementations: 170
- Raw deployments: 180
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
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xced447be2d36ed792adc50f15f91f20d8e55493b`; ethereum `0xed96feea08a03bfce1620070193ddf840ac91fc1` | ⚠️ Unaudited |
| FixedRateMaturityVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x535a5dbf628f79e36a0dbc7a3e8521df33e9bb68`; ethereum `0x9fc8b74be59f07afed38b2d1e5e133e5e192b297`; ethereum `0xfa01d735205951e56ffa8109880d798991a6948a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (168)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x0feef3d05fedad3290c73cfff2f250bf0246bd8e) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xbef0110560921824af49de900f2f0bf9ceb87e8c` | ❓ Unverified |
| Proxy (impl: 0x6f93c4845e5f80b288c894e7936fd769e348d77c) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391450 | 2 deployments: ethereum `0x461ffa24b716f68c5a4fb583592f295db5f7ba36`; ethereum `0x6f93c4845e5f80b288c894e7936fd769e348d77c` | ❓ Unverified |
| Proxy (impl: 0xb4c8c61318b5904e97244a243f14f385f625e16c) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7f716696de0662b6e6eaf7675b14a5721eb7ab1c`; arbitrum `0xb4c8c61318b5904e97244a243f14f385f625e16c` | ❓ Unverified |
| Proxy (impl: 0xbbf60a272eb36a8684666528e99b1723b8eb6b34) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1e50242e9c5fb0b1e6b9daf9676793d284d5aaca`; arbitrum `0xbbf60a272eb36a8684666528e99b1723b8eb6b34` | ❓ Unverified |
| Proxy (impl: 0xecfb433f5bd510770b5a3ac824c6d33f4001bc10) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x031d8ad5993d251460b0b61fb65fc844bf477978`; arbitrum `0xecfb433f5bd510770b5a3ac824c6d33f4001bc10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037b137aa2ac123b2336e3180ee60fc224677bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0617653a2530da3841b389ece85b984bb8f6c242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f7f604313bd365fe913fcdd3a9aeca06aa9a5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0feef3d05fedad3290c73cfff2f250bf0246bd8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x111b3992e76045d3d83a21b837a12be1ebbce0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1845061db52f9a34d509e28fde77656b288bb00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18c1c04d3f93128fc64c410a9cf38ee2a026e8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38e1b0e65c4a62941ebba94820e8db7c756cb603`; ethereum `0xcf60f0a3fb3b4ebce3e11223b82c7e9739a340ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a89314e190f4e9a2a0ea4a86f2eeb9b6d1634f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d27c0ac9b69e390e3ef0ced625d32e167a51fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9573658c94edaface8cba62cf5956a137ceb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695ce469b6bfa2f554561af447bac2320ea218ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e1ea5943d43940f611b1282d8d3467f37cdcfce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7094d8cb2b02a3899cae5af16e0cb00f8bcd1862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78daa3823ae7d7314e88c4978170171b91a09e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83a321d982c482a1c1ecd1f92f50e2772eae2f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853e217a4bd4630dacab7b980eaf7272c74bc0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cf959636ef322e4c2c792bb9bf76b5400002b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7561aad02d1689914a07dbeda13f6a76cbb1af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab0313391e396a9ec1c8b4e5f129dd08a1e98a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc77f3626f7d0210bebfa47820fc53c89931bfea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2aebd1a60ae8e27115b380fb6ed17a7fa924c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc66aae245b00013e1a9102451e7a06bb9a03ae05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd15a09ee84bc73d9f1ec57492465ebf5b4924942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a7f775526f76db3fae4d061da03a3da77e2b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2b85f9c1bc23e33cf42df4a79cb2829c3ec4932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefe4c36391774832c4c9ce167f95c808607a1685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a940b8aea18e9c1546e8c9d2eb951344cd5e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf33bcb8e042101852c91e23361edf0b3c0a5330d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf954413b296683b204e0bdaf272980c51caaed06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391449 | `0xfbb3c976302e2e58a5467887e9150a8083bdcd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x015a3e21108f4002240253d7243d9ebbbfa4e700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x024b7ddc4621064f86cf0471232bfd14cdca131d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x063c9bed3ac0ca59bffd8eff0d0cd4abd9388371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0756d1e7641a2fc6e1ed6a71f83108599511ef4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07bf5bc63411166b913ca9c2702b91e2a5546834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x096cceeeff127f62b2122339273e652bbb6db1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09d1d71e9df3262ea5bb191993a806546326e2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c1f500a9f5ef7e82e990c7b85be60c0c042ef88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c99a47c1a4d4886a6c784cceb1b2d5c2f1d1490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f794551c541dd36573e5a460e51441e33072bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1263a046af92f687424483be0679281894d1f3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x135239ca272c80b2508ccbd66d6c55d0452daebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13a32ba696086e1fc0b4ed986b6e050bad7a805b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145c3cf6961b3cc4dbb32ee78081c2147020d155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c435a6738bbca1a4b1b24d5f90f99aa68ed5d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x206efe753e1fe79c5f6c4e66b04edbd10c8161d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20a5e886fd4d1bf0aeb96048711cc3d9572c68e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x221147391040e1ac1eb6c9ba58babb536a3143c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2243ad788effda06fd00b32bec837b07a45fb027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x227ff1cce6518ef1724b46a8b128c49bfcdda46d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x23d21a5fcb1b1551f78cbcc7edcb59bb7454af8b`; arbitrum `0xfb1983cf7e720191bd0c787be5266cb8df46f5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2652c9100760585afd7a13822e3f6a87c8010b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26747aa07ea31dd66a8d0c51341d664df7619097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x268740d7ed9ce5f6ee6174d24a490c96be67e216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27a8d3fd89ccf65f39cc81e116ac5cd9c800679e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29b177a4ef39ec2c9f7d75e3d020f76b776a63b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d07196de15e597aa337516574791ad14e2056d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2dbfe6a0f01abfed7f40fd2a9adc759f23f9ad9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x300a7dcb770ca64a116bd3481c6998b32f4076fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x301edc50556b0e60484121f731be47318a4de813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x305ed165f8658f4716632ab1277b1a4969e1220c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30b950610d6e0282f079ca8bb56d23dbe902352d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31edeaa84822de25af4ca790c187ff1d45ef7504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3364e4aa3275c81cfb144c93edc3801c3a979295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c5902f6f2a49d148a7ca35bae775ef85a4893da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d86ed5241717cde3529f3c442440589ff2cf708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eb9480fce8ec3e65b0c93aa205343e14df335ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41cb27e02597dc525c36a9f989e9fb37ebe4ae12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x434a9d47f8d46e8d3e89c3f4446c7a7e3b5172af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x471610245ffa1a29b08df2c0244e442aae85f38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48bad61f29683432fd2633cc8c0e50928e973406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d437955e916d1bc95c63beafd7dfc598fe8838e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fea18b7e4da67809f5691a9150fbf8a672f2a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x505960190d92e8aa84698d85ec8acff411f2510f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55fae8ab0a31542a90009be78e7057648ac37418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x580ac834d561d33eaaa06a697aedaab42783d243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59dc1dc12ce874b8075542e2e27fb0a5f2fe3510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bc3e4bd9f0fe6580346445f235c95bb1c882c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61f17839eb45caa13beccd50d09d05adce54c156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63facdf43eca500715decdae2ce8fe0036684f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64636010880c505c62b355e987e8d81051ddd07d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64aed7a6ab6e20deb7fb617189948aec31ac82a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6684493b790bb587ff658d288bae5567f330d753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6793644e8f6a71584fc213831aa9b423fb6fbc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67c1f63a9472290f84ee6ea3e4c7e6286438e939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6991b1da3ac4602cfb75814ce32b0591ac5d5c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ce5db18f00bcf6ee68fd32220c116711ed38525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d16ac3396a859620f5251d58d7a96d431bfc328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f3062376b772dcf30f9a3dd36d28887037974ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x725673563339086eb7cfcd2d7d353d9be6ee67bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x742a255c6b009aa305648961f1fa327212990c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74d08077563f4561df3f1f567977f87a544dd519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x786ae9de876fe84798afc0c90d7b223be9fb328e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78fbd70a1c3583f32c0cf06a6b5e9b1c2e93d330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7925885b648b752976d27885def770a2a02e66ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7c4a7cc34288e8bae093e96586629c8ed7a60b2b`; arbitrum `0xdcb233560ef093ebf7be820ee6de1df8c9f86586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7dd73e3f1bff69815f9c361f0d80759e3874c121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e5cae51517ef5d15093efc4099f95feec0cc109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f73528c123313bf138b5326ed453a3a2267262b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8225ad650c71caa75b3874fa1f2966c015a9127b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84522de82d97e9c2480b16991a813d1e41e39bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x884ee0d1f0e3e6c6c17eed0f1a894e501b20485d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88601700abf5c2c9dede7aec5688f72349d28e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89c9cdcc441d0381820394848b6597d43043719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ad3a4ce1502af7a800a847faac540055e13f890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d8a275f95e7113484cc3977da4ac97f8b0ad046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94eb5b4b60eb23657499e44f3adb67f528520c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x970e10a2b783ef9fa41f0e5afa05c2337b440874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97a95f46fc80d962512def0008a4e63bba71826f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a1e63aafda05d1ffb1a5d65b275299e0a00ad91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0fd66ee7231606a065f47649ec1e04d1aac6fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa27d1ef0f7a9e85d7c27b65bb5fd9e96c180abeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2e4fb8f7715b257c4db0e86d50cf6ecc0775824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad151da1d2202aba03bba6a4b445a91dc0558bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad3e24da0f6e0d460467583c4bf83d0de57d9945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaddb50d47bae4b3fe4e9d9bb0086cee4c48a19c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaedb5cc51534de2b793a5812e07481332e90019a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaeeae5d509d90fe096e6f4aec63e200c2e655d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4f2007921d177d35dd85dac4e4f9e7f98470c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5855e692465b6c1b5172fcaf59ac67f20621a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7317c68014dffd0cbbc05d21fb2307039e0ea0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8f8fa6d16bbc42e2da8dc0a154a104f0e0f9fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb02fce6b4cc5bf2a61b766b853acc6ded57bb7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbe7a56025c322696b6d789bf9862df57c0a2e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc354e318406b3384433c5e28a006e794beef37c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc459a50393a1d7c295805329d89072f0b1f3a49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc6a7d5b3f85d71694ce76403e769ecc4952eb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf50b1ffae80fab03a96653fbd4ef2180f4830f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc13e1683248fbab2c00ecfc95543e19b729799bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3d527e999c26e10cf82b4f7f9ba782d0664bb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8ce07f2a393ec3170eb5ccdd31c115e6e93b85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9a5dbcbac372cd04cf9ad67f27904a708ce4e69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb1a1ab53cb155e792c0726849553ff2dcb450c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbcc4ae6709408c42adb469b4c840be59ba9eb0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xced15995fd22bcfde19f0bb2c31533288bef1567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xceda7c541dec9a6be06f88143c1aad93cf0fe23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd42a2b4cf82f4ad693827ce3d8bb41292742b588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd84c952545f2c36dac1940a85240a2fee7d63d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd948123ffe92016eb9db918664efcaadb46e90b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdac9ca304a6d8f220c2abec2c07e7e944cc39f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb6ed9c6c784785ebb8eb999f79e03fd20143082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc7de3177cd2175a389970027c5781f8e8991fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdef67ef93c3a864f91ef244bbf32936994a4e835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0e9cfb90e35bfee5ea2f05a2d20460494ad52a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe278b7da77a8871c0de8d28cb5e2669af666dfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe44d2f00b1ba16844385f16238166476d9ba8c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe54ebcbe2bc1e3811ea5389381d629e933b487a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe56b30fc751509c315ddee0a6165e579088761c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8e5cd27dd54acabb1808c812dc4267ed93d98a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee0df2ba026fc92f0d74c6aabbcb10e60ae68f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee2be8b12458e33c1b8f5785df07f708a66cd63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef8740a87c7f6be6df3cf8d6a9ff828dfd16a8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefe8cd36f9b74a036d724cfcaf5eb0aeba41ee84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf09b79f42f93a16e0884be451304fb3c4dff6634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0c8ce0706f2b7ad2f74a892604402d4115e960c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1782bcd4a5af1537a8943e219f695efd0257b90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf515dc30db6d64c9f8aba29ee9cc610c59ce5794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf678053bfc688a8814fe12b12eee5bbeae041420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf81960d2c562386b7d2ddc3ec1fd9324207c528d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf90652074ec74f26bb37a24220ba4b5638242ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe6e569dfb34ccd1ec3fb9d65f3bca66fa59de21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff7ceb552887a0469c4c10cd48c6ec782adba2ed` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 150
- Live contracts: 2
- Unknown liveness contracts: 148
- Source-verified contracts: 1
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=1, exact address book overlap=1, unverified unclassified=148

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ERC1967Proxy<br>`0xed96feea08a03bfce1620070193ddf840ac91fc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| exact address book overlap | 0x6f93c4845e5f80b288c894e7936fd769e348d77c<br>`0x461ffa24b716f68c5a4fb583592f295db5f7ba36` | project_anchor | unknown | live | unverified | n/a | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| unverified unclassified | 0x38e1b0e65c4a62941ebba94820e8db7c756cb603<br>`0xcf60f0a3fb3b4ebce3e11223b82c7e9739a340ec` | non_address_book | unknown | unknown | unverified | n/a | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| unverified unclassified | UnnamedContract<br>`0x0f7f604313bd365fe913fcdd3a9aeca06aa9a5d3` | non_address_book | unknown | unknown | unverified | n/a | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| unverified unclassified | UnnamedContract<br>`0x0feef3d05fedad3290c73cfff2f250bf0246bd8e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| unverified unclassified | UnnamedContract<br>`0x38e1b0e65c4a62941ebba94820e8db7c756cb603` | non_address_book | unknown | unknown | unverified | n/a | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| unverified unclassified | UnnamedContract<br>`0x6f93c4845e5f80b288c894e7936fd769e348d77c` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| unverified unclassified | UnnamedContract<br>`0xc66aae245b00013e1a9102451e7a06bb9a03ae05` | non_address_book | unknown | unknown | unverified | n/a | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| unverified unclassified | UnnamedContract<br>`0xced447be2d36ed792adc50f15f91f20d8e55493b` | non_address_book | unknown | unknown | unverified | n/a | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| unverified unclassified | UnnamedContract<br>`0xd9a7f775526f76db3fae4d061da03a3da77e2b0b` | non_address_book | unknown | unknown | unverified | n/a | `0x1e9c14671b47ceb0ebbb2637ad698544a767eee9` |
| unverified unclassified | 0x23d21a5fcb1b1551f78cbcc7edcb59bb7454af8b<br>`0xfb1983cf7e720191bd0c787be5266cb8df46f5a1` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | 0x7c4a7cc34288e8bae093e96586629c8ed7a60b2b<br>`0xdcb233560ef093ebf7be820ee6de1df8c9f86586` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | 0xb4c8c61318b5904e97244a243f14f385f625e16c<br>`0x7f716696de0662b6e6eaf7675b14a5721eb7ab1c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | 0xbbf60a272eb36a8684666528e99b1723b8eb6b34<br>`0x1e50242e9c5fb0b1e6b9daf9676793d284d5aaca` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | 0xecfb433f5bd510770b5a3ac824c6d33f4001bc10<br>`0x031d8ad5993d251460b0b61fb65fc844bf477978` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x015a3e21108f4002240253d7243d9ebbbfa4e700` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x024b7ddc4621064f86cf0471232bfd14cdca131d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x063c9bed3ac0ca59bffd8eff0d0cd4abd9388371` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x0756d1e7641a2fc6e1ed6a71f83108599511ef4b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x07bf5bc63411166b913ca9c2702b91e2a5546834` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x096cceeeff127f62b2122339273e652bbb6db1f5` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x09d1d71e9df3262ea5bb191993a806546326e2dd` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x0c1f500a9f5ef7e82e990c7b85be60c0c042ef88` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x0c99a47c1a4d4886a6c784cceb1b2d5c2f1d1490` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x0f794551c541dd36573e5a460e51441e33072bc0` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x1263a046af92f687424483be0679281894d1f3bf` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x135239ca272c80b2508ccbd66d6c55d0452daebe` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x13a32ba696086e1fc0b4ed986b6e050bad7a805b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x145c3cf6961b3cc4dbb32ee78081c2147020d155` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x1c435a6738bbca1a4b1b24d5f90f99aa68ed5d63` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x206efe753e1fe79c5f6c4e66b04edbd10c8161d8` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x20a5e886fd4d1bf0aeb96048711cc3d9572c68e9` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x221147391040e1ac1eb6c9ba58babb536a3143c2` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x2243ad788effda06fd00b32bec837b07a45fb027` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x227ff1cce6518ef1724b46a8b128c49bfcdda46d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x23d21a5fcb1b1551f78cbcc7edcb59bb7454af8b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x2652c9100760585afd7a13822e3f6a87c8010b3d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x26747aa07ea31dd66a8d0c51341d664df7619097` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x268740d7ed9ce5f6ee6174d24a490c96be67e216` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x27a8d3fd89ccf65f39cc81e116ac5cd9c800679e` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x29b177a4ef39ec2c9f7d75e3d020f76b776a63b7` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x2d07196de15e597aa337516574791ad14e2056d0` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x2dbfe6a0f01abfed7f40fd2a9adc759f23f9ad9d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x300a7dcb770ca64a116bd3481c6998b32f4076fe` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x301edc50556b0e60484121f731be47318a4de813` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x305ed165f8658f4716632ab1277b1a4969e1220c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x30b950610d6e0282f079ca8bb56d23dbe902352d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x31edeaa84822de25af4ca790c187ff1d45ef7504` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x3364e4aa3275c81cfb144c93edc3801c3a979295` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x3c5902f6f2a49d148a7ca35bae775ef85a4893da` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x3d86ed5241717cde3529f3c442440589ff2cf708` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x3eb9480fce8ec3e65b0c93aa205343e14df335ea` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x41cb27e02597dc525c36a9f989e9fb37ebe4ae12` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x434a9d47f8d46e8d3e89c3f4446c7a7e3b5172af` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x471610245ffa1a29b08df2c0244e442aae85f38b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x48bad61f29683432fd2633cc8c0e50928e973406` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x4d437955e916d1bc95c63beafd7dfc598fe8838e` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x4fea18b7e4da67809f5691a9150fbf8a672f2a6c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x505960190d92e8aa84698d85ec8acff411f2510f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x55fae8ab0a31542a90009be78e7057648ac37418` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x580ac834d561d33eaaa06a697aedaab42783d243` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x59dc1dc12ce874b8075542e2e27fb0a5f2fe3510` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x5bc3e4bd9f0fe6580346445f235c95bb1c882c57` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x61f17839eb45caa13beccd50d09d05adce54c156` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x63facdf43eca500715decdae2ce8fe0036684f78` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x64636010880c505c62b355e987e8d81051ddd07d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x64aed7a6ab6e20deb7fb617189948aec31ac82a1` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x6684493b790bb587ff658d288bae5567f330d753` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x6793644e8f6a71584fc213831aa9b423fb6fbc14` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x67c1f63a9472290f84ee6ea3e4c7e6286438e939` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x6991b1da3ac4602cfb75814ce32b0591ac5d5c51` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x6ce5db18f00bcf6ee68fd32220c116711ed38525` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x6d16ac3396a859620f5251d58d7a96d431bfc328` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x6f3062376b772dcf30f9a3dd36d28887037974ca` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x725673563339086eb7cfcd2d7d353d9be6ee67bb` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x742a255c6b009aa305648961f1fa327212990c81` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x74d08077563f4561df3f1f567977f87a544dd519` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x786ae9de876fe84798afc0c90d7b223be9fb328e` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x78fbd70a1c3583f32c0cf06a6b5e9b1c2e93d330` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x7925885b648b752976d27885def770a2a02e66ef` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x7c4a7cc34288e8bae093e96586629c8ed7a60b2b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x7dd73e3f1bff69815f9c361f0d80759e3874c121` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x7e5cae51517ef5d15093efc4099f95feec0cc109` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x7f73528c123313bf138b5326ed453a3a2267262b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x8225ad650c71caa75b3874fa1f2966c015a9127b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x84522de82d97e9c2480b16991a813d1e41e39bf2` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x884ee0d1f0e3e6c6c17eed0f1a894e501b20485d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x88601700abf5c2c9dede7aec5688f72349d28e8f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x89c9cdcc441d0381820394848b6597d43043719f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x8ad3a4ce1502af7a800a847faac540055e13f890` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x8d8a275f95e7113484cc3977da4ac97f8b0ad046` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x94eb5b4b60eb23657499e44f3adb67f528520c42` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x970e10a2b783ef9fa41f0e5afa05c2337b440874` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x97a95f46fc80d962512def0008a4e63bba71826f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0x9a1e63aafda05d1ffb1a5d65b275299e0a00ad91` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xa0fd66ee7231606a065f47649ec1e04d1aac6fbb` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xa27d1ef0f7a9e85d7c27b65bb5fd9e96c180abeb` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xa2e4fb8f7715b257c4db0e86d50cf6ecc0775824` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xad151da1d2202aba03bba6a4b445a91dc0558bab` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xad3e24da0f6e0d460467583c4bf83d0de57d9945` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xaddb50d47bae4b3fe4e9d9bb0086cee4c48a19c4` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xaedb5cc51534de2b793a5812e07481332e90019a` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xaeeae5d509d90fe096e6f4aec63e200c2e655d40` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xb4c8c61318b5904e97244a243f14f385f625e16c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xb4f2007921d177d35dd85dac4e4f9e7f98470c14` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xb5855e692465b6c1b5172fcaf59ac67f20621a4d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xb7317c68014dffd0cbbc05d21fb2307039e0ea0f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xb8f8fa6d16bbc42e2da8dc0a154a104f0e0f9fcf` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xbb02fce6b4cc5bf2a61b766b853acc6ded57bb7b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xbbe7a56025c322696b6d789bf9862df57c0a2e5c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xbbf60a272eb36a8684666528e99b1723b8eb6b34` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xbc354e318406b3384433c5e28a006e794beef37c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xbc459a50393a1d7c295805329d89072f0b1f3a49` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xbc6a7d5b3f85d71694ce76403e769ecc4952eb53` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xbf50b1ffae80fab03a96653fbd4ef2180f4830f8` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xc13e1683248fbab2c00ecfc95543e19b729799bd` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xc3d527e999c26e10cf82b4f7f9ba782d0664bb4c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xc8ce07f2a393ec3170eb5ccdd31c115e6e93b85e` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xc9a5dbcbac372cd04cf9ad67f27904a708ce4e69` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xcb1a1ab53cb155e792c0726849553ff2dcb450c5` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xcbcc4ae6709408c42adb469b4c840be59ba9eb0f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xced15995fd22bcfde19f0bb2c31533288bef1567` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xceda7c541dec9a6be06f88143c1aad93cf0fe23b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xd42a2b4cf82f4ad693827ce3d8bb41292742b588` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xd84c952545f2c36dac1940a85240a2fee7d63d24` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xd948123ffe92016eb9db918664efcaadb46e90b5` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xdac9ca304a6d8f220c2abec2c07e7e944cc39f96` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xdb6ed9c6c784785ebb8eb999f79e03fd20143082` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xdc7de3177cd2175a389970027c5781f8e8991fb9` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xdef67ef93c3a864f91ef244bbf32936994a4e835` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xe0e9cfb90e35bfee5ea2f05a2d20460494ad52a5` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xe278b7da77a8871c0de8d28cb5e2669af666dfb5` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xe44d2f00b1ba16844385f16238166476d9ba8c25` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xe54ebcbe2bc1e3811ea5389381d629e933b487a6` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xe56b30fc751509c315ddee0a6165e579088761c7` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xe8e5cd27dd54acabb1808c812dc4267ed93d98a2` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xecfb433f5bd510770b5a3ac824c6d33f4001bc10` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xee0df2ba026fc92f0d74c6aabbcb10e60ae68f4d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xee2be8b12458e33c1b8f5785df07f708a66cd63c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xef8740a87c7f6be6df3cf8d6a9ff828dfd16a8ec` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xefe8cd36f9b74a036d724cfcaf5eb0aeba41ee84` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xf09b79f42f93a16e0884be451304fb3c4dff6634` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xf0c8ce0706f2b7ad2f74a892604402d4115e960c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xf1782bcd4a5af1537a8943e219f695efd0257b90` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xf515dc30db6d64c9f8aba29ee9cc610c59ce5794` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xf678053bfc688a8814fe12b12eee5bbeae041420` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xf81960d2c562386b7d2ddc3ec1fd9324207c528d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xf90652074ec74f26bb37a24220ba4b5638242ccd` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xfe6e569dfb34ccd1ec3fb9d65f3bca66fa59de21` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |
| unverified unclassified | UnnamedContract<br>`0xff7ceb552887a0469c4c10cd48c6ec782adba2ed` | non_address_book | unknown | unknown | unverified | n/a | `0xd7edd7a8d33cf8a8213c1fd168dcf450d8bafca4` |

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
| needs_review | 169 |

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
