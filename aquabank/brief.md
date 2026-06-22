# Agentic Audit Brief: AquaBank

## Project Overview

- Project: AquaBank (`aquabank`)
- Website: [https://aquabank.io/](https://aquabank.io/)
- Lifecycle: active (Tier 0, 28.9% below peak)
- Generated: 2026-06-21T15:41:53.818Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: avalanche
- Contract surface: 80 unique implementations (90 raw deployments)
- DeFi Llama TVL: $850,195.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AquaBank is a yield protocol on Avalanche that enables users to deposit assets and earn returns through automated strategies. It uses a modular proxy-based architecture to manage vaults, strategies, and access control.

### Architecture

All contracts belong to a single product family deployed by the same cluster. The BeaconProxy at 0xa446... acts as a shared registry for implementation addresses, while vault proxies delegate to strategy implementations, forming a unified yield system.

## Contract Surface Quality

- Indexed contracts: 148; live-surface contracts included: 90 (90 live, 0 unknown).
- Excluded by liveness: 0 inactive, 58 singleton, 0 uninitialized.
- Deployment units: 1/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 80
- Raw deployments: 90
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyberscope | Tier 2 | 1 | 33.3% | 2025-08 |
| unknown | Tier 2 | 1 | 33.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TransparentUpgradeableProxy | proxy | avalanche | n/a | 11 deployments: avalanche [`0x264f4f...48966d`](./contracts/avalanche-43114/0x264f4fdeb62dd4e9f028b51df0a06d726048966d/); avalanche `0x5f4038...e7798e`; avalanche `0x68e315...163136`; avalanche `0x77c8df...4f474f`; avalanche `0x89aee1...f05dad`; avalanche `0xa84304...0547ba`; avalanche `0xb6e2f9...ebfda8`; avalanche `0xbce94b...050961`; avalanche `0xc7a901...8aa357`; avalanche `0xd6f5fe...2ddfb0`; avalanche `0xdf724b...34e3e5` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | registry | avalanche | unit-42982 | [`0xa44693...ab3e9e`](./contracts/avalanche-43114/0xa446938b0204aa4055cdfed68ddf0e0d1bab3e9e/) | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | [`0xdce8c2...d00214`](./contracts/avalanche-43114/0xdce8c2213869e1e2687efdb571c5630cf2d00214/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x02a9d3...4cd6a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x093859...313f1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c81c0...bfce1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18d773...4cd439` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18f500...97a769` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x198763...24ef01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ab8b6...6be9fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1f7d74...b53a5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fdc90...c71086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20d037...86f841` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2270d6...da0be3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x235727...3d1e58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x25c0d5...69c751` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d8f40...52ef9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e0e4c...c0dc16` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x30a7c4...76f198` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ea03c...4eaac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ffc8c...3b7722` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41e4f4...e6434d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x539ed1...72b31d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x563ffb...6d287d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x580e92...16e301` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5a356f...f209e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b2ed6...e2625c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d0b6f...388b11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d6d98...f04bff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5dea10...f9e238` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f7eea...e55922` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fae78...2f263c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63e926...48e104` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x692e8a...1423a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69442d...3da164` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ac2ae...a4ec43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6dc69e...9ab7a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e2e8f...8dccfb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e4d31...f76859` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x785c7d...b004d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x787a5a...073ca2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7911e6...d999bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x829de3...4edb94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85b3d8...2e1364` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85f370...76a5af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86875f...866da1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a930e...427c4c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x90633f...b66168` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x90de38...4a1a5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x93a723...48a762` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x94405c...b5f6b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97dffc...1e453d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9ac77f...d36c25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9bc773...dcd68d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1aba1...cee33b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4595b...427b25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab4fba...f84024` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab6570...e4a5bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf7c36...8582b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb11bf4...6236a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb36c40...cf7a7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8edd2...38a29d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc114b5...4171c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc218a4...78c744` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc972a...cb96fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcd9bc4...ed0c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd067a7...6f028c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd086ec...3a2ca4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd38e08...92f5a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd88d44...3c354e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdbc346...f66f85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe1301b...a4f9ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7d0fd...e319d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef0e8c...a91ba6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeff1db...70d504` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1680e...1c7347` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3f8e5...b91cf0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf6444d...13e6f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc95e0...5c08db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfd11f8...bf82c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/ab/audit.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 11 | high |
| [www.cyberscope.io/audits/ab](https://www.cyberscope.io/audits/ab) | Cyberscope | Audit | 2025-08 | fresh | Direct | contract_name | 11 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=30

Fork inheritance lineage and inherited audits are included when available.
