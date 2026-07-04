# Agentic Audit Brief: LionDEX

## Project Overview

- Project: LionDEX (`liondex`)
- Website: [https://liondex.com](https://liondex.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.552Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum
- Contract surface: 36 unique implementations (36 raw deployments)
- DeFi Llama TVL: $0.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 22 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 67; live-surface contracts included: 36 (4 live, 32 unknown).
- Excluded by liveness: 31 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 4 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 36
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 25.0% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | unknown | arbitrum | n/a | [`0xbcbbe8...109c5d`](./contracts/arbitrum-42161/0xbcbbe8a7d3f1ff4b947c42784e90f41ace109c5d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LionDEXRouter | adapter | arbitrum | n/a | [`0x9eb55a...0669b6`](./contracts/arbitrum-42161/0x9eb55af68de2d3eb8d0fb223140ab3d8d40669b6/) | ⚠️ Unaudited |
| LionDexToken | token | arbitrum | n/a | [`0x8ebb85...8561ec`](./contracts/arbitrum-42161/0x8ebb85d53e6955e557b7c53acde1d42fd68561ec/) | ⚠️ Unaudited |
| LPToken | token | arbitrum | n/a | [`0x03229f...0d6cd0`](./contracts/arbitrum-42161/0x03229fb11e3d7e8aca8c758dbd0ea737950d6cd0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LionDEXBlindBox | unknown | arbitrum | n/a | `0xf1d8d2...95d3fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0400f3...87e3b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0bb3a9...a2932a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x108058...25f2b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x189ead...5b61a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b6a74...008034` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41b4ee...284d4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d998b...3edc0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x51588d...7d1256` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x533008...4bc84b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62357f...1e6678` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x689336...e23ac3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69b61a...5aed47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e1ab5...1dd9f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c750f...a62ef7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f959d...1d9113` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c1ad8...b2e4af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d9dfe...b283f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f548f...07862a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x946064...d17995` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e9076...f4b2a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f78e9...6b18dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0e719...71580d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb67432...a8db7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8d76c...13a7a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbaebe...2ab5ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5b18b...43544d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6abe7...9c27c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2fac7...cbdeee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe30110...4dd043` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe67133...59f687` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea8a78...fc9998` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-LionDEX-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LionDEX-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
