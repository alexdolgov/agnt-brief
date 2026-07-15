# Agentic Audit Brief: Interest Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Interest Protocol (`interest-protocol`)
- Website: [https://interestprotocol.io/#/](https://interestprotocol.io/#/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism, polygon
- Contract surface: 125 unique implementations (192 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,181,379.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Interest Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 51 contract row(s) across ethereum, polygon. Structural roles: 41 unclassified, 5 core, 5 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 51
- Structural roles: unclassified (41), core (5), supporting (5)
- Contract kinds: contract (46), abstract (5)
- Detected standards: ownable (4), erc1967proxy (2), erc20 (2), pausable (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (5), foundry (2)
- Upgradeable-pattern rows: 5

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 51; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 85 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (53 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 28
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/70
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 125
- Raw deployments: 192
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnchoredViewRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x0f2f7a...a960ac`; ethereum `0x233845...7cb206`; ethereum `0x705a8a...97b378`; ethereum `0x841501...953f43`; ethereum `0x8d63e1...def312`; ethereum `0x8ed31d...db523a`; ethereum `0x923539...3bb195`; ethereum `0x924854...3c71b6`; ethereum `0x93cef8...8919fd`; ethereum `0xae7be6...793fdd`; ethereum `0xc91814...df48d2`; ethereum `0xcf2fcd...b1c12a`; ethereum `0xd3ced5...5db3ec`; ethereum `0xde67fe...d8832e`; ethereum `0xf6f296...16aecf` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242962 | `0x27fc40...3fc6ed` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242965 | `0x610d4d...6a1889` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242966 | `0x65da32...2f03a2` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242967 | `0x69f3d7...9bb04b` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242968 | `0x6db544...69eb70` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242969 | `0x730527...50677a` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242970 | `0x864991...62f908` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242971 | `0x8bfe7a...2879de` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242972 | `0x8e7d39...6f5326` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242973 | `0x93a341...e7ecf9` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242976 | `0xce5544...2b4e3b` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242977 | `0xef12fa...6e751e` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242979 | `0xf5e0e2...a428a4` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242980 | `0xfde4c9...699bb2` | ⚠️ Unaudited |
| BPTstablePoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xcee78c...ff19a4`; ethereum `0xd26567...e3986b`; ethereum `0xd6b002...cef4be` | ⚠️ Unaudited |
| CappedBptToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0cdb61...6ef826`; ethereum `0x7d3cd0...19303d` | ⚠️ Unaudited |
| CappedERC4626 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242961 | `0x09fd32...831c7a` | ⚠️ Unaudited |
| CappedERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x739d34...d4ac88` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0451f2...6dfca7`; ethereum `0x361093...8109aa` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242992 | 2 deployments: ethereum `0x054985...8f8a85`; ethereum `0xe565e1...7ea18a` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0cef7f...a07e0a`; ethereum `0xddad1d...203897` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242981 | 2 deployments: ethereum `0x0f0767...9b461b`; ethereum `0xfb42f5...e03381` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42b4d7...6b3c80`; ethereum `0x6ebf5b...779cf2` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242984 | 2 deployments: ethereum `0x4f23dc...2df4ff`; ethereum `0x7c1caa...4ecde9` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242985 | 2 deployments: ethereum `0x5a6752...5baf1a`; ethereum `0xddb3bc...0e357a` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242995 | 2 deployments: ethereum `0x5ac39e...1b9e61`; ethereum `0xf6dcb3...37e7c0` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5f39ad...479165`; ethereum `0xf8243e...93b58a` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242991 | 2 deployments: ethereum `0x64ea01...731f41`; ethereum `0xdc94d0...38765a` | ⚠️ Unaudited |
| CappedGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x6b68c5...6346ae`; ethereum `0x73ccb0...c4c04b`; ethereum `0xe2c1d2...ebb579` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242988 | 2 deployments: ethereum `0x99bd1f...798fc3`; ethereum `0xb9318f...236baf` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242994 | 2 deployments: ethereum `0x9d878e...2822a8`; ethereum `0xf5b8ee...ac5df8` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242974 | `0x9f86bf...ae88da` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242989 | 2 deployments: ethereum `0xb9cb62...b351b8`; ethereum `0xdf6232...0ab6d2` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242990 | 2 deployments: ethereum `0xbdcf0b...1f0651`; ethereum `0xd3bd7a...135dd2` | ⚠️ Unaudited |
| CappedMkrToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c52ee...e8247e`; ethereum `0xe4fd7f...368f01` | ⚠️ Unaudited |
| CappedMkrToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x99904e...2e1b0f`; ethereum `0xbb5578...2a9148` | ⚠️ Unaudited |
| CHI_Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa2cc...231e18` | ⚠️ Unaudited |
| EtherlandsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7d60fc...ad44ae`; ethereum `0xba0191...a526f5` | ⚠️ Unaudited |
| FlashLoanLever | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f280...8487b9` | ⚠️ Unaudited |
| FlashSwapLever | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2db087...bcb4d8`; ethereum `0x696607...36b6e2` | ⚠️ Unaudited |
| GovernorCharlieDelegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242986 | 2 deployments: ethereum `0x266d10...f8c4ca`; ethereum `0x6b91a0...b31563` | ⚠️ Unaudited |
| GovernorCharlieDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x8b3d32...4f1545`; ethereum `0xdf352c...534a29`; ethereum `0xed6a21...01dd25`; ethereum `0xf08206...ab65a8` | ⚠️ Unaudited |
| InterestProtocolTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x35bb90...1a1a10`; ethereum `0xaf239a...7b93e1` | ⚠️ Unaudited |
| InterestProtocolTokenDelegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242983 | 2 deployments: ethereum `0x384542...31f044`; ethereum `0xd909c5...2efc3d` | ⚠️ Unaudited |
| InterestProtocolTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387eed...254b17` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0f131c...1ab0e4`; ethereum `0x1cc72e...f91c78`; ethereum `0x285b94...43da08`; ethereum `0x384eab...95a613`; ethereum `0x48fa75...c84130`; ethereum `0xcc951b...ca80d0` | ⚠️ Unaudited |
| MasterKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15518a...b2a61a` | ⚠️ Unaudited |
| MerkleRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5757fc...204a70`; ethereum `0x91a1fb...348cf7`; ethereum `0xda0ec8...e16bef` | ⚠️ Unaudited |
| MKRVotingVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x491397...1f217f`; ethereum `0x7b6160...c60137` | ⚠️ Unaudited |
| MKRVotingVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeba225...008d73` | ⚠️ Unaudited |
| OracleMaster | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242978 | `0xf48188...a3d477` | ⚠️ Unaudited |
| Portico | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0fe9a1...e2081d`; ethereum `0x48b610...e6f476`; ethereum `0x4db168...b9d06e`; ethereum `0xd8e146...beb264`; ethereum `0xf4c22e...3955f7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3ff7...e623d3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242963 | `0x3d9d8c...c0d8c5` | ⚠️ Unaudited |
| SlowRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd306...cf1d1d` | ⚠️ Unaudited |
| StEthOracleRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bb0e1...c1e8cd` | ⚠️ Unaudited |
| StEthOracleRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242975 | `0xaa2639...832fe8` | ⚠️ Unaudited |
| ThreeLines0_100 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x16ac44...a23906`; ethereum `0x8ef82c...7ea278` | ⚠️ Unaudited |
| ThreeLines0_100 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242964 | `0x482855...e031ea` | ⚠️ Unaudited |
| Uni | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1f9840...01f984` | ⚠️ Unaudited |
| USDI | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-242993 | 2 deployments: ethereum `0x2a54ba...761b58`; ethereum `0xedfec0...a9d57a` | ⚠️ Unaudited |
| USDI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a589d...bd0172` | ⚠️ Unaudited |
| VaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0bd408...83dfd8`; ethereum `0x2f483e...aed14d`; ethereum `0x8a714b...df5716`; ethereum `0xb5afbb...19dedf` | ⚠️ Unaudited |
| VaultController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242987 | 2 deployments: ethereum `0x4aae98...d5cbe3`; ethereum `0x9bdb55...b38246` | ⚠️ Unaudited |
| VotingVaultController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242982 | 2 deployments: ethereum `0x17b7bd...a07a17`; ethereum `0xae49dd...28cbe2` | ⚠️ Unaudited |
| VotingVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xb800ca...67da6e`; ethereum `0xc12bdf...9ec21b`; ethereum `0xee0b46...feeade` | ⚠️ Unaudited |
| WavePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5a4396...3e8aee`; ethereum `0x9fbbf8...df341d`; ethereum `0xab1b81...a46da6` | ⚠️ Unaudited |
| wOETH_ORACLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b518e...012834` | ⚠️ Unaudited |
| wstETHRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e2a18...67ea9a`; ethereum `0x47cbd3...67b577` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107da3...c25e4d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x195fc6...3b3a5d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1ea388...874344` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x38c5aa...ac967a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6e55a6...98d9c1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x706d1b...6ad429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78fcf4...a8bd74` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7fff15...b140d4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x81f661...9ffffa` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x879078...3e22ac` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8c8ae2...894189` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8cd06c...d89b5a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9128ba...4560db` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9816d7...9e8c75` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9c3b60...3fea52` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa490ce...ecfe54` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa8c7ea...e24363` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa9dd6f...44674f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xae7ab9...d7fe84` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb549c8...b25f31` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xca9e15...3f230c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcd17f6...04ea39` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xce1cb7...54aad0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcfae22...8cd4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0701a...0d815e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0cf31...7f5d85` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd38d3b...db9ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd652db...557e6f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd829ad...a5ccd0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdd011f...5d4fda` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe53b24...95387f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfc6b55...851d94` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfd76d7...fa71b6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfe1cb3...e2f3b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x3389d2...78088f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x3c92f9...1b278e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x45dda9...f50608` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x4fdc91...9589ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x74d3c8...0e7604` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x847b64...fa0ee5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x8afbfe...506a20` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x90a972...e49110` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xa2b184...bcd741` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xa8a6d7...4c9cc9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xbab395...2b32c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xbc53c5...1567b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xbeed11...cba939` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xd8cd58...921293` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xde31f8...d78ae6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xdf0fb4...86e13c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xe8504e...9dd10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xf9680d...205945` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [GFX_IP_Protocol_Audit_Report.pdf](https://gfx.cafe/ip/contracts/-/blob/master/audit/GFX_IP_Protocol_Audit_Report.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/gfx-labs/ip-contracts/blob/master/audit/Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13289] GFX_IP_Protocol_Audit_Report.pdf — no match: Extracted contract names from findings and advisory sections. The report does not have a formal scope table but mentions contracts by name in findings.
- [13291] Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| GFX_IP_Protocol_Audit_Report.pdf | VaultController | unmatched — not counted | — | mentioned in findings and scope | no |
| GFX_IP_Protocol_Audit_Report.pdf | Vault | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | UFragments | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | TokenDelegate | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | GovernorDelegate | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | CurveMaster | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | ChainlinkOracleRelay | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | UniswapV3OracleRelay | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | OracleMaster | unmatched — not counted | — | mentioned in findings | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | CappedFeeOnTransferToken | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | CappedGovToken | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | GovernorDelegate | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | SlowRoll | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | ThreeLines0_100 | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | TokenDelegate | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | UFragments | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | USDI | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | Vault | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | VaultController | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | VotingVault | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | VotingVaultController | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13289] GFX_IP_Protocol_Audit_Report.pdf
- [13291] Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
