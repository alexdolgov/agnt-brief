# Agentic Audit Brief: DOOAR

## Project Overview

- Project: DOOAR (`dooar`)
- Website: [https://beta.dooar.com/swap](https://beta.dooar.com/swap)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:43.640Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc, ethereum, polygon
- Contract surface: 76 unique implementations (78 raw deployments)
- DeFi Llama TVL: $4,621,058.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 15 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 3 ERC20 tokens, 5 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (erc2771context). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 126; live-surface contracts included: 78 (4 live, 74 unknown).
- Excluded by liveness: 48 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 76 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 74
- Unique implementations: 76
- Raw deployments: 78
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DooarSwapV2Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x1e895b...476f3c`](./contracts/ethereum-1/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/); bsc [`0x1e895b...476f3c`](./contracts/bsc-56/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/) | ⚠️ Unaudited |
| DooarSwapV2Router02 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x53e0e5...b9879f`](./contracts/ethereum-1/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/); bsc [`0x53e0e5...b9879f`](./contracts/bsc-56/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (74)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x17db7a...ed30f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f5d38...98dff5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba5ae8...d8f6a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x06a851...27930a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08766c...20377f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a659b...679d15` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d6f2e...35662a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x198cc5...67c890` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1bfc61...b1323d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c6051...af9624` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d0fee...731c97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x247f9d...35d9ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2caa2b...401bf8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x30fe36...3ceed6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x311320...a15ddf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3415b9...563a0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36d394...3ac670` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x39a17e...9f721d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x39fb30...3d11e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x41fc56...b854f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45842d...8ac1e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x468736...d26cb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x472dc5...2e3750` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4cb537...61e2bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e8002...a68c55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4fd478...d79d84` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x55d9cf...13b0d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ef792...6e145f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x619d8f...32bae1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6aff34...be3eff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x70aa1c...347ad6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x726b03...040ab3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x738f53...0e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x785112...b470b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78aaa3...9934ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7dd732...cc3cfd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x81500a...254aef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82eb5c...8945ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x862c5d...8dd330` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x894f77...ef51e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d1cfc...eb63f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d6d41...e24069` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8f516a...5dbe59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90b8a5...ea31d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92985f...2f7bc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x940ffa...c5623e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x976d26...b19bb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x996431...453301` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d2fd9...b880ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xacc8e4...cf7e47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae274b...1374c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1da83...460880` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb22ea7...f86312` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2b68e...ecc3e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5f158...a0c527` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb7f473...1e3be5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc0c0d...747de3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbcbcc2...6bdf71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc205b2...c048ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc37498...9570e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc5997d...2abede` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc5b17b...f1e5af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc67664...0768ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7dc9f...f78df9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce93b2...288e90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf0a4e...50b9f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf1f77...366c89` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda70fe...2d730d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd0d4f...798f7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd57c1...ac3b43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe32b74...fe98ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe9fcea...6039f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecf0ae...d835b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee7beb...67223c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
