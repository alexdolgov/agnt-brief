# Agentic Audit Brief: Illuvium

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Illuvium (`illuvium`)
- Website: [https://illuvium.io](https://illuvium.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, goerli
- Contract surface: 32 unique implementations (46 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,112,695.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Illuvium. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across ethereum, goerli. Structural roles: 5 unclassified, 2 core, 2 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: unclassified (5), core (2), supporting (2)
- Contract kinds: contract (6), abstract (3)
- Detected standards: erc1967proxy (2), erc20 (2), ownable (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x800e48366b3dc4d93114246d52b98adb48ad83cb`, chain 1)
- UnnamedContract (`0xaa2e727ba59b4fea24d0db4e49a392fdc3e8e778`, chain 1)
- ERC1967Proxy (`0x6bd2814426f9a6abaa427d2ad3fc898d2a57adc6`, chain 1)
- EscrowedIlluvium2 (`0x7e77dcb127f99ece88230a64db8d595f31f1b068`, chain 1)
- IlluviumERC20 (`0x767fe9edc9e0df98e07454847909b5e959d7ca0e`, chain 1)
- ILVPool (`0xdb0a2a38f30a3f43fbfae98c85b132702df20cb3`, chain 1)
- PoolFactory (`0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1`, chain 1)
- Vesting (`0xc01e7dcc6cca1af57a5099f1dcab90084408bfdb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 8 of 32 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 32
- Raw deployments: 46
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BurnableVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee6667d18f161a915a7267abca886f995eb1cff` | ⚠️ Unaudited |
| EscrowedIlluvium2 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387336 | `0x7e77dcb127f99ece88230a64db8d595f31f1b068` | ⚠️ Unaudited |
| IlluvinatiCouncil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebd9bd588f044cbdec8f3cf1e80277a7a52dc69` | ⚠️ Unaudited |
| IlluviumCorePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25121eddf746c884dde4619b573a7b10714e2a36`; ethereum `0x8b4d8443a0229349a9892d4f7cbe89ef5f843f72` | ⚠️ Unaudited |
| IlluviumERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-387335 | `0x767fe9edc9e0df98e07454847909b5e959d7ca0e` | ⚠️ Unaudited |
| IlluviumIDOCollection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4222b2a98daa443c6a0a761300d7d6bfd9161e52` | ⚠️ Unaudited |
| IlluviumNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf`; ethereum `0xb901614d588ef8db45045ffbb2145e1c36cbf8b9` | ⚠️ Unaudited |
| ILVPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b72209b2514940606910dd9ad309ee1e5e201c6` | ⚠️ Unaudited |
| ILVPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387356 | 2 deployments: ethereum `0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d`; ethereum `0xdb0a2a38f30a3f43fbfae98c85b132702df20cb3` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa904f27b1de7e82ba587677ee1f5af0ad0a8c79a` | ⚠️ Unaudited |
| MockedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1b1c05b3d00e5803c1c502d9175f3e39fe5a8c6` | ⚠️ Unaudited |
| NFTClaimManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c` | ⚠️ Unaudited |
| NFTDisperser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c` | ⚠️ Unaudited |
| PoolFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387352 | 2 deployments: ethereum `0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1`; ethereum `0x9dca38d109c6c69790fb70bcfdeaf27c4394597c` | ⚠️ Unaudited |
| PreIlluvium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xabdef64e297a6dd56e0efa3005972da47d78f11f`; ethereum `0xc657f5697a952b33cd0598828847fdc5be536d36` | ⚠️ Unaudited |
| SushiLPPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387350 | `0xe98477bdc16126bb0877c6e3882e3edd72571cc2` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e1ce17f2641f24ae83637ab66a2cca9c378b9f` | ⚠️ Unaudited |
| Vesting | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-387354 | 2 deployments: ethereum `0x6bd2814426f9a6abaa427d2ad3fc898d2a57adc6`; ethereum `0xc01e7dcc6cca1af57a5099f1dcab90084408bfdb` | ⚠️ Unaudited |
| VotingIlluvium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x035dc7dd0e90de650bc8b94196a5419e33b08207`; ethereum `0x04da3f7e8289685d88ab0c73f9ea2de75421392c`; ethereum `0x19ac5036e66dee56c0afa73a7e50e87fc4413945`; ethereum `0x2e15eae33cb3e569638746e0cd3525a5c214b71b`; ethereum `0x487e58fe51af1e6fcb1c95aefdac68394a173032`; ethereum `0x5f04cae38f09c044101b95456fda38ba2c436418`; ethereum `0x98c7c18e1b1379fd9135ec82593c902891ca0c76`; ethereum `0xbf9a925c860367eca4e024683d078ad81c8ce17e`; ethereum `0xe8d3c555d4f984a81bf9ab43cbd4e71acd73fb00` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088823fa2c0ceb120198d9e1006bf2596bcae7b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc5714cd3d8d47dd88e0e6450a9a2b4fb165c5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387337 | `0x800e48366b3dc4d93114246d52b98adb48ad83cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa305cd856e06905a5543dff5dc0c3ad0a9a3dc70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387338 | `0xaa2e727ba59b4fea24d0db4e49a392fdc3e8e778` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387339 | `0x0434d7084d98124092f994222823ef4ca0a332d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387340 | `0x0dd04f85a078e0c89b8406e9e6aa0c51640b3c7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387341 | `0x2192f21559a5c93c9468fadd93b61ecb1dfd61dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387342 | `0x5afa292d1661a43202f3e59f7f09b5759ed524b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387343 | `0xc8eb436fafe1989a0fa73240569e4b14bf694615` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387344 | `0xde9a2e15925955fb98c31ea2384e3e2686a302c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387346 | `0xe71ddccb77ae32b98c19165da8715c73dc38fc7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387348 | `0xf444a3355e4624f7b2c532557420e9c01ced499f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 29
- Live contracts: 6
- Unknown liveness contracts: 23
- Source-verified contracts: 26
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=4, contamination review=2, source verified unclassified=20, unverified unclassified=3

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ERC1967Proxy<br>`0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| candidate review | ERC1967Proxy<br>`0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| candidate review | ERC1967Proxy<br>`0x9dca38d109c6c69790fb70bcfdeaf27c4394597c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| candidate review | ERC1967Proxy<br>`0xe98477bdc16126bb0877c6e3882e3edd72571cc2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| contamination review | MockedPool<br>`0xa1b1c05b3d00e5803c1c502d9175f3e39fe5a8c6` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| contamination review | NFTDisperser<br>`0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | BurnableVesting<br>`0x4ee6667d18f161a915a7267abca886f995eb1cff` | non_address_book | unknown | unknown | verified | n/a | `0x5c2adad7c6daa2c1fac6d291cf7fc60241dda1a1` |
| source verified unclassified | IlluvinatiCouncil<br>`0xaebd9bd588f044cbdec8f3cf1e80277a7a52dc69` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | IlluviumNFT<br>`0xb901614d588ef8db45045ffbb2145e1c36cbf8b9` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | ILVPool<br>`0x6b72209b2514940606910dd9ad309ee1e5e201c6` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | ILVPool<br>`0xdb0a2a38f30a3f43fbfae98c85b132702df20cb3` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | MerkleDistributor<br>`0xa904f27b1de7e82ba587677ee1f5af0ad0a8c79a` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | NFTClaimManager<br>`0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | PoolFactory<br>`0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | PreIlluvium<br>`0xabdef64e297a6dd56e0efa3005972da47d78f11f` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | PreIlluvium<br>`0xc657f5697a952b33cd0598828847fdc5be536d36` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | Vesting<br>`0xc01e7dcc6cca1af57a5099f1dcab90084408bfdb` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x5c2adad7c6daa2c1fac6d291cf7fc60241dda1a1` |
| source verified unclassified | VotingIlluvium<br>`0x035dc7dd0e90de650bc8b94196a5419e33b08207` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | VotingIlluvium<br>`0x04da3f7e8289685d88ab0c73f9ea2de75421392c` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | VotingIlluvium<br>`0x19ac5036e66dee56c0afa73a7e50e87fc4413945` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | VotingIlluvium<br>`0x2e15eae33cb3e569638746e0cd3525a5c214b71b` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | VotingIlluvium<br>`0x487e58fe51af1e6fcb1c95aefdac68394a173032` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | VotingIlluvium<br>`0x5f04cae38f09c044101b95456fda38ba2c436418` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | VotingIlluvium<br>`0x98c7c18e1b1379fd9135ec82593c902891ca0c76` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | VotingIlluvium<br>`0xbf9a925c860367eca4e024683d078ad81c8ce17e` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | VotingIlluvium<br>`0xe8d3c555d4f984a81bf9ab43cbd4e71acd73fb00` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| unverified unclassified | UnnamedContract<br>`0x088823fa2c0ceb120198d9e1006bf2596bcae7b8` | non_address_book | unknown | unknown | unverified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| unverified unclassified | UnnamedContract<br>`0x7bc5714cd3d8d47dd88e0e6450a9a2b4fb165c5b` | non_address_book | unknown | unknown | unverified | n/a | `0x6e1d0c2eb0185f4884fcfa7d40afdbc7a81181d0` |
| unverified unclassified | UnnamedContract<br>`0xa305cd856e06905a5543dff5dc0c3ad0a9a3dc70` | non_address_book | unknown | unknown | unverified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [0xmacro.com/library/audits/illuvium-1](https://0xmacro.com/library/audits/illuvium-1) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20729] 0xmacro.com/library/audits/illuvium-1 — no match: Only one contract, Fuel.sol, is explicitly listed in the scope section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 0xmacro.com/library/audits/illuvium-1 | Fuel | unmatched — not counted | — | listed in scope table with SHA256 hash | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7e77dcb127f99ece88230a64db8d595f31f1b068` | EscrowedIlluvium2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x767fe9edc9e0df98e07454847909b5e959d7ca0e` | IlluviumERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d` | ILVPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1` | PoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6bd2814426f9a6abaa427d2ad3fc898d2a57adc6` | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20729] 0xmacro.com/library/audits/illuvium-1

Fork inheritance lineage and inherited audits are included when available.
