# Agentic Audit Brief: Meeds Finance

## Project Overview

- Project: Meeds Finance (`meeds-finance`)
- Website: [https://www.meeds.io/](https://www.meeds.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.551Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 4 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,271,759.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 7 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (managerrole, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MeedsToken | token | ethereum | n/a | [`0x8503a7b00b4b52692cc6c14e5b96f142e30547b7`](./contracts/ethereum-1/0x8503a7b00b4b52692cc6c14e5b96f142e30547b7/) | ⚠️ Unaudited |
| TokenFactory | registry | ethereum | n/a | [`0x1b37d04759ad542640cc44ff849a373040386050`](./contracts/ethereum-1/0x1b37d04759ad542640cc44ff849a373040386050/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | polygon | n/a | 6 deployments: ethereum `0xc82b1c50609217075d28aa22f11a80450212b3d1`; ethereum `0xfa127d9a1154610eedbab7323b64363089f9989e`; optimism `0xe133306fc90133e33a8c322e8c81f06ec2369b17`; polygon [`0x4e7d4e5fd3e4a68adcbeacaa3748b9c67bb02a69`](./contracts/polygon-137/0x4e7d4e5fd3e4a68adcbeacaa3748b9c67bb02a69/); base `0xada40f483dd44e9e6e126a2db59379d45551dd55`; arbitrum `0xc76979618841ab656bb834b4fe812319677225a1` | ⚠️ Unaudited |
| XMeedsNFTRewarding | token | ethereum | n/a | [`0x44d6d6ab50401dd846336e9c706a492f06e1bcd4`](./contracts/ethereum-1/0x44d6d6ab50401dd846336e9c706a492f06e1bcd4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8503a7b00b4b52692cc6c14e5b96f142e30547b7`](./contracts/ethereum-1/0x8503a7b00b4b52692cc6c14e5b96f142e30547b7/) | MeedsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b37d04759ad542640cc44ff849a373040386050`](./contracts/ethereum-1/0x1b37d04759ad542640cc44ff849a373040386050/) | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44d6d6ab50401dd846336e9c706a492f06e1bcd4`](./contracts/ethereum-1/0x44d6d6ab50401dd846336e9c706a492f06e1bcd4/) | XMeedsNFTRewarding | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
