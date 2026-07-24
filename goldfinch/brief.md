# Agentic Audit Brief: Goldfinch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Goldfinch (`goldfinch`)
- Website: [https://goldfinch.finance](https://goldfinch.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, base-sepolia, chain-31337, ethereum
- Contract surface: 322 unique implementations (331 raw deployments)
- Coverage basis: 0/28 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,460,568.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Goldfinch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across base, base-sepolia, chain-31337, ethereum. Structural roles: 24 core, 4 supporting. 24 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: core (24), supporting (4)
- Contract kinds: contract (27), unclassified (1)
- Detected standards: erc165 (10), accesscontrol (9), erc1967proxy (9), ownable (9), pausable (9), erc20 (1)
- Frameworks: openzeppelin (18), openzeppelin-upgradeable (7), uniswap (1)
- Upgradeable-pattern rows: 24

## Fork Analysis

0 of 80 contracts are derived from known codebases. 80 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x100656cbb440d37a7880f4c5bd4ac5edcf411066`, chain 1)
- UnnamedContract (`0x18d53b6c4c76d5bcf9c1337b435dbca0fc74dc3e`, chain 1)
- UnnamedContract (`0x2cc8bf652401b044077803fc419e21118d545a61`, chain 1)
- UnnamedContract (`0x361212f99a653b20ab6f8bede07cff8deb5a5f28`, chain 1)
- UnnamedContract (`0x384860f14b39ccd9c89a73519c70cd5f5394d0a6`, chain 1)
- UnnamedContract (`0x3d0c92b90ab104b25e84ca659dba8fa2327cb8fe`, chain 1)
- UnnamedContract (`0x3d62ae39d4b14554f8257ed5c82377c35f454de0`, chain 1)
- UnnamedContract (`0x412d7d7087be4376da6fc5a869e5229e1379bd4c`, chain 1)
- UnnamedContract (`0x41bbc58d821c7f7a11737d12562796d5d911e7e0`, chain 1)
- UnnamedContract (`0x4e5d9b093986d864331d88e0a13a616e1d508838`, chain 1)
- UnnamedContract (`0x5ccfa5fec4db2543d3995dc5419a13b6e99ea7a1`, chain 1)
- UnnamedContract (`0x68008e79eee041529725dd519272376ce7e38830`, chain 1)
- UnnamedContract (`0x6a445e9f40e0b97c92d0b8a3366cef1d67f700bf`, chain 1)
- UnnamedContract (`0x6ce93728877396d43874efdd6345e8c251dfe008`, chain 1)
- UnnamedContract (`0x7bcb287059e871ca194474b3e538ade985efb6a7`, chain 1)
- UnnamedContract (`0x8481a6ebaf5c7dabc3f7e09e44a89531fd31f822`, chain 1)
- UnnamedContract (`0x84ac02474c4656c88d4e08fca63ff73070787c3d`, chain 1)
- UnnamedContract (`0x86db002dbbb64d67ef4b43c76c432bf5bcbf7197`, chain 1)
- UnnamedContract (`0x8783e23b3b04a26283c82c86cac85098dbc70657`, chain 1)
- UnnamedContract (`0x89288093dccfe11c235bb3a19c98891e8e4d2b44`, chain 1)
- UnnamedContract (`0x95afe022b4cddea983ec16cce028e8f4309384a8`, chain 1)
- UnnamedContract (`0x9789114f9516e1cd2a41fda5e9c17e984d31a22e`, chain 1)
- UnnamedContract (`0x9a16a929edc11d2691cb5fbc2bee2545878ae79b`, chain 1)
- UnnamedContract (`0xaa425f8bfe82cd18f634e2fe91e5ddeefd98fda1`, chain 1)
- UnnamedContract (`0xb01b315e32d1d9b5ce93e296d483e1f0aad39e75`, chain 1)
- UnnamedContract (`0xb7bee8985cf7c1dbb35425c804199a51a5abe9c5`, chain 1)
- UnnamedContract (`0xba0439088dc1e75f58e0a7c107627942c15cbb41`, chain 1)
- UnnamedContract (`0xba7b8e4ae02c33aff14e472856259ddc46b6dc21`, chain 1)
- UnnamedContract (`0xbc1081885da00404bd0108b70ec5ac0dbe98a077`, chain 1)
- UnnamedContract (`0xbd431e6acf024c216b7ae0a1dc67d448ec628ec5`, chain 1)
- UnnamedContract (`0xc35c28de1ec0340a2e39514e6b7a701ff542b8ed`, chain 1)
- UnnamedContract (`0xc84d4a45d1d7eb307bbdea94b282bee9892bd523`, chain 1)
- UnnamedContract (`0xd16bc944bf20c86c4ed47ce1a330a18538674c83`, chain 1)
- UnnamedContract (`0xd1a2de34187008f908a291992ee4f35dd3caa00e`, chain 1)
- UnnamedContract (`0xd20508e1e971b80ee172c73517905bfffcbd87f9`, chain 1)
- UnnamedContract (`0xd52dc1615c843c30f2e4668e101c0938e6007220`, chain 1)
- UnnamedContract (`0xe1635f4f0eee83c5e24023ac7f8b9f2079fdd7d6`, chain 1)
- UnnamedContract (`0xe75b8e4da218f21cf0f0ce967ac35276a10aabdb`, chain 1)
- UnnamedContract (`0xe7ab44418a0b80ed1748d4a58067ea9df0d84dfa`, chain 1)
- UnnamedContract (`0xe8e78067d5a9989f42bdee020f7e1e7d54b090b9`, chain 1)
- UnnamedContract (`0xe9c893abdcdb0f710c0cea8c70094f9e751eee3c`, chain 1)
- UnnamedContract (`0xec9470bae865b656e8f3b223a8f66145505cb8c2`, chain 1)
- UnnamedContract (`0xf228bf1f8d11dc1555fc096a7ab6fcd238f1ed6b`, chain 1)
- UnnamedContract (`0xfd6ff39da508d281c2d255e9bbbfab34b6be60c3`, chain 1)
- UnnamedContract (`0x3923891361ada41fa799b433656fd3017ab0bea9`, chain 8453)
- UnnamedContract (`0x3ab231c079186db4f31ea828ef4d1c1fec78eef4`, chain 8453)
- UnnamedContract (`0x508c74ba01cda8bf088969398d18e7ab1ec3b6aa`, chain 8453)
- UnnamedContract (`0x81787f7c503bf101810fb6a362f1f21f5587069b`, chain 8453)
- UnnamedContract (`0x9a79ea6d13bde290d842410859d679cd6e6f95d1`, chain 8453)
- UnnamedContract (`0xcbbd935861542d94a168cac3b523f6450a69ecf4`, chain 8453)
- UnnamedContract (`0xcdb60d2ec840ff04aecf0def31a43b8d1a990cf7`, chain 8453)
- UnnamedContract (`0xe367b79a3deb6bf6bb864c680ea3e6262ecfdef4`, chain 8453)
- AccessControl (`0x134d8e5abc0da236967a4f95e7360db8ad240fe6`, chain 1)
- BackerMerkleDirectDistributor (`0x3188c8a33845c892c1def1601261c00e19695ecb`, chain 1)
- BackerMerkleDistributor (`0xc442b55a082f7d5f8d8dcda3d0eff50f47dd0f82`, chain 1)
- CallableLoan (`0x384fb62adb60b18f561f83ebb31e84333def5205`, chain 1)
- CallableLoanImplementationRepository (`0x7751958c0279645ce4c4072972d18fceefde81de`, chain 1)
- CapitalLedger (`0x94e0bc3aeda93434b848c49752cfc58b1e7c5029`, chain 1)
- CommunityRewards (`0x0cd73c18c085deb287257ed2307ec713e9af3460`, chain 1)
- ConfigOptions (`0x19bfbf921d48279391c7445303d89cb4a6066b71`, chain 1)
- Context (`0x8fd96019d28dc407b6b37732a7d91562248436c5`, chain 1)
- DynamicLeverageRatioStrategy (`0x97b3f9653336ab5388a0ef5f7cfe2bd84cf0f253`, chain 1)
- ERC20Splitter (`0xe2da0cf4dcee902f74d4949145ea2ec24f0718a4`, chain 1)
- FixedLeverageRatioStrategy (`0x71cff40a44051c6e6311413a728ee7633ddc901a`, chain 1)
- GFI (`0xdab396ccf3d84cf2d07c4454e10c8a6f5b008d2b`, chain 1)
- GFILedger (`0x8d0c4e704be667e4320b81f6dd35addad3c135e0`, chain 1)
- GoldfinchFactory (`0x7954d6fb7aaa378a50f79758c2a576b7739c063e`, chain 1)
- MembershipCollector (`0x49eab7ff877201b6e9b20b535f0c647dbb989d63`, chain 1)
- MembershipDirector (`0x7e9140557f988d43c76cadab2fd392f9172ced21`, chain 1)
- MembershipLedger (`0x4083328fa5f3ab0b5c4bf8a2919e47b35590476c`, chain 1)
- MembershipVault (`0x375b906b25e00bdd43017400cd4cefb36fbf9c18`, chain 1)
- MerkleDirectDistributor (`0x7766e86584069cf5d1223323d89486e95d9a8c22`, chain 1)
- MerkleDistributor (`0x0f306e3f6b2d5ae820d33c284659b29847972d9a`, chain 1)
- MigratedTranchedPool (`0x187e45ebaf88f63ebf0319deae51df8955423869`, chain 1)
- PoolTokens (`0x57686612c601cb5213b01aa8e80afeb24bbd01df`, chain 1)
- Router (`0x0a540cf99fb24926c6efe88eef141d7c9aecffe2`, chain 1)
- TranchedPool (`0x1bb013b66ce89e2db9acf079f37670311356643e`, chain 1)
- TranchedPoolImplementationRepository (`0x84b43ea76a7f18b1683db57c93cb34c42e6f943a`, chain 1)
- V2Migrator (`0xd44fe8ec5d6cfb96a06e02e17bc109ab98d506a5`, chain 1)
- Zapper (`0xd7b528e749078dadee2f0071cde6fca4e191a521`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 71/153 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/28 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 71 own, 81 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 170 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 71 of 322 unique; 251 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 275
- Unique implementations: 322
- Raw deployments: 331
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControl | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387040 | 2 deployments: ethereum `0x134d8e5abc0da236967a4f95e7360db8ad240fe6`; ethereum `0x8783e23b3b04a26283c82c86cac85098dbc70657` | ⚠️ Unaudited |
| Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3483db484b213786990185eb6347ec49904d0bfa` | ⚠️ Unaudited |
| BackerMerkleDirectDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386867 | `0x3188c8a33845c892c1def1601261c00e19695ecb` | ⚠️ Unaudited |
| BackerMerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386918 | `0xc442b55a082f7d5f8d8dcda3d0eff50f47dd0f82` | ⚠️ Unaudited |
| BackerRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36cbf97602e1ae2d3b0cd69bd5d100ae59a7863a` | ⚠️ Unaudited |
| Borrower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae260743e9937d966f2776ba2148186cffd4b07` | ⚠️ Unaudited |
| CallableLoan | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386870 | `0x384fb62adb60b18f561f83ebb31e84333def5205` | ⚠️ Unaudited |
| CallableLoanImplementationRepository | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387041 | 2 deployments: ethereum `0x7751958c0279645ce4c4072972d18fceefde81de`; ethereum `0x89288093dccfe11c235bb3a19c98891e8e4d2b44` | ⚠️ Unaudited |
| CapitalLedger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387043 | 2 deployments: ethereum `0x94e0bc3aeda93434b848c49752cfc58b1e7c5029`; ethereum `0xbd431e6acf024c216b7ae0a1dc67d448ec628ec5` | ⚠️ Unaudited |
| CommunityRewards | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387037 | 2 deployments: ethereum `0x0cd73c18c085deb287257ed2307ec713e9af3460`; ethereum `0x2cc8bf652401b044077803fc419e21118d545a61` | ⚠️ Unaudited |
| ConfigOptions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386865 | `0x19bfbf921d48279391c7445303d89cb4a6066b71` | ⚠️ Unaudited |
| Context | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386894 | `0x8fd96019d28dc407b6b37732a7d91562248436c5` | ⚠️ Unaudited |
| CreditDesk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a6b0e5ae9441141253203d078131668c0adfafc` | ⚠️ Unaudited |
| CreditLine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df1e7ffb382f79736ca565f378f783678d995d8` | ⚠️ Unaudited |
| CreditLineFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3060f3bea817b8baa8d9c780525d43e83333062c` | ⚠️ Unaudited |
| DynamicLeverageRatioStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386901 | `0x97b3f9653336ab5388a0ef5f7cfe2bd84cf0f253` | ⚠️ Unaudited |
| EIP173Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02cd340cea4c79323cbb8c21b946c1dcab23325d` | ⚠️ Unaudited |
| ERC20Splitter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387044 | 2 deployments: ethereum `0xe2da0cf4dcee902f74d4949145ea2ec24f0718a4`; ethereum `0xe7ab44418a0b80ed1748d4a58067ea9df0d84dfa` | ⚠️ Unaudited |
| Fidu | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0908687c269646e47bfc6891a0903cacf7dd1748` | ⚠️ Unaudited |
| FixedLeverageRatioStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386880 | `0x71cff40a44051c6e6311413a728ee7633ddc901a` | ⚠️ Unaudited |
| GFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386933 | `0xdab396ccf3d84cf2d07c4454e10c8a6f5b008d2b` | ⚠️ Unaudited |
| GFILedger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386892 | `0x8d0c4e704be667e4320b81f6dd35addad3c135e0` | ⚠️ Unaudited |
| Go | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063751ff186bfa02779c9fa1a467b68e04fe30c9` | ⚠️ Unaudited |
| GoldfinchConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076a0d827647bc6a04ee161c9d3d21a32b45a273` | ⚠️ Unaudited |
| GoldfinchFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386881 | `0x7954d6fb7aaa378a50f79758c2a576b7739c063e` | ⚠️ Unaudited |
| GoldfinchPrime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b29d7ed8dcea0436537648cbe6aa0b9eb5c2bcd` | ⚠️ Unaudited |
| MembershipCollector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386874 | `0x49eab7ff877201b6e9b20b535f0c647dbb989d63` | ⚠️ Unaudited |
| MembershipDirector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386883 | `0x7e9140557f988d43c76cadab2fd392f9172ced21` | ⚠️ Unaudited |
| MembershipLedger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386873 | `0x4083328fa5f3ab0b5c4bf8a2919e47b35590476c` | ⚠️ Unaudited |
| MembershipOrchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0296fd870c7419267558868d14eff6443c4ed403` | ⚠️ Unaudited |
| MembershipVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387042 | 2 deployments: ethereum `0x375b906b25e00bdd43017400cd4cefb36fbf9c18`; ethereum `0xba7b8e4ae02c33aff14e472856259ddc46b6dc21` | ⚠️ Unaudited |
| MerkleDirectDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387045 | 2 deployments: ethereum `0x7766e86584069cf5d1223323d89486e95d9a8c22`; ethereum `0xec9470bae865b656e8f3b223a8f66145505cb8c2` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386861 | `0x0f306e3f6b2d5ae820d33c284659b29847972d9a` | ⚠️ Unaudited |
| MigratedTranchedPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386863 | `0x187e45ebaf88f63ebf0319deae51df8955423869` | ⚠️ Unaudited |
| MonthlyScheduleRepo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c74239a7a8a3969f4e0fdb3e592d64a60fb947f` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a0a9dde841c8dee7b6773a3408ace9d006a814` | ⚠️ Unaudited |
| PoolTokens | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387038 | 2 deployments: ethereum `0x412d7d7087be4376da6fc5a869e5229e1379bd4c`; ethereum `0x57686612c601cb5213b01aa8e80afeb24bbd01df` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386860 | `0x0a540cf99fb24926c6efe88eef141d7c9aecffe2` | ⚠️ Unaudited |
| SeniorPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422bf428c9777c78cdb9a6188837f79466d9beb7` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a36b543218898169859409f95e0c806a8da1b2` | ⚠️ Unaudited |
| TestForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c3f166d086e6cc213fce0391e5087d3f4a77fe` | ⚠️ Unaudited |
| TranchedPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386866 | `0x1bb013b66ce89e2db9acf079f37670311356643e` | ⚠️ Unaudited |
| TranchedPoolImplementationRepository | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386889 | `0x84b43ea76a7f18b1683db57c93cb34c42e6f943a` | ⚠️ Unaudited |
| TranchingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01bfa2248a6c1aa65e7032951d368241ff70b649` | ⚠️ Unaudited |
| UniqueIdentity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da94db465c185e7de453c5db6bdcc314395717c` | ⚠️ Unaudited |
| V2Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386929 | `0xd44fe8ec5d6cfb96a06e02e17bc109ab98d506a5` | ⚠️ Unaudited |
| Zapper | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387039 | 2 deployments: ethereum `0x41bbc58d821c7f7a11737d12562796d5d911e7e0`; ethereum `0xd7b528e749078dadee2f0071cde6fca4e191a521` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (275)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b54ab6abb4f08792074f1531c5450325e5b01cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386862 | `0x100656cbb440d37a7880f4c5bd4ac5edcf411066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11cc14a8d097e5b5e299fba983bbaea4d1e7325f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f717605a6899727312ca79920f9d6e1d4bf7cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386864 | `0x18d53b6c4c76d5bcf9c1337b435dbca0fc74dc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18eca586cf71fc8a30f4e5cfac383b2336a1460b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190acb57b714d429bc1848b5a20963d54c7fdbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e6e81078dda97fd8d7ef8d5b9cd63e78d6ff569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20fb88b3973cb6d2a008809b3a2b866dd7f4a6f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x255e15c3f1338382b12af241471bd6d714e631ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cde1a5dd64a83b1065c6529b1a77857050b9eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d9218986cac6c30c78534c5d8311f36517ad51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33ffe6fd3f1a240f2cab440fb609f513fc4e920b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x352b093bd3932612de093e9a2b9e5a0b429f44ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386868 | `0x361212f99a653b20ab6f8bede07cff8deb5a5f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37e4a0f69b7f3ec74dd97cfe9fb1f42a99845fce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386869 | `0x384860f14b39ccd9c89a73519c70cd5f5394d0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38dd72b21cbb6023b9818060c541d2ce7d4d107b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3ae61d194b9eaa6074ac5e65b53120e9b71a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac5d143bf3d71b131583f7adce03ad996f3ce07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386871 | `0x3d0c92b90ab104b25e84ca659dba8fa2327cb8fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d132223c75d75843f0d6198f36b95cadcc25991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386872 | `0x3d62ae39d4b14554f8257ed5c82377c35f454de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da320a25b0cf3ea811641327b13f9b0076a5690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe0bed0b4426f5f621ede29256baed736e2de9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4549d0a54a66e4291284f2abeeeb53d4d718262c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4704ceedb7468057aee1582fc1187acf80412a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a20f53e612e6ab515a46eca9dd36a290a2287f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4acb3558f7f9287a4186f536e8f2e78feb9e6a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ae78d9be7f8d45110c84c72f7456fd8156445ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c3bc00939eab79cb14a08f804dc2730a3343784` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386875 | `0x4e5d9b093986d864331d88e0a13a616e1d508838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eb844ff521b4a964011ac8ecd42d500725c95cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5945c610c71ee786f3f61d6f6332d7b50385261f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b62dbe96a3f3d293ed1ca6adce6eb54b740628a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b795a493dede7b0eb7d4920db7d96bd4337db4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386876 | `0x5ccfa5fec4db2543d3995dc5419a13b6e99ea7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e86edd9cef30923d37602a36d53a0f335dd6ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x605994b5ac4d10c55eb5fda9e396e24a7cba52f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6163b0fd36f1c55d7711a8af804c50992b30534a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61d4acdbb3c8f21fbd34e358c9b60b09036f2359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626ec0deefd726543726c73ddb2e1a8ad19021f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63f26a0878f047363436a79a439b7f5cc3318925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e7992c2be8fd1b1d89cfaed923afd2d80484d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386877 | `0x68008e79eee041529725dd519272376ce7e38830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68badccd601026a8e1b84ac30401813414864a13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386878 | `0x6a445e9f40e0b97c92d0b8a3366cef1d67f700bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386879 | `0x6ce93728877396d43874efdd6345e8c251dfe008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a217ec3113f1edad121a00b0ffcc7c383c4854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x745191edcbfdae12c9c484b2c5ecc72681b8373e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75750fc3d9e3cc4ff2151e45895c0416f86c681a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76ee6b1db228e09af70b86800c31f8bd52794045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77666fcfc0bf76c2445b792bc67fa3b215f7b0fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792c976ada1ef352665f24011b3dbc868287cab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7ae330220a685a0a93cdfdc906c1908a6e1079` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386882 | `0x7bcb287059e871ca194474b3e538ade985efb6a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d28af105d6df5b08c0d0364c23572432031c116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7daa6477194b784d384e79333230daec3b32a65e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eabdafba049a83541f75e3aac6ccefd74158651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ffe3feb2cdb4a77a10a3836b5a3fc92bd669eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82cff053b1015430eb92e9fbf993403ee690116f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386885 | `0x8481a6ebaf5c7dabc3f7e09e44a89531fd31f822` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386887 | `0x84ac02474c4656c88d4e08fca63ff73070787c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85234d517ab2c8aabbd1f9bca78d8dfadec4044a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856d947d3001b7c19760f6e2271a518cb7c2b136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d38a574cfa989028f7feda6dd380c92b5f329e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d9e507091cb4e7cb1655eb2a53aed13a777b49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386890 | `0x86db002dbbb64d67ef4b43c76c432bf5bcbf7197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8818f908ec8d6bd44f7d3d692661d29bb2c73a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f91758288816bab4869eded355162fd892b33f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386896 | `0x95afe022b4cddea983ec16cce028e8f4309384a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386899 | `0x9789114f9516e1cd2a41fda5e9c17e984d31a22e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e39cf89789320cab17c333e736bf96659d1e77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386903 | `0x9a16a929edc11d2691cb5fbc2bee2545878ae79b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b2acd3fd9aa6c60b26cf748bfff682f27893320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bce1f08012dd6e72756cd015e50068f90963d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f3117e4ae545cc5c58221c166059ab56575d8f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa19c6586c600dc714b011b28eb466191349adc24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa55c73269360d843063194920c918305c71f8d68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa884b19d0b2750c6c5a4e3acb34b7f0b1823cefd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386904 | `0xaa425f8bfe82cd18f634e2fe91e5ddeefd98fda1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadce0cfb41aa8e86bf67ff4a9f9fdea0787530bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386906 | `0xb01b315e32d1d9b5ce93e296d483e1f0aad39e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb059df6ecb846bee429ee57d326740bcaf3c8695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb146bd49e751a23d146c5f0f02f285352a56cf73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2bea2610feefa4868c3e094d2e44b113b6d6138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb495eb987e053368624cf7fd9bd09453bc0043c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a71f85bb3a749e3d6095b9a56d1202b3ef018f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5b6996f086d6a570b1a547d9cb7df93a0c58518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6dd02bef044f9813b05a7f912c57c47e3f22aac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386909 | `0xb7bee8985cf7c1dbb35425c804199a51a5abe9c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8276651612df04e48da5f353c969aa1c0076099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91a07a4a533dd67f84c4754bc85a9854f95e473` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386911 | `0xba0439088dc1e75f58e0a7c107627942c15cbb41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba4476bc142ecba40b009f74d3c458dfa3f7a949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386913 | `0xbc1081885da00404bd0108b70ec5ac0dbe98a077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd1419ba8408d964e3a7e2446cf297161fecc368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc035c859b87f5b4fa7c8fbc32deff16fe9f59600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc075611d8ef979edf4899b0fd4c9b53328ec0a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25edc499a0c8efd12d18e49c32182d0ffec8cce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386915 | `0xc35c28de1ec0340a2e39514e6b7a701ff542b8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc383acac82639aad1ce5326a05b1304e897a977b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4a0e6fa11104058ae5d688e630adca5775e4160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8243f6066153f109ca2825dd4b70bb5d8d24e81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386920 | `0xc84d4a45d1d7eb307bbdea94b282bee9892bd523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc89d717860d09b023a13ad0f32e45f09aa9e53f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb4c20da8bb0d8496708edb919e0db925e1c2d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd123dd7b07e164bf1b33fc639a8f7a04c3370b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfa2427c5cfe89be278c9a6fc4445b497cd61d02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386922 | `0xd16bc944bf20c86c4ed47ce1a330a18538674c83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386924 | `0xd1a2de34187008f908a291992ee4f35dd3caa00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1da65802dfd6d80ca79749c83b4de8d561d3815` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386927 | `0xd20508e1e971b80ee172c73517905bfffcbd87f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2bc093a517f4f5605b70bf9bd4f37932c21255f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386931 | `0xd52dc1615c843c30f2e4668e101c0938e6007220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6aa3ca262ab296ddd94d88b80f1438aa11e5b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc694367a9b32768b6d3b5df34f062a7d29c9230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce35f4ad32f53de8da30ef0881389f4c0df6ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde231715086562ac69b3d946b4f6748e21f1fb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde931e88a2853ffed6700045b7b6b41e87664b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf616464c38a25ac9db93bb00a912b3f28b02506` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386935 | `0xe1635f4f0eee83c5e24023ac7f8b9f2079fdd7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2455ba1bcf55d22d0cde1580efe618484e604b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe418965c26325acd892abf3ba3366e53066970eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe46a77c2a61e43bb0ff222118559eac84014c719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe487e18886530f7ded8af874122dfa6bd5e66211` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386937 | `0xe75b8e4da218f21cf0f0ce967ac35276a10aabdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386939 | `0xe8e78067d5a9989f42bdee020f7e1e7d54b090b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386941 | `0xe9c893abdcdb0f710c0cea8c70094f9e751eee3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee2ea6f0b8fc3284ffb702c09ebe0f2e4f5441e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeff0ca007ab1fff5b6b6861871d765444bc518c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0f8d382a4e1e2f26891b1a95f9dcb89406bd4a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386943 | `0xf228bf1f8d11dc1555fc096a7ab6fcd238f1ed6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf265eac216c240f703462981fc4c09411630771f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9dcd2f86daba0e55d464bd73db5eff03332a84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc5520eb0d0c88efe6a6ea0097a234d06a754987` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386945 | `0xfd6ff39da508d281c2d255e9bbbfab34b6be60c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf6a3d4ce8232cf6a4e302df15f6ecbc4c0df22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe929cb4726d255005f962a09dbcd286ebfc3b05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387021 | `0x3923891361ada41fa799b433656fd3017ab0bea9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387022 | `0x3ab231c079186db4f31ea828ef4d1c1fec78eef4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387023 | `0x508c74ba01cda8bf088969398d18e7ab1ec3b6aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387024 | `0x81787f7c503bf101810fb6a362f1f21f5587069b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387025 | `0x9a79ea6d13bde290d842410859d679cd6e6f95d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387026 | `0xcbbd935861542d94a168cac3b523f6450a69ecf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387027 | `0xcdb60d2ec840ff04aecf0def31a43b8d1a990cf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387028 | `0xe367b79a3deb6bf6bb864c680ea3e6262ecfdef4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386947 | `0x0165878a594ca255338adfa4d48449f69242eb8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386948 | `0x05aa229aec102f78ce0e852a812a388f076aa555` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386949 | `0x093e8f4d8f267d2ceec9eb889e2054710d187bed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386950 | `0x0afdacd509e73115ea1654b1a770f1a807e7c9c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386951 | `0x0b48af34f4c854f5ae1a3d587da471fea45bad52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386952 | `0x0cf17d5dcda9cf25889cec9ae5610b0fb9725f65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386953 | `0x0d4ff719551e23185aeb16ffbf2abebb90635942` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386954 | `0x0f5d1ef48f12b6f691401bfe88c2037c690a6afe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386955 | `0x1275d096b9dbf2347bd2a131fb6bdab0b4882487` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386956 | `0x130a46b6e41db6e1e18fb9c759f223c459190e90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386957 | `0x17c8b71e5ee01a726766c99d397d619219c8caf3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386958 | `0x199c27b10a195ee79e02d50846e59a4afb82cad1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386959 | `0x1a6a3e7bb246158df31d8f924b84d961669ba4e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386960 | `0x1d99a347b5ecdbaa3c5365470d461cf66b77ecd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386961 | `0x1dbdba33dfa381bcc89fce74dff69aa96b53b503` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386962 | `0x1e2f4432bfef9e9ad39da6d272f4aff33629c770` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386963 | `0x20fbd46deed5eedeb6e5c87eeb31924e9ca312ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386964 | `0x2279b7a0a67db372996a5fab50d91eaa73d2ebe6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386965 | `0x23d351ba89eaac4e328133cb48e050064c219a1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386966 | `0x2de080e97b0cae9825375d31f5d0ed5751fdf16d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386967 | `0x2fc631e4b3018258759c52af169200213e84abab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386968 | `0x34ee84036c47d852901b7069abd80171d9a489a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386969 | `0x35d2f51dbc8b401b11fa3fe04423e0f5cd9fedb4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386970 | `0x381445710b5e73d34af196c53a3d5cda58edbf7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386971 | `0x3c705db336c81c7fefc5746e283ab2c0781a4b7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386972 | `0x446e7636a5fa9af46c3718719e465b547248bf62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386973 | `0x49fcbcc4e425add3a45afc82f4dd0e5c227a0ff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386974 | `0x505d59fffd312983cc0ed114d7f117b91520d742` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386975 | `0x5370f78c6af2da9cf6642382a3a75f9d5aec9cc1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386976 | `0x55cb3b67d9e65f0cf4eabcac84564a1be6e3b06a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386977 | `0x59f2f1fcfe2474fd5f0b9ba1e73ca90b143eb8d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386978 | `0x5c7c905b505f0cf40ab6600d05e677f717916f6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386979 | `0x5fbdb2315678afecb367f032d93f642f64180aa3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386980 | `0x5fc8d32690cc91d4c39d9d3abcbd16989f875707` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386981 | `0x63cf2cd54fe91e3545d1379abf5bfd194545259d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386982 | `0x677df0cb865368207999f2862ece576dc56d8df6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386983 | `0x712516e61c8b383df4a63cfe83d7701bce54b03e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386984 | `0x71c95911e9a5d330f4d621842ec243ee1343292e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386985 | `0x7290f72b5c67052dde8e6e179f7803c493e90d3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386986 | `0x73eccd6288e117caca738bdad4fec51312166c1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386987 | `0x7798a400cbe0ca14a7d614eca1cd15ade5055413` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386988 | `0x84227190685c25c4af662ee1bd0e4cd82e57360d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386989 | `0x8464135c8f25da09e49bc8782676a84730c318bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386990 | `0x85c5dd61585773423e378146d4bec6f8d149e248` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386991 | `0x8613a4029eaa95da61ae65380ac2e7366451bf2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386992 | `0x8990c5daaa40673ef8826990a6fd8284a0a17d61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386993 | `0x8a791620dd6260079bf849dc5567adc3f2fdc318` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386994 | `0x90118d110b07abb82ba8980d1c5cc96eea810d2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386995 | `0x9fe46736679d2d9a65f0992f2272de9f3c7fa6e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386996 | `0xa513e6e4b8f2a923d98304ec87f64353c4d5c853` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386997 | `0xa82ed5224ba72f2f776e09b11dc99e30ee65da8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386998 | `0xa85b028984bc54a2a3d844b070544f59dddf89de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-386999 | `0xad5d57ad9bb17d34debb88566ab2f5db879cc46f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387000 | `0xafe1b5bdebd4ae65af2024738bf0735fbb65d44b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387001 | `0xba3e08b4753e68952031102518379ed2fdadca30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387002 | `0xbe241d1b7b54bf06742cefd45a3440c6562f7603` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387003 | `0xc63d2a04762529edb649d7a4cc3e57a0085e8544` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387004 | `0xc6ba8c3233ecf65b761049ef63466945c362edd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387005 | `0xc76a71c4492c11bbadc841342c4cb470b5d12193` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387006 | `0xca03dc4665a8c3603cb4fd5ce71af9649dc00d44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387007 | `0xcec91d876e8f003110d43381359b1bad124e7f2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387008 | `0xd499f5f7d3c918d0e553ba03954c4e02af16b6e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387009 | `0xdadd1125b8df98a66abd5eb302c0d9ca5a061dc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387010 | `0xdc64a140aa3e981100a9beca4e685f962f0cf6c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387011 | `0xddeec1224034f4a68a2697ef13379a014fa60261` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387012 | `0xe0b39353f69b54e945364ffcddd7901697ca0166` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387013 | `0xe4f89fb0dbb45378633c05acab071eb998f0a736` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387014 | `0xe5bd5bdc03371fb239956dbbf40bd185d6c2ea28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387015 | `0xe6b98f104c1bef218f3893adab4160dc73eb8367` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387016 | `0xe7f1725e7734ce288f8367e1bb143e90bb3f0512` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387017 | `0xed17543171c1459714cdc6519b58ffcc29a3c3c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387018 | `0xf69e1dfac3d43f438bae80090b8e186b0231cfeb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387019 | `0xf818a7c2afc45cf4b9ddc48933c9a1edd624e46f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-387020 | `0xfbab4aa40c202e4e80390171e82379824f7372dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0225843a1f95724bc82aedcb22e53c929238131f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x06359d46209b1f968d119467237cb1c28a48d0c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0ab74ebaa2839a1247b65b73b8ec4d7d95c28864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0c968f1e619786e99481fcd603c3ae5db4eab5bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387029 | `0x11c64ca88137d6be9a814248a503f6edfa373a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x12284ce59d63eddedc38e9f9ee0c8c6834983c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1747de453a2d9b3befaa91da266fd61b3a426bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1bd090cc75540ac1cbd303dce7b352143c52ea71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1cbe35ccae0e2328ee22d6b969e181ec53b083cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x21fa6e009ac8e26da05c53fb77d33c752e5fab80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387030 | `0x27ad053d92c9baa5d0379b4d672e8814ab04fef1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387031 | `0x3923891361ada41fa799b433656fd3017ab0bea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x3976216eb04fad2137b9ddd7f28a939fadbe3869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x3ab231c079186db4f31ea828ef4d1c1fec78eef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x3adb750a310123589181e25eec50a2c249bd4ad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x450856a43a8c610a03de38f2bca116c5b26542c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x480dc7ea3658a2ca52568ac41fb9aa602135b96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4d11898776a961cfb0c419bb61fa730506c60ba8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387032 | `0x508c74ba01cda8bf088969398d18e7ab1ec3b6aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5d6fb2613f5d0dd44b703680c105005b22997545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5f49466315283568cf624bec03de522bc23f9529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6e58fd636ede69b199c4bb421f9a04e7bb5f4a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x722b13f955bc7f12edc5fd416f1e6590ef2c80c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x75242a0b0e6434df3d70e516dfdfd23ece584b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x75740ff6a1b1e60c5188e7e02aa3f56126f25a31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387033 | `0x81787f7c503bf101810fb6a362f1f21f5587069b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x8961d6ec11e2e58ebae26784e9bcbf8ba3d65c5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387034 | `0x8ee5a4d0b399ec33bddac3631e40e62632252a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x991c191551c65c47e5a877033c5986d36a4cb6e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x998f89d8820167be6ff7de182d4afe4e6dbcd595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9a0f45a41c9a659111d8332fc0e76b502c2e1c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9a711c84a858cfae1b8ac3064469f12fff79f906` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-387035 | `0x9a79ea6d13bde290d842410859d679cd6e6f95d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9c1815f5663ee98b642261e7c1ab37a5ffa417a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9db99ff4ca149a81d724e349b1774c9f9f0e3a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9e995bfcdbdeef7f8b6d326ca420f6e6e28cf2d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xa1f675b16bab6fa3b7dc0d397a2dd9c9fe14f6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xa7ffe63072921dac0db8c8b193eb51bd1a799417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xa86b7c084136f408a0b81dc0fce24d138e472af5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xb0e98f3c0e33e9696bd4ae05560a62bea34e6aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xb443e2252434909e01a48ef1ebb1ed2fbe5e0f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xbbf4435ed1e7988f998aa6a82b6c03eb19108a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xc42871a138837a7eae26f679d210d55e3aba0c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xc5e39ac05158731fa5f51c5189a2fe29b2270ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xc6e42c958b1ee339a1cdc6ceeab490e80f76f938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xca9e5dc979cd0e74bc7686c83e58bb9eb09dde78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xcfdce1aa6996b3eafd7f2a01a0d2bddba0cb8f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd111be132087177e28b5f53db76bb5035e20c532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd63263fefbf0ccded70757d31bb8815f974ddac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd8a43970ae361f2e99400e12b6077739cfad2e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xdb0d47dbb7e23d981e7389eabbec9a67a9208e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe3e13d6a2c0543d978c8055a1d73044e2e59975d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe7d2e755209a2699714a524b493047badcc6e60b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xf4e7d43c33ced52052474029c01b430029ffc672` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 151
- Live contracts: 0
- Unknown liveness contracts: 151
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=151

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x0225843a1f95724bc82aedcb22e53c929238131f` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x06359d46209b1f968d119467237cb1c28a48d0c8` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x0ab74ebaa2839a1247b65b73b8ec4d7d95c28864` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x0c968f1e619786e99481fcd603c3ae5db4eab5bc` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x12284ce59d63eddedc38e9f9ee0c8c6834983c04` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x1747de453a2d9b3befaa91da266fd61b3a426bb3` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x1bd090cc75540ac1cbd303dce7b352143c52ea71` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x1cbe35ccae0e2328ee22d6b969e181ec53b083cf` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x21fa6e009ac8e26da05c53fb77d33c752e5fab80` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x3976216eb04fad2137b9ddd7f28a939fadbe3869` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x3adb750a310123589181e25eec50a2c249bd4ad4` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x450856a43a8c610a03de38f2bca116c5b26542c8` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x480dc7ea3658a2ca52568ac41fb9aa602135b96e` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x4d11898776a961cfb0c419bb61fa730506c60ba8` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x5d6fb2613f5d0dd44b703680c105005b22997545` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x5f49466315283568cf624bec03de522bc23f9529` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x6e58fd636ede69b199c4bb421f9a04e7bb5f4a75` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x722b13f955bc7f12edc5fd416f1e6590ef2c80c6` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x75242a0b0e6434df3d70e516dfdfd23ece584b23` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x75740ff6a1b1e60c5188e7e02aa3f56126f25a31` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x8961d6ec11e2e58ebae26784e9bcbf8ba3d65c5e` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x991c191551c65c47e5a877033c5986d36a4cb6e4` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x998f89d8820167be6ff7de182d4afe4e6dbcd595` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x9a711c84a858cfae1b8ac3064469f12fff79f906` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x9c1815f5663ee98b642261e7c1ab37a5ffa417a6` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x9db99ff4ca149a81d724e349b1774c9f9f0e3a32` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x9e995bfcdbdeef7f8b6d326ca420f6e6e28cf2d2` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xa1f675b16bab6fa3b7dc0d397a2dd9c9fe14f6b4` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xa86b7c084136f408a0b81dc0fce24d138e472af5` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xb0e98f3c0e33e9696bd4ae05560a62bea34e6aeb` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xb443e2252434909e01a48ef1ebb1ed2fbe5e0f90` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xbbf4435ed1e7988f998aa6a82b6c03eb19108a43` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xc42871a138837a7eae26f679d210d55e3aba0c2e` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xc6e42c958b1ee339a1cdc6ceeab490e80f76f938` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xcfdce1aa6996b3eafd7f2a01a0d2bddba0cb8f46` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xd63263fefbf0ccded70757d31bb8815f974ddac5` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xdb0d47dbb7e23d981e7389eabbec9a67a9208e60` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xe3e13d6a2c0543d978c8055a1d73044e2e59975d` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xe7d2e755209a2699714a524b493047badcc6e60b` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xf4e7d43c33ced52052474029c01b430029ffc672` | non_address_book | unknown | unknown | unverified | n/a | `0x2ba938b6256cc403b9b9f3cbcc077e48588940bb` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x3ab231c079186db4f31ea828ef4d1c1fec78eef4` | non_address_book | unknown | unknown | unverified | n/a | `0xd07e6477663c9c8668a9759a59e72b4eab9ff3a4` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x9a0f45a41c9a659111d8332fc0e76b502c2e1c41` | non_address_book | unknown | unknown | unverified | n/a | `0xd07e6477663c9c8668a9759a59e72b4eab9ff3a4` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xa7ffe63072921dac0db8c8b193eb51bd1a799417` | non_address_book | unknown | unknown | unverified | n/a | `0xd07e6477663c9c8668a9759a59e72b4eab9ff3a4` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xc5e39ac05158731fa5f51c5189a2fe29b2270ad5` | non_address_book | unknown | unknown | unverified | n/a | `0xd07e6477663c9c8668a9759a59e72b4eab9ff3a4` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xca9e5dc979cd0e74bc7686c83e58bb9eb09dde78` | non_address_book | unknown | unknown | unverified | n/a | `0xd07e6477663c9c8668a9759a59e72b4eab9ff3a4` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xd111be132087177e28b5f53db76bb5035e20c532` | non_address_book | unknown | unknown | unverified | n/a | `0xd07e6477663c9c8668a9759a59e72b4eab9ff3a4` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xd8a43970ae361f2e99400e12b6077739cfad2e7f` | non_address_book | unknown | unknown | unverified | n/a | `0xd07e6477663c9c8668a9759a59e72b4eab9ff3a4` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e6e81078dda97fd8d7ef8d5b9cd63e78d6ff569` | non_address_book | unknown | unknown | unverified | n/a | `0x0941d14affd844013bc4f48364930a023b1c3146` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38dd72b21cbb6023b9818060c541d2ce7d4d107b` | non_address_book | unknown | unknown | unverified | n/a | `0x0941d14affd844013bc4f48364930a023b1c3146` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d28af105d6df5b08c0d0364c23572432031c116` | non_address_book | unknown | unknown | unverified | n/a | `0x0941d14affd844013bc4f48364930a023b1c3146` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82cff053b1015430eb92e9fbf993403ee690116f` | non_address_book | unknown | unknown | unverified | n/a | `0x0941d14affd844013bc4f48364930a023b1c3146` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9bce1f08012dd6e72756cd015e50068f90963d22` | non_address_book | unknown | unknown | unverified | n/a | `0x0941d14affd844013bc4f48364930a023b1c3146` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba4476bc142ecba40b009f74d3c458dfa3f7a949` | non_address_book | unknown | unknown | unverified | n/a | `0x0941d14affd844013bc4f48364930a023b1c3146` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb4c20da8bb0d8496708edb919e0db925e1c2d93` | non_address_book | unknown | unknown | unverified | n/a | `0x0941d14affd844013bc4f48364930a023b1c3146` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe46a77c2a61e43bb0ff222118559eac84014c719` | non_address_book | unknown | unknown | unverified | n/a | `0x0941d14affd844013bc4f48364930a023b1c3146` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe487e18886530f7ded8af874122dfa6bd5e66211` | non_address_book | unknown | unknown | unverified | n/a | `0x0941d14affd844013bc4f48364930a023b1c3146` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63f26a0878f047363436a79a439b7f5cc3318925` | non_address_book | unknown | unknown | unverified | n/a | `0x1526e7aa51c1537e0ab1fc839b9fc82e7065cb3e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb495eb987e053368624cf7fd9bd09453bc0043c2` | non_address_book | unknown | unknown | unverified | n/a | `0x1526e7aa51c1537e0ab1fc839b9fc82e7065cb3e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6dd02bef044f9813b05a7f912c57c47e3f22aac` | non_address_book | unknown | unknown | unverified | n/a | `0x1526e7aa51c1537e0ab1fc839b9fc82e7065cb3e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdf6a3d4ce8232cf6a4e302df15f6ecbc4c0df22` | non_address_book | unknown | unknown | unverified | n/a | `0x1526e7aa51c1537e0ab1fc839b9fc82e7065cb3e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0f8d382a4e1e2f26891b1a95f9dcb89406bd4a1` | non_address_book | unknown | unknown | unverified | n/a | `0x28b54bbb0d8bae51b9a0dbc4cb725f64ecc43639` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc5520eb0d0c88efe6a6ea0097a234d06a754987` | non_address_book | unknown | unknown | unverified | n/a | `0x28b54bbb0d8bae51b9a0dbc4cb725f64ecc43639` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18eca586cf71fc8a30f4e5cfac383b2336a1460b` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x190acb57b714d429bc1848b5a20963d54c7fdbe1` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x255e15c3f1338382b12af241471bd6d714e631ff` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31d9218986cac6c30c78534c5d8311f36517ad51` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37e4a0f69b7f3ec74dd97cfe9fb1f42a99845fce` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ac5d143bf3d71b131583f7adce03ad996f3ce07` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d132223c75d75843f0d6198f36b95cadcc25991` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3da320a25b0cf3ea811641327b13f9b0076a5690` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3fe0bed0b4426f5f621ede29256baed736e2de9f` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4704ceedb7468057aee1582fc1187acf80412a33` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5945c610c71ee786f3f61d6f6332d7b50385261f` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b62dbe96a3f3d293ed1ca6adce6eb54b740628a` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e86edd9cef30923d37602a36d53a0f335dd6ea3` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x605994b5ac4d10c55eb5fda9e396e24a7cba52f9` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x626ec0deefd726543726c73ddb2e1a8ad19021f5` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67e7992c2be8fd1b1d89cfaed923afd2d80484d6` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a7ae330220a685a0a93cdfdc906c1908a6e1079` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7eabdafba049a83541f75e3aac6ccefd74158651` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ffe3feb2cdb4a77a10a3836b5a3fc92bd669eb3` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86d9e507091cb4e7cb1655eb2a53aed13a777b49` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8818f908ec8d6bd44f7d3d692661d29bb2c73a2a` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa55c73269360d843063194920c918305c71f8d68` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb146bd49e751a23d146c5f0f02f285352a56cf73` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd1419ba8408d964e3a7e2446cf297161fecc368` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4a0e6fa11104058ae5d688e630adca5775e4160` | non_address_book | unknown | unknown | unverified | n/a | `0x2fbf774ec12bd86a60e563f0653aeee4deba0db8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5a71f85bb3a749e3d6095b9a56d1202b3ef018f` | non_address_book | unknown | unknown | unverified | n/a | `0x59b265d775a37bd10b1344f1661465da314c1d13` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdce35f4ad32f53de8da30ef0881389f4c0df6ecc` | non_address_book | unknown | unknown | unverified | n/a | `0x59b265d775a37bd10b1344f1661465da314c1d13` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b54ab6abb4f08792074f1531c5450325e5b01cb` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11cc14a8d097e5b5e299fba983bbaea4d1e7325f` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33ffe6fd3f1a240f2cab440fb609f513fc4e920b` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x352b093bd3932612de093e9a2b9e5a0b429f44ee` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a3ae61d194b9eaa6074ac5e65b53120e9b71a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4acb3558f7f9287a4186f536e8f2e78feb9e6a8c` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ae78d9be7f8d45110c84c72f7456fd8156445ae` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c3bc00939eab79cb14a08f804dc2730a3343784` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4eb844ff521b4a964011ac8ecd42d500725c95cc` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b795a493dede7b0eb7d4920db7d96bd4337db4d` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6163b0fd36f1c55d7711a8af804c50992b30534a` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61d4acdbb3c8f21fbd34e358c9b60b09036f2359` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68badccd601026a8e1b84ac30401813414864a13` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73a217ec3113f1edad121a00b0ffcc7c383c4854` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75750fc3d9e3cc4ff2151e45895c0416f86c681a` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77666fcfc0bf76c2445b792bc67fa3b215f7b0fd` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7daa6477194b784d384e79333230daec3b32a65e` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85234d517ab2c8aabbd1f9bca78d8dfadec4044a` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86d38a574cfa989028f7feda6dd380c92b5f329e` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f91758288816bab4869eded355162fd892b33f6` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98e39cf89789320cab17c333e736bf96659d1e77` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b2acd3fd9aa6c60b26cf748bfff682f27893320` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f3117e4ae545cc5c58221c166059ab56575d8f8` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa884b19d0b2750c6c5a4e3acb34b7f0b1823cefd` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xadce0cfb41aa8e86bf67ff4a9f9fdea0787530bf` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2bea2610feefa4868c3e094d2e44b113b6d6138` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5b6996f086d6a570b1a547d9cb7df93a0c58518` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8276651612df04e48da5f353c969aa1c0076099` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb91a07a4a533dd67f84c4754bc85a9854f95e473` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc25edc499a0c8efd12d18e49c32182d0ffec8cce` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc383acac82639aad1ce5326a05b1304e897a977b` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8243f6066153f109ca2825dd4b70bb5d8d24e81` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd123dd7b07e164bf1b33fc639a8f7a04c3370b2` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfa2427c5cfe89be278c9a6fc4445b497cd61d02` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1da65802dfd6d80ca79749c83b4de8d561d3815` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2bc093a517f4f5605b70bf9bd4f37932c21255f` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6aa3ca262ab296ddd94d88b80f1438aa11e5b27` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde231715086562ac69b3d946b4f6748e21f1fb9e` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde931e88a2853ffed6700045b7b6b41e87664b70` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf616464c38a25ac9db93bb00a912b3f28b02506` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2455ba1bcf55d22d0cde1580efe618484e604b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeff0ca007ab1fff5b6b6861871d765444bc518c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe929cb4726d255005f962a09dbcd286ebfc3b05` | non_address_book | unknown | unknown | unverified | n/a | `0xa083880f7a5df37bf00a25380c3eb9af9cd92d8f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a20f53e612e6ab515a46eca9dd36a290a2287f7` | non_address_book | unknown | unknown | unverified | n/a | `0xe1599f49bc20dd0f0071a5a9f36cb755124a3da6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76ee6b1db228e09af70b86800c31f8bd52794045` | non_address_book | unknown | unknown | unverified | n/a | `0xe45e7147a26d04f20b74351bec0b97017deca2a9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa19c6586c600dc714b011b28eb466191349adc24` | non_address_book | unknown | unknown | unverified | n/a | `0xe45e7147a26d04f20b74351bec0b97017deca2a9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb059df6ecb846bee429ee57d326740bcaf3c8695` | non_address_book | unknown | unknown | unverified | n/a | `0xf5fdd5d6eb364a3732de06b04939be978cf8c565` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc035c859b87f5b4fa7c8fbc32deff16fe9f59600` | non_address_book | unknown | unknown | unverified | n/a | `0xf5fdd5d6eb364a3732de06b04939be978cf8c565` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xee2ea6f0b8fc3284ffb702c09ebe0f2e4f5441e1` | non_address_book | unknown | unknown | unverified | n/a | `0xf5fdd5d6eb364a3732de06b04939be978cf8c565` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13f717605a6899727312ca79920f9d6e1d4bf7cd` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20fb88b3973cb6d2a008809b3a2b866dd7f4a6f4` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2cde1a5dd64a83b1065c6529b1a77857050b9eb3` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4549d0a54a66e4291284f2abeeeb53d4d718262c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x745191edcbfdae12c9c484b2c5ecc72681b8373e` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x792c976ada1ef352665f24011b3dbc868287cab4` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x856d947d3001b7c19760f6e2271a518cb7c2b136` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc075611d8ef979edf4899b0fd4c9b53328ec0a3f` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc89d717860d09b023a13ad0f32e45f09aa9e53f0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc694367a9b32768b6d3b5df34f062a7d29c9230` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe418965c26325acd892abf3ba3366e53066970eb` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf265eac216c240f703462981fc4c09411630771f` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9dcd2f86daba0e55d464bd73db5eff03332a84c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc3d271123a4c14fdb9e99ff70ff69370317b977` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [dev.goldfinch.finance/docs/security/audit-reports](https://dev.goldfinch.finance/docs/security/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20718] dev.goldfinch.finance/docs/security/audit-reports — no match: The text is a navigation page listing audit reports by version, but does not contain any contract names or scope details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x134d8e5abc0da236967a4f95e7360db8ad240fe6` | AccessControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3188c8a33845c892c1def1601261c00e19695ecb` | BackerMerkleDirectDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc442b55a082f7d5f8d8dcda3d0eff50f47dd0f82` | BackerMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x384fb62adb60b18f561f83ebb31e84333def5205` | CallableLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7751958c0279645ce4c4072972d18fceefde81de` | CallableLoanImplementationRepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x94e0bc3aeda93434b848c49752cfc58b1e7c5029` | CapitalLedger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cd73c18c085deb287257ed2307ec713e9af3460` | CommunityRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19bfbf921d48279391c7445303d89cb4a6066b71` | ConfigOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8fd96019d28dc407b6b37732a7d91562248436c5` | Context | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x97b3f9653336ab5388a0ef5f7cfe2bd84cf0f253` | DynamicLeverageRatioStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe2da0cf4dcee902f74d4949145ea2ec24f0718a4` | ERC20Splitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x71cff40a44051c6e6311413a728ee7633ddc901a` | FixedLeverageRatioStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdab396ccf3d84cf2d07c4454e10c8a6f5b008d2b` | GFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d0c4e704be667e4320b81f6dd35addad3c135e0` | GFILedger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7954d6fb7aaa378a50f79758c2a576b7739c063e` | GoldfinchFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49eab7ff877201b6e9b20b535f0c647dbb989d63` | MembershipCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e9140557f988d43c76cadab2fd392f9172ced21` | MembershipDirector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4083328fa5f3ab0b5c4bf8a2919e47b35590476c` | MembershipLedger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x375b906b25e00bdd43017400cd4cefb36fbf9c18` | MembershipVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7766e86584069cf5d1223323d89486e95d9a8c22` | MerkleDirectDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f306e3f6b2d5ae820d33c284659b29847972d9a` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x187e45ebaf88f63ebf0319deae51df8955423869` | MigratedTranchedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a540cf99fb24926c6efe88eef141d7c9aecffe2` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bb013b66ce89e2db9acf079f37670311356643e` | TranchedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84b43ea76a7f18b1683db57c93cb34c42e6f943a` | TranchedPoolImplementationRepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd44fe8ec5d6cfb96a06e02e17bc109ab98d506a5` | V2Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 277 |

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

- [20718] dev.goldfinch.finance/docs/security/audit-reports

Fork inheritance lineage and inherited audits are included when available.
