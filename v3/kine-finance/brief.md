# Agentic Audit Brief: Kine Finance

## Project Overview

- Project: Kine Finance (`kine-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:19.911Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 13 unique implementations (24 raw deployments)
- DeFi Llama TVL: $916,821.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 36 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 15 common project-authored base contract(s) (tokendispenserbase, irewarddistributionrecipient, kusdminterdelegate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 165; live-surface contracts included: 23 (21 live, 2 unknown).
- Excluded by liveness: 142 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 13
- Raw deployments: 24
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Controller | unknown | bsc | n/a | 2 deployments: ethereum `0xd819d9...8d4ab4`; bsc [`0xc11c33...1908da`](./contracts/bsc-56/0xc11c339a1b24b3a10f81a309a1d271de141908da/) | ⚠️ Unaudited |
| ControllerV2 | governance | ethereum | n/a | [`0xbb7d94...fd1a92`](./contracts/ethereum-1/0xbb7d94a423f4978545ecf73161f0678e8afd1a92/) | ⚠️ Unaudited |
| ControllerV2 | unknown | bsc | n/a | [`0x3c2ddd...32b571`](./contracts/bsc-56/0x3c2ddd486c07343b711a4415cdc9ab90ed32b571/) | ⚠️ Unaudited |
| ControllerV2 | unknown | polygon | n/a | 2 deployments: polygon [`0x171d5c...0d7f28`](./contracts/polygon-137/0x171d5c31d196fae671e95594372f049bfd0d7f28/); polygon `0xdff18a...b96881` | ⚠️ Unaudited |
| ControllerV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0ec312...6679c6`](./contracts/avalanche-43114/0x0ec3126390c606be63a0fa6585e68075f06679c6/); avalanche `0xdff18a...b96881` | ⚠️ Unaudited |
| KEther | unknown | avalanche | n/a | 4 deployments: ethereum `0xa58e82...d35780`; bsc `0x5fbe4e...60b055`; polygon `0xf186a6...2425f9`; avalanche [`0x0544be...a2fc39`](./contracts/avalanche-43114/0x0544be6693763d64c02f49f16986ba1390a2fc39/) | ⚠️ Unaudited |
| Kine | unknown | polygon | n/a | 3 deployments: ethereum `0xcbfef8...85f05d`; bsc `0xbfa9df...752d7f`; polygon [`0xa9c174...6ccd87`](./contracts/polygon-137/0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87/) | ⚠️ Unaudited |
| KineExchangeTreasury | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x1568a7...59eba3`](./contracts/bsc-56/0x1568a7f0bdf67d37dc963c345dbc4a598859eba3/); polygon `0x1d903b...32a19f` | ⚠️ Unaudited |
| KineRanch | unknown | polygon | n/a | 2 deployments: ethereum `0xa8d764...9cc692`; polygon [`0x66a782...7adeda`](./contracts/polygon-137/0x66a782c9a077f5adc988cc0b5fb1cdcc9d7adeda/) | ⚠️ Unaudited |
| KineUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd4c220...896a06`](./contracts/ethereum-1/0xd4c220ccac0335334d425a90f58de7c667896a06/); bsc `0xd819d9...8d4ab4` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | ethereum | n/a | [`0xcea2d0...d7d128`](./contracts/ethereum-1/0xcea2d0a0413b6bf052eb2eca9c256ee25ad7d128/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x9a5c4b...8c5199` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1641b4...200e5d` | ❓ Unverified |

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
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
