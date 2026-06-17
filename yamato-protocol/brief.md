# Agentic Audit Brief: Yamato Protocol

## Project Overview

- Project: Yamato Protocol (`yamato-protocol`)
- Website: [https://app.yamato.fi/#/](https://app.yamato.fi/#/)
- Lifecycle: active (Tier 0, 65% below peak)
- Generated: 2026-06-17T07:00:47.035Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $1,121,902.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yamato Protocol is a collateralized debt position (CDP) system on Ethereum that allows users to deposit collateral and mint a stablecoin (CJPY). It includes mechanisms for borrowing, repaying, depositing, withdrawing, and redeeming, along with fee distribution, price feeds, and governance via YMT and veYMT tokens.

### Architecture

The ETH mainnet family provides the token layer (CJPY, YMT, veYMT) used across the protocol. The Real Time TX family (YamatoV4) orchestrates CDP interactions and relies on price feeds, fee pools, and registries, while the Yamato Protocol family (PoolV2) supplies liquidity infrastructure that supports stablecoin operations.

## Contract Surface Quality

- Indexed contracts: 98; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 31 inactive, 45 singleton, 0 uninitialized.
- Deployment units: 0/24 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/7 (28.6%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockApex | Tier 2 | 2 | 28.6% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| veYMT | unknown | ethereum | n/a | [`0x9e3ce7...b66a0c`](./contracts/ethereum-1/0x9e3ce75131bd03ef6ea79e5ed68e889cc9b66a0c/) | ✅ Audited |
| YMT | unknown | ethereum | n/a | [`0x0f4fc7...4c9c09`](./contracts/ethereum-1/0x0f4fc7d24f28c4373097733aae53f0025d4c9c09/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CJPY | unknown | ethereum | n/a | [`0x1cfa56...298372`](./contracts/ethereum-1/0x1cfa5641c01406ab8ac350ded7d735ec41298372/) | ⚠️ Unaudited |
| DistributorReceiver | operational_periphery | ethereum | n/a | [`0x3d0955...40c6a5`](./contracts/ethereum-1/0x3d095553fe2a3b138b31f9d47a26e2adf340c6a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0x168c2f...c7d113`](./contracts/ethereum-1/0x168c2f7d4924bd6e4282f7edbb0cfdcca1c7d113/) | ⚠️ Unaudited |
| YmtVesting | operational_periphery | ethereum | n/a | [`0x5ed64b...2c925f`](./contracts/ethereum-1/0x5ed64bf0764202be868b5df2deda467ae12c925f/) | ⚠️ Unaudited |
| YMWK | unknown | ethereum | n/a | [`0x15dac0...ec4f87`](./contracts/ethereum-1/0x15dac05c93e1c5f31a29547340997ba9f6ec4f87/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x12318f...f6112b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2170f3...c97b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x296ec3...a9c3b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2eaa42...4cb469` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36b404...b33add` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d1e11...ee10c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f9c83...15b64e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x565b10...1e6dab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bed97...f1363c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x817ffe...4af9dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a979c...cc907f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb4025...cf4e95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0c89e...30500d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddf9b0...a31e8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf18035...7700ce` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [<>\](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit.pdf) | BlockApex | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [Yamato Protocol Final Audit (Extended).pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit%20(Extended).pdf) | BlockApex | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |
| [Yamato Protocol V2 - Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20V2%20-%20Final%20Audit.pdf) | BlockApex | Audit | 2024-08 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1cfa56...298372`](./contracts/ethereum-1/0x1cfa5641c01406ab8ac350ded7d735ec41298372/) | CJPY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d0955...40c6a5`](./contracts/ethereum-1/0x3d095553fe2a3b138b31f9d47a26e2adf340c6a5/) | DistributorReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x168c2f...c7d113`](./contracts/ethereum-1/0x168c2f7d4924bd6e4282f7edbb0cfdcca1c7d113/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ed64b...2c925f`](./contracts/ethereum-1/0x5ed64bf0764202be868b5df2deda467ae12c925f/) | YmtVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15dac0...ec4f87`](./contracts/ethereum-1/0x15dac05c93e1c5f31a29547340997ba9f6ec4f87/) | YMWK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=43

Zero-match audit list:

- [3069] <>\
- [3070] Yamato Protocol Final Audit (Extended).pdf

Fork inheritance lineage and inherited audits are included when available.
