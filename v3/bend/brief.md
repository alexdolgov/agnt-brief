# Agentic Audit Brief: BEND

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: BEND (`bend`)
- Website: [https://bend.berachain.com](https://bend.berachain.com)
- Lifecycle: active (Tier 0, 56.4% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain, ethereum
- Contract surface: 45 unique implementations (45 raw deployments)
- Coverage basis: 10/39 confirmed own live verified implementations (25.6%); conservative 25.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,137,652.77
- On-chain TVL (included contracts): $8,400,180.64
- TVL by chain: Berachain $8,400,180.64

## Project Description

This brief describes the observed EVM deployment and audit surface for BEND. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across berachain, ethereum. Structural roles: 21 supporting, 15 core, 4 infra. 17 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: supporting (21), core (15), infra (4)
- Contract kinds: contract (40)
- Detected standards: erc1967proxy (16), ownable (14), erc165 (8), erc721 (7), erc20 (2), multicall (2), erc20permit (1), erc4626 (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (33), layerzero (12), openzeppelin-upgradeable (5), solmate (3), solady (2), chainlink (1), permit2 (1)
- Upgradeable-pattern rows: 17

## Fork Analysis

0 of 44 contracts are derived from known codebases. 44 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ae7dd...bccd8e`, chain 80094)
- UnnamedContract (`0x46fe2b...82d802`, chain 80094)
- UnnamedContract (`0x4e59b4...b4956c`, chain 80094)
- UnnamedContract (`0x696969...696969`, chain 80094)
- UnnamedContract (`0x7bb8dd...f82650`, chain 80094)
- AdaptiveCurveIrm (`0xcf247d...7a6f62`, chain 80094)
- BabyBearsONFT (`0xddeaf3...ef078c`, chain 80094)
- BabyBearsONFTAdapter (`0xc48c54...38968b`, chain 1)
- BandBearsONFT (`0x7711b2...b79a19`, chain 80094)
- BandBearsONFTAdapter (`0x392faa...9fc09e`, chain 1)
- BeaconDeposit (`0x424242...424242`, chain 80094)
- BGT (`0x656b95...eb1dba`, chain 80094)
- BitBearsONFT (`0x72d876...a2eebb`, chain 80094)
- BitBearsONFTAdapter (`0x3eb123...8e2e94`, chain 1)
- BondBearsONFT (`0xa0cf47...c7c375`, chain 80094)
- BondBearsONFTAdapter (`0x6b1c37...c8a89c`, chain 1)
- BongBearsONFT (`0x141de0...1f66cd`, chain 80094)
- BongBearsONFT1155Wrapper (`0x1897c0...06bf48`, chain 1)
- BooBearsONFT (`0xf49ec5...afc7cf`, chain 80094)
- BooBearsONFTAdapter (`0x759199...83d9be`, chain 1)
- Bundler3 (`0xf92014...0657ae`, chain 80094)
- ERC1967Proxy (`0x118d2c...3eec9a`, chain 80094)
- ERC1967Proxy (`0x1984ba...80190b`, chain 80094)
- ERC1967Proxy (`0x4f4a5c...b6f6d5`, chain 80094)
- ERC1967Proxy (`0x80108e...88f461`, chain 80094)
- ERC1967Proxy (`0x813dcd...ca821a`, chain 80094)
- ERC1967Proxy (`0x94ad6a...ef52a8`, chain 80094)
- ERC1967Proxy (`0xa4afef...216401`, chain 80094)
- ERC1967Proxy (`0xad1793...76e0d0`, chain 80094)
- ERC1967Proxy (`0xb5f200...b6862a`, chain 80094)
- ERC1967Proxy (`0xb79b43...45fb99`, chain 80094)
- ERC1967Proxy (`0xc41bbd...2e2500`, chain 80094)
- ERC1967Proxy (`0xd2f19a...940761`, chain 80094)
- ERC1967Proxy (`0xdf960e...63426a`, chain 80094)
- ERC1967Proxy (`0xe85880...cb52b4`, chain 80094)
- ERC1967Proxy (`0xee233a...dce6e2`, chain 80094)
- ERC1967Proxy (`0xfcbd14...6d0dce`, chain 80094)
- GeneralAdapter1 (`0xd2b966...901df7`, chain 80094)
- MetaMorphoV1_1 (`0x30bba9...545bc1`, chain 80094)
- MetaMorphoV1_1Factory (`0x5edd48...fbe616`, chain 80094)
- Morpho (`0x241472...0517d0`, chain 80094)
- Multicall3 (`0xca11bd...76ca11`, chain 80094)
- Permit2 (`0x000000...c78ba3`, chain 80094)
- PublicAllocator (`0xb62f34...51bfe7`, chain 80094)

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (39 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/56 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/39 (25.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Deployed-live implementations: 44 of 45 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 10/39
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 45
- Raw deployments: 45
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 25.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 10 | 25.6% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WBERAStakerVault | core_logic | project_anchor | own_supporting | 1 | berachain | unit-229355 | `0x118d2c...3eec9a` | ✅ Audited |
| BeaconDeposit | registry | project_anchor | own_supporting | 0 | berachain | unit-229326 | `0x424242...424242` | ✅ Audited |
| BeraChef | unknown | project_anchor | own_supporting | 1 | berachain | unit-229356 | `0xdf960e...63426a` | ✅ Audited |
| BGT | unknown | project_anchor | own_supporting | 0 | berachain | unit-229330 | `0x656b95...eb1dba` | ✅ Audited |
| BGTIncentiveFeeCollector | unknown | project_anchor | own_supporting | 1 | berachain | unit-229350 | `0x1984ba...80190b` | ✅ Audited |
| DedicatedEmissionStreamManager | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-229352 | `0x813dcd...ca821a` | ✅ Audited |
| Distributor | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-229360 | `0xd2f19a...940761` | ✅ Audited |
| LSTStakerVaultFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229351 | `0xc41bbd...2e2500` | ✅ Audited |
| RewardVaultFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229365 | `0x94ad6a...ef52a8` | ✅ Audited |
| RewardVaultHelper | core_logic | project_anchor | own_supporting | 1 | berachain | unit-229358 | `0xee233a...dce6e2` | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdaptiveCurveIrm | unknown | project_anchor | own_supporting | 0 | berachain | unit-229344 | `0xcf247d...7a6f62` | ⚠️ Unaudited |
| BabyBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229346 | `0xddeaf3...ef078c` | ⚠️ Unaudited |
| BabyBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229315 | `0xc48c54...38968b` | ⚠️ Unaudited |
| BandBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229335 | `0x7711b2...b79a19` | ⚠️ Unaudited |
| BandBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229311 | `0x392faa...9fc09e` | ⚠️ Unaudited |
| BerachainGovernance | unknown | project_anchor | own_supporting | 1 | berachain | unit-229363 | `0x4f4a5c...b6f6d5` | ⚠️ Unaudited |
| BitBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229333 | `0x72d876...a2eebb` | ⚠️ Unaudited |
| BitBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229312 | `0x3eb123...8e2e94` | ⚠️ Unaudited |
| BondBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229337 | `0xa0cf47...c7c375` | ⚠️ Unaudited |
| BondBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229313 | `0x6b1c37...c8a89c` | ⚠️ Unaudited |
| BongBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229318 | `0x141de0...1f66cd` | ⚠️ Unaudited |
| BongBearsONFT1155Wrapper | token | project_anchor | own_supporting | 0 | ethereum | unit-229310 | `0x1897c0...06bf48` | ⚠️ Unaudited |
| BooBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229347 | `0xf49ec5...afc7cf` | ⚠️ Unaudited |
| BooBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229314 | `0x759199...83d9be` | ⚠️ Unaudited |
| Bundler3 | unknown | project_anchor | own_supporting | 0 | berachain | unit-229348 | `0xf92014...0657ae` | ⚠️ Unaudited |
| DelegationHandlerFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229361 | `0xad1793...76e0d0` | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | project_anchor | own_supporting | 0 | berachain | unit-229345 | `0xd2b966...901df7` | ⚠️ Unaudited |
| Honey | unknown | project_anchor | own_supporting | 1 | berachain | unit-229359 | `0xfcbd14...6d0dce` | ⚠️ Unaudited |
| HoneyFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229354 | `0xa4afef...216401` | ⚠️ Unaudited |
| MetaFeePartitioner | unknown | project_anchor | own_supporting | 1 | berachain | unit-229353 | `0x80108e...88f461` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-229323 | `0x30bba9...545bc1` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | project_anchor | own_supporting | 0 | berachain | unit-229329 | `0x5edd48...fbe616` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | berachain | unit-229321 | `0x241472...0517d0` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | berachain | unit-229339 | `0xaf2fdc...b04d9e` | ⚠️ Unaudited |
| Multicall3 | periphery | project_anchor | own_supporting | 0 | berachain | unit-229343 | `0xca11bd...76ca11` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | berachain | unit-229316 | `0x000000...c78ba3` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-229340 | `0xb62f34...51bfe7` | ⚠️ Unaudited |
| StakingPoolContractsFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229362 | `0xb79b43...45fb99` | ⚠️ Unaudited |
| TimeLock | governance | project_anchor | own_supporting | 1 | berachain | unit-229364 | `0xb5f200...b6862a` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-229357 | `0xe85880...cb52b4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229320 | `0x1ae7dd...bccd8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229327 | `0x46fe2b...82d802` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229328 | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229331 | `0x696969...696969` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229336 | `0x7bb8dd...f82650` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [20260508-PoLNext-Zenith.pdf](https://github.com/berachain/security-audits/blob/main/20260508-PoLNext-Zenith.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [20260425-PoLNext-Spearbit.pdf](https://github.com/berachain/security-audits/blob/main/20260425-PoLNext-Spearbit.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | n/a | matched | 10 | 8 | 0 | 30 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2031] 20260508-PoLNext-Zenith.pdf — no match: Scope section lists file patterns src/base/**/* and src/pol/**/* but no specific contract names. Only BlockRewardController.sol is explicitly referenced in findings.
- [2032] 20260425-PoLNext-Spearbit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 20260508-PoLNext-Zenith.pdf | BlockRewardController | unmatched — not counted | — | mentioned in finding L-1 target | no |
| 20260425-PoLNext-Spearbit.pdf | BGT | own contract | BGT (selected) `0x656b95...eb1dba` — deployed 2025-01-20 22:07:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | BGTDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTFeeDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTIncentiveDistributor | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTIncentiveDistributorDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTIncentiveFeeCollector | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1984ba...80190b` — deployed 2025-07-21 20:10:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | BGTIncentiveFeeDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTStaker | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BeaconDeposit | own contract | BeaconDeposit (selected) `0x424242...424242` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | BeaconRootsHelper | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BeraChef | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xdf960e...63426a` — deployed 2025-01-20 22:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | BlockRewardController | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | Create2Deployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | DedicatedEmissionStreamManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x813dcd...ca821a` — deployed 2026-02-19 18:16:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | DedicatedEmissionStreamManagerDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | DeployHelper | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | Distributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2f19a...940761` — deployed 2025-01-20 22:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | EIP2612 | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | EIP3009 | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | FactoryOwnable | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | FeeCollector | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | IStakingRewards | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | IStakingRewardsErrors | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | InfraredBeraAdapter | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | LSTStakerVault | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | LSTStakerVaultFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xc41bbd...2e2500` — deployed 2026-01-16 15:14:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | LSTStakerVaultFactoryDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | LSTStakerVaultWithdrawalRequest | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | POLDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | RewardAllocatorFactory | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | RewardAllocatorFactoryDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | RewardVault | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | RewardVaultFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x94ad6a...ef52a8` — deployed 2025-01-20 22:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | RewardVaultHelper | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xee233a...dce6e2` — deployed 2025-10-13 18:24:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | RewardVaultHelperDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | Salt | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | StakingRewards | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | WBERAStakerVault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x118d2c...3eec9a` — deployed 2025-07-21 20:10:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | WBERAStakerVaultWithdrawalRequest | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | WBERAStakerWithdrawReqDeployer | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0xcf247d...7a6f62` | AdaptiveCurveIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xddeaf3...ef078c` | BabyBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc48c54...38968b` | BabyBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x392faa...9fc09e` | BandBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3eb123...8e2e94` | BitBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b1c37...c8a89c` | BondBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x141de0...1f66cd` | BongBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1897c0...06bf48` | BongBearsONFT1155Wrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf49ec5...afc7cf` | BooBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x759199...83d9be` | BooBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf92014...0657ae` | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xd2b966...901df7` | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x30bba9...545bc1` | MetaMorphoV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x5edd48...fbe616` | MetaMorphoV1_1Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xb62f34...51bfe7` | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 4 |
| standard_library | 18 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: unique_name=10

Zero-match audit list:

- [2031] 20260508-PoLNext-Zenith.pdf

Fork inheritance lineage and inherited audits are included when available.
