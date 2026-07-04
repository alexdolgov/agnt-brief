# Agentic Audit Brief: AquaBank

## Project Overview

- Project: AquaBank (`aquabank`)
- Website: [https://aquabank.io/](https://aquabank.io/)
- Lifecycle: active (Tier 0, 35.6% below peak)
- Generated: 2026-07-04T14:53:04.020Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: avalanche
- Contract surface: 108 unique implementations (148 raw deployments)
- DeFi Llama TVL: $750,199.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 4 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 150; live-surface contracts included: 148 (21 live, 127 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 9 of 108 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 99
- Unique implementations: 108
- Raw deployments: 148
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyberscope | Tier 2 | 1 | 11.1% | 2025-08 |
| unknown | Tier 2 | 1 | 11.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TransparentUpgradeableProxy | proxy | avalanche | n/a | 11 deployments: avalanche [`0x264f4f...48966d`](./contracts/avalanche-43114/0x264f4fdeb62dd4e9f028b51df0a06d726048966d/); avalanche `0x5f4038...e7798e`; avalanche `0x68e315...163136`; avalanche `0x77c8df...4f474f`; avalanche `0x89aee1...f05dad`; avalanche `0xa84304...0547ba`; avalanche `0xb6e2f9...ebfda8`; avalanche `0xbce94b...050961`; avalanche `0xc7a901...8aa357`; avalanche `0xd6f5fe...2ddfb0`; avalanche `0xdf724b...34e3e5` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | registry | avalanche | n/a | [`0xa44693...ab3e9e`](./contracts/avalanche-43114/0xa446938b0204aa4055cdfed68ddf0e0d1bab3e9e/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | n/a | 3 deployments: avalanche [`0x08b61d...ececb1`](./contracts/avalanche-43114/0x08b61d8879602e4f38739bba2505b609e1ececb1/); avalanche `0xb8f9cf...bc6732`; avalanche `0xc8d07d...6d6a6d` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | n/a | 3 deployments: avalanche [`0x55cee3...2cf36a`](./contracts/avalanche-43114/0x55cee33f460bc5f861252ee1eb223db0d22cf36a/); avalanche `0xd7e60b...ad37da`; avalanche `0xe2245a...2f1e92` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | [`0xdce8c2...d00214`](./contracts/avalanche-43114/0xdce8c2213869e1e2687efdb571c5630cf2d00214/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0af639...1ab80a`](./contracts/avalanche-43114/0x0af6395cf9fa1f64e1b38935a9cd78f5931ab80a/); avalanche `0x33ad5c...40a190` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa3e316...69f8b1`](./contracts/avalanche-43114/0xa3e316f89e76eba1ddcfb57cfe61577d1969f8b1/); avalanche `0xe749c1...037ced` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | 2 deployments: avalanche [`0xc5fd93...7174bd`](./contracts/avalanche-43114/0xc5fd93069cad3f766b480172da452911ab7174bd/); avalanche `0xf74f31...4c37a2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xd994b4...ba26f6`](./contracts/avalanche-43114/0xd994b45f66bca7880c3dc69a8f7e59324bba26f6/); avalanche `0xee9d94...6fca06` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (99)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3fec1de40b2765071eb3066e1e6509d992829193) | proxy | avalanche | n/a | 2 deployments: avalanche `0x0680b6...253c01`; avalanche `0x3fec1d...829193` | ❓ Unverified |
| Proxy (impl: 0x99f9828ac84249867a602de62c9bc62ecc22a4cd) | proxy | avalanche | n/a | 2 deployments: avalanche `0x8e04ec...8566fb`; avalanche `0x99f982...22a4cd` | ❓ Unverified |
| Proxy (impl: 0xa95b3580d21fb1616dc6d06be2ecdffd77ca15ea) | proxy | avalanche | n/a | 2 deployments: avalanche `0x00f8a3...459674`; avalanche `0xa95b35...ca15ea` | ❓ Unverified |
| Proxy (impl: 0xac303dbf6630c2bfa8416e152c407a6a5d5fc304) | proxy | avalanche | n/a | 2 deployments: avalanche `0x61e8f7...c47775`; avalanche `0xac303d...5fc304` | ❓ Unverified |
| Proxy (impl: 0xaee3e155463f4391f96ff9f9e68ea86f14fab015) | proxy | avalanche | n/a | 2 deployments: avalanche `0x9b5599...b91067`; avalanche `0xaee3e1...fab015` | ❓ Unverified |
| Proxy (impl: 0xb2cc1202d56e7053e857fac263d12d508f508f89) | proxy | avalanche | n/a | 2 deployments: avalanche `0x3c5940...5b83b7`; avalanche `0xb2cc12...508f89` | ❓ Unverified |
| Proxy (impl: 0xb45aa82cba5a8710ac67b3ad8644fd24d21c0678) | proxy | avalanche | n/a | 2 deployments: avalanche `0x038dbe...44f73d`; avalanche `0xb45aa8...1c0678` | ❓ Unverified |
| Proxy (impl: 0xc113504f112269c3793be33ca5b8c07c0c1a9213) | proxy | avalanche | n/a | 2 deployments: avalanche `0xb8e73f...337984`; avalanche `0xc11350...1a9213` | ❓ Unverified |
| Proxy (impl: 0xcd52ccdf9adfebd52cd2cc1d992543bd981cdc7c) | proxy | avalanche | n/a | 2 deployments: avalanche `0xa6977a...f3aed0`; avalanche `0xcd52cc...1cdc7c` | ❓ Unverified |
| Proxy (impl: 0xf52e5b120f049b9ee8c1dc8a7ebec7b1437db67f) | proxy | avalanche | n/a | 2 deployments: avalanche `0xccb7de...e3f27c`; avalanche `0xf52e5b...7db67f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x02a9d3...4cd6a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x07482f...b474a3`; avalanche `0x743bcd...d753cb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x093859...313f1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c81c0...bfce1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x158b65...0b1b1b`; avalanche `0x42ea48...e318f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18d773...4cd439` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18f500...97a769` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x198763...24ef01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ab8b6...6be9fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1f7d74...b53a5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fdc90...c71086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x20aa1d...0eaec3`; avalanche `0x2d2001...dab76b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20d037...86f841` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2270d6...da0be3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x235727...3d1e58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x25c0d5...69c751` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d8f40...52ef9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e0e4c...c0dc16` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x2f5d89...21b036`; avalanche `0x4e42d0...0c666b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x301e17...edd3ed`; avalanche `0xe04348...710714` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x30a7c4...76f198` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x3d8915...5044a7`; avalanche `0xadcae6...370a8e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ea03c...4eaac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ffc8c...3b7722` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x41c299...dca0d6`; avalanche `0xc4f881...189af6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41e4f4...e6434d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x539ed1...72b31d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x558e51...e63b57`; avalanche `0xae8c76...e7a932` | ❓ Unverified |
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
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x747ad1...e4f67a`; avalanche `0x7d336b...8081ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x785c7d...b004d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x787a5a...073ca2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7911e6...d999bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x829de3...4edb94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85b3d8...2e1364` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85f370...76a5af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86875f...866da1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x8905f6...a90107`; avalanche `0xb06de2...373b4f` | ❓ Unverified |
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
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0xb02304...b18a2a`; avalanche `0xd211b1...c679d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb11bf4...6236a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb36c40...cf7a7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8edd2...38a29d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc114b5...4171c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc218a4...78c744` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc972a...cb96fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcd9bc4...ed0c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd067a7...6f028c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd086ec...3a2ca4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0xd0dbc9...53cded`; avalanche `0xe0e20b...3f471a` | ❓ Unverified |
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
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/ab/audit.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [www.cyberscope.io/audits/ab](https://www.cyberscope.io/audits/ab) | Cyberscope | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x0af639...1ab80a`](./contracts/avalanche-43114/0x0af6395cf9fa1f64e1b38935a9cd78f5931ab80a/) | TransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
