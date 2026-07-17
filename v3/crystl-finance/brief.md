# Agentic Audit Brief: Crystl Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Crystl Finance (`crystl-finance`)
- Website: [https://www.crystl.finance/](https://www.crystl.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, cronos, fantom, moonbeam, polygon
- Contract surface: 67 unique implementations (71 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $165,979.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Crystl Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across bsc, cronos, fantom, moonbeam, polygon. Structural roles: 31 unclassified, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: unclassified (31), core (2)
- Contract kinds: contract (31), abstract (2)
- Detected standards: ownable (2), erc20 (1), pausable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 33; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 56 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations shown in the inventory but excluded from coverage (54 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 67
- Raw deployments: 71
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ANN | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x98936bde1cf1bff1e7a8012cee5e2583851f2067` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x011734f6ed20e8d011d85cf7894814b897420acf`; polygon `0x8063037ea50e4a066bf1430ea1e3e609cd5cef6b` | ⚠️ Unaudited |
| AthToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | moonbeam | n/a | `0xcbabee0658725b5b21e1512244734a5d5c6b51d6` | ⚠️ Unaudited |
| BabyToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x53e562b9b7e5e94b81f10e96ee70ad06df3d2657` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ⚠️ Unaudited |
| BEP20Token | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x23ce9e926048273ef83be0a3a8ba9cb6d45cd978`; bsc `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`; bsc `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ⚠️ Unaudited |
| BEP20TokenImplementation | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | n/a | `0x9678e42cebeb63f23197d726b29b1cb20d0064e5` | ⚠️ Unaudited |
| BridgeToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x5ec03c1f7fa7ff05ec476d19e34a22eddb48acdc` | ⚠️ Unaudited |
| CrystalMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5badd6c71ffd0da6e4c7d425797f130684d057dd` | ⚠️ Unaudited |
| CrystalToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-234582 | `0x76bf0c28e604cc3fe9967c83b3c3f31c213cfe64` | ⚠️ Unaudited |
| EditableERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0xdfa46478f9e5ea86d57387849598dbfb2e964b02` | ⚠️ Unaudited |
| Emp | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x3b248cefa87f836a4e6f6d6c9b42991b88dc1d58` | ⚠️ Unaudited |
| EShare | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xdb20f6a8665432ce895d724b417f77ecac956550` | ⚠️ Unaudited |
| FINToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x576c990a8a3e7217122e9973b2230a3be9678e94` | ⚠️ Unaudited |
| Lucidao | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xc2a45fe7d40bcac8369371b08419ddafd3131b4a` | ⚠️ Unaudited |
| MasterHealer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebcc84d2a73f0c9e23066089c6c24f4629ef1e6d` | ⚠️ Unaudited |
| MaticWETH | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x208cfec94d2ba8b8537da7a9bb361c6baad77272`; bsc `0x734548a9e43d2d564600b1b2ed5be9c2b911c6ab` | ⚠️ Unaudited |
| MoboxToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377` | ⚠️ Unaudited |
| PDDollar | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x146e58d34eab0bff7e0a63cfe9332908d680c667` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ff339ab4f7a08698a8d6c97ee656233db58ff56` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03a6c95be4d1cefd51511c0a7ce6be66f0aa4957` | ⚠️ Unaudited |
| Stella | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x0e358838ce72d5e61e0018a2ffac4bec5f4c88d2` | ⚠️ Unaudited |
| StrategyMasterHealer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03196c0cf1965ec96fb3394403572c9d58a2ad21` | ⚠️ Unaudited |
| StrategyMasterHealerForDoubleReflect | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa023d9e76007a56c7ac1890e629b1a5032744341` | ⚠️ Unaudited |
| StrategyMasterHealerForQuick | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-234581 | `0x4509c2f7301ca1a45d314cabca86faa41c8d5245` | ⚠️ Unaudited |
| StrategyMasterHealerForReflect | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23116627d5e46ab441568e9e37fb12d1ab5f2a4c` | ⚠️ Unaudited |
| StrategyMasterHealerKavian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c83d79197c031cb2b87337ff754cc6e0148eeea` | ⚠️ Unaudited |
| StrategyMasterHealerWithReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b92451538547c84eb22ea4a6d3b9a551d79a2c9` | ⚠️ Unaudited |
| SynapseERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x5f4bde007dc06b867f86ebfe4802e34a1ffeed63` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12fc8f5cfb609981c6f6d141f0fb0bce0b990145` | ⚠️ Unaudited |
| UChildAdministrableERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x2e1ad108ff1d8c782fcbbb89aad783ac49586756` | ⚠️ Unaudited |
| UChildERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0xc3c7d422809852031b44ab29eec9f1eff2a58756` | ⚠️ Unaudited |
| UChildUSDT0 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| VaultHealer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0192eb09c31ded57ee77dbb9856ee75b19fb47ef` | ⚠️ Unaudited |
| WBNB | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ⚠️ Unaudited |
| Well | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x511ab53f793683763e5a8829738301368a2411e3` | ⚠️ Unaudited |
| WETH9 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0xacc15dc74880c9944775448304b263d191c6077f` | ⚠️ Unaudited |
| WMATIC | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x0224010ba2d567ffa014222ed960d1fa43b8c8e1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x02a8dc66334b1cc6cd8f28fe8dbf6b58b49b47b6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x062e66477faf219f25d27dced647bf57c3107d52` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x2d03bece6747adc00e1a131bba1469c15fd11e03` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x39bc1e38c842c60775ce37566d03b41a7a66c782` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x47a9d630dc5b28f75d3af3be3aaa982512cd89aa` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x5c7f8a570d578ed84e63fdfa7b1ee72deae1ae23` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x68c4fd0c9de98f05d206cd04c958a0ec14ce016e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x6d6d6ba0c7e7dbafffec82b1ddf92e271650a63a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x6f715158d4b1468528da002f5941c72fe4159520` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x98936bde1cf1bff1e7a8012cee5e2583851f2067` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xadbd1231fb360047525bedf962581f3eee7b49fe` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xb888d8dd1733d72681b30c00ee76bde93ae7aa93` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xc21223249ca28397b4b6541dffaecc539bff0c59` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xcbde0e17d14f49e10a10302a32d17ae88a7ecb8b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xd8d40dcee0c2b486eebd1fedb3f507b011de7ff0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xe44fd7fcb2b1581822d0c862b68222998a0c299a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x04068da6c83afcfa0e13ba15a6696662335d5b75` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x10b620b2dbac4faa7d7ffd71da486f5d44cd86f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x5cc61a78f164885776aa610fb0fe1257df78e59b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x6c021ae822bea943b2e66552bde1d2696a53fbb7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x841fad6eae12c286d1fd18d1d525dffa75c7effe` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x322e86852e492a7ee17f28a78c663da38fb33bfb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x568e579a447ae1c6fef3c7c0456c947cb63abc3e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
