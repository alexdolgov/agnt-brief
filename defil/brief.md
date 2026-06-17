# Agentic Audit Brief: DeFIL

## Project Overview

- Project: DeFIL (`defil`)
- Lifecycle: active (Tier 0, 64.2% below peak)
- Generated: 2026-06-17T07:00:33.340Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 7 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,801,887.03
- On-chain TVL (included contracts): $1,001,798.67
- TVL by chain: Ethereum $1,001,798.67

## Project Description

DeFIL is a decentralized lending protocol that allows users to deposit Filecoin (FIL) and earn interest, while also providing a staking mechanism for its governance token DFL. It issues derivative tokens like FILST and EFIL to represent staked or lent positions.

### Architecture

The DeFIL family shares a common deployer cluster and uses proxy patterns (Unitroller, RewardPoolDelegator) for upgradeability. Staking contracts interact with the DFL token and likely feed into the lending market represented by CErc20Delegator, while UniswapV2 pairs provide liquidity for DFL and derivative tokens.

## Contract Surface Quality

- Indexed contracts: 94; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 79 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 5/34.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 9
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,001,798.67
- Latest audit: 2018-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FILST | token | ethereum | n/a | [`0x7346ad...c24ca2`](./contracts/ethereum-1/0x7346ad4c8cd1886ff6d16072bcea5dfc0bc24ca2/) | ⚠️ Unaudited |
| CErc20Delegator | token | ethereum | n/a | [`0x036cf3...c1dbb0`](./contracts/ethereum-1/0x036cf3821ea246e935feef1c29ed8ddffac1dbb0/) | ⚠️ Unaudited |
| DFL | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09ce2b...f095ab`](./contracts/ethereum-1/0x09ce2b746c32528b7d864a1e3979bd97d2f095ab/); ethereum `0x6ded0f...67c9d7` | ⚠️ Unaudited |
| EFIL | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22b475...e56c2c`](./contracts/ethereum-1/0x22b475f3e93390b7e523873ad7073337f4e56c2c/); ethereum `0x2a2cb9...5cb628` | ⚠️ Unaudited |
| MFIL | unknown | ethereum | n/a | [`0x3c392c...b27b0c`](./contracts/ethereum-1/0x3c392c3fbe6ada6049373478a4f8dd668ab27b0c/) | ⚠️ Unaudited |
| MiningNFT | token | ethereum | n/a | [`0xad1ed3...a4a9cf`](./contracts/ethereum-1/0xad1ed31e70b569d78d1930537179a940dda4a9cf/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xd372a3...57e163`](./contracts/ethereum-1/0xd372a3221021df72eda38f77117d3a95f057e163/) | ⚠️ Unaudited |

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
| [DL audit link](https://www.slowmist.com/security-audit-certificate.html?id=e84a975074cb9aef9299f9dec92311fd1458d0bbb4163adfadac8e16e0da3c61) | SlowMist | Audit | 2018-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7346ad...c24ca2`](./contracts/ethereum-1/0x7346ad4c8cd1886ff6d16072bcea5dfc0bc24ca2/) | FILST | token | $1,001,798.67 | Verified native implementation with $1,001,798.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x036cf3...c1dbb0`](./contracts/ethereum-1/0x036cf3821ea246e935feef1c29ed8ddffac1dbb0/) | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09ce2b...f095ab`](./contracts/ethereum-1/0x09ce2b746c32528b7d864a1e3979bd97d2f095ab/) | DFL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22b475...e56c2c`](./contracts/ethereum-1/0x22b475f3e93390b7e523873ad7073337f4e56c2c/) | EFIL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c392c...b27b0c`](./contracts/ethereum-1/0x3c392c3fbe6ada6049373478a4f8dd668ab27b0c/) | MFIL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad1ed3...a4a9cf`](./contracts/ethereum-1/0xad1ed31e70b569d78d1930537179a940dda4a9cf/) | MiningNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2975] DL audit link

Fork inheritance lineage and inherited audits are included when available.
