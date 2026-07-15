# Agentic Audit Brief: Sudoswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 22 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sudoswap (`sudoswap`)
- Website: [https://sudoswap.xyz](https://sudoswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, ethereum, goerli
- Contract surface: 97 unique implementations (97 raw deployments)
- Coverage basis: 8/8 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $881,107.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sudoswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, base, berachain, ethereum, goerli. Structural roles: 6 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (2)
- Contract kinds: contract (8)
- Detected standards: none
- Frameworks: solmate (6), openzeppelin (5), prb-math (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 15 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

**LSSVMRouter** (`0x2b2e8c...d68329`, chain 1)
Origin: nftx (`0x2b2e8c...d68329`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa020d5...c86000`, chain 1)
- UnnamedContract (`0xb16c13...89c0a4`, chain 1)
- UnnamedContract (`0xbc40d2...f626c9`, chain 1)
- UnnamedContract (`0xc7fb91...1f3de5`, chain 1)
- UnnamedContract (`0xe4ac8e...fa0cae`, chain 1)
- UnnamedContract (`0xe5d78f...66fdc5`, chain 1)
- UnnamedContract (`0xfa056c...30334a`, chain 1)
- ExponentialCurve (`0x432f96...7d9841`, chain 1)
- GDACurve (`0x1fd587...ff6b67`, chain 1)
- LinearCurve (`0x5b6ac5...f883ee`, chain 1)
- PropertyCheckerFactory (`0x031b21...99afc1`, chain 1)
- StandardSettingsFactory (`0xf4f439...b3c2c7`, chain 1)
- VeryFastRouter (`0x090c23...028b65`, chain 1)
- XykCurve (`0x7942e2...eb1da0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/8 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 15 of 97 unique; 82 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/66
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 97
- Raw deployments: 97
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 100.0% (Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 8 | 12.1% | 2023-06 |
| Spearbit | Tier 1 | 7 | 10.6% | 2023-04 |
| ABDK | Tier 2 | 3 | 4.5% | 2022-04 |
| Narya | Tier 2 | 1 | 1.5% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ExponentialCurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393264 | `0x432f96...7d9841` | ✅ Audited |
| GDACurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393262 | `0x1fd587...ff6b67` | ✅ Audited |
| LinearCurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393265 | `0x5b6ac5...f883ee` | ✅ Audited |
| LSSVMRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393263 | `0x2b2e8c...d68329` | ✅ Audited |
| PropertyCheckerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393260 | `0x031b21...99afc1` | ✅ Audited |
| StandardSettingsFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393273 | `0xf4f439...b3c2c7` | ✅ Audited |
| VeryFastRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393261 | `0x090c23...028b65` | ✅ Audited |
| XykCurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393266 | `0x7942e2...eb1da0` | ✅ Audited |

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x705fd2...6aeed2` | ⚠️ Unaudited |
| Blockmon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf4882...b33e15` | ⚠️ Unaudited |
| DoomRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7166e7...ff84e5` | ⚠️ Unaudited |
| ERC721Batcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83eee...0f0207` | ⚠️ Unaudited |
| ERC721Sender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006dd6...f3b218` | ⚠️ Unaudited |
| HashmaskSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x078d3b...517452` | ⚠️ Unaudited |
| Lockdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xada31f...9865c2` | ⚠️ Unaudited |
| LSSVMPairEnumerableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42638...5541eb` | ⚠️ Unaudited |
| LSSVMPairEnumerableETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08ce97...b3ef05` | ⚠️ Unaudited |
| LSSVMPairERC1155ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4806e6...8351cb` | ⚠️ Unaudited |
| LSSVMPairERC1155ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2286e6...e21581` | ⚠️ Unaudited |
| LSSVMPairERC721ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37af63...3802de` | ⚠️ Unaudited |
| LSSVMPairERC721ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa43d2f...6d5f17` | ⚠️ Unaudited |
| LSSVMPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f1627...a96b51` | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92de3a...755b22` | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd80c9...436d56` | ⚠️ Unaudited |
| MaxTxSizeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc166aa...e22f10` | ⚠️ Unaudited |
| MonImageRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d824d...a13e67` | ⚠️ Unaudited |
| MonMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042774...e0f750` | ⚠️ Unaudited |
| MonSpawner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fad5d...dfc868` | ⚠️ Unaudited |
| MonStaker2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06337...c3c1c0` | ⚠️ Unaudited |
| MonStaker3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3300b...1c3197` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca11bd...76ca11` | ⚠️ Unaudited |
| MultiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x306262...dfb6c8` | ⚠️ Unaudited |
| Multisender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc653e1...f3ad1f` | ⚠️ Unaudited |
| NFGas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c7704...9b4077` | ⚠️ Unaudited |
| NFGasNames | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2f1b...cfe031` | ⚠️ Unaudited |
| NFTClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe354ac...9f027c` | ⚠️ Unaudited |
| Nftdns | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe37bb1...6218da` | ⚠️ Unaudited |
| NFTLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3baa5a...e344fb` | ⚠️ Unaudited |
| NFTLotteryPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19dd2b...f4cd87` | ⚠️ Unaudited |
| NFTLotteryPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd9c0...105026` | ⚠️ Unaudited |
| NFTLotteryURI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2031bd...8f9251` | ⚠️ Unaudited |
| Nftnft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x537edf...c7ba40` | ⚠️ Unaudited |
| NFTStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5802b...3339af` | ⚠️ Unaudited |
| OptimismReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53f0e3...c38bc1` | ⚠️ Unaudited |
| OrderBhook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4e0c0...871856` | ⚠️ Unaudited |
| PenguSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b505...e05afb` | ⚠️ Unaudited |
| ProtoCards0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1c07d...9348a3` | ⚠️ Unaudited |
| RNGDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d514c...2fa546` | ⚠️ Unaudited |
| RoyaltyEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b846b...f8d534` | ⚠️ Unaudited |
| S3KS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed0c0...01801d` | ⚠️ Unaudited |
| Salt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc17030...342d93` | ⚠️ Unaudited |
| SaltTokenURI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4c16...ea4747` | ⚠️ Unaudited |
| skunk | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7fff03...cb1d96` | ⚠️ Unaudited |
| SudoGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6853f8...b7eeb0` | ⚠️ Unaudited |
| SudoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3446dd...5ab7f9` | ⚠️ Unaudited |
| SVGGenerator2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1036f5...87776a` | ⚠️ Unaudited |
| TestRoyaltyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3f66e7...c6d667` | ⚠️ Unaudited |
| Unexpected | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a835...462d22` | ⚠️ Unaudited |
| WrappedSudoPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4b1f0d...8246e8` | ⚠️ Unaudited |
| XMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aada3...70bf74` | ⚠️ Unaudited |
| XToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7acb1...dfcc3c` | ⚠️ Unaudited |
| XTokenClonable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925297...b864b0` | ⚠️ Unaudited |
| XTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa76cee...929881` | ⚠️ Unaudited |
| XXMON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b5c90...6ab2f3` | ⚠️ Unaudited |
| ZeroExRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a994...c10cd3` | ⚠️ Unaudited |
| ZeroExRouter2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x608276...cd4664` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02363a...c4f760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d807b...244b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b4ef...d6748f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e9a0e...d89e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c3ae...cdd7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a0f8...ca1704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f0323...3f29e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x967544...227201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe1e4...4229ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393267 | `0xa020d5...c86000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6dcf...869438` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393268 | `0xb16c13...89c0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d619...e5f723` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393269 | `0xbc40d2...f626c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393270 | `0xc7fb91...1f3de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393271 | `0xe4ac8e...fa0cae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393272 | `0xe5d78f...66fdc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0202e...28f6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393274 | `0xfa056c...30334a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393275 | `0x02363a...c4f760` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393276 | `0x0d807b...244b0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393277 | `0x25b4ef...d6748f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393278 | `0x5e9a0e...d89e53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393279 | `0x60c3ae...cdd7e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393280 | `0x76a0f8...ca1704` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393281 | `0x8f0323...3f29e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393282 | `0x967544...227201` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393283 | `0x9fe1e4...4229ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393284 | `0xac6dcf...869438` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393285 | `0xb3d619...e5f723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-393286 | `0xf0202e...28f6dc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [abdk-audit-amm.pdf](https://github.com/sudoswap/audits/blob/main/abdk-audit-amm.pdf) | ABDK | Audit | 2022-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 15 | high |
| [spearbit-audit-amm.pdf](https://github.com/sudoswap/audits/blob/main/spearbit-audit-amm.pdf) | Spearbit | Audit | 2022-01 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 7 | high |
| [cyfrin.pdf](https://github.com/sudoswap/v2-audits/blob/main/cyfrin.pdf) | Cyfrin | Audit | 2023-06 | stale | Direct | contract_name | matched | 8 | 0 | 0 | 19 | high |
| [narya.pdf](https://github.com/sudoswap/v2-audits/blob/main/narya.pdf) | Narya | Audit | 2023-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [spearbit.pdf](https://github.com/sudoswap/v2-audits/blob/main/spearbit.pdf) | Spearbit | Audit | 2023-04 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18291] abdk-audit-amm.pdf — matched: All 18 files listed in scope section at commit 7eb85bb. Date from cover page: 25th April 2022.
- [18292] spearbit-audit-amm.pdf — matched: Extracted from the audit report of Sudoswap lssvm contracts. The report lists contracts in scope via context and file paths.
- [18293] cyfrin.pdf — matched: Extracted contract names from the audit report's scope, findings, and PoC files. The report covers the Sudoswap sudoAMM v2 smart contracts. The audit date is from the cover page.
- [18294] narya.pdf — matched: Extracted from the report summary and findings sections. The report date is February 20, 2023.
- [18295] spearbit.pdf — matched: Extracted contract names from findings context and file paths mentioned throughout the report. No explicit scope section found; contracts are inferred from the audit content.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| abdk-audit-amm.pdf | CurveErrorCodes | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | ExponentialCurve | own contract | ExponentialCurve (selected) `0x432f96...7d9841` — deployed 2022-04-24 09:09:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| abdk-audit-amm.pdf | ICurve | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LinearCurve | own contract | LinearCurve (selected) `0x5b6ac5...f883ee` — deployed 2022-04-24 09:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| abdk-audit-amm.pdf | LSSVMPairCloner | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPair | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairERC20 | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairETH | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairEnumerable | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairEnumerableERC20 | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairEnumerableETH | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairFactory | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairFactoryLike | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairMissingEnumerable | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairMissingEnumerableERC20 | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMPairMissingEnumerableETH | unmatched — not counted | — | listed in scope | no |
| abdk-audit-amm.pdf | LSSVMRouter | own contract | LSSVMRouter (selected) `0x2b2e8c...d68329` — deployed 2022-05-05 21:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit-audit-amm.pdf | LSSVMPairCloner | unmatched — not counted | — | mentioned in context of critical finding | no |
| spearbit-audit-amm.pdf | LSSVMPair | unmatched — not counted | — | main contract in scope | no |
| spearbit-audit-amm.pdf | LSSVMRouter | own contract | LSSVMRouter (selected) `0x2b2e8c...d68329` — deployed 2022-05-05 21:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit-audit-amm.pdf | LSSVMPairFactory | unmatched — not counted | — | main contract in scope | no |
| spearbit-audit-amm.pdf | LSSVMPairERC20 | unmatched — not counted | — | mentioned in findings | no |
| spearbit-audit-amm.pdf | LSSVMPairETH | unmatched — not counted | — | mentioned in findings | no |
| spearbit-audit-amm.pdf | LSSVMPairMissingEnumerable | unmatched — not counted | — | mentioned in findings | no |
| spearbit-audit-amm.pdf | LSSVMPairEnumerable | unmatched — not counted | — | mentioned in findings | no |
| spearbit-audit-amm.pdf | LinearCurve | own contract | LinearCurve (selected) `0x5b6ac5...f883ee` — deployed 2022-04-24 09:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit-audit-amm.pdf | ExponentialCurve | own contract | ExponentialCurve (selected) `0x432f96...7d9841` — deployed 2022-04-24 09:09:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | LSSVMRouter | own contract | LSSVMRouter (selected) `0x2b2e8c...d68329` — deployed 2022-05-05 21:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | VeryFastRouter | own contract | VeryFastRouter (selected) `0x090c23...028b65` — deployed 2023-05-21 20:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | LSSVMPair | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairETH | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairERC20 | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairERC721 | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairERC1155 | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | LSSVMPairFactory | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | RoyaltyEngine | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | GDACurve | own contract | GDACurve (selected) `0x1fd587...ff6b67` — deployed 2023-05-21 20:19:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | ExponentialCurve | own contract | ExponentialCurve (selected) `0x432f96...7d9841` — deployed 2022-04-24 09:09:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | LinearCurve | own contract | LinearCurve (selected) `0x5b6ac5...f883ee` — deployed 2022-04-24 09:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | XykCurve | own contract | XykCurve (selected) `0x7942e2...eb1da0` — deployed 2022-08-29 08:52:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | ICurve | unmatched — not counted | — | mentioned in scope and findings | no |
| cyfrin.pdf | ILSSVMPair | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | ILSSVMPairFactoryLike | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | LSSVMPairCloner | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | MerklePropertyChecker | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | PropertyCheckerFactory | own contract | PropertyCheckerFactory (selected) `0x031b21...99afc1` — deployed 2023-05-21 20:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | RangePropertyChecker | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | Splitter | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | StandardSettings | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | StandardSettingsFactory | own contract | StandardSettingsFactory (selected) `0xf4f439...b3c2c7` — deployed 2023-05-21 20:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cyfrin.pdf | OwnableWithTransferCallback | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | IOwnershipTransferReceiver | unmatched — not counted | — | mentioned in findings | no |
| cyfrin.pdf | EvilPair | unmatched — not counted | — | mentioned in PoC | no |
| cyfrin.pdf | EvilPairReentrancyAttacker | unmatched — not counted | — | mentioned in PoC | no |
| narya.pdf | LSSVMPairERC721 | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPairERC1155 | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | StandardSettings | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPairETH | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPair | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | StandardSettingsFactory | own contract | StandardSettingsFactory (selected) `0xf4f439...b3c2c7` — deployed 2023-05-21 20:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| narya.pdf | RoyaltyEngine | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPairFactory | unmatched — not counted | — | Listed in scope and findings | no |
| narya.pdf | LSSVMPairERC20 | unmatched — not counted | — | Listed in scope and findings | no |
| spearbit.pdf | LSSVMPair | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairERC20 | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairERC1155 | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairERC721 | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairETH | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairFactory | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMRouter | own contract | LSSVMRouter (selected) `0x2b2e8c...d68329` — deployed 2022-05-05 21:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | VeryFastRouter | own contract | VeryFastRouter (selected) `0x090c23...028b65` — deployed 2023-05-21 20:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | StandardSettings | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | StandardSettingsFactory | own contract | StandardSettingsFactory (selected) `0xf4f439...b3c2c7` — deployed 2023-05-21 20:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | PropertyCheckerFactory | own contract | PropertyCheckerFactory (selected) `0x031b21...99afc1` — deployed 2023-05-21 20:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | MerklePropertyChecker | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | Splitter | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | RoyaltyEngine | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | ManifoldRoyaltyEngineV1 | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | OwnableWithTransferCallback | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LinearCurve | own contract | LinearCurve (selected) `0x5b6ac5...f883ee` — deployed 2022-04-24 09:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | XykCurve | own contract | XykCurve (selected) `0x7942e2...eb1da0` — deployed 2022-08-29 08:52:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | ExponentialCurve | own contract | ExponentialCurve (selected) `0x432f96...7d9841` — deployed 2022-04-24 09:09:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spearbit.pdf | ICurve | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | ILSSVMPair | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | ILSSVMPairFactoryLike | unmatched — not counted | — | mentioned in findings context | no |
| spearbit.pdf | LSSVMPairCloner | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 22 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 22 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=22

Fork inheritance lineage and inherited audits are included when available.
