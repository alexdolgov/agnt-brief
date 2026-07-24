# Agentic Audit Brief: Snowbank

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Snowbank (`snowbank`)
- Website: [https://www.snowbank.finance/](https://www.snowbank.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche
- Contract surface: 36 unique implementations (51 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,791,753.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Snowbank. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across avalanche. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: erc20 (2), erc20permit (2), ownable (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 4; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 36
- Raw deployments: 51
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

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb52d65708078a615d48813b583cc34244de5bc4d` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ed6713a67298c4d826a3690cea628e20d4d19fc` | ⚠️ Unaudited |
| ETHTimeBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x472c18c4079ecb68629f4fba1141172404bfee9c` | ⚠️ Unaudited |
| JoePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x425c45adfb53861e5db8f17d9b072ab60d4404d8`; avalanche `0x53942dcce5087f56cf1d68f4e017ca3a793f59a2`; avalanche `0x781655d802670bba3c89aebaaea59d3182fd755d`; avalanche `0xa3d2cfe49df9d1ea0dc589b69252e1eddc417d6d` | ⚠️ Unaudited |
| MEMOries | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-255156 | `0xe9eb40d52ce4744322204d4a29af63c30f0260a4` | ⚠️ Unaudited |
| SnowbankBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x0d71d9616f6844f12f1ce1516aa67817754517ff`; avalanche `0x4226b0df20ed038827d9a9c99de9d21997007174`; avalanche `0x555d0112b1ca9e468c04dab37195b2a48c83f43e`; avalanche `0x5e831ef7b5b2824b6f327055d0193ecf8dcaa480`; avalanche `0x8548a41a896e0d1163bf863c807f3c72409b1432` | ⚠️ Unaudited |
| SnowbankFinalRedistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafe654c1b34e9f702bf8007bccd6481b90476887` | ⚠️ Unaudited |
| SnowbankNoRFVBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4a916abcb24236cae854c51914b8374374fa7ac0`; avalanche `0x5030dcf903563682e312839622393bbbbe8ec36e` | ⚠️ Unaudited |
| SnowbankProMaxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0xa420aac325ee5b4e7b7b6008e73bb77452ac3f95`; avalanche `0xdbec2f16aff7dbdc28353818cd300a1e3fe0b224`; avalanche `0xfe5ab268e77995f2b2319da726084e1c43ff2380` | ⚠️ Unaudited |
| SnowbankProMaxFactoryStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a019fac4954af6019836d3769920122fbf3b3be` | ⚠️ Unaudited |
| SPMSubsidyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbf060a065c918022006699da8e300b0ca152706` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d371d925db78f8e46130af95756789ece6387ce` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb996392302721270609b41f004357c0c4e2ca625` | ⚠️ Unaudited |
| TimeBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x288e6d7f4935c1f4d2862715306d4bdf8dea6592`; avalanche `0x587bc7775f88d9a190aa02d30f7df2c9bb183f5d`; avalanche `0x82332edf98c2d8b40f14b1db7b8dc07451266cca`; avalanche `0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f`; avalanche `0xcf6568d0536f2048bcdb6b4c05fe933db4ec50f2`; avalanche `0xcf7a5f05e4c89f1fce463317ca47520c98761d3e` | ⚠️ Unaudited |
| TimeBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b` | ⚠️ Unaudited |
| TimeERC20Token | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-255153 | `0x7d1232b90d3f809a54eeaeebc639c62df8a8942f` | ⚠️ Unaudited |
| TimeStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-255154 | `0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad` | ⚠️ Unaudited |
| TimeTreasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-255155 | `0xa82422a5fd4f9cb85cd4aac393cd3296a27dd873` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10720a029a5e5281391be3181477e48d47d0ff91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c8ba2705f5fb5ac7217f6c275114725f2f4b88c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x31c4c046efad4b04b823a919cc0bdd0f663c87d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3507e56d5e632c3a361bc94ceb3d7946961ae374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x501968f02d2b2b007d4176c633c92564653df9ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7513ba361ebbfca1c08949aab672335b74a21bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cf2c5ca2e9901c6ace4c4c1f75c8f31e69c1c36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99bc52404f3d268ba6c69282443bc5c28fc06fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb513866685be25b74bac3a01eef292f96de0ab86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0e7da06e56727f3b55b24f58e9503fdaafb2a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2a77c964957f98787af627b6930e0a50f22bd29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc970dab38627bc7ba1487754d832a327e0e626cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9d419498f1a75ffd25c751b5d80c476564c2402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdbed7494df1dc8f06bc2063fb55495260d7b3077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde9e52f1838951e4d2bb6c59723b003c353979b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe287023a1d1a4dc84e658ea0c1672607668b1ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf63887e5b0124a0fa92cffc492812d86666d27a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc3625cd7a5c9d40bfe6ee075a73867b32073f5e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 41
- Live contracts: 0
- Unknown liveness contracts: 41
- Source-verified contracts: 24
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=8, exact address book overlap=1, source verified unclassified=15, unverified unclassified=17

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | DAI<br>`0xb52d65708078a615d48813b583cc34244de5bc4d` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| contamination review | Distributor<br>`0x5ed6713a67298c4d826a3690cea628e20d4d19fc` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| contamination review | SnowbankProMaxFactory<br>`0xa420aac325ee5b4e7b7b6008e73bb77452ac3f95` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| contamination review | SnowbankProMaxFactoryStorage<br>`0x6a019fac4954af6019836d3769920122fbf3b3be` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| contamination review | SPMSubsidyRouter<br>`0xbbf060a065c918022006699da8e300b0ca152706` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| contamination review | StakingHelper<br>`0x3d371d925db78f8e46130af95756789ece6387ce` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| contamination review | TimeBondingCalculator<br>`0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| contamination review | TimeTreasury<br>`0xa82422a5fd4f9cb85cd4aac393cd3296a27dd873` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| exact address book overlap | MEMOries<br>`0xe9eb40d52ce4744322204d4a29af63c30f0260a4` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | SnowbankBondDepository<br>`0x0d71d9616f6844f12f1ce1516aa67817754517ff` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | SnowbankBondDepository<br>`0x4226b0df20ed038827d9a9c99de9d21997007174` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | SnowbankBondDepository<br>`0x555d0112b1ca9e468c04dab37195b2a48c83f43e` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | SnowbankBondDepository<br>`0x5e831ef7b5b2824b6f327055d0193ecf8dcaa480` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | SnowbankBondDepository<br>`0x8548a41a896e0d1163bf863c807f3c72409b1432` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | SnowbankNoRFVBondDepository<br>`0x4a916abcb24236cae854c51914b8374374fa7ac0` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | SnowbankNoRFVBondDepository<br>`0x5030dcf903563682e312839622393bbbbe8ec36e` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | SnowbankProMaxFactory<br>`0xdbec2f16aff7dbdc28353818cd300a1e3fe0b224` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | SnowbankProMaxFactory<br>`0xfe5ab268e77995f2b2319da726084e1c43ff2380` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | TimeBondDepository<br>`0x288e6d7f4935c1f4d2862715306d4bdf8dea6592` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | TimeBondDepository<br>`0x587bc7775f88d9a190aa02d30f7df2c9bb183f5d` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | TimeBondDepository<br>`0x82332edf98c2d8b40f14b1db7b8dc07451266cca` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | TimeBondDepository<br>`0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | TimeBondDepository<br>`0xcf6568d0536f2048bcdb6b4c05fe933db4ec50f2` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| source verified unclassified | TimeBondDepository<br>`0xcf7a5f05e4c89f1fce463317ca47520c98761d3e` | non_address_book | unknown | unknown | verified | n/a | `0x3c4935614685d9d5b73a372172579ff7bf1effd9` |
| unverified unclassified | UnnamedContract<br>`0x10720a029a5e5281391be3181477e48d47d0ff91` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0x2c8ba2705f5fb5ac7217f6c275114725f2f4b88c` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0x3507e56d5e632c3a361bc94ceb3d7946961ae374` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0x501968f02d2b2b007d4176c633c92564653df9ce` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0x7513ba361ebbfca1c08949aab672335b74a21bdc` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0x7cf2c5ca2e9901c6ace4c4c1f75c8f31e69c1c36` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0x99bc52404f3d268ba6c69282443bc5c28fc06fd1` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xb513866685be25b74bac3a01eef292f96de0ab86` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xc0e7da06e56727f3b55b24f58e9503fdaafb2a68` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xc2a77c964957f98787af627b6930e0a50f22bd29` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xc970dab38627bc7ba1487754d832a327e0e626cd` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xc9d419498f1a75ffd25c751b5d80c476564c2402` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xdbed7494df1dc8f06bc2063fb55495260d7b3077` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xde9e52f1838951e4d2bb6c59723b003c353979b6` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xe287023a1d1a4dc84e658ea0c1672607668b1ac4` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xf63887e5b0124a0fa92cffc492812d86666d27a2` | non_address_book | unknown | unknown | unverified | n/a | `0x881f661028ec765b3df5c9884b5d568495ab14ba` |
| unverified unclassified | UnnamedContract<br>`0xfc3625cd7a5c9d40bfe6ee075a73867b32073f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x9c44179ac9056b248a0ff8faaa4d92561c8f098e` |

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
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

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
