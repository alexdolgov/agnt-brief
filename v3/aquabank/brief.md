# Agentic Audit Brief: AquaBank

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: AquaBank (`aquabank`)
- Website: [https://aquabank.io/](https://aquabank.io/)
- Lifecycle: active (Tier 0, 35.6% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 115 unique implementations (155 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $750,199.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for AquaBank in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...a9012a`, chain 43114)
- UnnamedContract (`0x038dbe...44f73d`, chain 43114)
- UnnamedContract (`0x152b9d...943e50`, chain 43114)
- UnnamedContract (`0x3c5940...5b83b7`, chain 43114)
- UnnamedContract (`0x49d5c2...c10bab`, chain 43114)
- UnnamedContract (`0x970223...f4a8c7`, chain 43114)
- UnnamedContract (`0xb02304...b18a2a`, chain 43114)
- UnnamedContract (`0xb2cc12...508f89`, chain 43114)
- UnnamedContract (`0xb45aa8...1c0678`, chain 43114)
- UnnamedContract (`0xb97ef9...c48a6e`, chain 43114)
- UnnamedContract (`0xd211b1...c679d5`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 107 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Confirmed-live implementations: 8 of 115 unique; 107 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 104
- Unique implementations: 115
- Raw deployments: 155
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeaconProxy | registry | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xa44693...ab3e9e` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0x08b61d...ececb1`; avalanche `0xb8f9cf...bc6732`; avalanche `0xc8d07d...6d6a6d` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0x55cee3...2cf36a`; avalanche `0xd7e60b...ad37da`; avalanche `0xe2245a...2f1e92` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdce8c2...d00214` | ⚠️ Unaudited |
| PumpSpecialRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ec533...8390e2` | ⚠️ Unaudited |
| PumpSplitRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27d8d5...a553ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0af639...1ab80a`; avalanche `0x33ad5c...40a190` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 11 deployments: avalanche `0x264f4f...48966d`; avalanche `0x5f4038...e7798e`; avalanche `0x68e315...163136`; avalanche `0x77c8df...4f474f`; avalanche `0x89aee1...f05dad`; avalanche `0xa84304...0547ba`; avalanche `0xb6e2f9...ebfda8`; avalanche `0xbce94b...050961`; avalanche `0xc7a901...8aa357`; avalanche `0xd6f5fe...2ddfb0`; avalanche `0xdf724b...34e3e5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa3e316...69f8b1`; avalanche `0xe749c1...037ced` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xc5fd93...7174bd`; avalanche `0xf74f31...4c37a2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xd994b4...ba26f6`; avalanche `0xee9d94...6fca06` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (104)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3fec1de40b2765071eb3066e1e6509d992829193) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0680b6...253c01`; avalanche `0x3fec1d...829193` | ❓ Unverified |
| Proxy (impl: 0x99f9828ac84249867a602de62c9bc62ecc22a4cd) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8e04ec...8566fb`; avalanche `0x99f982...22a4cd` | ❓ Unverified |
| Proxy (impl: 0xa95b3580d21fb1616dc6d06be2ecdffd77ca15ea) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x00f8a3...459674`; avalanche `0xa95b35...ca15ea` | ❓ Unverified |
| Proxy (impl: 0xac303dbf6630c2bfa8416e152c407a6a5d5fc304) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x61e8f7...c47775`; avalanche `0xac303d...5fc304` | ❓ Unverified |
| Proxy (impl: 0xaee3e155463f4391f96ff9f9e68ea86f14fab015) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x9b5599...b91067`; avalanche `0xaee3e1...fab015` | ❓ Unverified |
| Proxy (impl: 0xb2cc1202d56e7053e857fac263d12d508f508f89) | proxy | project_anchor | own_supporting | 1 | avalanche | unit-379212 | 2 deployments: avalanche `0x3c5940...5b83b7`; avalanche `0xb2cc12...508f89` | ❓ Unverified |
| Proxy (impl: 0xb45aa82cba5a8710ac67b3ad8644fd24d21c0678) | proxy | project_anchor | own_supporting | 1 | avalanche | unit-379214 | 2 deployments: avalanche `0x038dbe...44f73d`; avalanche `0xb45aa8...1c0678` | ❓ Unverified |
| Proxy (impl: 0xc113504f112269c3793be33ca5b8c07c0c1a9213) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xb8e73f...337984`; avalanche `0xc11350...1a9213` | ❓ Unverified |
| Proxy (impl: 0xcd52ccdf9adfebd52cd2cc1d992543bd981cdc7c) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa6977a...f3aed0`; avalanche `0xcd52cc...1cdc7c` | ❓ Unverified |
| Proxy (impl: 0xf52e5b120f049b9ee8c1dc8a7ebec7b1437db67f) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xccb7de...e3f27c`; avalanche `0xf52e5b...7db67f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379206 | `0x000000...a9012a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02a9d3...4cd6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x07482f...b474a3`; avalanche `0x743bcd...d753cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x093859...313f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c81c0...bfce1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379207 | `0x152b9d...943e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x158b65...0b1b1b`; avalanche `0x42ea48...e318f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18d773...4cd439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18f500...97a769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x198763...24ef01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ab8b6...6be9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f7d74...b53a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fdc90...c71086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x20aa1d...0eaec3`; avalanche `0x2d2001...dab76b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20d037...86f841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2270d6...da0be3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x235727...3d1e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25c0d5...69c751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d8f40...52ef9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e0e4c...c0dc16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x2f5d89...21b036`; avalanche `0x4e42d0...0c666b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x301e17...edd3ed`; avalanche `0xe04348...710714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30a7c4...76f198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3d8915...5044a7`; avalanche `0xadcae6...370a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ea03c...4eaac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ffc8c...3b7722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x41c299...dca0d6`; avalanche `0xc4f881...189af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41e4f4...e6434d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379208 | `0x49d5c2...c10bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x539ed1...72b31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x558e51...e63b57`; avalanche `0xae8c76...e7a932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x563ffb...6d287d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x580e92...16e301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a356f...f209e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b2ed6...e2625c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d0b6f...388b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d6d98...f04bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5dea10...f9e238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f7eea...e55922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fae78...2f263c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63e926...48e104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x692e8a...1423a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69442d...3da164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ac2ae...a4ec43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6dc69e...9ab7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e2e8f...8dccfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e4d31...f76859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x747ad1...e4f67a`; avalanche `0x7d336b...8081ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x785c7d...b004d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x787a5a...073ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7911e6...d999bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x829de3...4edb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85b3d8...2e1364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85f370...76a5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86875f...866da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8905f6...a90107`; avalanche `0xb06de2...373b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a930e...427c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90633f...b66168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90de38...4a1a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93a723...48a762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94405c...b5f6b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379209 | `0x970223...f4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97dffc...1e453d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ac77f...d36c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bc773...dcd68d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1aba1...cee33b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4595b...427b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab4fba...f84024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab6570...e4a5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf7c36...8582b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 1 | avalanche | unit-379211 | 2 deployments: avalanche `0xb02304...b18a2a`; avalanche `0xd211b1...c679d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb11bf4...6236a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb36c40...cf7a7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8edd2...38a29d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379210 | `0xb97ef9...c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc114b5...4171c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc218a4...78c744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc972a...cb96fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd9bc4...ed0c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd067a7...6f028c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd086ec...3a2ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xd0dbc9...53cded`; avalanche `0xe0e20b...3f471a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd38e08...92f5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd88d44...3c354e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdbc346...f66f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe1301b...a4f9ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7d0fd...e319d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef0e8c...a91ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeff1db...70d504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1680e...1c7347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3f8e5...b91cf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6444d...13e6f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc95e0...5c08db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd11f8...bf82c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/ab/audit.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |
| [www.cyberscope.io/audits/ab](https://www.cyberscope.io/audits/ab) | Cyberscope | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12669] audit.pdf — no match: No reason recorded
- [12670] www.cyberscope.io/audits/ab — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit.pdf | BankMinting | unmatched — not counted | — | — | no |
| audit.pdf | BankStaking | unmatched — not counted | — | — | no |
| audit.pdf | BankStructs | unmatched — not counted | — | — | no |
| audit.pdf | BankToken | unmatched — not counted | — | — | no |
| audit.pdf | BenqiMinting | unmatched — not counted | — | — | no |
| audit.pdf | BenqiStaking | unmatched — not counted | — | — | no |
| audit.pdf | EulerMinting | unmatched — not counted | — | — | no |
| audit.pdf | EulerStaking | unmatched — not counted | — | — | no |
| audit.pdf | IBankMinting | unmatched — not counted | — | — | no |
| audit.pdf | IBankStaking | unmatched — not counted | — | — | no |
| audit.pdf | IBankToken | unmatched — not counted | — | — | no |
| audit.pdf | IComptrollerRewards | unmatched — not counted | — | — | no |
| audit.pdf | IEulerDistributor | unmatched — not counted | — | — | no |
| audit.pdf | IEulerEToken | unmatched — not counted | — | — | no |
| audit.pdf | IQiErc20 | unmatched — not counted | — | — | no |
| audit.pdf | StandardProxy | unmatched — not counted | — | — | no |
| audit.pdf | TransferHelper | unmatched — not counted | — | — | no |
| audit.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BankMinting | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BankStaking | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BankStructs | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BankToken | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BenqiMinting | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BenqiStaking | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | EulerMinting | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | EulerStaking | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IBankMinting | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IBankStaking | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IBankToken | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IComptrollerRewards | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IEulerDistributor | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IEulerEToken | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IQiErc20 | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | StandardProxy | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | TransferHelper | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 74 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 36 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12669] audit.pdf
- [12670] www.cyberscope.io/audits/ab

Fork inheritance lineage and inherited audits are included when available.
