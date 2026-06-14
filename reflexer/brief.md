# Agentic Audit Brief: Reflexer

⚠️ Lifecycle status: DECLINING - TVL changed 13.3% over 90 days

## Project Overview

- Project: Reflexer (`reflexer`)
- Website: [https://reflexer.finance/](https://reflexer.finance/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-14T10:38:32.185Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-df6c
- Chains: ethereum
- Contract surface: 70 unique implementations (93 raw deployments)
- DeFi Llama TVL: $1,826,511.38
- On-chain TVL (included contracts): $1,281,929.58
- TVL by chain: Ethereum $1,281,929.58

## Project Description

Reflexer is a decentralized collateralized debt position (CDP) protocol that allows users to lock collateral and mint RAI, a stablecoin with a managed float that is not pegged to any fiat currency.

### Architecture

The protocol consists of a single product family with one identified contract, CollateralJoin1, which likely serves as the entry point for collateral deposits and RAI generation, with no additional supporting contracts detected in the provided inventory.

## Audit Coverage Summary

- Verified implementations audited: 13/28 (46.4%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 70
- Raw deployments: 93
- Audits discovered: 8
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $1,281,929.58
- Latest audit: 2022-09 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 1 unknown
- Tier 1 coverage: 14.3% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of $1,281,929.58 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 8 | 28.6% | 2021-10 |
| OpenZeppelin | Tier 1 | 4 | 14.3% | n/a |
| Solidified | Tier 2 | 4 | 14.3% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccountingEngine | unknown | ethereum | [`0xcee6aa...f90fce`](./contracts/ethereum-1/0xcee6aa1ab47d0fb0f24f51a3072ec16e20f90fce/) | ✅ Audited |
| CoinJoin | unknown | ethereum | [`0x0a5653...cfdc45`](./contracts/ethereum-1/0x0a5653cca4db1b6e265f47caf6969e64f1cfdc45/) | ✅ Audited |
| FsmGovernanceInterface | unknown | ethereum | 2 deployments: ethereum [`0x4778b3...0df22b`](./contracts/ethereum-1/0x4778b3d2cebac0013c15e4b8ebeaa65b630df22b/); ethereum `0xe24f8b...36f533` | ✅ Audited |
| GebProxyActions | unknown | ethereum | 2 deployments: ethereum [`0x0ae263...07153e`](./contracts/ethereum-1/0x0ae26397e6d456359faf36c770304bbc3607153e/); ethereum `0x880cec...0f64ed` | ✅ Audited |
| GebProxyIncentivesActions | unknown | ethereum | 2 deployments: ethereum [`0x88a77b...7349e0`](./contracts/ethereum-1/0x88a77b8ff53329f88b8b6f9e29835fec287349e0/); ethereum `0xba2e2e...af3547` | ✅ Audited |
| GebSafeManager | governance | ethereum | 2 deployments: ethereum [`0xaae51c...8dcf74`](./contracts/ethereum-1/0xaae51cffb17b933d5ec3fbde2dce34d0688dcf74/); ethereum `0xefe0b4...94f185` | ✅ Audited |
| GetSafes | unknown | ethereum | 2 deployments: ethereum [`0xae2b96...b01133`](./contracts/ethereum-1/0xae2b968aef1af041803ccec328ae65369db01133/); ethereum `0xdf4bc9...8d202b` | ✅ Audited |
| GovActions | unknown | ethereum | 2 deployments: ethereum [`0x0463bf...f659ee`](./contracts/ethereum-1/0x0463bf18c2457b00402a7639fa1dfb7d60f659ee/); ethereum `0x8aedaf...03bf76` | ✅ Audited |
| ProtocolTokenAuthority | governance | ethereum | 2 deployments: ethereum [`0x9b44db...111a50`](./contracts/ethereum-1/0x9b44db6b4aa6ba12aeefbd2db9416b52b5111a50/); ethereum `0xcb8479...22fdc7` | ✅ Audited |
| RateSetter | unknown | ethereum | 2 deployments: ethereum [`0x005fab...3bf947`](./contracts/ethereum-1/0x005fab4c9d1ef0f3e41cd27b26cf05680c3bf947/); ethereum `0xedeeaf...c6872b` | ✅ Audited |
| SAFEEngine | unknown | ethereum | [`0xcc88a9...1a6962`](./contracts/ethereum-1/0xcc88a9d330da1133df3a7bd823b95e52511a6962/) | ✅ Audited |
| StakingRewardsFactory | registry | ethereum | [`0xa706d4...912a20`](./contracts/ethereum-1/0xa706d4c39c315288113020f3e2d7e1095e912a20/) | ✅ Audited |
| TaxCollector | unknown | ethereum | [`0xcdb05a...a281eb`](./contracts/ethereum-1/0xcdb05aeda142a1b0d6044c09c64e4226c1a281eb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DSDelegateToken | token | ethereum | 2 deployments: ethereum [`0x6243d8...8391f4`](./contracts/ethereum-1/0x6243d8cea23066d098a15582d81a598b4e8391f4/); ethereum `0xfdb58d...40e4b1` | ⚠️ Unaudited |
| CollateralJoin1 | unknown | ethereum | 2 deployments: ethereum [`0x15b99a...8afb3f`](./contracts/ethereum-1/0x15b99a6389521711c35057fec24baef89f8afb3f/); ethereum `0x2d3cd7...226e3a` | ⚠️ Unaudited |
| DSCompare | unknown | ethereum | 3 deployments: ethereum [`0x0f2275...5f298d`](./contracts/ethereum-1/0x0f2275ba79bbce0bce0d019011eb0c96735f298d/); ethereum `0x101222...b09c64`; ethereum `0xae69b7...30df2f` | ⚠️ Unaudited |
| DSRoles | unknown | ethereum | 2 deployments: ethereum [`0x1490a8...c6e25a`](./contracts/ethereum-1/0x1490a828957f1e23491c8d69273d684b15c6e25a/); ethereum `0xe4935d...6d8137` | ⚠️ Unaudited |
| GebDeployPauseProxyActions | unknown | ethereum | 2 deployments: ethereum [`0x27a54e...22b36d`](./contracts/ethereum-1/0x27a54e99de813ce2e41baa7f44d1f19fba22b36d/); ethereum `0x7b48cd...6dd2bb` | ⚠️ Unaudited |
| GebPauseScheduleProxyActions | unknown | ethereum | 2 deployments: ethereum [`0x6a2714...194632`](./contracts/ethereum-1/0x6a2714404be6613a952a80266840ffe916194632/); ethereum `0x757003...90bc7e` | ⚠️ Unaudited |
| GebPollingEmitter | unknown | ethereum | 2 deployments: ethereum [`0xa42f76...7dafd2`](./contracts/ethereum-1/0xa42f76d5362e87192e7bde72199e500a707dafd2/); ethereum `0xf7da96...f04f6f` | ⚠️ Unaudited |
| GebProxyActionsGlobalSettlement | unknown | ethereum | 2 deployments: ethereum [`0x17b5d9...92cb93`](./contracts/ethereum-1/0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93/); ethereum `0xc780b6...be10d8` | ⚠️ Unaudited |
| GebProxyDebtAuctionActions | unknown | ethereum | 2 deployments: ethereum [`0x150f15...5c5aef`](./contracts/ethereum-1/0x150f1532145d4e96f3c885ef7353850db05c5aef/); ethereum `0x8f29c9...1e86c8` | ⚠️ Unaudited |
| GebProxySurplusAuctionActions | unknown | ethereum | 2 deployments: ethereum [`0x6f0faa...c59e3b`](./contracts/ethereum-1/0x6f0faaea6767731ae14696f059248ee403c59e3b/); ethereum `0xd857d8...2e91f5` | ⚠️ Unaudited |
| Multicall | periphery | ethereum | 2 deployments: ethereum [`0x51812e...ee3a01`](./contracts/ethereum-1/0x51812e07497586ce025d798bb44b6d11bbee3a01/); ethereum `0xf9a91f...977e29` | ⚠️ Unaudited |
| OSM | unknown | ethereum | 2 deployments: ethereum [`0x049b02...c49d18`](./contracts/ethereum-1/0x049b02818ce4e15042242d335744f491cec49d18/); ethereum `0xe6f537...e16b2b` | ⚠️ Unaudited |
| SingleSpotDebtCeilingSetter | unknown | ethereum | [`0xb2df48...e25ec1`](./contracts/ethereum-1/0xb2df48a0c4a07031f538353aa35d7ffa24e25ec1/) | ⚠️ Unaudited |
| TokenBurner | token | ethereum | 2 deployments: ethereum [`0xb10409...ce799b`](./contracts/ethereum-1/0xb10409fc293f987841964c4fcfef887d9ece799b/); ethereum `0xe59432...37f12a` | ⚠️ Unaudited |
| TxManager | governance | ethereum | 2 deployments: ethereum [`0xa78e85...607043`](./contracts/ethereum-1/0xa78e8573577c4a9bc0f83a36aea6784ef5607043/); ethereum `0xb72726...6d7a25` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x027361...4b644b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x06691e...c462ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0721f0...420747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f850d...dc7c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x144b26...9925e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c50e1...16faf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24acc8...1ae09f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x28c063...ef5549` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30cd6c...90159b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x320290...486425` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3be18c...106fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41b220...274f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x494939...eef370` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4aaacd...18f65c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59405f...5e952a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5efe1f...3a5e52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6552bc...543a64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68ac16...a57760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x712141...cc65fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x712cab...acb116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x766bbe...e9d19b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7fc405...f72e55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x870473...c64f73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8d02d5...02f5dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94f468...57c4bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97a0a0...87c533` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98fd66...b196f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d1f48...bf7cc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f02dd...d72a6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3d266...e9845e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb13077...983178` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb3ad68...d8f719` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba6eba...b10ba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbcaa45...8768b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb3103...7de1cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcddab8...859039` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcfa37d...ae2688` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd07e26...64d671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd11b0b...c62f0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda2dbe...dce0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf195a0...5525c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf71774...e68842` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [oz-geb-protocol-audit.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/open-zeppelin/core-contracts/oz-geb-protocol-audit.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 4 | high |
| [Reflexer RAI Curve Pool - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/curve/Reflexer%20RAI%20Curve%20Pool%20-%20Report.pdf) | Quantstamp | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [Reflexer Helper Contracts - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/first-audit/Reflexer%20Helper%20Contracts%20-%20Report.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | contract_name | 12 | high |
| [Reflexer Second Engagement - Final Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/second-audit/Reflexer%20Second%20Engagement%20-%20Final%20Report.pdf) | Quantstamp | Audit | 2021-01 | stale | Direct | contract_name | 6 | high |
| [Reflexer Staking and Auction House - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/staking/Reflexer%20Staking%20and%20Auction%20House%20-%20Report.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - RAI Backup Oracles.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/backup-oracle/Audit%20Report%20-%20RAI%20Backup%20Oracles.pdf) | Solidified | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Solidified Audit Report - Reflexer [26.01.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/helper-contracts/Solidified%20Audit%20Report%20-%20Reflexer%20%5B26.01.2021%5D.pdf) | Solidified | Audit | 2021-01 | stale | Direct | contract_name | 7 | high |
| [Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/uniswap-v3/Audit%20Report%20-%20Uniswap%20V3%20Liquidity%20Manager%20%5B24.06.2021%5D.pdf) | Solidified | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x15b99a...8afb3f`](./contracts/ethereum-1/0x15b99a6389521711c35057fec24baef89f8afb3f/) | CollateralJoin1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27a54e...22b36d`](./contracts/ethereum-1/0x27a54e99de813ce2e41baa7f44d1f19fba22b36d/) | GebDeployPauseProxyActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a2714...194632`](./contracts/ethereum-1/0x6a2714404be6613a952a80266840ffe916194632/) | GebPauseScheduleProxyActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa42f76...7dafd2`](./contracts/ethereum-1/0xa42f76d5362e87192e7bde72199e500a707dafd2/) | GebPollingEmitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17b5d9...92cb93`](./contracts/ethereum-1/0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93/) | GebProxyActionsGlobalSettlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x150f15...5c5aef`](./contracts/ethereum-1/0x150f1532145d4e96f3c885ef7353850db05c5aef/) | GebProxyDebtAuctionActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f0faa...c59e3b`](./contracts/ethereum-1/0x6f0faaea6767731ae14696f059248ee403c59e3b/) | GebProxySurplusAuctionActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2df48...e25ec1`](./contracts/ethereum-1/0xb2df48a0c4a07031f538353aa35d7ffa24e25ec1/) | SingleSpotDebtCeilingSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb10409...ce799b`](./contracts/ethereum-1/0xb10409fc293f987841964c4fcfef887d9ece799b/) | TokenBurner | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa78e85...607043`](./contracts/ethereum-1/0xa78e8573577c4a9bc0f83a36aea6784ef5607043/) | TxManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=29

Zero-match audit list:

- [2842] Reflexer RAI Curve Pool - Report.pdf
- [2845] Reflexer Staking and Auction House - Report.pdf
- [2846] Audit Report - RAI Backup Oracles.pdf
- [2848] Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf

Fork inheritance lineage and inherited audits are included when available.
