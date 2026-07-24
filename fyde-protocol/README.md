# Agentic Audit Brief: Fyde Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Fyde Protocol (`fyde-protocol`)
- Website: [http://www.fyde.fi](http://www.fyde.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 34 unique implementations (50 raw deployments)
- Coverage basis: 6/10 confirmed own live verified implementations (60.0%); conservative 60.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $241,707.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Fyde Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across ethereum. Structural roles: 8 unclassified, 3 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: unclassified (8), core (3), supporting (1)
- Contract kinds: contract (11), abstract (1)
- Detected standards: erc20permit (2), erc20 (1), erc4626 (1)
- Frameworks: openzeppelin (2), solmate (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xb3c25a305885681e1105d563b22188121b39f7f8`, chain 1)
- Fyde (`0x87cc45fff5c0933bb6af6bae7fc013b7ec7df2ee`, chain 1)
- GnosisSafeProxy (`0x24b3b50c1b87b549374876d31f919e5e6eeba999`, chain 1)
- RelayerV2 (`0x6830c61df103946b63c786e63222c59677f32078`, chain 1)
- sTRSY (`0xe11df8c0e9b5697bd31515d0fc5f4c9bd71566b9`, chain 1)
- YieldStrategy (`0x569871ae260d85c5981374bba2b2353a3e1cf59c`, chain 1)
- YieldStrategy (`0xa11d02c5ac034786deb0a7ad1dfcfacc0e6de055`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/10 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 11 of 34 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/31
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 34
- Raw deployments: 50
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 5 | 16.1% | 2023-09 |
| unknown | Tier 2 | 3 | 9.7% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Fyde | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240582 | `0x87cc45fff5c0933bb6af6bae7fc013b7ec7df2ee` | ✅ Audited |
| OracleModule | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240579 | `0x05198327206123e89c24abd9a482316449bd2aee` | ✅ Audited |
| RelayerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240581 | `0x6830c61df103946b63c786e63222c59677f32078` | ✅ Audited |
| sTRSY | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240585 | `0xe11df8c0e9b5697bd31515d0fc5f4c9bd71566b9` | ✅ Audited |
| TaxModule | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240586 | `0xf6bcf96f5bace0241303ee0819e2e009a7f1eb40` | ✅ Audited |
| UserProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240588 | 2 deployments: ethereum `0x68bb55f0bc0b9a37cd4afb5ec4794fc61651c5a7`; ethereum `0xc6f50903a058f3807111619bd4b24ca64b8239e1` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DCAVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5432d8ab42ba82e1aab329e7ca730334f4091a8` | ⚠️ Unaudited |
| DepositEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63ec950633eb85797477166084ad0a7121910470` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b911286e63c508345ba581d75928ece4a0f543` | ⚠️ Unaudited |
| Fyde | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde736837c7c275a952a52ee11face88adde6711` | ⚠️ Unaudited |
| FydeOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72527fec7d84764c405f28bd7e00e2693bbcb519` | ⚠️ Unaudited |
| FydeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8a462e6a0051d006e33152fbeadfb9a14198de30`; ethereum `0xa736cd2b05f3e343027a05330595606b8a6b0cd8` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-240589 | `0x24b3b50c1b87b549374876d31f919e5e6eeba999` | ⚠️ Unaudited |
| OracleModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x9b122361e8708be33b785e44fce4d6ca86ab6c5a`; ethereum `0xa44adf41a308a1d63786e6abaed9ac64f24234ca`; ethereum `0xd7cb5e50775d8583e8edb8993619227af81bcdf6`; ethereum `0xde0d6b162d7751fa09453debfd4df96a72a6f83d`; ethereum `0xe8e40fd4ddab26b44b1fb2d6d73833cb0a33b736` | ⚠️ Unaudited |
| PendlePrincipalToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c085195437738d73d75dc64bc5a3e098b7f93b1` | ⚠️ Unaudited |
| PooledDepositEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x647741808e7c57ae06edbfbc81e4a22c4808219c`; ethereum `0x9da7923224ed433c8f1047eb8eca80cce98debfc`; ethereum `0xcdeb119b9b312434322fe8e5b75a93b35f362abf`; ethereum `0xddc55e390841021b0e99179322f66d3a17e070e1` | ⚠️ Unaudited |
| Relayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94194de310b99d3c8a5b8c0768cfce7aef81d9be` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99628825156746fbabc2819d202ee30ecb3c71a6` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240580 | `0x19d9d821f6a2ed80a0a9ae06e5b12edbdd5adf6a` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xce1414ae7040ba65611533df0c23db0bacd15d90`; ethereum `0xd346b2454e7f957fe779efcca6af4d54f1e8b3dc` | ⚠️ Unaudited |
| StakingETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x38abe896c350f9dedef4f676071bdd69893aabda`; ethereum `0x3f69f62e25441cf72e362508f4d6711d53b05341`; ethereum `0xb01cc1446b50b1175063356c150bede798c4c7bc` | ⚠️ Unaudited |
| StakingTRSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7441c76d85d7ab43eacd076d37b0775f5c32f7` | ⚠️ Unaudited |
| sTRSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f483d7a46d8d74eb176cf43687dc9dc5f55460` | ⚠️ Unaudited |
| TaxModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35afe52bddedbc9bbe53af119568264da00a70d3`; ethereum `0x9edd8ea842be2284b755e78c43245cd2ecf53322` | ⚠️ Unaudited |
| TrsyFeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e48b226b49797e50892bfb0feafb9c503eb9687` | ⚠️ Unaudited |
| VestingDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3204074ad7555cf6149bc21441313611b6418045` | ⚠️ Unaudited |
| VoteEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fa0b27ba2f951a68fa7a097f6c6ccecad93c9ed`; ethereum `0x9b369202ff147b54ea7092bc94425c781094dbde` | ⚠️ Unaudited |
| WithdrawETH | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14fba2a6c5a4d9ceb73956ac0a4a18ca8f341fb3` | ⚠️ Unaudited |
| YieldStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x53be800570860c7fbeb438cacabd1de8fabf9efb`; ethereum `0xc1bbad6d9eb5092b896158af62375dabedc7f8cc` | ⚠️ Unaudited |
| YieldStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240587 | 2 deployments: ethereum `0x569871ae260d85c5981374bba2b2353a3e1cf59c`; ethereum `0xb615a7e4d1ed426470ac2df14f3153fa2dccc3ba` | ⚠️ Unaudited |
| YieldStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240583 | `0xa11d02c5ac034786deb0a7ad1dfcfacc0e6de055` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fd02fa9641fa2d2d5acd9e1c9b6b3343d1d6fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2bf5935f16ea7352888bff2ed8eb935b3eab295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240584 | `0xb3c25a305885681e1105d563b22188121b39f7f8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 38
- Live contracts: 8
- Unknown liveness contracts: 30
- Source-verified contracts: 36
- Currently scope-matched contracts retained as-is: 3
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=3, candidate review=20, contamination review=7, exact address book overlap=1, source verified unclassified=5, unverified unclassified=2

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | currently scope matched | OracleModule<br>`0x05198327206123e89c24abd9a482316449bd2aee` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | currently scope matched | TaxModule<br>`0xf6bcf96f5bace0241303ee0819e2e009a7f1eb40` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | candidate review | OracleModule<br>`0xd7cb5e50775d8583e8edb8993619227af81bcdf6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | candidate review | OracleModule<br>`0xde0d6b162d7751fa09453debfd4df96a72a6f83d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | candidate review | RewardsDistributor<br>`0x19d9d821f6a2ed80a0a9ae06e5b12edbdd5adf6a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | candidate review | RewardsDistributor<br>`0xce1414ae7040ba65611533df0c23db0bacd15d90` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | candidate review | sTRSY<br>`0x16f483d7a46d8d74eb176cf43687dc9dc5f55460` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | candidate review | TaxModule<br>`0x9edd8ea842be2284b755e78c43245cd2ecf53322` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | candidate review | YieldManager<br>`0xb615a7e4d1ed426470ac2df14f3153fa2dccc3ba` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | candidate review | YieldManager<br>`0xc1bbad6d9eb5092b896158af62375dabedc7f8cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | contamination review | DCAVault<br>`0xb5432d8ab42ba82e1aab329e7ca730334f4091a8` | non_address_book | unknown | unknown | verified | n/a | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | contamination review | DepositEscrow<br>`0x63ec950633eb85797477166084ad0a7121910470` | non_address_book | unknown | unknown | verified | n/a | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | contamination review | YieldStrategy<br>`0x53be800570860c7fbeb438cacabd1de8fabf9efb` | non_address_book | unknown | unknown | verified | n/a | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | exact address book overlap | YieldStrategy<br>`0xa11d02c5ac034786deb0a7ad1dfcfacc0e6de055` | project_anchor | unknown | live | verified | n/a | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | source verified unclassified | YieldStrategy<br>`0x569871ae260d85c5981374bba2b2353a3e1cf59c` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1593eb12e0763531674a66304a01d185d5c4c7ef` |
| ethereum | currently scope matched | GovernanceModule<br>`0xc6f50903a058f3807111619bd4b24ca64b8239e1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | ERC1967Proxy<br>`0x8a462e6a0051d006e33152fbeadfb9a14198de30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | Fyde<br>`0xdde736837c7c275a952a52ee11face88adde6711` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | OracleModule<br>`0x9b122361e8708be33b785e44fce4d6ca86ab6c5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | OracleModule<br>`0xa44adf41a308a1d63786e6abaed9ac64f24234ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | OracleModule<br>`0xe8e40fd4ddab26b44b1fb2d6d73833cb0a33b736` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | PooledDepositEscrow<br>`0x9da7923224ed433c8f1047eb8eca80cce98debfc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | PooledDepositEscrow<br>`0xcdeb119b9b312434322fe8e5b75a93b35f362abf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | PooledDepositEscrow<br>`0xddc55e390841021b0e99179322f66d3a17e070e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | Relayer<br>`0x94194de310b99d3c8a5b8c0768cfce7aef81d9be` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | RewardsDistributor<br>`0xd346b2454e7f957fe779efcca6af4d54f1e8b3dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | TaxModule<br>`0x35afe52bddedbc9bbe53af119568264da00a70d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | candidate review | UserProxy<br>`0x68bb55f0bc0b9a37cd4afb5ec4794fc61651c5a7` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | contamination review | FeeDistributor<br>`0x41b911286e63c508345ba581d75928ece4a0f543` | non_address_book | unknown | unknown | verified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | contamination review | PooledDepositEscrow<br>`0x647741808e7c57ae06edbfbc81e4a22c4808219c` | non_address_book | unknown | unknown | verified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | contamination review | RewardDistributor<br>`0x99628825156746fbabc2819d202ee30ecb3c71a6` | non_address_book | unknown | unknown | verified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | contamination review | StakingETH<br>`0x38abe896c350f9dedef4f676071bdd69893aabda` | non_address_book | unknown | unknown | verified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | source verified unclassified | FydeToken<br>`0xa736cd2b05f3e343027a05330595606b8a6b0cd8` | non_address_book | unknown | unknown | verified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | source verified unclassified | StakingETH<br>`0x3f69f62e25441cf72e362508f4d6711d53b05341` | non_address_book | unknown | unknown | verified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | source verified unclassified | StakingETH<br>`0xb01cc1446b50b1175063356c150bede798c4c7bc` | non_address_book | unknown | unknown | verified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | source verified unclassified | VoteEscrow<br>`0x9b369202ff147b54ea7092bc94425c781094dbde` | non_address_book | unknown | unknown | verified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9fd02fa9641fa2d2d5acd9e1c9b6b3343d1d6fa6` | non_address_book | unknown | unknown | unverified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2bf5935f16ea7352888bff2ed8eb935b3eab295` | non_address_book | unknown | unknown | unverified | n/a | `0x2dda45bc3bc7e00a4a10cad1d4b1dbd2a7c6d4a9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://2610459056-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbQllaeunfO4BPaZU1ABc%2Fuploads%2FDrOUIAG2nAdc0Lf0RxD8%2FFyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | matched | 6 | 2 | 0 | 18 | high |
| [spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf](https://2610459056-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbQllaeunfO4BPaZU1ABc%2Fuploads%2FKXNIVvRuIB6ImuEIo7dt%2FFyde-security-review.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13176] spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf — matched: Scope section explicitly lists 24 smart contracts in scope. Audit date is the end date of the engagement (September 8, 2023).
- [13177] spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf — matched: Scope section explicitly lists 8 contracts: RelayerV2, TaxModule, OracleModule, QuarantineList, UniswapAdapter, ChainlinkAdapter, Ownable, AccessControl. Audit date is March 14th 2024 (end date of audit period).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Fyde | own contract | Fyde (selected) `0x87cc45fff5c0933bb6af6bae7fc013b7ec7df2ee` — deployed 2023-11-27 16:46:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | PooledDepositEscrow | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Relayer | own contract | RelayerV2 (selected) `0x6830c61df103946b63c786e63222c59677f32078` — deployed 2024-04-03 10:49:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | AddressRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | GovernanceAccess | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | ProtocolState | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | QuarantineList | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | RequestQueue | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Tax | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | TRSY | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | CloneFactory | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | GovernanceModule | own proxy deployment | GovernanceModule (proxy) (selected) `0xc6f50903a058f3807111619bd4b24ca64b8239e1` — deployed 2023-11-27 16:45:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | ProxyRouter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | sTRSY | own contract | sTRSY (selected) `0xe11df8c0e9b5697bd31515d0fc5f4c9bd71566b9` — deployed 2024-06-10 15:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | UserProxy | own proxy deployment | GovernanceModule (proxy) (selected) `0xc6f50903a058f3807111619bd4b24ca64b8239e1` — deployed 2023-11-27 16:45:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | OracleModule | own contract | OracleModule (selected) `0x05198327206123e89c24abd9a482316449bd2aee` — deployed 2024-06-10 15:19:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | ChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | UniswapAdapter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | BaseChecker | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | MathUtil | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | RelayerV2 | own contract | RelayerV2 (selected) `0x6830c61df103946b63c786e63222c59677f32078` — deployed 2024-04-03 10:49:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | TaxModule | own contract | TaxModule (selected) `0xf6bcf96f5bace0241303ee0819e2e009a7f1eb40` — deployed 2024-06-10 12:51:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | OracleModule | own contract | OracleModule (selected) `0x05198327206123e89c24abd9a482316449bd2aee` — deployed 2024-06-10 15:19:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | QuarantineList | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | UniswapAdapter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | ChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x19d9d821f6a2ed80a0a9ae06e5b12edbdd5adf6a` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x569871ae260d85c5981374bba2b2353a3e1cf59c` | YieldStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa11d02c5ac034786deb0a7ad1dfcfacc0e6de055` | YieldStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=8

Fork inheritance lineage and inherited audits are included when available.
