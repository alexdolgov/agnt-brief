# Agentic Audit Brief: YFII

## Project Overview

- Project: YFII (`yfii`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.809Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $371,521.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 17 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (erc20detailed). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Controller | unknown | ethereum | n/a | [`0x8c2a19...1b515f`](./contracts/ethereum-1/0x8c2a19108d8f6aec72867e9cfb1bf517601b515f/) | ⚠️ Unaudited |
| fortube | unknown | ethereum | n/a | [`0x37edb4...9b752c`](./contracts/ethereum-1/0x37edb4812aa9bb7a05c8b56642041b3a609b752c/) | ⚠️ Unaudited |
| getuniout | unknown | ethereum | n/a | [`0x75055d...b52c58`](./contracts/ethereum-1/0x75055d3292aba5592cc09c61f73397e05db52c58/) | ⚠️ Unaudited |
| iLPVault | unknown | ethereum | n/a | [`0x19d994...089d1f`](./contracts/ethereum-1/0x19d994471d61d36fe367928cc58102a376089d1f/) | ⚠️ Unaudited |
| iVault | unknown | ethereum | n/a | [`0x1e0dc6...5f2064`](./contracts/ethereum-1/0x1e0dc67aea5aa74718822590294230162b5f2064/) | ⚠️ Unaudited |
| onesplitError | unknown | ethereum | n/a | [`0x045644...90f214`](./contracts/ethereum-1/0x045644b23e622cb3db24d18e1a77e8124790f214/) | ⚠️ Unaudited |
| qianAndWepiggy | unknown | ethereum | n/a | [`0xd2b9af...85fecd`](./contracts/ethereum-1/0xd2b9af583e4188ccc6297d2f0721e8fb1385fecd/) | ⚠️ Unaudited |
| Strategy | unknown | ethereum | n/a | [`0xe9ba31...7d0a0f`](./contracts/ethereum-1/0xe9ba312991e76116879b484135d2b86ea27d0a0f/) | ⚠️ Unaudited |
| StrategyCRV | unknown | ethereum | n/a | [`0xefb684...042eee`](./contracts/ethereum-1/0xefb684ab29371e701cce3ca9e3fd8f5e33042eee/) | ⚠️ Unaudited |
| StrategyDForce | unknown | ethereum | n/a | [`0x88d89b...9dcc83`](./contracts/ethereum-1/0x88d89bc6df5777ef762d8b7c841b1a4e179dcc83/) | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | ethereum | n/a | [`0xbdd4a5...81258e`](./contracts/ethereum-1/0xbdd4a57c5ee8558370bb661d29a979657d81258e/) | ⚠️ Unaudited |
| StrategyFortube | unknown | ethereum | n/a | [`0x0c3e69...f4f0a5`](./contracts/ethereum-1/0x0c3e69ef29cbd32e0732409b748ef317a5f4f0a5/) | ⚠️ Unaudited |
| Unipool | unknown | ethereum | n/a | [`0x3d367c...ee96ca`](./contracts/ethereum-1/0x3d367c9529f260b0661e1c1e91167c9319ee96ca/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xf811c0...80de45`](./contracts/ethereum-1/0xf811c062d14fdf9fda95d6a2c54e137afe80de45/) | ⚠️ Unaudited |
| YFII | unknown | ethereum | n/a | [`0xa1d0e2...ccab83`](./contracts/ethereum-1/0xa1d0e215a23d7030842fc67ce582a6afa3ccab83/) | ⚠️ Unaudited |
| YfiiVoterProxy | unknown | ethereum | n/a | [`0x266ca2...e4760e`](./contracts/ethereum-1/0x266ca21f966d93f5580e20b55ef66c8320e4760e/) | ⚠️ Unaudited |
| yVault | unknown | ethereum | n/a | [`0x6f2a72...a17faa`](./contracts/ethereum-1/0x6f2a725f13111c52a972e20d6aa4dcb190a17faa/) | ⚠️ Unaudited |

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
| ethereum | [`0x8c2a19...1b515f`](./contracts/ethereum-1/0x8c2a19108d8f6aec72867e9cfb1bf517601b515f/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37edb4...9b752c`](./contracts/ethereum-1/0x37edb4812aa9bb7a05c8b56642041b3a609b752c/) | fortube | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75055d...b52c58`](./contracts/ethereum-1/0x75055d3292aba5592cc09c61f73397e05db52c58/) | getuniout | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19d994...089d1f`](./contracts/ethereum-1/0x19d994471d61d36fe367928cc58102a376089d1f/) | iLPVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e0dc6...5f2064`](./contracts/ethereum-1/0x1e0dc67aea5aa74718822590294230162b5f2064/) | iVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x045644...90f214`](./contracts/ethereum-1/0x045644b23e622cb3db24d18e1a77e8124790f214/) | onesplitError | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd2b9af...85fecd`](./contracts/ethereum-1/0xd2b9af583e4188ccc6297d2f0721e8fb1385fecd/) | qianAndWepiggy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9ba31...7d0a0f`](./contracts/ethereum-1/0xe9ba312991e76116879b484135d2b86ea27d0a0f/) | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefb684...042eee`](./contracts/ethereum-1/0xefb684ab29371e701cce3ca9e3fd8f5e33042eee/) | StrategyCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88d89b...9dcc83`](./contracts/ethereum-1/0x88d89bc6df5777ef762d8b7c841b1a4e179dcc83/) | StrategyDForce | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdd4a5...81258e`](./contracts/ethereum-1/0xbdd4a57c5ee8558370bb661d29a979657d81258e/) | StrategyDForceDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3e69...f4f0a5`](./contracts/ethereum-1/0x0c3e69ef29cbd32e0732409b748ef317a5f4f0a5/) | StrategyFortube | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d367c...ee96ca`](./contracts/ethereum-1/0x3d367c9529f260b0661e1c1e91167c9319ee96ca/) | Unipool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf811c0...80de45`](./contracts/ethereum-1/0xf811c062d14fdf9fda95d6a2c54e137afe80de45/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1d0e2...ccab83`](./contracts/ethereum-1/0xa1d0e215a23d7030842fc67ce582a6afa3ccab83/) | YFII | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x266ca2...e4760e`](./contracts/ethereum-1/0x266ca21f966d93f5580e20b55ef66c8320e4760e/) | YfiiVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f2a72...a17faa`](./contracts/ethereum-1/0x6f2a725f13111c52a972e20d6aa4dcb190a17faa/) | yVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
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
