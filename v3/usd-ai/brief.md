# Agentic Audit Brief: USD AI

## Project Overview

- Project: USD AI (`usd-ai`)
- Website: [https://usd.ai/](https://usd.ai/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:03.019Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum
- Contract surface: 49 unique implementations (50 raw deployments)
- DeFi Llama TVL: $427,344,714.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA Lending. Structurally: 48 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 9 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 33 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 50 (50 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/49 (38.8%)
- Deployed-live implementations: 49 of 49 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/49
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 49
- Raw deployments: 50
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 5 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 6.1% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ktl | Tier 2 | 19 | 38.8% | 2026-03 |
| Spearbit | Tier 1 | 3 | 6.1% | 2025-05 |
| Quantstamp | Tier 2 | 1 | 2.0% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropVault | unknown | arbitrum | n/a | [`0x0846ec...8ca7dc`](./contracts/arbitrum-42161/0x0846ec18c83a867e64f3fd1dc0da6ced868ca7dc/) | ✅ Audited |
| AmortizedInterestRateModel | unknown | arbitrum | n/a | [`0xe01520...6fa18d`](./contracts/arbitrum-42161/0xe01520fd4f249efa4d905f60b6b54e2ade6fa18d/) | ✅ Audited |
| ChainlinkPriceOracle | unknown | arbitrum | n/a | [`0xd40a52...741ebc`](./contracts/arbitrum-42161/0xd40a5298c6fced81eb5da8bb1f9328b16f741ebc/) | ✅ Audited |
| Chip | unknown | arbitrum | n/a | [`0x0b471c...127cbc`](./contracts/arbitrum-42161/0x0b471c6740f3f29aa9c8f50340a713886e127cbc/) | ✅ Audited |
| ChipClaim | unknown | arbitrum | n/a | [`0x3c2113...7faaae`](./contracts/arbitrum-42161/0x3c211385f5b061ce5b6d14d7c7d0aefc777faaae/) | ✅ Audited |
| ChipGovernor | unknown | arbitrum | n/a | [`0x0ddc1d...847b26`](./contracts/arbitrum-42161/0x0ddc1dd03c58e425f96567679b52f349db847b26/) | ✅ Audited |
| ChipReceiptToken | unknown | arbitrum | n/a | [`0x0c5021...95471e`](./contracts/arbitrum-42161/0x0c502123de42aae8e38ef4e26a2961bea295471e/) | ✅ Audited |
| DepositTimelock | unknown | arbitrum | n/a | [`0x0d710c...23c9f8`](./contracts/arbitrum-42161/0x0d710cc05f34d2ead9fba3c78d53d76a0623c9f8/) | ✅ Audited |
| ICOVault | unknown | arbitrum | n/a | [`0x5e1b1e...b049b5`](./contracts/arbitrum-42161/0x5e1b1ea6a30456e9c5ee35b44a9475e4d6b049b5/) | ✅ Audited |
| LoanRouter | unknown | arbitrum | n/a | [`0x0c2ed1...9597d1`](./contracts/arbitrum-42161/0x0c2ed170f2bb1df1a44292ad621b577b3c9597d1/) | ✅ Audited |
| OAdapter | unknown | ethereum | n/a | [`0xffa100...b4bae5`](./contracts/ethereum-1/0xffa10065ce1d1c42fabc46e06b84ed8ffeb4bae5/) | ✅ Audited |
| OToken | unknown | ethereum | n/a | [`0x0a1a1a...ed82ef`](./contracts/ethereum-1/0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef/) | ✅ Audited |
| OUSDaiUtility | unknown | arbitrum | n/a | [`0x1c17b2...03dbd7`](./contracts/arbitrum-42161/0x1c17b2ab80158d422c3f945bc92add549503dbd7/) | ✅ Audited |
| SimpleInterestRateModel | unknown | arbitrum | n/a | [`0x92e1a1...48711a`](./contracts/arbitrum-42161/0x92e1a11d0689adb40f0abcc0aeef7b36ff48711a/) | ✅ Audited |
| StakedChip | unknown | arbitrum | n/a | [`0x0d2d2d...5c4d4a`](./contracts/arbitrum-42161/0x0d2d2d20962f2468566f4d1a4ddeb482915c4d4a/) | ✅ Audited |
| StakedUSDai | unknown | arbitrum | n/a | [`0x008014...1bc08a`](./contracts/arbitrum-42161/0x008014531ecb268c6fddde6f891d2d0e8b1bc08a/) | ✅ Audited |
| TimelockController | unknown | arbitrum | n/a | [`0x0eec1e...398221`](./contracts/arbitrum-42161/0x0eec1ee03add82342a6ac68a9c5cf62cb2398221/) | ✅ Audited |
| USDai | unknown | arbitrum | n/a | [`0x0a1a1a...ed82ef`](./contracts/arbitrum-42161/0x0a1a1a107e45b7ced86833863f482bc5f4ed82ef/) | ✅ Audited |
| USDaiSwapAdapter | unknown | arbitrum | n/a | [`0xe3a333...01b75f`](./contracts/arbitrum-42161/0xe3a3337316204855e2eb240a7439a2d8d501b75f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseYieldEscrow | unknown | arbitrum | n/a | [`0x3eff54...1d8acb`](./contracts/arbitrum-42161/0x3eff54373bce60adac42daf8892684f5911d8acb/) | ⚠️ Unaudited |
| BundleCollateralWrapper | unknown | arbitrum | n/a | [`0x2b47d3...9d2f47`](./contracts/arbitrum-42161/0x2b47d3a936dc43be3b1915935c80102aae9d2f47/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x19ed5c...c1876a`](./contracts/arbitrum-42161/0x19ed5c631edd34ac776368c377a855c42bc1876a/); arbitrum `0xb07151...c6867e` | ⚠️ Unaudited |
| ExecutorEntryPoint | unknown | arbitrum | n/a | [`0x4db060...fda979`](./contracts/arbitrum-42161/0x4db06053edb413899454bad5bf25213b22fda979/) | ⚠️ Unaudited |
| ExtensionBeacon | unknown | arbitrum | n/a | [`0xb82328...79a931`](./contracts/arbitrum-42161/0xb823280379f3e057ccae4ba5f6f772528979a931/) | ⚠️ Unaudited |
| ExtensionFactory | unknown | arbitrum | n/a | [`0x5bcb52...f6cca4`](./contracts/arbitrum-42161/0x5bcb52965004561ed4d78366a36d0b1b11f6cca4/) | ⚠️ Unaudited |
| ExternalCollateralLiquidator | unknown | arbitrum | n/a | [`0x0764dc...17b57d`](./contracts/arbitrum-42161/0x0764dc5f138e879721d2ead70a37c6efad17b57d/) | ⚠️ Unaudited |
| FLX | unknown | arbitrum | n/a | [`0x6ead2a...cdbfc3`](./contracts/arbitrum-42161/0x6ead2a169e9183746302cb623f09fa0f35cdbfc3/) | ⚠️ Unaudited |
| HyperlaneBridgeAdapter | unknown | arbitrum | n/a | [`0x26feb1...8cbf80`](./contracts/arbitrum-42161/0x26feb1f798b0737ddb64c3e83aa39fcdac8cbf80/) | ⚠️ Unaudited |
| IssuerGateway | unknown | arbitrum | n/a | [`0xb1bb9f...c6693c`](./contracts/arbitrum-42161/0xb1bb9f97af604385eb69212f34d986073ac6693c/) | ⚠️ Unaudited |
| MS721v2 | unknown | arbitrum | n/a | [`0xb31549...d60a19`](./contracts/arbitrum-42161/0xb31549d4216de82147e7c25ea757e7e7cad60a19/) | ⚠️ Unaudited |
| MToken | unknown | arbitrum | n/a | [`0x866a2b...36be1b`](./contracts/arbitrum-42161/0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b/) | ⚠️ Unaudited |
| MultiMint | unknown | arbitrum | n/a | [`0x4ffbc3...4033ef`](./contracts/arbitrum-42161/0x4ffbc316cf29e8eb39cbf819cfd3d5f5b34033ef/) | ⚠️ Unaudited |
| OLockAdapter | unknown | arbitrum | n/a | [`0xffc100...b7cf4e`](./contracts/arbitrum-42161/0xffc1002994b1e9a744036d0abdaefe8356b7cf4e/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0xa5567f...18c721`](./contracts/arbitrum-42161/0xa5567fbf92486cba1692858afad1907db118c721/) | ⚠️ Unaudited |
| Portal | unknown | arbitrum | n/a | [`0x23ca66...bba468`](./contracts/arbitrum-42161/0x23ca665c8a73292fc7ac2cc4493d2ce883bba468/) | ⚠️ Unaudited |
| PYUSD | unknown | arbitrum | n/a | [`0x46850a...696984`](./contracts/arbitrum-42161/0x46850ad61c2b7d64d08c9c754f45254596696984/) | ⚠️ Unaudited |
| PYUSDX | unknown | arbitrum | n/a | [`0x8dfb7c...71c5e0`](./contracts/arbitrum-42161/0x8dfb7c8ce5e67ace965520b134b4aca8fd71c5e0/) | ⚠️ Unaudited |
| ReceiptToken | unknown | arbitrum | n/a | [`0x6dbe4f...93584c`](./contracts/arbitrum-42161/0x6dbe4fad1616be5d6435be6227df3da81793584c/) | ⚠️ Unaudited |
| Registrar | unknown | arbitrum | n/a | [`0x119fbe...81ae2c`](./contracts/arbitrum-42161/0x119fbeedd4f4f4298fb59b720d5654442b81ae2c/) | ⚠️ Unaudited |
| SpokePortal | unknown | arbitrum | n/a | [`0x658cb1...4a7878`](./contracts/arbitrum-42161/0x658cb1f1ac918da7d330ac2dae28ef01e14a7878/) | ⚠️ Unaudited |
| SpokePortalV1StorageCleaner | unknown | arbitrum | n/a | [`0x7ae99b...5e5f74`](./contracts/arbitrum-42161/0x7ae99b6029ca77f3a6814173a30b84264f5e5f74/) | ⚠️ Unaudited |
| SpokeVault | unknown | arbitrum | n/a | [`0xf78e63...8b403e`](./contracts/arbitrum-42161/0xf78e63cdf695976f0100f161abae5579fe8b403e/) | ⚠️ Unaudited |
| SwapFacility | unknown | arbitrum | n/a | [`0x18b8a7...9c7e9a`](./contracts/arbitrum-42161/0x18b8a7aaa40b647d9f5c040be265b007679c7e9a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xac5036...048e00`](./contracts/arbitrum-42161/0xac5036965da7db1cd353f5d76d9709ea2c048e00/) | ⚠️ Unaudited |
| USDaiQueuedDepositor | unknown | arbitrum | n/a | [`0x1038a3...f8e9d1`](./contracts/arbitrum-42161/0x1038a3ca77886247bdf3342b2f8c174698f8e9d1/) | ⚠️ Unaudited |
| USDZ | unknown | arbitrum | n/a | [`0xd87c75...ff1bda`](./contracts/arbitrum-42161/0xd87c75a92db19fe334fe7812890f893449ff1bda/) | ⚠️ Unaudited |
| WeightedRateGracePeriodRangedCollectionPool | unknown | arbitrum | n/a | [`0x0f62b8...2bb867`](./contracts/arbitrum-42161/0x0f62b8c58e1039f246d69ba2215ad5bf0d2bb867/) | ⚠️ Unaudited |
| WrappedMToken | unknown | arbitrum | n/a | [`0x437cc3...98b291`](./contracts/arbitrum-42161/0x437cc33344a0b27a429f795ff6b469c72698b291/) | ⚠️ Unaudited |
| YieldToOne | unknown | arbitrum | n/a | [`0xc560c9...678803`](./contracts/arbitrum-42161/0xc560c9b8ed6d589ee676d279f2649a236c678803/) | ⚠️ Unaudited |

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
| [ktl Audit Report (03-12-2026 part 2).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2Fzl2jDTZL4Akw5GuHXiKg%2Fktl%20Audit%20Report%20(03-12-2026%20part%202).pdf) | ktl | Audit | 2026-03 | fresh | Direct | contract_name | 6 | high |
| [ktl Audit Report (03-12-2026 part 1).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2FRL8zlXoxnJGyCceapFfD%2Fktl%20Audit%20Report%20(03-12-2026%20part%201).pdf) | ktl | Audit | 2026-03 | fresh | Direct | contract_name | 4 | high |
| [Quantstamp Audit Report (02-03-2026).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2Fwt0lsgmhb1rngz4saN1c%2FQuantstamp%20Audit%20Report%20(02-03-2026).pdf) | Quantstamp | Audit | 2026-02 | fresh | Direct | contract_name | 1 | high |
| [ktl Audit Report (11-27-2025).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2FweGipmdxSba2MgMJu8yl%2Fktl%20Audit%20Report%20(11-27-2025).pdf) | ktl | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [ktl Audit Report (10-29-2025).pdf](https://1324162391-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyihtTguEhuWiLBn09qwl%2Fuploads%2FIcLiDGBCSCvsqXNxOWr7%2Fktl%20Audit%20Report%20(10-29-2025).pdf) | ktl | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [ktl Audit Report (05-14-2025).pdf](https://content.gitbook.com/content/yihtTguEhuWiLBn09qwl/blobs/IzF1VSnPIPQtqI7Z2xxU/ktl%20Audit%20Report%20(05-14-2025).pdf) | ktl | Audit | 2025-05 | aging | Direct | contract_name | 6 | high |
| [Cantina Audit Report (05-12-2025).pdf](https://content.gitbook.com/content/yihtTguEhuWiLBn09qwl/blobs/NAQu7sNV6TV0uiNyb4bl/Cantina%20Audit%20Report%20(05-12-2025).pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 3 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: extraction_exact=27

Fork inheritance lineage and inherited audits are included when available.
