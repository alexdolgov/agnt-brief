# Agentic Audit Brief: Router Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 0.4% over 90 days

## Project Overview

- Project: Router Protocol (`router-protocol`)
- Website: [https://app.routerprotocol.com/](https://app.routerprotocol.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-22T10:59:10.941Z
- Pipeline run: v2-pipeline-2026-06-22-727228-695b
- Chains: avalanche, bsc, cronos, ethereum, fantom, harmony, kava, polygon
- Contract surface: 28 unique implementations (38 raw deployments)
- DeFi Llama TVL: $9,864.13
- On-chain TVL (included contracts): $319,025,505.64
- TVL by chain: Polygon $302,668,099.45 | Bsc $14,566,295.46 | Ethereum $1,750,859.11 | Avalanche $40,251.62

## Project Description

Router Protocol is a cross-chain bridge that enables asset transfers and communication between multiple blockchains. It uses a network of handlers, fee managers, and token contracts to facilitate secure and efficient cross-chain transactions.

### Architecture

The protocol uses a single product family where core token contracts (e.g., BridgeToken, AnyswapV5ERC20) represent assets on different chains, while handler contracts (e.g., GenericHandlerUpgradeable, ERC20HandlerUpgradeable) manage the locking, minting, and burning logic. Fee managers and proxy contracts provide shared infrastructure for upgradeability and fee collection across all cross-chain operations.

## Contract Surface Quality

- Indexed contracts: 601; live-surface contracts included: 38 (22 live, 16 unknown).
- Excluded by liveness: 347 inactive, 216 singleton, 0 uninitialized.
- Deployment units: 4/107 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 28
- Raw deployments: 38
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $319,025,505.64
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $319,025,505.64 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| QiStablecoin | token | polygon | n/a | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | unit-44085 (3 proxies) | 3 deployments: bsc [`0x1ce0c2...794041`](./contracts/bsc-56/0x1ce0c2827e2ef14d5c4f29a091d735a204794041/); bsc `0xad29ab...29dcfe`; bsc `0xcc4272...d682bd` | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | unit-44054 | [`0x85f138...67eda3`](./contracts/ethereum-1/0x85f138bfee4ef8e540890cfb48f620571d67eda3/) | ⚠️ Unaudited |
| ERC20PresetMinterPauser | token | polygon | n/a | 9 deployments: polygon [`0x083c56...3399c9`](./contracts/polygon-137/0x083c56d87ead73d6231c165ec450c6e28f3399c9/); polygon `0x2c89bb...7f286b`; polygon `0x5c4b7c...17f03f`; polygon `0x80c0cb...0525f2`; polygon `0xa73134...80239e`; polygon `0xa86324...067334`; polygon `0xb85517...caa4e5`; polygon `0xdcdc86...8197d9`; polygon `0xf2d812...0c6638` | ⚠️ Unaudited |
| DFYNToken | token | ethereum | n/a | [`0x9695e0...529023`](./contracts/ethereum-1/0x9695e0114e12c0d3a3636fab5a18e6b737529023/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | avalanche | n/a | [`0x264c13...04a493`](./contracts/avalanche-43114/0x264c1383ea520f73dd837f915ef3a732e204a493/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-44115 | [`0xc168e4...d66c97`](./contracts/polygon-137/0xc168e40227e4ebd8c1cae80f7a55a4f0e6d66c97/) | ⚠️ Unaudited |
| ERC20PresetMinterPauserLimiter | token | polygon | n/a | [`0x904371...d6bd0d`](./contracts/polygon-137/0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-44116 | [`0xc9c1c1...224ce1`](./contracts/polygon-137/0xc9c1c1c20b3658f8787cc2fd702267791f224ce1/) | ⚠️ Unaudited |
| CroToken | token | ethereum | n/a | [`0xa0b73e...34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | ⚠️ Unaudited |
| Route | unknown | ethereum | n/a | [`0x16eccf...753db4`](./contracts/ethereum-1/0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4/) | ⚠️ Unaudited |
| WETH9 | token | polygon | n/a | [`0x4c28f4...dce1fa`](./contracts/polygon-137/0x4c28f48448720e9000907bc2611f73022fdce1fa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x6e14f4...0be64e` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x765277...b39c61` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xad79ac...3c2b40` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xb44a9b...9c663c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe44fd7...0c299a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xfa9343...f8a40f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x27f26f...dccd45` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x40df1a...6384f3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x511d35...d89212` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6e14f4...0be64e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x6e14f4...0be64e` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xfa9343...f8a40f` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x6e14f4...0be64e` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x985458...9dfab4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/router) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://2030736250-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F2MOVWdZOYqYGCPk8rjiB%2Fuploads%2Fi6XLVeITHbGOpWc4ZNF3%2FRouter%20Protocol%20Bridge%20Contract%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://2030736250-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F2MOVWdZOYqYGCPk8rjiB%2Fuploads%2FF32FJ6GmvterrygKVJec%2FRouter%20Protocol%20GoLang%20Bridge%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RouterProtocol_GoBridge_Audit_Report_Halborn.pdf](https://github.com/router-protocol/router-protocol-audit/blob/main/RouterProtocol_GoBridge_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [RouterProtocol_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/router-protocol/router-protocol-audit/blob/main/RouterProtocol_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-10 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x85f138...67eda3`](./contracts/ethereum-1/0x85f138bfee4ef8e540890cfb48f620571d67eda3/) | TokenImplementation | token | $1,697,505.86 | Verified native implementation with $1,697,505.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x904371...d6bd0d`](./contracts/polygon-137/0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d/) | ERC20PresetMinterPauserLimiter | token | $8,564.90 | Verified native implementation with $8,564.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b73e...34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | CroToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16eccf...753db4`](./contracts/ethereum-1/0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4/) | Route | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=188

Zero-match audit list:

- [13788] DL audit link
- [13789] DL audit link
- [13790] DL audit link
- [13791] RouterProtocol_GoBridge_Audit_Report_Halborn.pdf
- [13792] RouterProtocol_Smart_Contract_Security_Audit_Report_Halborn.pdf

Fork inheritance lineage and inherited audits are included when available.
