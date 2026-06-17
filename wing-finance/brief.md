# Agentic Audit Brief: Wing Finance

⚠️ Lifecycle status: DECLINING - TVL changed 0.6% over 90 days

## Project Overview

- Project: Wing Finance (`wing-finance`)
- Website: [https://wing.finance](https://wing.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:35.814Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, klaytn
- Contract surface: 37 unique implementations (38 raw deployments)
- DeFi Llama TVL: $27,234,167.37
- On-chain TVL (included contracts): $20,266,638.25
- TVL by chain: Ethereum $20,266,638.25

## Project Description

Wing Finance is a credit-based cross-chain DeFi lending platform for supplying and borrowing crypto assets. Compound protocol contracts and balances should be treated only as external integrations or underlyings unless project-specific documentation or verified deployer evidence proves Wing ownership.

### Architecture

The Wing Token family provides the governance token used by the Governance Accounts family to manage protocol parameters and treasury. The Wing Finance lending market relies on the governance system for upgrades and parameter changes, and may distribute WING tokens as incentives.

## Contract Surface Quality

- Indexed contracts: 219; live-surface contracts included: 38 (37 live, 1 unknown).
- Excluded by liveness: 133 inactive, 48 singleton, 0 uninitialized.
- Deployment units: 4/26 live.
- Detected codebases: compound-v2
- Dependencies extracted: 12; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 37
- Raw deployments: 38
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $20,266,638.25
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $20,266,638.25 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Delegate | token | ethereum | unit-21599 (2 proxies) | 2 deployments: ethereum [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/); ethereum `0x70e36f...43e8e4` | ⚠️ Unaudited |
| CErc20 | token | ethereum | n/a | [`0x39aa39...5e7563`](./contracts/ethereum-1/0x39aa39c021dfbae8fac545936693ac917d5e7563/) | ⚠️ Unaudited |
| ERC20Template | token | ethereum | n/a | [`0xdb0f18...a86a1a`](./contracts/ethereum-1/0xdb0f18081b505a7de20b18ac41856bcb4ba86a1a/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x707b50...a30607`](./contracts/ethereum-1/0x707b501cbce95c5fdb25005a51f33c5b1aa30607/) | ⚠️ Unaudited |
| pONT | unknown | ethereum | n/a | [`0xcb46c5...c727c2`](./contracts/ethereum-1/0xcb46c550539ac3db72dc7af7c89b11c306c727c2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x17afa1eb1feede3ed791e1b5c4b32b544e6cbc0b) | proxy | bsc | unit-21611 | `0x49620e...e60a69` | ❓ Unverified |
| Proxy (impl: 0x3e7a502aa00317b470108ab1773289f57b487ed9) | proxy | ethereum | unit-21594 | `0x2f9fa6...6f12c9` | ❓ Unverified |
| Proxy (impl: 0xaf8ca43e6f422f06c2f2c9fecfb09035d70858e3) | proxy | ethereum | unit-21589 | `0x091806...10ab56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d999...433788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x674090...af23e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77b3e3...5fc3f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dd5d5...e02869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ea0c1...a2298e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d5f04...1b43e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbf532...970f78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd93f4c...eda796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6dcf2...e15d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb063e...aa7ff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa02a5...93a01c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22ada8...c7e28b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x252a7a...4f286c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30061d...cb6df7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49831f...7ae8f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ebb34...d3572a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6575cf...98fc81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x683f5a...df7b96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ab3a7...7db84f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab96cb...4f926f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb51d7a...71a724` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf69e8...1d3d7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe21b61...0b51ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef40fd...d239ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0ee3d...6aa916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf78274...cefa34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfabf6e...0b8718` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7a47ab...c0e7d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [The WING protocol has been reviewed & audited by [**BEOSIN**]()**.**](https://lianantech.com/) | BEOSIN | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [The Wing Flash Pool (EVM) has been reviewed & audited by [**PeckShield**]().](https://peckshield.com/en) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11717] The WING protocol has been reviewed & audited by [**BEOSIN**]()**.**
- [11718] The Wing Flash Pool (EVM) has been reviewed & audited by [**PeckShield**]().

Fork inheritance lineage and inherited audits are included when available.
