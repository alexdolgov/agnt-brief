# Agentic Audit Brief: Set Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 26.4% over 90 days

## Project Overview

- Project: Set Protocol (`set-protocol`)
- Lifecycle: declining (Tier 0, 98.5% below peak)
- Generated: 2026-06-17T07:00:49.807Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 12 unique implementations (16 raw deployments)
- DeFi Llama TVL: $8,988,665.17
- On-chain TVL (included contracts): $7,891,256.51
- TVL by chain: Ethereum $7,891,256.51

## Project Description

Set Protocol is an Ethereum protocol for creating and managing ERC-20 tokenized portfolios and index products, allowing users to gain diversified exposure to multiple crypto assets through a single token. Third-party lending-market contracts such as Compound cTokens are external dependencies or underlying assets, not Set-owned core contracts.

### Architecture

The Vault contract manages the issuance and rebalancing of Sets, while CErc20 and its proxy CErc20Delegator represent Compound lending market integrations that likely serve as yield-bearing components or collateral within the Set baskets.

## Contract Surface Quality

- Indexed contracts: 143; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 127 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: aave-v2
- Unverified dependencies: 2/145.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 16
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $7,891,256.51
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $7,891,256.51 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SetToken | token | ethereum | n/a | 5 deployments: ethereum [`0x0b498f...801c2b`](./contracts/ethereum-1/0x0b498ff89709d3838a063f1dfa463091f9801c2b/); ethereum `0x1494ca...ba3c2b`; ethereum `0x72e364...d634d7`; ethereum `0x7c07f7...256a84`; ethereum `0xaa6e81...5665bd` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x5b6787...d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/) | ⚠️ Unaudited |
| AaveLeverageModule | unknown | ethereum | n/a | [`0x251bd1...5f51dc`](./contracts/ethereum-1/0x251bd1d42df1f153d86a5ba2305faade4d5f51dc/) | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | ethereum | n/a | [`0xd8ef3c...32f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | ⚠️ Unaudited |
| Core | unknown | ethereum | n/a | [`0xf55186...a120c8`](./contracts/ethereum-1/0xf55186cc537e7067ea616f2aae007b4427a120c8/) | ⚠️ Unaudited |
| DebtIssuanceModule | unknown | ethereum | n/a | [`0x39f024...2ecb92`](./contracts/ethereum-1/0x39f024d621367c044bace2bf0fb15fb3612ecb92/) | ⚠️ Unaudited |
| DebtIssuanceModuleV2 | unknown | ethereum | n/a | [`0x69a592...f28d57`](./contracts/ethereum-1/0x69a592d2129415a4a1d1b1e309c17051b7f28d57/) | ⚠️ Unaudited |
| DEXAdapter | adapter | ethereum | unit-30366 | [`0xb7cc88...b74598`](./contracts/ethereum-1/0xb7cc88a13586d862b97a677990de14a122b74598/) | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | ethereum | n/a | [`0xf42ecd...6e4b25`](./contracts/ethereum-1/0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25/) | ⚠️ Unaudited |
| SetTokenCreator | token | ethereum | n/a | [`0xef72d3...fd748a`](./contracts/ethereum-1/0xef72d3278dc3eba6dc2614965308d1435ffd748a/) | ⚠️ Unaudited |
| StreamingFeeModule | unknown | ethereum | n/a | [`0x08f866...10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/) | ⚠️ Unaudited |
| TradeModule | unknown | ethereum | n/a | [`0x90f765...41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | ⚠️ Unaudited |

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
| ethereum | [`0x0b498f...801c2b`](./contracts/ethereum-1/0x0b498ff89709d3838a063f1dfa463091f9801c2b/) | SetToken | token | $6,536,789.12 | Verified native implementation with $6,536,789.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b6787...d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/) | Vault | core_logic | $1,354,467.38 | Verified native implementation with $1,354,467.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ef3c...32f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | BasicIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf55186...a120c8`](./contracts/ethereum-1/0xf55186cc537e7067ea616f2aae007b4427a120c8/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39f024...2ecb92`](./contracts/ethereum-1/0x39f024d621367c044bace2bf0fb15fb3612ecb92/) | DebtIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69a592...f28d57`](./contracts/ethereum-1/0x69a592d2129415a4a1d1b1e309c17051b7f28d57/) | DebtIssuanceModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7cc88...b74598`](./contracts/ethereum-1/0xb7cc88a13586d862b97a677990de14a122b74598/) | DEXAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42ecd...6e4b25`](./contracts/ethereum-1/0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25/) | ExchangeIssuanceZeroEx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef72d3...fd748a`](./contracts/ethereum-1/0xef72d3278dc3eba6dc2614965308d1435ffd748a/) | SetTokenCreator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08f866...10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/) | StreamingFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90f765...41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | TradeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
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
