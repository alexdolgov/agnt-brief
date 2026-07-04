# Agentic Audit Brief: GoPlus Security

## Project Overview

- Project: GoPlus Security (`goplus-security`)
- Website: [https://gopluslabs.io](https://gopluslabs.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.901Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 26 unique implementations (35 raw deployments)
- DeFi Llama TVL: $25,546,188.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Token Locker. Structurally: 58 project-authored contract(s) across 4 chain(s); 9 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 16 common project-authored base contract(s) (dsmath, dsauth, dsauthevents). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 79; live-surface contracts included: 35 (21 live, 14 unknown).
- Excluded by liveness: 44 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/11 (9.1%)
- Deployed-live implementations: 12 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 26
- Raw deployments: 35
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 9.1% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 8.3% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GPS | unknown | base | n/a | [`0x0c1dc7...a0dca5`](./contracts/base-8453/0x0c1dc73159e30c4b06170f2593d3118968a0dca5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0x34ebdd...23e34f`](./contracts/bsc-56/0x34ebddd30ccbd3f1e385b41bdadb30412323e34f/) | ⚠️ Unaudited |
| LockFactory | registry | base | n/a | [`0x043f40...931a64`](./contracts/base-8453/0x043f4036202c54da27583a996a8c4b9471931a64/) | ⚠️ Unaudited |
| RevenuePool | core_logic | bsc | n/a | [`0x648d7f...97706c`](./contracts/bsc-56/0x648d7f4ad39186949e37e9223a152435ab97706c/) | ⚠️ Unaudited |
| SafeTokenFactory | registry | base | n/a | 2 deployments: base [`0x0d648e...579027`](./contracts/base-8453/0x0d648ed434f95f812e6a0e9b74825bad03579027/); arbitrum [`0x0d648e...579027`](./contracts/arbitrum-42161/0x0d648ed434f95f812e6a0e9b74825bad03579027/) | ⚠️ Unaudited |
| StakingLock | unknown | bsc | n/a | [`0xeca8d7...ffee78`](./contracts/bsc-56/0xeca8d71c1f667f5c122b72af5f6e87b1dcffee78/) | ⚠️ Unaudited |
| TokenLocker | token | ethereum | n/a | 4 deployments: ethereum [`0xf17a08...dec04b`](./contracts/ethereum-1/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/); bsc [`0xf17a08...dec04b`](./contracts/bsc-56/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/); base [`0xf17a08...dec04b`](./contracts/base-8453/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/); arbitrum [`0xf17a08...dec04b`](./contracts/arbitrum-42161/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/) | ⚠️ Unaudited |
| TokenTemplate | token | arbitrum | n/a | [`0x24a9eb...bbfa0d`](./contracts/arbitrum-42161/0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d/) | ⚠️ Unaudited |
| UniV3LPLocker | unknown | ethereum | n/a | 4 deployments: ethereum [`0x25c9c4...a9bd52`](./contracts/ethereum-1/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/); bsc [`0x25c9c4...a9bd52`](./contracts/bsc-56/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/); base [`0x25c9c4...a9bd52`](./contracts/base-8453/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/); arbitrum [`0x25c9c4...a9bd52`](./contracts/arbitrum-42161/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/) | ⚠️ Unaudited |
| UniV4LiquidityLocker | unknown | base | n/a | 3 deployments: ethereum `0x83eab3...53f7d7`; base [`0x4f26fa...95519e`](./contracts/base-8453/0x4f26fa33bce395d50671cbc8c7a5d3c55a95519e/); base `0xf5cdad...9fcca1` | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x29ec7b...cc3c62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a4cd4...acfd6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefa940...6de484` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03b957...c440ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08aa22...22420c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a6d51...0054ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50727f...c24197` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71fed2...75cffd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9594fc...9489fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf41fa...da9e29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb988ba...4db763` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0d55d...13660c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc75cd1...4ccb63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9a671...11f156` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SafeToken+Protocol+-+SlowMist+Audit+Report.pdf](https://static2.gopluslabs.io/simg/SafeToken+Protocol+-+SlowMist+Audit+Report.pdf) | SlowMist | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - GoPlus Security(GPS).pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/GoPlusSecurity/GPS-AUDIT/main/SlowMist%20Audit%20Report%20-%20GoPlus%20Security(GPS).pdf) | SlowMist | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x043f40...931a64`](./contracts/base-8453/0x043f4036202c54da27583a996a8c4b9471931a64/) | LockFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x648d7f...97706c`](./contracts/bsc-56/0x648d7f4ad39186949e37e9223a152435ab97706c/) | RevenuePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d648e...579027`](./contracts/base-8453/0x0d648ed434f95f812e6a0e9b74825bad03579027/) | SafeTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xeca8d7...ffee78`](./contracts/bsc-56/0xeca8d71c1f667f5c122b72af5f6e87b1dcffee78/) | StakingLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf17a08...dec04b`](./contracts/ethereum-1/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24a9eb...bbfa0d`](./contracts/arbitrum-42161/0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d/) | TokenTemplate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25c9c4...a9bd52`](./contracts/ethereum-1/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/) | UniV3LPLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4f26fa...95519e`](./contracts/base-8453/0x4f26fa33bce395d50671cbc8c7a5d3c55a95519e/) | UniV4LiquidityLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [21281] SafeToken+Protocol+-+SlowMist+Audit+Report.pdf

Fork inheritance lineage and inherited audits are included when available.
