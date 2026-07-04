# Agentic Audit Brief: SYNO Finance

## Project Overview

- Project: SYNO Finance (`syno-finance`)
- Website: [https://syno.finance/](https://syno.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:58.441Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, ethereum, optimism
- Contract surface: 40 unique implementations (40 raw deployments)
- DeFi Llama TVL: $375,912.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 29 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (hubspokeevents, basesynonympricesource). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/40 (0.0%)
- Deployed-live implementations: 40 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 40
- Raw deployments: 40
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorV3SynonymPriceSource | unknown | arbitrum | n/a | [`0x3e0cbe...2f07f4`](./contracts/arbitrum-42161/0x3e0cbe3860c54038efa91d80ce62ec82ca2f07f4/) | ⚠️ Unaudited |
| AssetRegistry | unknown | arbitrum | n/a | [`0x6510d7...087631`](./contracts/arbitrum-42161/0x6510d7705df7ad4923b9699a1af4c72894087631/) | ⚠️ Unaudited |
| ChainedPriceSource | unknown | arbitrum | n/a | [`0x0671fe...5eda58`](./contracts/arbitrum-42161/0x0671fef91a8ee34c1b5eb5e98fa90063105eda58/) | ⚠️ Unaudited |
| CommonAccountingLogic | unknown | arbitrum | n/a | [`0x00187b...742c3a`](./contracts/arbitrum-42161/0x00187bac5bc1097c4e65b47da8978b3e1f742c3a/) | ⚠️ Unaudited |
| CommonOptimisticFinalityLogic | unknown | arbitrum | n/a | [`0x09f81d...4d9285`](./contracts/arbitrum-42161/0x09f81ddd95bb0689fa3f43c9128d01b7b54d9285/) | ⚠️ Unaudited |
| Hub | unknown | arbitrum | n/a | [`0x0c01ce...858509`](./contracts/arbitrum-42161/0x0c01cecf2c8fa6cf6cdedfe2568fdbbf62858509/) | ⚠️ Unaudited |
| HubAccountingLogic | unknown | arbitrum | n/a | [`0x1c59ad...492649`](./contracts/arbitrum-42161/0x1c59ad468dfac8528036c5a5b9c306ae13492649/) | ⚠️ Unaudited |
| HubHelperViews | unknown | arbitrum | n/a | [`0x0a4740...f3f0d2`](./contracts/arbitrum-42161/0x0a47405de652fce6b34d919e1bb06e5bfef3f0d2/) | ⚠️ Unaudited |
| HubOptimisticFinalityLogic | unknown | arbitrum | n/a | [`0x09fc4a...c4ae12`](./contracts/arbitrum-42161/0x09fc4a4856cf4fc41b4f39559f382f81d0c4ae12/) | ⚠️ Unaudited |
| HubPriceUtilities | unknown | arbitrum | n/a | [`0x01056a...1d56af`](./contracts/arbitrum-42161/0x01056ae89c53de4bbd6db29c0e9d9d08391d56af/) | ⚠️ Unaudited |
| HubStorage | unknown | arbitrum | n/a | [`0x47e96f...f12f36`](./contracts/arbitrum-42161/0x47e96ffedb40b1b4f721d5f56d91cf3a54f12f36/) | ⚠️ Unaudited |
| InterestLogic | unknown | arbitrum | n/a | [`0x63f15c...f40f71`](./contracts/arbitrum-42161/0x63f15cbf4dc0f41d0d16a89abcbb01308ff40f71/) | ⚠️ Unaudited |
| LiquidationCalculator | unknown | arbitrum | n/a | [`0x76e766...4dbcf3`](./contracts/arbitrum-42161/0x76e766336068b0f699d24002c368a4891a4dbcf3/) | ⚠️ Unaudited |
| Liquidator | unknown | arbitrum | n/a | [`0x1f578c...8f6aba`](./contracts/arbitrum-42161/0x1f578c4bc4d4f43902f24feda90e430f778f6aba/) | ⚠️ Unaudited |
| LiquidatorFlashLoan | unknown | arbitrum | n/a | [`0x1849cc...b1a3de`](./contracts/arbitrum-42161/0x1849cc9ecfcaa09ba4279a283745c9f6a2b1a3de/) | ⚠️ Unaudited |
| MigrationLogic | unknown | arbitrum | n/a | [`0x08913a...4772dc`](./contracts/arbitrum-42161/0x08913a7dedf488ab91a9dbbe2fc03020484772dc/) | ⚠️ Unaudited |
| MoneyMarketSynoDistributor | unknown | arbitrum | n/a | [`0x0d5d40...a1eb1c`](./contracts/arbitrum-42161/0x0d5d409afc67a2715f3e61968ff3b0e608a1eb1c/) | ⚠️ Unaudited |
| PiecewiseInterestRate | unknown | arbitrum | n/a | [`0x099c0e...cb202c`](./contracts/arbitrum-42161/0x099c0e514129a94d26decba743ea293ebbcb202c/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | [`0x33dd40...d0e84b`](./contracts/optimism-10/0x33dd4040ab48ffbf5b208909efe5ee301ed0e84b/) | ⚠️ Unaudited |
| PythSynonymPriceSource | unknown | arbitrum | n/a | [`0x48a7cb...9b82e0`](./contracts/arbitrum-42161/0x48a7cbc91354333eb1c0d54c3d2f149f9d9b82e0/) | ⚠️ Unaudited |
| rCT | unknown | arbitrum | n/a | [`0xe29578...f02443`](./contracts/arbitrum-42161/0xe29578c5aef73b045d0baabee52b223d5cf02443/) | ⚠️ Unaudited |
| RewardAggregator | unknown | arbitrum | n/a | [`0x2f81d5...f3be61`](./contracts/arbitrum-42161/0x2f81d55a3f306c11a640bad7ee0f051eaaf3be61/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | arbitrum | n/a | [`0x02dffe...3fa40d`](./contracts/arbitrum-42161/0x02dffe40fafa4dcd8867240610c88619d93fa40d/) | ⚠️ Unaudited |
| Spoke | unknown | ethereum | n/a | [`0x2cb913...4d49c3`](./contracts/ethereum-1/0x2cb91374624a5ec81ef205db379861b7154d49c3/) | ⚠️ Unaudited |
| SpokeAccountingLogic | unknown | ethereum | n/a | [`0x09ad4b...19bf2a`](./contracts/ethereum-1/0x09ad4b3bb2f0a24515391377a69b7fb2a919bf2a/) | ⚠️ Unaudited |
| SpokeOptimisticFinalityLogic | unknown | ethereum | n/a | [`0x350e13...35312d`](./contracts/ethereum-1/0x350e13f38b0665f776545d83bc38d7ab1e35312d/) | ⚠️ Unaudited |
| sSYNO | unknown | arbitrum | n/a | [`0x0db592...408bbc`](./contracts/arbitrum-42161/0x0db592b2cc4b05cffa6224a4ee04c9d168408bbc/) | ⚠️ Unaudited |
| SSynoSynoDistributor | unknown | arbitrum | n/a | [`0x047dee...673408`](./contracts/arbitrum-42161/0x047deeb2fac901442a0e8535bb08f59390673408/) | ⚠️ Unaudited |
| SYNO | unknown | arbitrum | n/a | [`0x14ca27...40075e`](./contracts/arbitrum-42161/0x14ca27a509397323d2d6c2f84b7abc65f240075e/) | ⚠️ Unaudited |
| SynoBridge | unknown | arbitrum | n/a | [`0x3008ba...d7a387`](./contracts/arbitrum-42161/0x3008bae2e2e3d41d58710ff364d101d6dfd7a387/) | ⚠️ Unaudited |
| SynonymPriceOracle | unknown | arbitrum | n/a | [`0x091fa3...76176e`](./contracts/arbitrum-42161/0x091fa3704f80f60cac654d15cf14e5c51a76176e/) | ⚠️ Unaudited |
| TokenBridgeUtilities | unknown | arbitrum | n/a | [`0x0ad785...7475fa`](./contracts/arbitrum-42161/0x0ad78518eef039d97fa6523c215bd7aded7475fa/) | ⚠️ Unaudited |
| TokenConverter | unknown | arbitrum | n/a | [`0x67de83...0c2aaa`](./contracts/arbitrum-42161/0x67de8310f082cc3e7fffdd4e13d39312860c2aaa/) | ⚠️ Unaudited |
| tSYNO | unknown | arbitrum | n/a | [`0xc2ed21...30a246`](./contracts/arbitrum-42161/0xc2ed21709d6d8d8ba24e9b1e8165604f6130a246/) | ⚠️ Unaudited |
| TunnelMessageBuilder | unknown | arbitrum | n/a | [`0x411ac3...d7f0c5`](./contracts/arbitrum-42161/0x411ac3fadf6f428efc40eabf5e85eba6ded7f0c5/) | ⚠️ Unaudited |
| ValidationLogic | unknown | arbitrum | n/a | [`0x03523d...3596df`](./contracts/arbitrum-42161/0x03523dcd92207880ff66ead9ee63c5000b3596df/) | ⚠️ Unaudited |
| vlSYNO | unknown | arbitrum | n/a | [`0x1380a5...69e44f`](./contracts/arbitrum-42161/0x1380a59ce7adaf50d351f750a3fb4747a469e44f/) | ⚠️ Unaudited |
| VlSynoSynoDistributor | unknown | arbitrum | n/a | [`0x0d7720...66bd13`](./contracts/arbitrum-42161/0x0d77203f67aac70450239dcb58bb962adf66bd13/) | ⚠️ Unaudited |
| WormholeRelayer | unknown | arbitrum | n/a | [`0xe291a3...aadf70`](./contracts/arbitrum-42161/0xe291a3a0466d2aa189f6c773701fdf391daadf70/) | ⚠️ Unaudited |
| WormholeTunnel | unknown | ethereum | n/a | [`0x03e4c6...766f90`](./contracts/ethereum-1/0x03e4c6bc38264f993759c09678ebceb91c766f90/) | ⚠️ Unaudited |

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
| [Synonym-audit-report.pdf (also discovered via alternate URL)](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Synonym-audit-report.pdf) | Runtime Verification | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [runtimeverification.com/blog/runtime-verification-audits-synonym-finance](https://runtimeverification.com/blog/runtime-verification-audits-synonym-finance) | Runtime Verification | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21463] Synonym-audit-report.pdf
- [21465] runtimeverification.com/blog/runtime-verification-audits-synonym-finance

Fork inheritance lineage and inherited audits are included when available.
