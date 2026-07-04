# Agentic Audit Brief: GoPlus Security

## Project Overview

- Project: GoPlus Security (`goplus-security`)
- Website: [https://gopluslabs.io](https://gopluslabs.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:56.784Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 83 unique implementations (92 raw deployments)
- DeFi Llama TVL: $25,546,188.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Token Locker. Structurally: 58 project-authored contract(s) across 4 chain(s); 9 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 16 common project-authored base contract(s) (dsmath, dsauth, dsauthevents). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 167; live-surface contracts included: 92 (21 live, 71 unknown).
- Excluded by liveness: 75 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/12 (0.0%)
- Deployed-live implementations: 12 of 83 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 83
- Raw deployments: 92
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0x34ebdd...23e34f`](./contracts/bsc-56/0x34ebddd30ccbd3f1e385b41bdadb30412323e34f/) | ⚠️ Unaudited |
| GPS | unknown | base | n/a | [`0x0c1dc7...a0dca5`](./contracts/base-8453/0x0c1dc73159e30c4b06170f2593d3118968a0dca5/) | ⚠️ Unaudited |
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

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0cbd55...390940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d126c...c00c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d64d8...50fbd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102560...5df38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x127f3c...a9199b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15f73a...6f5605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183739...a98908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ff103...26f4da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20826b...363058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bdda...9a55b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x230557...37b15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29ec7b...cc3c62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c6f75...35b507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff889...b8854d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d687...cda740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x335926...f90c3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x362b56...9dfce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x384c53...293036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad977...98f8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd1ee...3ca5af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x402fa0...2584b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x411ea3...9e93b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46695c...003ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471208...0a8732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c209a...223d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c9ad5...1c9acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56de9e...fa51a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4997...5c76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4ba4...789c09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d8a5...b14646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf03c...55ea3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3701...6b4877` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f162...cbf197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x897c79...ebc249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f800...389aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b00a8...af293b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cbd1d...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92bfd0...fb3e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9843e5...bd50ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bc79...4cf142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a4cd4...acfd6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e978e...73fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f4ef8...57df75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f6de3...1f2423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fcb31...35be6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71a6c...905627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc61d91...f4a581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc882b9...2b0d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc21c...efe931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3f3c5...8a8a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6eaa2...a68e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81930...a59891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef0594...5e8173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefa940...6de484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf50db8...785f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf68393...8fbf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85903...287c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf88cbc...c08ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff0eb5...489010` | ❓ Unverified |
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
| [SlowMist Audit Report - GoPlus Security(GPS).pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/GoPlusSecurity/GPS-AUDIT/main/SlowMist%20Audit%20Report%20-%20GoPlus%20Security(GPS).pdf) | SlowMist | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 83 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21281] SafeToken+Protocol+-+SlowMist+Audit+Report.pdf
- [21282] SlowMist Audit Report - GoPlus Security(GPS).pdf

Fork inheritance lineage and inherited audits are included when available.
