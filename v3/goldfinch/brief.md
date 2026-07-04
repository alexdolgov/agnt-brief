# Agentic Audit Brief: Goldfinch

## Project Overview

- Project: Goldfinch (`goldfinch`)
- Website: [https://goldfinch.finance](https://goldfinch.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:56.321Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 47 unique implementations (47 raw deployments)
- DeFi Llama TVL: $1,460,568.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA Lending. Structurally: 46 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 8 common project-authored base contract(s) (base, ozpausableupgradeable, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 47; live-surface contracts included: 47 (47 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/47 (0.0%)
- Deployed-live implementations: 47 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 47
- Raw deployments: 47
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControl | unknown | ethereum | n/a | [`0x134d8e...240fe6`](./contracts/ethereum-1/0x134d8e5abc0da236967a4f95e7360db8ad240fe6/) | ⚠️ Unaudited |
| Accountant | unknown | ethereum | n/a | [`0x3483db...4d0bfa`](./contracts/ethereum-1/0x3483db484b213786990185eb6347ec49904d0bfa/) | ⚠️ Unaudited |
| BackerMerkleDirectDistributor | unknown | ethereum | n/a | [`0x3188c8...695ecb`](./contracts/ethereum-1/0x3188c8a33845c892c1def1601261c00e19695ecb/) | ⚠️ Unaudited |
| BackerMerkleDistributor | unknown | ethereum | n/a | [`0xc442b5...dd0f82`](./contracts/ethereum-1/0xc442b55a082f7d5f8d8dcda3d0eff50f47dd0f82/) | ⚠️ Unaudited |
| BackerRewards | unknown | ethereum | n/a | [`0x36cbf9...a7863a`](./contracts/ethereum-1/0x36cbf97602e1ae2d3b0cd69bd5d100ae59a7863a/) | ⚠️ Unaudited |
| Borrower | unknown | ethereum | n/a | [`0xaae260...fd4b07`](./contracts/ethereum-1/0xaae260743e9937d966f2776ba2148186cffd4b07/) | ⚠️ Unaudited |
| CallableLoan | unknown | ethereum | n/a | [`0x384fb6...ef5205`](./contracts/ethereum-1/0x384fb62adb60b18f561f83ebb31e84333def5205/) | ⚠️ Unaudited |
| CallableLoanImplementationRepository | unknown | ethereum | n/a | [`0x775195...de81de`](./contracts/ethereum-1/0x7751958c0279645ce4c4072972d18fceefde81de/) | ⚠️ Unaudited |
| CapitalLedger | unknown | ethereum | n/a | [`0x94e0bc...7c5029`](./contracts/ethereum-1/0x94e0bc3aeda93434b848c49752cfc58b1e7c5029/) | ⚠️ Unaudited |
| CommunityRewards | unknown | ethereum | n/a | [`0x0cd73c...af3460`](./contracts/ethereum-1/0x0cd73c18c085deb287257ed2307ec713e9af3460/) | ⚠️ Unaudited |
| ConfigOptions | unknown | ethereum | n/a | [`0x19bfbf...066b71`](./contracts/ethereum-1/0x19bfbf921d48279391c7445303d89cb4a6066b71/) | ⚠️ Unaudited |
| Context | unknown | ethereum | n/a | [`0x8fd960...8436c5`](./contracts/ethereum-1/0x8fd96019d28dc407b6b37732a7d91562248436c5/) | ⚠️ Unaudited |
| CreditDesk | unknown | ethereum | n/a | [`0x8a6b0e...adfafc`](./contracts/ethereum-1/0x8a6b0e5ae9441141253203d078131668c0adfafc/) | ⚠️ Unaudited |
| CreditLine | unknown | ethereum | n/a | [`0x4df1e7...d995d8`](./contracts/ethereum-1/0x4df1e7ffb382f79736ca565f378f783678d995d8/) | ⚠️ Unaudited |
| CreditLineFactory | unknown | ethereum | n/a | [`0x3060f3...33062c`](./contracts/ethereum-1/0x3060f3bea817b8baa8d9c780525d43e83333062c/) | ⚠️ Unaudited |
| DynamicLeverageRatioStrategy | unknown | ethereum | n/a | [`0x97b3f9...f0f253`](./contracts/ethereum-1/0x97b3f9653336ab5388a0ef5f7cfe2bd84cf0f253/) | ⚠️ Unaudited |
| EIP173Proxy | unknown | ethereum | n/a | [`0x02cd34...23325d`](./contracts/ethereum-1/0x02cd340cea4c79323cbb8c21b946c1dcab23325d/) | ⚠️ Unaudited |
| ERC20Splitter | unknown | ethereum | n/a | [`0xe2da0c...0718a4`](./contracts/ethereum-1/0xe2da0cf4dcee902f74d4949145ea2ec24f0718a4/) | ⚠️ Unaudited |
| Fidu | unknown | ethereum | n/a | [`0x090868...dd1748`](./contracts/ethereum-1/0x0908687c269646e47bfc6891a0903cacf7dd1748/) | ⚠️ Unaudited |
| FixedLeverageRatioStrategy | unknown | ethereum | n/a | [`0x71cff4...dc901a`](./contracts/ethereum-1/0x71cff40a44051c6e6311413a728ee7633ddc901a/) | ⚠️ Unaudited |
| GFI | unknown | ethereum | n/a | [`0xdab396...008d2b`](./contracts/ethereum-1/0xdab396ccf3d84cf2d07c4454e10c8a6f5b008d2b/) | ⚠️ Unaudited |
| GFILedger | unknown | ethereum | n/a | [`0x8d0c4e...c135e0`](./contracts/ethereum-1/0x8d0c4e704be667e4320b81f6dd35addad3c135e0/) | ⚠️ Unaudited |
| Go | unknown | ethereum | n/a | [`0x063751...fe30c9`](./contracts/ethereum-1/0x063751ff186bfa02779c9fa1a467b68e04fe30c9/) | ⚠️ Unaudited |
| GoldfinchConfig | unknown | ethereum | n/a | [`0x076a0d...45a273`](./contracts/ethereum-1/0x076a0d827647bc6a04ee161c9d3d21a32b45a273/) | ⚠️ Unaudited |
| GoldfinchFactory | unknown | ethereum | n/a | [`0x7954d6...9c063e`](./contracts/ethereum-1/0x7954d6fb7aaa378a50f79758c2a576b7739c063e/) | ⚠️ Unaudited |
| GoldfinchPrime | unknown | ethereum | n/a | [`0x3b29d7...5c2bcd`](./contracts/ethereum-1/0x3b29d7ed8dcea0436537648cbe6aa0b9eb5c2bcd/) | ⚠️ Unaudited |
| MembershipCollector | unknown | ethereum | n/a | [`0x49eab7...989d63`](./contracts/ethereum-1/0x49eab7ff877201b6e9b20b535f0c647dbb989d63/) | ⚠️ Unaudited |
| MembershipDirector | unknown | ethereum | n/a | [`0x7e9140...2ced21`](./contracts/ethereum-1/0x7e9140557f988d43c76cadab2fd392f9172ced21/) | ⚠️ Unaudited |
| MembershipLedger | unknown | ethereum | n/a | [`0x408332...90476c`](./contracts/ethereum-1/0x4083328fa5f3ab0b5c4bf8a2919e47b35590476c/) | ⚠️ Unaudited |
| MembershipOrchestrator | unknown | ethereum | n/a | [`0x0296fd...4ed403`](./contracts/ethereum-1/0x0296fd870c7419267558868d14eff6443c4ed403/) | ⚠️ Unaudited |
| MembershipVault | unknown | ethereum | n/a | [`0x375b90...bf9c18`](./contracts/ethereum-1/0x375b906b25e00bdd43017400cd4cefb36fbf9c18/) | ⚠️ Unaudited |
| MerkleDirectDistributor | unknown | ethereum | n/a | [`0x7766e8...9a8c22`](./contracts/ethereum-1/0x7766e86584069cf5d1223323d89486e95d9a8c22/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x0f306e...972d9a`](./contracts/ethereum-1/0x0f306e3f6b2d5ae820d33c284659b29847972d9a/) | ⚠️ Unaudited |
| MigratedTranchedPool | unknown | ethereum | n/a | [`0x187e45...423869`](./contracts/ethereum-1/0x187e45ebaf88f63ebf0319deae51df8955423869/) | ⚠️ Unaudited |
| MonthlyScheduleRepo | unknown | ethereum | n/a | [`0x9c7423...fb947f`](./contracts/ethereum-1/0x9c74239a7a8a3969f4e0fdb3e592d64a60fb947f/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | [`0x47a0a9...06a814`](./contracts/ethereum-1/0x47a0a9dde841c8dee7b6773a3408ace9d006a814/) | ⚠️ Unaudited |
| PoolTokens | unknown | ethereum | n/a | [`0x576866...bd01df`](./contracts/ethereum-1/0x57686612c601cb5213b01aa8e80afeb24bbd01df/) | ⚠️ Unaudited |
| Router | unknown | ethereum | n/a | [`0x0a540c...ecffe2`](./contracts/ethereum-1/0x0a540cf99fb24926c6efe88eef141d7c9aecffe2/) | ⚠️ Unaudited |
| SeniorPool | unknown | ethereum | n/a | [`0x422bf4...d9beb7`](./contracts/ethereum-1/0x422bf428c9777c78cdb9a6188837f79466d9beb7/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x33a36b...8da1b2`](./contracts/ethereum-1/0x33a36b543218898169859409f95e0c806a8da1b2/) | ⚠️ Unaudited |
| TestForwarder | unknown | ethereum | n/a | [`0x76c3f1...4a77fe`](./contracts/ethereum-1/0x76c3f166d086e6cc213fce0391e5087d3f4a77fe/) | ⚠️ Unaudited |
| TranchedPool | unknown | ethereum | n/a | [`0x1bb013...56643e`](./contracts/ethereum-1/0x1bb013b66ce89e2db9acf079f37670311356643e/) | ⚠️ Unaudited |
| TranchedPoolImplementationRepository | unknown | ethereum | n/a | [`0x84b43e...6f943a`](./contracts/ethereum-1/0x84b43ea76a7f18b1683db57c93cb34c42e6f943a/) | ⚠️ Unaudited |
| TranchingLogic | unknown | ethereum | n/a | [`0x01bfa2...70b649`](./contracts/ethereum-1/0x01bfa2248a6c1aa65e7032951d368241ff70b649/) | ⚠️ Unaudited |
| UniqueIdentity | unknown | ethereum | n/a | [`0x9da94d...95717c`](./contracts/ethereum-1/0x9da94db465c185e7de453c5db6bdcc314395717c/) | ⚠️ Unaudited |
| V2Migrator | unknown | ethereum | n/a | [`0xd44fe8...d506a5`](./contracts/ethereum-1/0xd44fe8ec5d6cfb96a06e02e17bc109ab98d506a5/) | ⚠️ Unaudited |
| Zapper | unknown | ethereum | n/a | [`0xd7b528...91a521`](./contracts/ethereum-1/0xd7b528e749078dadee2f0071cde6fca4e191a521/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [dev.goldfinch.finance/docs/security/audit-reports](https://dev.goldfinch.finance/docs/security/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20718] dev.goldfinch.finance/docs/security/audit-reports

Fork inheritance lineage and inherited audits are included when available.
