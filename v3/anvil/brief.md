# Agentic Audit Brief: Anvil

⚠️ Lifecycle status: DECLINING - TVL dropped 61.5% over 90 days

## Project Overview

- Project: Anvil (`anvil`)
- Website: [https://anvil.xyz/](https://anvil.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-03T21:05:29.905Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 12 unique implementations (22 raw deployments)
- DeFi Llama TVL: $9,637,760.30
- On-chain TVL (included contracts): $520,122.95
- TVL by chain: Ethereum $520,122.95

## Project Description

Collateral Management. Structurally: 9 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/12 (58.3%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/12
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 22
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 58.3% (OpenZeppelin, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 7 | 58.3% | 2025-10 |
| Trail of Bits | Tier 1 | 3 | 25.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralVault | core_logic | ethereum | n/a | [`0x5d2725...1d675f`](./contracts/ethereum-1/0x5d2725fde4d7aa3388da4519ac0449cc031d675f/) | ✅ Audited |
| Anvil | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ca924...d01bfc`](./contracts/ethereum-1/0x2ca9242c1810029efed539f1c60d68b63ad01bfc/); ethereum `0xaeeaa5...5b5597` | ✅ Audited |
| AnvilGovernorDelegate | governance | ethereum | n/a | 2 deployments: ethereum [`0x00e83d...4874c9`](./contracts/ethereum-1/0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9/); ethereum `0x123641...b49f49` | ✅ Audited |
| AnvilGovernorDelegate | governance | ethereum | n/a | 8 deployments: ethereum [`0x081fe8...aed8d9`](./contracts/ethereum-1/0x081fe8bf28e07232d25b58811c4cad2ebdaed8d9/); ethereum `0x09c7ec...bc200f`; ethereum `0x33148e...2a3ba1`; ethereum `0x65eed5...99f602`; ethereum `0xa57365...f2b5e4`; ethereum `0xbb1470...187aa0`; ethereum `0xfd883f...4c5b8f`; ethereum `0xfe1118...42a361` | ✅ Audited |
| LetterOfCredit | unknown | ethereum | n/a | [`0x14db9a...7c4808`](./contracts/ethereum-1/0x14db9a91933ad9433e1a0db04d08e5d9ef7c4808/) | ✅ Audited |
| LetterOfCredit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a3251...f42961`](./contracts/ethereum-1/0x1a3251d83b4ed97d8e1d8451613d7dd9b4f42961/); ethereum `0x750ab7...59d5ad` | ✅ Audited |
| PythPriceOracle | unknown | ethereum | n/a | [`0xc6f340...56ee05`](./contracts/ethereum-1/0xc6f3405c861fa0dca04ec4ba59bc189d1d56ee05/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Claim | unknown | ethereum | n/a | [`0xefd194...7e29ac`](./contracts/ethereum-1/0xefd194d4ff955e8958d132319f31d2ab9f7e29ac/) | ⚠️ Unaudited |
| PassThroughLiquidator | operational_periphery | ethereum | n/a | [`0x9ae1ca...1342b8`](./contracts/ethereum-1/0x9ae1caa5ce6fa330fce98315159bcd433b1342b8/) | ⚠️ Unaudited |
| Permit2PassThroughLiquidator | operational_periphery | ethereum | n/a | [`0x8aa57e...e2eb4c`](./contracts/ethereum-1/0x8aa57e442e4562c80fddad1b71adf0ba75e2eb4c/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x12225b...6e341d`](./contracts/ethereum-1/0x12225bb169b38ef8849dd4f5cc466ae5996e341d/) | ⚠️ Unaudited |
| Reward | unknown | ethereum | n/a | [`0xc6a06f...da22da`](./contracts/ethereum-1/0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da/) | ⚠️ Unaudited |

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
| [www.openzeppelin.com/news/anvil-protocol-diff-audit](https://www.openzeppelin.com/news/anvil-protocol-diff-audit) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | contract_name | 12 | high |
| [www.openzeppelin.com/news/anvil-protocol-audit](https://www.openzeppelin.com/news/anvil-protocol-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [2023-12-acronym-foundation-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-12-acronym-foundation-securityreview.pdf) | Trail of Bits | Audit | 2023-12 | stale | Direct | contract_name | 4 | high |
| [www.openzeppelin.com/news/anvil-audit](https://www.openzeppelin.com/news/anvil-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xefd194...7e29ac`](./contracts/ethereum-1/0xefd194d4ff955e8958d132319f31d2ab9f7e29ac/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ae1ca...1342b8`](./contracts/ethereum-1/0x9ae1caa5ce6fa330fce98315159bcd433b1342b8/) | PassThroughLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6a06f...da22da`](./contracts/ethereum-1/0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da/) | Reward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=1, extraction_exact=20

Fork inheritance lineage and inherited audits are included when available.
