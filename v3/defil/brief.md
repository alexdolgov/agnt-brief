# Agentic Audit Brief: DeFIL

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

- Project: DeFIL (`defil`)
- Website: [https://defil.org/](https://defil.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 52 unique implementations (84 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,800,957.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for DeFIL in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 52 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 52
- Raw deployments: 84
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a189022b0fe3072f0313b8cf21721ca97c0d18` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa8af265dc79b6c45fd311e5ebffe4b5b69e33744`; ethereum `0xe8d21c3da81cc1ad97abf06a10f3f9952d3f3d11` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x036cf3821ea246e935feef1c29ed8ddffac1dbb0`; ethereum `0x8340c3858f0c53d29e9c6669a4b625b304400443`; ethereum `0xbe8fb7db7425f9b1f67dc58ac31ddafc532dec9c` | ⚠️ Unaudited |
| CollateralOnlyCErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x629cdff97a605885a714c6b0bb9e0b7fbded6733`; ethereum `0xed919c9ceb2408ae263357c4e11e3d43adb72a7f` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b4f20b2259eebb97945b6ef549a1c44fca6cd81`; ethereum `0x7a21270190dcb9f9d7f9802f5b0c4ca5e83a974c` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6e3dc6bca1c35e84262ec62e34bb2dfa788bc737`; ethereum `0xcc28a1e703ae3aa71a3beea9d5084b7700f94d6d` | ⚠️ Unaudited |
| DeFIL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0e55fb0cd9f1109691d365764ddb5ffb6bbc8ce` | ⚠️ Unaudited |
| DFL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x09ce2b746c32528b7d864a1e3979bd97d2f095ab`; ethereum `0x6ded0f2c886568fb4bb6f04f179093d3d167c9d7` | ⚠️ Unaudited |
| EFIL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x22b475f3e93390b7e523873ad7073337f4e56c2c`; ethereum `0x2a2cb9ba73289d4d068bd57d3c26165dad5cb628` | ⚠️ Unaudited |
| FilChainStatOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca106916ca1f9c53442435036edf9b137b381c90` | ⚠️ Unaudited |
| FILST | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7346ad4c8cd1886ff6d16072bcea5dfc0bc24ca2` | ⚠️ Unaudited |
| FILSTManage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd429f23088b3fa4aabff61dd5f9e534793f9944` | ⚠️ Unaudited |
| FilstMarketCErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5dbb86ea4669bc8bd3d48d1563dc27c50f8c0ea` | ⚠️ Unaudited |
| FilstMarketCErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19e47dbcbd0179fe682e2feb97afa58379ac3396`; ethereum `0x71dd9cd476c73f7c94a82e3f00a8ed29268602e1` | ⚠️ Unaudited |
| FILSTUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x987dd30f57e51a732e4dcad0890ad6631ff25928` | ⚠️ Unaudited |
| FixedRewardStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd89198402b55ea9dfb5b5b00a55ce032c27948bb` | ⚠️ Unaudited |
| FoundationWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe1c0a5da0fcbe4a8f38662a71c6dbe2260ffd3` | ⚠️ Unaudited |
| MFIL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c392c3fbe6ada6049373478a4f8dd668ab27b0c` | ⚠️ Unaudited |
| MinerManage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d7a678eb9196d0de4f5467141038dbc949c97a1` | ⚠️ Unaudited |
| MiningNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad1ed31e70b569d78d1930537179a940dda4a9cf` | ⚠️ Unaudited |
| MiningNFTManage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cfcb73cb365ed7f38dcf3bc60d2aeafe0d502e2` | ⚠️ Unaudited |
| MiningNFTMintingLimitation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b72c88a4f5e81d96da2ea3e8a26d0113de9d3ac` | ⚠️ Unaudited |
| MiningNFTMintingLimitationData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097eb2025019ebec0faf9f8077804a10eb692f57` | ⚠️ Unaudited |
| NormalInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0f703af1a3f2bf8877132109a02659feead4ab9a`; ethereum `0x6cc9fedc87010254a35239631353be387e228165`; ethereum `0x732b6ba357b6444820a34638833f4865028578ac`; ethereum `0xb394c6215a5577714a320a6be249dee58cea6f80`; ethereum `0xd4e1a98da92b3fa1beaa53e5fc479419a8f6b4df`; ethereum `0xdb30f2ed6a55a7de7031c2ac4119366068049145` | ⚠️ Unaudited |
| PriceConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5f88f761cb6408120d290835c9ae617ca79b42` | ⚠️ Unaudited |
| PrivilegedRedistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3c2f55a3e7f4e092723cba44c1cbb859eff60bf3`; ethereum `0x3ccd01602d5fa18349ddb25f21079bd018284c8f`; ethereum `0xb02f118013150c7f2d4f2030e15f198e1caa60eb`; ethereum `0xd86519d8a0c34da2151d460baffdfcabba9cf252`; ethereum `0xe67ae15cbb7f6b009f12c4c8999ca3ff4c39463d`; ethereum `0xecf802b10219258d7414142e16a58edf8f4a00e7` | ⚠️ Unaudited |
| ReferrerRewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x69f8eb1727a9e0f0d37113d91ae3075c65b1bb2b`; ethereum `0x9a9e42bc2a0f03be85985356bbe34d9c83b09c68` | ⚠️ Unaudited |
| Repurchase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9d7621b157cb10fa32533f304ab0894fdbda5eb3`; ethereum `0xccb562cf7594bb87d88addae888bb4a12ecbd7da` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aa5f09d3f322371ce073425cf22ae098cef6e13` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4d3cf9f182d56ed3de0bf4144bc4a301c54de48f`; ethereum `0x5e6468b3048d1b5a48ca6eae3953b17fe1165ed9` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x01aabbad98a7638b7f8d65e7ec42560f1afbbf0c`; ethereum `0x2170c379b8bbc66bb8a77fb18136bf3250117cf6`; ethereum `0x6795464efc9e44f6951ce5880c8bdbaf5a54b169`; ethereum `0x6b0c7d013cc0b461490287cc20aa9f34f950a6a6`; ethereum `0x9e08bd9a1e3880902688b32d563046cab74d2f2f`; ethereum `0xb685bfdad9da7093168ab75204bbcadf0c69c823`; ethereum `0xefeeb899c1a7ea13140c1c161dd3a054eda7d6f6` | ⚠️ Unaudited |
| StakingDFL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842738637f84b4dac335b832d9890cf8e11da214` | ⚠️ Unaudited |
| StakingLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95bcdb593e50a68b613356698c752171d5e1718e` | ⚠️ Unaudited |
| StandardPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a1e3e5815cffaf87c220a738b06c23f03543039` | ⚠️ Unaudited |
| StandardRewardCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe32d18c22e25bc49bf347792f81400224cb5174c` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b062566c677f67aeffcec1a8fe1b52795a33b77`; ethereum `0x8a6023e72312ea3439041551a21c3b74021e1cbc` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd372a3221021df72eda38f77117d3a95f057e163` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7971be48085a8b7a83f1e59161173d3c132b451` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x784ca62029caa80ee54fca4256100f720e894569`; ethereum `0xc3533e9c9d835d12c5b895933b65364db4ab5619`; ethereum `0xe0f23bee9c884bf28ebc75ee59fd12377e59a327`; ethereum `0xe34cc1f22a63a9c5ac4300a000eece8854a8fa43` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18c87f69f7960a78e071fc8b97d77e3d81a9d7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c7f772eabb3a3bfcb5e8f42432971f69e99103c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2542ac6512eba8dbb372510485e19fadd821fedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312c6ffe7743b964be6da9131e662af5bac55199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cd7b5789d8a3379b347fcd258777d0e5c8315d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d5f2059ea6a808b635293bc33ca749372abb9b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4e7702b8eeb1758609e23522490c9e1d8bc145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ca1ec6207c481e7246b4f1540daa4cfea0c0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a664ae67e68a9b2cdadd8486a7c47c972408405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b1322c434584ddca16cb5d8c6d75368b3821e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb94e91ea1cf2ab3c44f48123d9e81ca5cdf6fa82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8f017593e7d0de9ea116313a255fe4647b2197b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb2fd2068112c050e5c8c9759e201824d1e1adac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [security-audit-certificate.html](https://www.slowmist.com/security-audit-certificate.html?id=e84a975074cb9aef9299f9dec92311fd1458d0bbb4163adfadac8e16e0da3c61) | SlowMist | Audit | 2018-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2975] security-audit-certificate.html — no match: No contract names or scope section found in the provided text. The report appears to be a template or summary without specific contract details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [2975] security-audit-certificate.html

Fork inheritance lineage and inherited audits are included when available.
