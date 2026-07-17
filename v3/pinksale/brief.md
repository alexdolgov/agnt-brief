# Agentic Audit Brief: PinkSale

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: PinkSale (`pinksale`)
- Website: [https://www.pinksale.finance](https://www.pinksale.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, cronos, ethereum, fantom, polygon
- Contract surface: 60 unique implementations (60 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $137,811,795.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for PinkSale in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 60 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/60
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 60
- Raw deployments: 60
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlyaMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160304 | `0x1fd1fec84c2e03d8df0f50e19ee22e2407c0dfa2` | ⚠️ Unaudited |
| AlyaMultiSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160284 | `0x057872f9c6888fcd97afdd6bc6ec3793fad6adc9` | ⚠️ Unaudited |
| AlyaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160323 | `0x49a9f9a2271d8c5da44c57e7102aca79c222f4a9` | ⚠️ Unaudited |
| AntiBotBABYTOKEN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-160272 | `0x37c334e088f3540e191ac36a46b61d393187876c` | ⚠️ Unaudited |
| AntiBotBuybackBabyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160356 | `0xcba6e5b41c1ecd8035e4d36eaf1bd831a9968fb6` | ⚠️ Unaudited |
| AntiBotLiquidityGeneratorToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160293 | `0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c` | ⚠️ Unaudited |
| AntiBotStandardERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-160268 | `0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c` | ⚠️ Unaudited |
| BABYTOKEN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-160266 | `0x069fd156c0d22e5d5f68e92f3237624b8eb6ae9c` | ⚠️ Unaudited |
| BABYTOKENDividendTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-160255 | `0x0e1757b9d6501e60b2e4ca0d000e49532948cf6c` | ⚠️ Unaudited |
| BatchGetBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160342 | `0x9d1ca3b0ac570d88ef8c63e4cea579e5460db5d7` | ⚠️ Unaudited |
| BuybackBabyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160286 | `0x08de30a06fdf55637c54b335fdba22fc098d6458` | ⚠️ Unaudited |
| ChangeFuture | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160314 | `0x354452b32b39c04bc80770807ff70de17cd85fff` | ⚠️ Unaudited |
| CoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160325 | `0x4aee9d30893c5c73e5a5b8637a10d9537497f1c8` | ⚠️ Unaudited |
| ContractChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-160274 | `0x38296f0efbf5a8b8d496468f791b9f75d8eefa21` | ⚠️ Unaudited |
| DegenFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-160372 | `0x7ab01a962f2f7670f21e6b96d325ce16589bfcb0` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160298 | `0x154eb42f708e088844a0d9b5bb0c732e90de093c` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160334 | `0x7207fc8e007ec37436225ad2663248cadd798095` | ⚠️ Unaudited |
| Digger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160312 | `0x339cca50e9a4a01beb061747c75aba61a7e087c7` | ⚠️ Unaudited |
| DiggerDesign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160302 | `0x186a030029e46533afdc6f6bd761eb59f0a5773a` | ⚠️ Unaudited |
| DividendDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160361 | `0xe7a05a33f1021183695950694091df2ffec9aa8f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | unit-160370 | `0x03d58e3ea16836a9483f1a62a8fdab04d05b1826` | ⚠️ Unaudited |
| FANSPEL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160349 | `0xb0228eb6c0b49f8265e6e161c3a987eed7471f42` | ⚠️ Unaudited |
| FUTURECOIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160282 | `0x013bdaadb346082e45508b1f43e000df8adaad51` | ⚠️ Unaudited |
| FutureCoinBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160353 | `0xb9df4ed47894bdd11c08d153e0b5003855ecb1ef` | ⚠️ Unaudited |
| GiftToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160328 | `0x4e9760f376003be4854af1ab732c4785175e4d25` | ⚠️ Unaudited |
| GnomeMines | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160308 | `0x2cf6fac6ec946df83bc44a68e8841567a6a415fd` | ⚠️ Unaudited |
| House | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-160378 | `0x37cee1dbaa55aa056ba20b54df3fa3957cc09e6c` | ⚠️ Unaudited |
| HouseDesign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160347 | `0xa951f0ae97c406196f9b23af8ef8b95778be3ebd` | ⚠️ Unaudited |
| IterableMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-160253 | `0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771` | ⚠️ Unaudited |
| JST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160364 | `0xee6cacddd3a9370d87db581ee6728226883578e5` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160340 | `0x8a6f7834a9d60090668f5db33fec353a7fb4704b` | ⚠️ Unaudited |
| LiquidityGeneratorToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160280 | `0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771` | ⚠️ Unaudited |
| ManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160292 | `0x0bc2c16ff6250749575594c62ff10dbdb49f01db` | ⚠️ Unaudited |
| MetaMerce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160332 | `0x618951276a25a7fed805c68c1813f1b8c39c7dd3` | ⚠️ Unaudited |
| MLand | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160336 | `0x723d7849e072ffd116138e56f5bc617626d204f4` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-160375 | `0x5942ce9067300d07d4091601a50ca59b9defedd8` | ⚠️ Unaudited |
| PinkLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-160270 | `0x2a6ce789e25573819e0c47820ec6f887bca361ea` | ⚠️ Unaudited |
| PinkLock02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160319 | `0x407993575c91ce7643a4d4ccacc9a98c36ee1bbe` | ⚠️ Unaudited |
| PinkLock03 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-160257 | `0x29aed81d274f94cea037d05bb61eb93223a48a77` | ⚠️ Unaudited |
| PinkMoon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160351 | `0xb6090a50f66046e3c6afb9311846a6432e45060a` | ⚠️ Unaudited |
| PinkMultisend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-160260 | `0x5addc939a3df02c5c2b966e5a057f5e95c9ec8d5` | ⚠️ Unaudited |
| PinkSaleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160330 | `0x602ba546a7b06e0fc7f58fd27eb6996ecc824689` | ⚠️ Unaudited |
| PreSalePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160278 | `0x00217430626f32be2258f131cdaa1fb86f042e74` | ⚠️ Unaudited |
| PrivateSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160318 | `0x403f402fb7811bce200ab3123cc97b44601c6fbc` | ⚠️ Unaudited |
| PrivateSalePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160310 | `0x2dfdf22bb64b2944cbb4b7d9ede903f77d789bd7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-160276 | `0x33d4cc8716beb13f814f538ad3b2de3b036f5e2a` | ⚠️ Unaudited |
| Repair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160296 | `0x12209cd8b7302e049157782bfdc89f98f9446e80` | ⚠️ Unaudited |
| ROCKET | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-160316 | `0x38a4abee7eb7d095df93f677805f8776709add6f` | ⚠️ Unaudited |
| RunnerLandToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160338 | `0x851b7cb21d7428fa1ed87a7c45da8048079b0a90` | ⚠️ Unaudited |
| ShimbaInu | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160359 | `0xdb9b2ee7e2652fab00bc1f67ab3582689d8e0fd4` | ⚠️ Unaudited |
| SmardexPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-160262 | `0xd626661e2d4f93a1c4122d386fa9ea0f62b5ab0b` | ⚠️ Unaudited |
| StandardERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-160264 | `0x00fec8b7ee9c14424f71b30dac7c1cfe054b6771` | ⚠️ Unaudited |
| StandardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160290 | `0x0b705953b3581ebb50063a9570339415d95105b0` | ⚠️ Unaudited |
| SUKUYANA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160321 | `0x485f66f20f6732017345ff3437377ec84ea75039` | ⚠️ Unaudited |
| TiFiLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160344 | `0xa015263066da13e94526a8b897edb0e3cd55b19a` | ⚠️ Unaudited |
| TiFiReservior | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160288 | `0x0aeff3d761f6706295f3828c87cce29c9418a93b` | ⚠️ Unaudited |
| TiFiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160300 | `0x17e65e6b9b166fb8e7c59432f0db126711246bc0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | unit-160367 | `0x18f349ad12d7d7f029b3b22e0b01c6d88a0d2066` | ⚠️ Unaudited |
| USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160345 | `0xa736c22371c3dec1ffead126eafc4001818fc511` | ⚠️ Unaudited |
| Wavepaycoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-160306 | `0x25f6212eb410e22956856ccb0383ec1a86fceaf9` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [> **Note:** PinkLock has been audited by CertiK and potentially other firms. View the CertiK audit here: [****](https://skynet.certik.com/projects/pinksale)](https://skynet.certik.com/projects/pinksale) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29790] > **Note:** PinkLock has been audited by CertiK and potentially other firms. View the CertiK audit here: [****](https://skynet.certik.com/projects/pinksale) — no match: Extracted from 'Audited Files/SHA256' section listing IPoolManager.sol and PinkLock.sol. Audit date from 'Last Audit was delivered on 11/4/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| > **Note:** PinkLock has been audited by CertiK and potentially other firms. View the CertiK audit here: [****](https://skynet.certik.com/projects/pinksale) | IPoolManager | unmatched — not counted | — | listed in audited files | no |
| > **Note:** PinkLock has been audited by CertiK and potentially other firms. View the CertiK audit here: [****](https://skynet.certik.com/projects/pinksale) | PinkLock | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [29790] > **Note:** PinkLock has been audited by CertiK and potentially other firms. View the CertiK audit here: [****](https://skynet.certik.com/projects/pinksale)

Fork inheritance lineage and inherited audits are included when available.
