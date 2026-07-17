# Agentic Audit Brief: HyperWave

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: HyperWave (`hyperwave`)
- Website: [https://app.hyperwavefi.xyz](https://app.hyperwavefi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 27 unique implementations (38 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,360,966.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for HyperWave. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across base, ethereum, hyperliquid. Structural roles: 11 supporting, 6 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: supporting (11), core (6)
- Contract kinds: contract (17)
- Detected standards: erc165 (4), erc20permit (4)
- Frameworks: solmate (17), openzeppelin (13)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 17; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 27
- Raw deployments: 38
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountantWithRateProviders | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242291 | `0x74f3b2edc56df9d2a7db9249d9bae6e346510e3b` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242292 | `0x78e3ac5bf48dcaf1835e7f9861542c0d43d0b03e` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242296 | `0xa77f32badeea2d2b7de78680c3a6d8b88c46055d` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242298 | `0xcf9be8bf79ad26fdd7aa73f3dd5ba73ecdee2a32` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x23878914efe38d27c4d67ab83ed1b93a74d4086a`; ethereum `0x4f5923fc5fd4a93352581b38b7cd26943012decf`; ethereum `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4e65fe4dba92790696d040ac24aa414708f5c0ab` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9ba2edc44e0a4632eb4723e81d4142353e1bb160`; ethereum `0x9fd7466f987fd4c45a5bbde22ed8aba5bc8d72d1` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242288 | `0x4de03ca1f02591b717495cfa19913ad56a2f5858` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242293 | `0x855cedd0e13be116f3eb17fa7b7b682999f55c4f` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242294 | `0x9fd7466f987fd4c45a5bbde22ed8aba5bc8d72d1` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242295 | `0xa2f8da4a55898b6c947fa392ef8d6bfd87a4ff77` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x519a4e3ee7daea8d2814f059eefcd44dc4ae5618` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242299 | `0xd0f20e410503fb2b5431bf802263f4671cdf11d2` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242300 | `0xe3d3b6fdb0488b7167ed102ccf6bdd96e70d1cc1` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242302 | `0xf0cd28d6ff2c1a84fc88215e920452842d1f1929` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0xbeef01735c132ada46aa9aa4c54623caa92a64cb`; ethereum `0xbeef047a543e45807105e51a8bbefcc5950fcfba`; ethereum `0xbeefff209270748ddd194831b3fa287a5386f5bc`; ethereum `0xd63070114470f685b75b74d60eec7c1113d33a3d` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 6 deployments: hyperliquid `0x2900abd73631b2f60747e687095537b673c06a76`; hyperliquid `0x835febf893c6dddee5cf762b0f8e31c5b06938ab`; hyperliquid `0x8a862fd6c12f9ad34c9c2ff45ab2b6712e8cea27`; hyperliquid `0xfc5126377f0efc0041c0969ef9ba903ce67d151e`; base `0x616a4e1db48e22028f6bbf20444cd3b8e3273738`; base `0x7bfa7c4f149e7415b73bdedfe609237e29cbf34a` | ⚠️ Unaudited |
| RolesAuthority | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242287 | `0x4d1cf31a919d62c65fa616185824fe78a09da917` | ⚠️ Unaudited |
| RolesAuthority | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242289 | `0x5ed1412f3b27e38bde1fe290c7d66bfe306ff4cc` | ⚠️ Unaudited |
| RolesAuthority | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242297 | `0xce9dff5a94b7395d817bc65325245c40b81e3b8f` | ⚠️ Unaudited |
| RolesAuthority | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242301 | `0xe4b9c0ede859decd6c0e32e5da8c3d9e9a204b75` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242290 | `0x70cb1a1888afee738344dd879d818e1f369b3dd5` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242303 | `0xfa803575411744043130c43b53ed1f02f8d079d7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242286 | `0x0e01e3afd147c7f079ea19d0eca166ad3a22e79d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242304 | `0xfa9d7d4709716b90cd5013fd88fb17aeedd24bc4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242305 | `0xfaf3288976f5548ebcfb1ba9e86ccc467a075c53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-242306 | `0xffd5fff7f184fa63e7b9eedf7eec2da7bf03f170` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ]()and [CodeSpect](https://codespect.net/).](https://threesigma.xyz/) | 0xMacro | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ](https://threesigma.xyz/)and [CodeSpect]().](https://www.codespect.net/) | 0xMacro | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [0xmacro-boring-vault-arctic-0.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2Fzjm3HGLDFHJGiuhGz2rH%2F0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FWofbRmhDmF5HJ8kD7IdU%2F0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2F3t8IWXvVGBrUnPZztOqS%2F023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf) | Codespect | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Forwarder_3Sigma_HyperliquidForwarder.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FzQcqLsXtwmC0N2HVZLbf%2FForwarder_3Sigma_HyperliquidForwarder.pdf) | 3Sigma | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [pashov-boring-vault.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FQvhQDsavyo1g9x5DMoha%2Fpashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FvKOC5u32kswbfrcIs98I%2Fspearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20550] Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ]()and [CodeSpect](https://codespect.net/). — no match: The provided text is a marketing page for Three Sigma's auditing services, not an actual audit report. No contracts in scope or audit date are identifiable.
- [20551] Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ](https://threesigma.xyz/)and [CodeSpect](). — no match: The provided text is a marketing page for CODESPECT, not an actual audit report. It lists example audits (Realms, Maitreja staking, Ignition Fogo Locker) but does not include a scope section or detailed contract information for a specific audit.
- [20552] 0xmacro-boring-vault-arctic-0.pdf — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is from the cover page: 'March 20, 2024'.
- [20555] 0xmacro-boring-vault-arctic-0.pdf — no match: All contracts listed in the 'Source Code' section with file paths and SHA256 hashes are in scope. The audit date is the end date of the audit period (April 1st to April 5th 2024).
- [20556] 0xmacro-boring-vault-arctic-1.pdf — no match: All contracts listed in the 'Source Code' section with file paths and SHA256 hashes. Audit date from cover page.
- [20557] 023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf — no match: Only one contract in scope: HyperliquidForwarder.sol. Audit date from final report date.
- [20558] Forwarder_3Sigma_HyperliquidForwarder.pdf — no match: Only one contract in scope: HyperliquidForwarder
- [20559] pashov-boring-vault.pdf — no match: Scope section explicitly lists 10 smart contracts. Audit date is July 13th 2024 (end date of the review period).
- [20560] spearbit-boring-vault-arctic-0.pdf — no match: The report does not have a dedicated scope section; contract names were extracted from findings context and file paths mentioned in the report. The audit date is from the cover page: 'April 19, 2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 0xmacro-boring-vault-arctic-0.pdf | AtomicQueue | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IAtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AaveV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AuraDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ERC4626DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | NativeWrapperDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | OneInchDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVaultV0Lens | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BeforeTransferHook | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquid1 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IRateProvider | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | RawDataDecoderAndSanitizerInterfaces | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CellarMigrationAdaptor | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicQueue | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IAtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AaveV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AuraDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ERC4626DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | NativeWrapperDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | OneInchDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVaultV0Lens | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BeforeTransferHook | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquid1 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IRateProvider | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | RawDataDecoderAndSanitizerInterfaces | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CellarMigrationAdaptor | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBPositionDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 0xmacro-boring-vault-arctic-1.pdf | AaveDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 0xmacro-boring-vault-arctic-1.pdf | BoringDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBContractDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 0xmacro-boring-vault-arctic-1.pdf | Ownable2StepDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 0xmacro-boring-vault-arctic-1.pdf | WithdrawableDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 0xmacro-boring-vault-arctic-1.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveAndConvexDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveNoConfigDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 0xmacro-boring-vault-arctic-1.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | Listed in scope table with SHA256 hash | no |
| 023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf | HyperliquidForwarder | unmatched — not counted | — | listed in scope table (Section 5.1) | no |
| Forwarder_3Sigma_HyperliquidForwarder.pdf | HyperliquidForwarder | unmatched — not counted | — | listed in scope table | no |
| pashov-boring-vault.pdf | CrossChainLayerZeroTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuth | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthCore | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthReceiver | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthSender | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultCrossChainDepositor | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultL2OFT | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultOFTAdapter | unmatched — not counted | — | listed in scope | no |
| spearbit-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context (e.g., 3.1.1) | no |
| spearbit-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | Listed in findings context (e.g., 3.1.2) | no |
| spearbit-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | Listed in findings context (e.g., 3.1.2) | no |
| spearbit-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | Listed in findings context (e.g., 3.1.4) | no |
| spearbit-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | Listed in findings context (e.g., 3.1.7) | no |
| spearbit-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | Listed in findings context (e.g., 3.2.2) | no |
| spearbit-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | Listed in findings context (e.g., 3.2.4) | no |
| spearbit-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context (e.g., 3.2.5) | no |
| spearbit-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context (e.g., 3.2.1) | no |
| spearbit-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context (e.g., 3.3.8) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 108 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=2
- Match method counts: n/a

Zero-match audit list:

- [20550] Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ]()and [CodeSpect](https://codespect.net/).
- [20551] Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ](https://threesigma.xyz/)and [CodeSpect]().
- [20552] 0xmacro-boring-vault-arctic-0.pdf
- [20555] 0xmacro-boring-vault-arctic-0.pdf
- [20556] 0xmacro-boring-vault-arctic-1.pdf
- [20557] 023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf
- [20558] Forwarder_3Sigma_HyperliquidForwarder.pdf
- [20559] pashov-boring-vault.pdf
- [20560] spearbit-boring-vault-arctic-0.pdf

Fork inheritance lineage and inherited audits are included when available.
