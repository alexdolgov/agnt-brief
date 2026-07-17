# Agentic Audit Brief: Altitude

⚠️ Lifecycle status: UNKNOWN - TVL dropped 17.8% over 90 days

## Project Overview

- Project: Altitude (`altitude`)
- Lifecycle: unknown (Tier 0, 92.5% below peak)
- Generated: 2026-07-04T14:53:00.636Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, avalanche, bsc, ethereum, fantom, linea, mantle, optimism, polygon
- Contract surface: 26 unique implementations (40 raw deployments)
- DeFi Llama TVL: $31,735.08
- On-chain TVL (included contracts): $15,502.80
- TVL by chain: Ethereum $13,621.00 | Arbitrum $716.58 | Avalanche $421.42 | Bsc $382.33 | Polygon $361.47

## Project Description

Cross Chain Bridge. Structurally: 7 project-authored contract(s) across 4 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 40 (15 live, 25 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 4 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 2
- Unverified implementations: 22
- Unique implementations: 26
- Raw deployments: 40
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $15,502.80
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $15,502.80 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AltitudeToken | token | ethereum | n/a | 6 deployments: ethereum [`0x8929e9dbd2785e3ba16175e596cdd61520fee0d1`](./contracts/ethereum-1/0x8929e9dbd2785e3ba16175e596cdd61520fee0d1/); optimism [`0x8929e9dbd2785e3ba16175e596cdd61520fee0d1`](./contracts/optimism-10/0x8929e9dbd2785e3ba16175e596cdd61520fee0d1/); bsc [`0x8929e9dbd2785e3ba16175e596cdd61520fee0d1`](./contracts/bsc-56/0x8929e9dbd2785e3ba16175e596cdd61520fee0d1/); polygon [`0x8929e9dbd2785e3ba16175e596cdd61520fee0d1`](./contracts/polygon-137/0x8929e9dbd2785e3ba16175e596cdd61520fee0d1/); arbitrum [`0x8929e9dbd2785e3ba16175e596cdd61520fee0d1`](./contracts/arbitrum-42161/0x8929e9dbd2785e3ba16175e596cdd61520fee0d1/); avalanche [`0x8929e9dbd2785e3ba16175e596cdd61520fee0d1`](./contracts/avalanche-43114/0x8929e9dbd2785e3ba16175e596cdd61520fee0d1/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x7a619e22c3e4753bcd4c9e867946398a12672184`](./contracts/arbitrum-42161/0x7a619e22c3e4753bcd4c9e867946398a12672184/); arbitrum `0xcc0bda6ff7aef71e5b909baaf184560bba943af6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Factory | registry | optimism | n/a | 7 deployments: optimism [`0xd997841f20cbef49e8a2b1aadd3bb513914ab22d`](./contracts/optimism-10/0xd997841f20cbef49e8a2b1aadd3bb513914ab22d/); bsc [`0xd997841f20cbef49e8a2b1aadd3bb513914ab22d`](./contracts/bsc-56/0xd997841f20cbef49e8a2b1aadd3bb513914ab22d/); polygon [`0xd997841f20cbef49e8a2b1aadd3bb513914ab22d`](./contracts/polygon-137/0xd997841f20cbef49e8a2b1aadd3bb513914ab22d/); mantle [`0xd997841f20cbef49e8a2b1aadd3bb513914ab22d`](./contracts/mantle-5000/0xd997841f20cbef49e8a2b1aadd3bb513914ab22d/); arbitrum [`0xd997841f20cbef49e8a2b1aadd3bb513914ab22d`](./contracts/arbitrum-42161/0xd997841f20cbef49e8a2b1aadd3bb513914ab22d/); avalanche [`0xd997841f20cbef49e8a2b1aadd3bb513914ab22d`](./contracts/avalanche-43114/0xd997841f20cbef49e8a2b1aadd3bb513914ab22d/); linea [`0xd997841f20cbef49e8a2b1aadd3bb513914ab22d`](./contracts/linea-59144/0xd997841f20cbef49e8a2b1aadd3bb513914ab22d/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AltitudeFarms | unknown | arbitrum | n/a | 3 deployments: mantle `0xf0dbc067d21319068e1c2617e13fc28db83c18fe`; arbitrum [`0xa912cb42ef8a9e5898cae13f678d372b1a18db82`](./contracts/arbitrum-42161/0xa912cb42ef8a9e5898cae13f678d372b1a18db82/); arbitrum `0xd6e501f92ce58623ee5d36f6badbcd35d87ea522` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x8929e9dbd2785e3ba16175e596cdd61520fee0d1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1d31b21fe28af5f73b8e8ae0c900504bbc7d151c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8929e9dbd2785e3ba16175e596cdd61520fee0d1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbc2b1262c90ab34757dc7eb2cb7ce595660ff44e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf80e51afb613d764fa61751affd3313c190a86bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11c3d4f266888df7e6ce324b9fc88f416f5e3938` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b30a2f34d2fc5d200abf89e96cc74807040bf94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20d87e1fdd74549c4e75d3e3c8ea940567fb47fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34f4176c384c936699bc670dcfc89745ba3bf229` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x453397ae0a55e640add35a1bae868049b4b7e312` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4776801ff6e319d9c6a82e7946415e13d551825a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fa6890adc00216a3dfdcf16d6bc49c874958700` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x71b2fe54243a10381ed525681b5faf7b22207051` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cefea71c970b37bd2ae29defdfd30e9f26037fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e2f2fcc5d263e455f109dacec7c4a56cb2952ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cc58fa0bcdf7e3b3ec01106729d53e9d237c2e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbacf66b4ce91977796d73ae8cde59ece8ef929c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6bf08d212cdb303a067d7e88ac77454f21224a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc747024483de5c3d5709d437683f96974c83309b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3ef450d9a79a7c644b42ce7896ebbf65dc9a21d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1d31b21fe28af5f73b8e8ae0c900504bbc7d151c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8929e9dbd2785e3ba16175e596cdd61520fee0d1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ContractWolf_Audit_AltitudeDEFI_Bridge.pdf](https://github.com/ContractWolf/smart-contract-audits/blob/main/ContractWolf_Audit_AltitudeDEFI_Bridge.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8929e9dbd2785e3ba16175e596cdd61520fee0d1`](./contracts/ethereum-1/0x8929e9dbd2785e3ba16175e596cdd61520fee0d1/) | AltitudeToken | token | $15,502.80 | Verified native implementation with $15,502.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa912cb42ef8a9e5898cae13f678d372b1a18db82`](./contracts/arbitrum-42161/0xa912cb42ef8a9e5898cae13f678d372b1a18db82/) | AltitudeFarms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
