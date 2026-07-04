# Agentic Audit Brief: O3 Swap

## Project Overview

- Project: O3 Swap (`o3-swap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.858Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: arbitrum, avalanche, bsc, celo, ethereum, fantom, gnosis, metis, optimism, polygon
- Contract surface: 4 unique implementations (12 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cross Chain Bridge. Structurally: 1 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (O3 Swap) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (8 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 4
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| O3 | unknown | ethereum | n/a | 9 deployments: ethereum [`0xee9801...777d28`](./contracts/ethereum-1/0xee9801669c6138e84bd50deb500827b776777d28/); optimism [`0xee9801...777d28`](./contracts/optimism-10/0xee9801669c6138e84bd50deb500827b776777d28/); bsc [`0xee9801...777d28`](./contracts/bsc-56/0xee9801669c6138e84bd50deb500827b776777d28/); gnosis [`0xee9801...777d28`](./contracts/gnosis-100/0xee9801669c6138e84bd50deb500827b776777d28/); polygon [`0xee9801...777d28`](./contracts/polygon-137/0xee9801669c6138e84bd50deb500827b776777d28/); metis [`0xee9801...777d28`](./contracts/metis-1088/0xee9801669c6138e84bd50deb500827b776777d28/); arbitrum [`0xee9801...777d28`](./contracts/arbitrum-42161/0xee9801669c6138e84bd50deb500827b776777d28/); celo [`0xee9801...777d28`](./contracts/celo-42220/0xee9801669c6138e84bd50deb500827b776777d28/); avalanche [`0xee9801...777d28`](./contracts/avalanche-43114/0xee9801669c6138e84bd50deb500827b776777d28/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x16a852...b75896` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x510d05...ded609` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xee9801...777d28` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK+Security+Assessment+for+O3+Swap.pdf](https://certik-public-assets.s3.amazonaws.com/CertiK+Security+Assessment+for+O3+Swap.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xee9801...777d28`](./contracts/ethereum-1/0xee9801669c6138e84bd50deb500827b776777d28/) | O3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13587] CertiK+Security+Assessment+for+O3+Swap.pdf

Fork inheritance lineage and inherited audits are included when available.
