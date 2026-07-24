# Agentic Audit Brief: Paimon

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Paimon (`paimon`)
- Website: [https://paimon.finance/](https://paimon.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 109 unique implementations (109 raw deployments)
- Coverage basis: 1/6 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,743,320.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Paimon in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x05353dabf163fb2fec87f9e0f00f94eae4ac1631`, chain 56)
- ERC1967Proxy (`0x48e9a6846d9722599621af8a6af0f23b0db8184a`, chain 56)
- ERC1967Proxy (`0x6dc9a487bf8fd047e41ab336003ae6e4fe602646`, chain 56)
- ERC1967Proxy (`0x748560eaccd4c01fc29b3b5b72d3b8c85b2b5017`, chain 56)
- ERC1967Proxy (`0x8505c32631034a7ce8800239c08547e0434edad9`, chain 56)
- ERC1967Proxy (`0xea088af719f3238982823fa5ee1c1facb2e0e231`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/6 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 103 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 6 of 109 unique; 103 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 103
- Unique implementations: 109
- Raw deployments: 109
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 16.7% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PPT | unknown | project_anchor | own_supporting | 1 | bsc | unit-390509 | `0x8505c32631034a7ce8800239c08547e0434edad9` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EIP3643Token | unknown | project_anchor | own_supporting | 1 | bsc | unit-390508 | `0x6dc9a487bf8fd047e41ab336003ae6e4fe602646` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-390504 | `0x48e9a6846d9722599621af8a6af0f23b0db8184a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-390505 | `0x748560eaccd4c01fc29b3b5b72d3b8c85b2b5017` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-390510 | `0xea088af719f3238982823fa5ee1c1facb2e0e231` | ⚠️ Unaudited |
| ShadowERC20 | unknown | project_anchor | own_supporting | 1 | bsc | unit-390507 | `0x05353dabf163fb2fec87f9e0f00f94eae4ac1631` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02640f044134fe7c6a36c686e2931122a4f18528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05e249e674b13156de69e844c7257ab9f2ffed1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b5d2d51c6f04df48994226d0ef7b5af54197337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ce9d734aae1b7795ab66c0306eeae1a4b97705a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cf25bb2ac4b7b71c1a91585fe924eeba523e0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x131a4a3809a749061f82034b137b3e20f688c073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14258a9f73993ab364279117f6e7fe589970dd6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a68ee0b5995b334181db8f77c5bbb28f963c406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1aa62b502a33411c1db2277fc7b0e28393aa1aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b61099ffe3482ef98312282fa1824ddb29462e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1daec5eaa62581a77b610348bde55147691d59bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x234eb7b6c83420fe6cb80438e637c017c5603cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2573d3c585fd4821353def01e2fb69f3385f7a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c5ca309f9d8d3d2165a87e5f65d98a23995dd8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f5503a0d0f9aba32b82afbd7395d2096c7faa2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31e4b6baac22659986bc587742c9c800c863642a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x332438f0bf54fbfc23cb9bb1c0d3da96279c90ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33f20c1ce8e13933584cb2f9d6ba16b88f11a582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c26b08988d12765b7e6d9e5ab36b1b24071e799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d0d0b073fa87ec23ae5d0a5a60c067a3e95f504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d3a244bdb90c19680961645afc27312705da0fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41d9f98380d815b3c550b3684b702890c2ad6db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47a612f85acd8c38d938a3152d6f621f594fceb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cfa67e3c9868c7687dc82bb0e42a770698757f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d8095d98ecf04c8d552e423c2f9c5e39403ed38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50c828f52253b652b45334b7f618c50b9884125e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53721bc15faf724e2b4e9b0f9dfb5c45cbd60f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53ac64bbc9d0b9837221d1cfa8b44e10df7a294d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53cf4cac36fb31124e0481a28434fef8f6388dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55e1944c0fa2ab059ed11f395d58ed170d39e4c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56092d02989afb7f985b0da509b5ce129074972f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x567e184a650dd29f76afb2e81e0b1065a0fc55cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56813e49ddc291eea0d4807cbc5b6752371d1797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56d2f19d5cf0275fb5107a6f3cb451a56aaac0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x598770ee4ad7d298f4767eeae2fb9c0d23d6d38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b7e1da1ef9c1dd2bcc1a8d508334e118bffa48d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61dbaafadba3dd6f6b26a14b9ab83fcd798c419a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b752f021749d8d82ce6262adaaf093cfaea3034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bfc2bf728e005cbae3d0d288d69441ee5ea2e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c3a490a5c7da7c0513ef3ab7a7fb4cc3d0561a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f5170956132588e9b2844478f1ff1b387573a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70def0167933f677a83e9d3f829a4bf11f20d5ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73292fc557f8ab96670c79d0734969caf004f4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73f42b0d657785fe844e3bf486fe1e15ffe13514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74186773e43525d81188860286f42b5660ce57e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x772d0e0f26074c1f4c74e98c111e3c80511aab6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x792bce19306cd3434e67b57802b1150872447903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a921e19331e42efafd36ca7af596f0d509caaa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ddef360f3c2db4cc41c3967984fefa2598cc9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eebec74f831717b2aa916be854ba395af7c2878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x853de8ab72035a57735518ba93dd1ba9caf96c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x866ad10085f6590a9ab09f94b0e8a4afe9148eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8771d29532a23c10fdfc0585cc1ef5c16a58f07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87eba9549a188192f4e0050f2d07993fe3a3f9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8de938126f5d212672c59a15a259fe763e4ca5a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e477e4ecbf6e39651f29a973a2579c23f4d9555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96f3810d481f7461da77e19f88b8245f9bc71de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ac043b68a1378f38873a704e4c270cc6dbfd58b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c550c95b16bf0f4320a26aae6f783e224603401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f7ecde85815f3b616c25a54d181f8766c869a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5189f22f8936193670bccdd1f63531f0a046f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6498eb0f478c8691e8b12de9dfa6ff01fb822d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaafc694ceb998575c3982bbeedea1acb4165bab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0aebe1b26fee15e2925303fbb2688d7fa5df451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0b49355d0a9c2c115a433263e712357af36aa7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb26b50032c642d58e126c75b54db1841eba25c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb57a2327fac0547d4f9de7265e07c65e6e3261e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb78d182702701cf1abc5a7acd93fc2c67d43719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbac2f856fcbac35112bfbd187b6939e80da66344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe144c6382d0297ea23caaef637308ddd6dd5400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf482a9f0b00b0d5578dad23145e26097e25e080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc34dc8338982c8508b3eb1234842210de45075b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc437d6ed00c14b05740ebc2b4dcf5c3a50e6ff12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc44c06c54cdb16913c3105e62489b4bdc6c9ce2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaba8d119ed05f18ca2ef79f69d8efdc1a4e5386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcddf65a13c7cce92f3b16f958bafba5d61a73ac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd308515598fc9d8a0a6d70b428a11a6fbb57f1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd614a6fe8c35ac9af4f59cd14849877179cdcdb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9312a3fa2ad5cbea2c2a36124c72f30025acac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb3ca4f0068c2e8c95995a2ed0f2e3858465bea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb5b2df4c2a7ac118a1de3cb9d13ed5acff01c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc6d4888e217db76732d3bdcab6f5e9dde0454c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfcd173f32b6428750832da26291e15f4355baeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4eeba287494e694dff63d7723b0a046506c8910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7347fd67a84bedc4c62b14fcbf533e645e4212b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed94d50bc6b9d38b638ac9623a52a48f49a87e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedfa32e44e5804629068f82b46286e70fccd2a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef1ca27c4d52f1bc5b9d408e5037a0a446633477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefcd9d1d663d411c64800dea040d6db56db26527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0a1482f74fb481090b54c4bf9387de4170cc67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf17ed3e8fae1b7b6f77c5ab1ee057db2cf133193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3a17a5362b6f5b2bcb1ae0c0de86b70e1ae4a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4b99e34f1b35a50a6d65a1265f047343b6e39e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5c644810b355eb68bb72f78d8795ee3727bda76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6a372d813a9c256b482a3f1695699f42fe29c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf726dd110b9580612fb7ed93791409e526aa29bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8dfe25c8c565e057420716f0d2b2905ef8f5227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf91fad98294624666fa3ede0f9ca4fc4f14e3385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa94d83812ef22189c1b7cb3c954b11ec824a8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb577d5ba8ac3e834d7a6abeb813993a196a7c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc82563844b2601b7bedd80d0c867a3f7cec29f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdae34cd326962586ca35ceb376b9b308084c25b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdd69a7ca52feb037c5629bc0ab540ab25afefa2` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 103
- Live contracts: 0
- Unknown liveness contracts: 103
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=103

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x02640f044134fe7c6a36c686e2931122a4f18528` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x05e249e674b13156de69e844c7257ab9f2ffed1a` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0b5d2d51c6f04df48994226d0ef7b5af54197337` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ce9d734aae1b7795ab66c0306eeae1a4b97705a` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0cf25bb2ac4b7b71c1a91585fe924eeba523e0aa` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x131a4a3809a749061f82034b137b3e20f688c073` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x14258a9f73993ab364279117f6e7fe589970dd6c` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1a68ee0b5995b334181db8f77c5bbb28f963c406` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1aa62b502a33411c1db2277fc7b0e28393aa1aa9` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1b61099ffe3482ef98312282fa1824ddb29462e1` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1daec5eaa62581a77b610348bde55147691d59bb` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x234eb7b6c83420fe6cb80438e637c017c5603cd6` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2573d3c585fd4821353def01e2fb69f3385f7a59` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c5ca309f9d8d3d2165a87e5f65d98a23995dd8a` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2f5503a0d0f9aba32b82afbd7395d2096c7faa2d` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x31e4b6baac22659986bc587742c9c800c863642a` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x332438f0bf54fbfc23cb9bb1c0d3da96279c90ac` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x33f20c1ce8e13933584cb2f9d6ba16b88f11a582` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3c26b08988d12765b7e6d9e5ab36b1b24071e799` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d0d0b073fa87ec23ae5d0a5a60c067a3e95f504` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d3a244bdb90c19680961645afc27312705da0fa` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x41d9f98380d815b3c550b3684b702890c2ad6db3` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47a612f85acd8c38d938a3152d6f621f594fceb0` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4cfa67e3c9868c7687dc82bb0e42a770698757f6` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d8095d98ecf04c8d552e423c2f9c5e39403ed38` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x50c828f52253b652b45334b7f618c50b9884125e` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x53721bc15faf724e2b4e9b0f9dfb5c45cbd60f45` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x53ac64bbc9d0b9837221d1cfa8b44e10df7a294d` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x53cf4cac36fb31124e0481a28434fef8f6388dd6` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x55e1944c0fa2ab059ed11f395d58ed170d39e4c9` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x56092d02989afb7f985b0da509b5ce129074972f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x567e184a650dd29f76afb2e81e0b1065a0fc55cb` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x56813e49ddc291eea0d4807cbc5b6752371d1797` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x56d2f19d5cf0275fb5107a6f3cb451a56aaac0f7` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x598770ee4ad7d298f4767eeae2fb9c0d23d6d38d` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b7e1da1ef9c1dd2bcc1a8d508334e118bffa48d` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x61dbaafadba3dd6f6b26a14b9ab83fcd798c419a` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b752f021749d8d82ce6262adaaf093cfaea3034` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6bfc2bf728e005cbae3d0d288d69441ee5ea2e81` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6c3a490a5c7da7c0513ef3ab7a7fb4cc3d0561a1` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6f5170956132588e9b2844478f1ff1b387573a3d` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x70def0167933f677a83e9d3f829a4bf11f20d5ce` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x73292fc557f8ab96670c79d0734969caf004f4ad` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x73f42b0d657785fe844e3bf486fe1e15ffe13514` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x74186773e43525d81188860286f42b5660ce57e5` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x772d0e0f26074c1f4c74e98c111e3c80511aab6c` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x792bce19306cd3434e67b57802b1150872447903` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a921e19331e42efafd36ca7af596f0d509caaa7` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7ddef360f3c2db4cc41c3967984fefa2598cc9a6` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7eebec74f831717b2aa916be854ba395af7c2878` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x853de8ab72035a57735518ba93dd1ba9caf96c95` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x866ad10085f6590a9ab09f94b0e8a4afe9148eec` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8771d29532a23c10fdfc0585cc1ef5c16a58f07b` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x87eba9549a188192f4e0050f2d07993fe3a3f9bd` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8de938126f5d212672c59a15a259fe763e4ca5a8` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8e477e4ecbf6e39651f29a973a2579c23f4d9555` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x96f3810d481f7461da77e19f88b8245f9bc71de5` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9ac043b68a1378f38873a704e4c270cc6dbfd58b` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9c550c95b16bf0f4320a26aae6f783e224603401` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9f7ecde85815f3b616c25a54d181f8766c869a90` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa5189f22f8936193670bccdd1f63531f0a046f43` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6498eb0f478c8691e8b12de9dfa6ff01fb822d2` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaafc694ceb998575c3982bbeedea1acb4165bab3` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb0aebe1b26fee15e2925303fbb2688d7fa5df451` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb0b49355d0a9c2c115a433263e712357af36aa7f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb26b50032c642d58e126c75b54db1841eba25c74` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb57a2327fac0547d4f9de7265e07c65e6e3261e6` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb78d182702701cf1abc5a7acd93fc2c67d43719f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbac2f856fcbac35112bfbd187b6939e80da66344` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe144c6382d0297ea23caaef637308ddd6dd5400` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf482a9f0b00b0d5578dad23145e26097e25e080` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc34dc8338982c8508b3eb1234842210de45075b7` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc437d6ed00c14b05740ebc2b4dcf5c3a50e6ff12` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc44c06c54cdb16913c3105e62489b4bdc6c9ce2d` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcaba8d119ed05f18ca2ef79f69d8efdc1a4e5386` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcddf65a13c7cce92f3b16f958bafba5d61a73ac6` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd308515598fc9d8a0a6d70b428a11a6fbb57f1fa` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd614a6fe8c35ac9af4f59cd14849877179cdcdb9` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd9312a3fa2ad5cbea2c2a36124c72f30025acac7` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdb3ca4f0068c2e8c95995a2ed0f2e3858465bea3` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdb5b2df4c2a7ac118a1de3cb9d13ed5acff01c1f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdc6d4888e217db76732d3bdcab6f5e9dde0454c5` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdfcd173f32b6428750832da26291e15f4355baeb` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe4eeba287494e694dff63d7723b0a046506c8910` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe7347fd67a84bedc4c62b14fcbf533e645e4212b` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xed94d50bc6b9d38b638ac9623a52a48f49a87e02` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xedfa32e44e5804629068f82b46286e70fccd2a58` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xef1ca27c4d52f1bc5b9d408e5037a0a446633477` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xefcd9d1d663d411c64800dea040d6db56db26527` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf0a1482f74fb481090b54c4bf9387de4170cc67b` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf17ed3e8fae1b7b6f77c5ab1ee057db2cf133193` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf3a17a5362b6f5b2bcb1ae0c0de86b70e1ae4a53` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf4b99e34f1b35a50a6d65a1265f047343b6e39e7` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf5c644810b355eb68bb72f78d8795ee3727bda76` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf6a372d813a9c256b482a3f1695699f42fe29c24` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf726dd110b9580612fb7ed93791409e526aa29bf` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf8dfe25c8c565e057420716f0d2b2905ef8f5227` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf91fad98294624666fa3ede0f9ca4fc4f14e3385` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfa94d83812ef22189c1b7cb3c954b11ec824a8b0` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfb577d5ba8ac3e834d7a6abeb813993a196a7c20` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfc82563844b2601b7bedd80d0c867a3f7cec29f3` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfdae34cd326962586ca35ceb376b9b308084c25b` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfdd69a7ca52feb037c5629bc0ab540ab25afefa2` | non_address_book | unknown | unknown | unverified | n/a | `0xf3f8b4d853ca12966f15c1813993a9080451a781` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit-report-2026-01.pdf](https://github.com/Paimon-R-D/paimon-gitbook/blob/main/.gitbook/assets/audit-report-2026-01.pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13645] audit-report-2026-01.pdf — matched: Scope section lists 6 contracts: AssetController.sol, PPT.sol, PPTTypes.sol, RedemptionManager.sol, RedemptionVoucher.sol, IPPTContracts.sol. Audit date from cover page: 'CertiK Assessed on Jan 19th, 2026'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit-report-2026-01.pdf | AssetController | unmatched — not counted | — | listed in scope | no |
| audit-report-2026-01.pdf | PPT | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8505c32631034a7ce8800239c08547e0434edad9` — deployed 2026-01-22 10:56:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit-report-2026-01.pdf | PPTTypes | unmatched — not counted | — | listed in scope | no |
| audit-report-2026-01.pdf | RedemptionManager | unmatched — not counted | — | listed in scope | no |
| audit-report-2026-01.pdf | RedemptionVoucher | unmatched — not counted | — | listed in scope | no |
| audit-report-2026-01.pdf | IPPTContracts | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 109 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
