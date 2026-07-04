# Agentic Audit Brief: International Meme Fund

## Project Overview

- Project: International Meme Fund (`international-meme-fund`)
- Website: [https://imf.bz/](https://imf.bz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:03.170Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: ethereum
- Contract surface: 13 unique implementations (13 raw deployments)
- DeFi Llama TVL: $826,705.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 13 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT, 1 Chainlink feed; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/13 (0.0%)
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainlinkUsdMoneyConstantOracle | unknown | ethereum | n/a | [`0xcd2b01...38829e`](./contracts/ethereum-1/0xcd2b014f74e776e0ef787f42905f27fef138829e/) | ⚠️ Unaudited |
| IMF | unknown | ethereum | n/a | [`0x05be1d...829a60`](./contracts/ethereum-1/0x05be1d4c307c19450a6fd7ce7307ce72a3829a60/) | ⚠️ Unaudited |
| IMFMoneyMarkets | unknown | ethereum | n/a | [`0x30f758...bd1eeb`](./contracts/ethereum-1/0x30f75834cb406b7093208fda7f689938acbd1eeb/) | ⚠️ Unaudited |
| Irm69 | unknown | ethereum | n/a | [`0xe22779...bae2cd`](./contracts/ethereum-1/0xe22779eea87b043d26c4bf1c85d5b9bdf8bae2cd/) | ⚠️ Unaudited |
| IrmFixed | unknown | ethereum | n/a | [`0xb600a9...2c74d9`](./contracts/ethereum-1/0xb600a995e13824bdb1ca6ad1e12eed3dbf2c74d9/) | ⚠️ Unaudited |
| LiquidationBot | unknown | ethereum | n/a | [`0x321a36...1ce213`](./contracts/ethereum-1/0x321a36255fd952c8c9801eb53c23a12e3e1ce213/) | ⚠️ Unaudited |
| Money | unknown | ethereum | n/a | [`0xb162ca...ee6b8f`](./contracts/ethereum-1/0xb162caa6b63de33edc5d0a14b901fb6a54ee6b8f/) | ⚠️ Unaudited |
| MoneyFixedSwap | unknown | ethereum | n/a | [`0x7207da...2ce452`](./contracts/ethereum-1/0x7207da4d2c296f16568c7f128cf2685a5d2ce452/) | ⚠️ Unaudited |
| ProxyIrm | unknown | ethereum | n/a | [`0xec39c6...116ecb`](./contracts/ethereum-1/0xec39c6df7947f2a4923d317b2805e41ed9116ecb/) | ⚠️ Unaudited |
| ProxyOracle | unknown | ethereum | n/a | [`0x66099a...1fde1c`](./contracts/ethereum-1/0x66099a17c21a8df6d949a704f484d544b81fde1c/) | ⚠️ Unaudited |
| sbIMF | unknown | ethereum | n/a | [`0x3215c3...5e14e4`](./contracts/ethereum-1/0x3215c358b7a70c09e0a98827f744d107095e14e4/) | ⚠️ Unaudited |
| TwoHopOracle | unknown | ethereum | n/a | [`0x443880...90a920`](./contracts/ethereum-1/0x4438808061ba3fadba1b3daf564e54028b90a920/) | ⚠️ Unaudited |
| UniV3Oracle | unknown | ethereum | n/a | [`0x7c12a3...eb342b`](./contracts/ethereum-1/0x7c12a3aaaddc30a4c75effcdb7a52ddf39eb342b/) | ⚠️ Unaudited |

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
| [IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf](https://hashlock.com/wp-content/uploads/2024/08/IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf) | Hashlock | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://hashlock.com/audits/imf-international-meme-fund) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21366] IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf
- [24096] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
