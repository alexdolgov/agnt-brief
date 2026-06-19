# Agentic Audit Brief: Notional

⚠️ Lifecycle status: DECLINING - TVL dropped 13.8% over 90 days

## Project Overview

- Project: Notional (`notional`)
- Website: [https://notional.finance](https://notional.finance)
- Lifecycle: declining (Tier 0, 99.6% below peak)
- Generated: 2026-06-19T06:14:30.768Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, ethereum
- Contract surface: 18 unique implementations (62 raw deployments)
- DeFi Llama TVL: $3,582,428.00
- On-chain TVL (included contracts): $17.41
- TVL by chain: Ethereum $17.41

## Project Description

Notional is a decentralized lending and borrowing protocol focused on fixed-rate and variable-rate lending, leveraged yield strategies, and liquidity provision. It uses nTokens for liquidity, PrimeCash and PrimeDebt for money-market positions, and vaults for yield strategies.

### Architecture

The Core Lending family provides the base assets (nTokens, PrimeCash, PrimeDebt) that are used by Yield Vaults to execute strategies, while Routing contracts direct user flows and manage cross-chain operations. All families rely on shared proxy patterns (nBeaconProxy, nProxy) and upgradeable beacons for contract management.

## Contract Surface Quality

- Indexed contracts: 356; live-surface contracts included: 62 (25 live, 37 unknown).
- Excluded by liveness: 213 inactive, 81 singleton, 0 uninitialized.
- Deployment units: 7/66 live.
- Detected codebases: none
- Unverified dependencies: 22/37.

## Audit Coverage Summary

- Verified implementations audited: 7/18 (38.9%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 62
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 4 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: 38.9% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 7 | 38.9% | 2026-03 |
| yAudit | Tier 2 | 7 | 38.9% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurveConvex2Token | token | ethereum | unit-34425 | [`0x271656...7f167f`](./contracts/ethereum-1/0x2716561755154eef59bc48eb13712510b27f167f/) | ✅ Audited |
| AddressRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x46a237...5a2d74`](./contracts/ethereum-1/0x46a2373fb541a5049dc31fc740e8b4036a5a2d74/); ethereum `0x6a273b...a6f7bc` | ✅ Audited |
| EthenaWithdrawRequestManager | operational_periphery | ethereum | unit-34438 | [`0x8c7c9a...803c9f`](./contracts/ethereum-1/0x8c7c9a45916550c6fe04cdaa139672a1b5803c9f/) | ✅ Audited |
| EtherFiWithdrawRequestManager | operational_periphery | ethereum | unit-34434 | [`0x71ba37...962f20`](./contracts/ethereum-1/0x71ba37c7c0eab9f86de6d8745771c66fd3962f20/) | ✅ Audited |
| MorphoLendingRouter | adapter | ethereum | unit-34441 | [`0x9a0c63...2ecaa0`](./contracts/ethereum-1/0x9a0c630c310030c4602d1a76583a3b16972ecaa0/) | ✅ Audited |
| PendlePT_sUSDe | unknown | ethereum | unit-34419 | [`0x0e61e8...f3f622`](./contracts/ethereum-1/0x0e61e810f0918081cbfd2ac8c97e5866daf3f622/) | ✅ Audited |
| StakingStrategy | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x04b517...fad718`](./contracts/ethereum-1/0x04b5179ea1ce7b3bf69e05bb7082f11af9fad718/); ethereum `0x0fa90c...9d84de`; ethereum `0x5fdc7e...c41810`; ethereum `0xaa7c54...6efca0`; ethereum `0xc02b6d...dfd31f` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FinalRouterV3_Arbitrum | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x1b3534...0292d7`](./contracts/arbitrum-42161/0x1b3534ca262343e57e837a351100a6db9e0292d7/); arbitrum `0x634a52...0d2cf7`; arbitrum `0xf3f7dd...c0dee7` | ⚠️ Unaudited |
| FinalRouterV3_Mainnet | adapter | ethereum | n/a | 2 deployments: ethereum [`0x15ce51...5b90fe`](./contracts/ethereum-1/0x15ce5192b844a7a45e13864ac9969dc4f95b90fe/); ethereum `0xfe2944...f6ea8e` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-34415 | [`0x02479b...cb0909`](./contracts/ethereum-1/0x02479bfc7dce53a02e26fe7baea45a0852cb0909/) | ⚠️ Unaudited |
| LeveragedNTokenAdapter | adapter | ethereum | n/a | [`0x25ee01...64cfcf`](./contracts/ethereum-1/0x25ee011b6af5537ecd520f40ca759899a064cfcf/) | ⚠️ Unaudited |
| nTokenERC20Proxy | token | arbitrum | unit-34464 (9 proxies) | 9 deployments: arbitrum [`0x06d45e...37619a`](./contracts/arbitrum-42161/0x06d45ef1f8b3c37b0de66f156b11f10b4837619a/); arbitrum `0x0f13fb...986adc`; arbitrum `0x18b0fc...305a29`; arbitrum `0x2c4294...c9216f`; arbitrum `0x52602a...7f99d6`; arbitrum `0x696336...8a2f57`; arbitrum `0x6f6603...d45b8f`; arbitrum `0x809b43...0773bb`; arbitrum `0x9c0fbb...27f442` | ⚠️ Unaudited |
| PauseAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x078dc7...969d08`](./contracts/ethereum-1/0x078dc7e61b410e461328aba0022197ea6a969d08/); ethereum `0xee8086...0fba0d` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | arbitrum | unit-34463 (14 proxies) | 14 deployments: arbitrum [`0x051961...f75db7`](./contracts/arbitrum-42161/0x0519614643a019feb53b9f2c395b243253f75db7/); arbitrum `0x0ace2d...93b886`; arbitrum `0x1fd865...85d3aa`; arbitrum `0x63ffcf...c40650`; arbitrum `0x6d13d3...ed73c4`; arbitrum `0x6f28ca...e0f53d`; arbitrum `0x8652de...8febcc`; arbitrum `0x866eb0...840385`; arbitrum `0xa135d7...cf56bf`; arbitrum `0xabc07b...1b90d6`; arbitrum `0xb9bfbb...463192`; arbitrum `0xbc323e...402d6b`; arbitrum `0xd63ace...8081ac`; arbitrum `0xef3f53...9f547a` | ⚠️ Unaudited |
| PrimeDebtProxy | unknown | arbitrum | unit-34467 (14 proxies) | 14 deployments: arbitrum [`0x2ddb08...e8e5dd`](./contracts/arbitrum-42161/0x2ddb08f2757909537bdf2d2eb2bd4f7a64e8e5dd/); arbitrum `0x3482db...88e707`; arbitrum `0x4068a4...673efe`; arbitrum `0x41be01...a3ba90`; arbitrum `0x452f5c...04cc56`; arbitrum `0x4ee657...92e081`; arbitrum `0x65ea9a...159a6c`; arbitrum `0x692749...46eaa0`; arbitrum `0x6ebce2...231818`; arbitrum `0x7366d1...5d13b3`; arbitrum `0xc12d27...9ff958`; arbitrum `0xc3882b...dd5d75`; arbitrum `0xc9c5e5...665ea3`; arbitrum `0xfbd9e8...644b56` | ⚠️ Unaudited |
| RebalanceHelper | periphery | arbitrum | n/a | [`0x366d5b...6b178f`](./contracts/arbitrum-42161/0x366d5b255d97c5fee2283561bd89fce5566b178f/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-34462 | [`0x019be2...bc7bc1`](./contracts/arbitrum-42161/0x019be259bc299f3f653688c7655c87f998bc7bc1/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x375eaf...643235`](./contracts/ethereum-1/0x375eafe4348c6aa851cdfa5f84ec268f73643235/); ethereum `0xad2078...75416b` | ⚠️ Unaudited |

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
| [Sherlock Audits | July 2025](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.07.18%20-%20Final%20-%20Notional%20Exponent%20Audit%20Report.pdf) | Sherlock | Contest | 2025-07 | fresh | Direct | contract_name | 12 | high |
| [Sherlock Audits | January 2026](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.01.17%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201768611627.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 3 | high |
| [Sherlock Audits | September 2022](https://github.com/sherlock-audit/2022-09-notional-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [Sherlock Audits | March 2026](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.03.06%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201772819509.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [DL audit link](https://www.openzeppelin.com/news/notional-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://audits.sherlock.xyz/contests/59) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Notional v4 Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Notional%20Finance/Notional%20v4/Notional%20v4%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1b3534...0292d7`](./contracts/arbitrum-42161/0x1b3534ca262343e57e837a351100a6db9e0292d7/) | FinalRouterV3_Arbitrum | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15ce51...5b90fe`](./contracts/ethereum-1/0x15ce5192b844a7a45e13864ac9969dc4f95b90fe/) | FinalRouterV3_Mainnet | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02479b...cb0909`](./contracts/ethereum-1/0x02479bfc7dce53a02e26fe7baea45a0852cb0909/) | GnosisSafe | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25ee01...64cfcf`](./contracts/ethereum-1/0x25ee011b6af5537ecd520f40ca759899a064cfcf/) | LeveragedNTokenAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06d45e...37619a`](./contracts/arbitrum-42161/0x06d45ef1f8b3c37b0de66f156b11f10b4837619a/) | nTokenERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x078dc7...969d08`](./contracts/ethereum-1/0x078dc7e61b410e461328aba0022197ea6a969d08/) | PauseAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x051961...f75db7`](./contracts/arbitrum-42161/0x0519614643a019feb53b9f2c395b243253f75db7/) | PrimeCashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ddb08...e8e5dd`](./contracts/arbitrum-42161/0x2ddb08f2757909537bdf2d2eb2bd4f7a64e8e5dd/) | PrimeDebtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x366d5b...6b178f`](./contracts/arbitrum-42161/0x366d5b255d97c5fee2283561bd89fce5566b178f/) | RebalanceHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x019be2...bc7bc1`](./contracts/arbitrum-42161/0x019be259bc299f3f653688c7655c87f998bc7bc1/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=77

Zero-match audit list:

- [2730] Sherlock Audits | September 2022
- [2733] DL audit link
- [2734] DL audit link

Fork inheritance lineage and inherited audits are included when available.
