# Agentic Audit Brief: Drops

⚠️ Lifecycle status: DECLINING - TVL changed 13.7% over 90 days

## Project Overview

- Project: Drops (`drops`)
- Website: [https://drops.co](https://drops.co)
- Lifecycle: declining (Tier 0, 99.8% below peak)
- Generated: 2026-06-17T07:00:35.855Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 14 unique implementations (16 raw deployments)
- DeFi Llama TVL: $2,790,252.23
- On-chain TVL (included contracts): $68,767.18
- TVL by chain: Ethereum $68,767.18

## Project Description

Drops is an Ethereum NFT and DeFi-asset lending protocol. Its contract surface includes Compound-style CErc20 and CEther liquidity markets for ERC20/ETH assets, CErc721 collateral markets for NFT-backed borrowing, and Unitroller/Comptroller risk-management components for market configuration, collateral, borrowing, and liquidation logic. Upgradeability should be described only for the relevant proxy-based components rather than as a pattern shared by all contracts.

### Architecture

The Drops family consists of multiple isolated lending pools, each with its own Unitroller proxy pointing to a Comptroller implementation that manages risk parameters and liquidations. CEther contracts serve as the interest-bearing receipt tokens for supplied ETH, while CErc721 variants handle NFT collateral, all sharing a common upgradeable proxy pattern.

## Contract Surface Quality

- Indexed contracts: 255; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 200 inactive, 39 singleton, 0 uninitialized.
- Deployment units: 3/34 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 2/92.

## Audit Coverage Summary

- Verified implementations audited: 0/14 (0.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 16
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $68,767.18
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $68,767.18 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Immutable | token | ethereum | n/a | [`0x985297...38dd03`](./contracts/ethereum-1/0x985297275e1c5404b3a557ae2bcb594a2338dd03/) | ⚠️ Unaudited |
| NodeRunnersToken | token | ethereum | n/a | [`0x739763...55be53`](./contracts/ethereum-1/0x739763a258640919981f9ba610ae65492455be53/) | ⚠️ Unaudited |
| CErc20YearnDelegate | token | ethereum | unit-21649 | [`0xf63f89...90e9cb`](./contracts/ethereum-1/0xf63f89f6463550ce4ce5b6ca6b1323b39c90e9cb/) | ⚠️ Unaudited |
| BridgedOracle | operational_periphery | ethereum | n/a | [`0xda12a2...7992e1`](./contracts/ethereum-1/0xda12a24515e4ba722103a8ff648ba11faf7992e1/) | ⚠️ Unaudited |
| CErc20YearnDelegate | token | ethereum | unit-21631 | [`0x72ab68...d87952`](./contracts/ethereum-1/0x72ab6843d4c988d74dd8d5cdf16ef49301d87952/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4ae741...f0e411`](./contracts/ethereum-1/0x4ae7413182849d062b72518928a4b2de87f0e411/); ethereum `0x588c13...fee086`; ethereum `0x777ecc...2619a0` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | unit-21625 | [`0x48e29b...d14abb`](./contracts/ethereum-1/0x48e29b9ddbf3fe6380d7d1ec5b415e97afd14abb/) | ⚠️ Unaudited |
| Dop | unknown | ethereum | n/a | [`0x6bb612...1da2ef`](./contracts/ethereum-1/0x6bb61215298f296c55b19ad842d3df69021da2ef/) | ⚠️ Unaudited |
| ERC20CustomStaking | token | ethereum | n/a | [`0xc4b734...5d0262`](./contracts/ethereum-1/0xc4b73419265b9dfce7abdd0d8e33f99e565d0262/) | ⚠️ Unaudited |
| LPStaking | unknown | ethereum | n/a | [`0x2c9274...2b22eb`](./contracts/ethereum-1/0x2c92744a0428e405e95dc3eb812e1b87872b22eb/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0x8a7801...554df9`](./contracts/ethereum-1/0x8a78011bf2c42df82cc05f198109ea024b554df9/) | ⚠️ Unaudited |
| NFTStaking | token | ethereum | n/a | [`0x81b6a8...3e01e5`](./contracts/ethereum-1/0x81b6a8bf87817adca4874838560966957c3e01e5/) | ⚠️ Unaudited |
| NodeRunnersNFT | token | ethereum | n/a | [`0x89ee76...71c26a`](./contracts/ethereum-1/0x89ee76cc25fcbf1714ed575faa6a10202b71c26a/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x00aa1c...7ea1d1`](./contracts/ethereum-1/0x00aa1c57e894c4010fe44cb840ae56432d7ea1d1/) | ⚠️ Unaudited |

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
| ethereum | [`0x985297...38dd03`](./contracts/ethereum-1/0x985297275e1c5404b3a557ae2bcb594a2338dd03/) | CErc20Immutable | token | $54,954.81 | Verified native implementation with $54,954.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf63f89...90e9cb`](./contracts/ethereum-1/0xf63f89f6463550ce4ce5b6ca6b1323b39c90e9cb/) | CErc20YearnDelegate | token | $836.05 | Verified native implementation with $836.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda12a2...7992e1`](./contracts/ethereum-1/0xda12a24515e4ba722103a8ff648ba11faf7992e1/) | BridgedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72ab68...d87952`](./contracts/ethereum-1/0x72ab6843d4c988d74dd8d5cdf16ef49301d87952/) | CErc20YearnDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ae741...f0e411`](./contracts/ethereum-1/0x4ae7413182849d062b72518928a4b2de87f0e411/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48e29b...d14abb`](./contracts/ethereum-1/0x48e29b9ddbf3fe6380d7d1ec5b415e97afd14abb/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bb612...1da2ef`](./contracts/ethereum-1/0x6bb61215298f296c55b19ad842d3df69021da2ef/) | Dop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4b734...5d0262`](./contracts/ethereum-1/0xc4b73419265b9dfce7abdd0d8e33f99e565d0262/) | ERC20CustomStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c9274...2b22eb`](./contracts/ethereum-1/0x2c92744a0428e405e95dc3eb812e1b87872b22eb/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a7801...554df9`](./contracts/ethereum-1/0x8a78011bf2c42df82cc05f198109ea024b554df9/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81b6a8...3e01e5`](./contracts/ethereum-1/0x81b6a8bf87817adca4874838560966957c3e01e5/) | NFTStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89ee76...71c26a`](./contracts/ethereum-1/0x89ee76cc25fcbf1714ed575faa6a10202b71c26a/) | NodeRunnersNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 2 |
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
