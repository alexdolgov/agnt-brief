# Agentic Audit Brief: ENKI Protocol

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

- Project: ENKI Protocol (`enki-protocol`)
- Website: [https://www.enkixyz.com/mint](https://www.enkixyz.com/mint)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, metis
- Contract surface: 46 unique implementations (46 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $235,206.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ENKI Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum, metis. Structural roles: 2 core, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), infra (1)
- Contract kinds: contract (3)
- Detected standards: erc20 (2), erc1967proxy (1), erc20permit (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x28254967e34db48eb548ec078288cd69b5f63ea5`, chain 1088)
- UnnamedContract (`0x79f3522a1b56f22a6549e42f9cfa92ef5feb81e8`, chain 1088)
- UnnamedContract (`0x810ef8aa1326fb1c5ce57cd79d549cf9b2cc32af`, chain 1088)
- UnnamedContract (`0xcf8a7b8ce925133892ec641cd75b6074b6841c2a`, chain 1088)
- EMetis (`0x97a2de3a09f4a4229369ee82c7f76be1a5564661`, chain 1088)
- ENKI (`0x096a84536ab84e68ee210561ffd3a038e79736f1`, chain 1088)
- TransparentUpgradeableProxy (`0x13c0ccc4c21a1aa082ab92ca515fe36f514c8cd7`, chain 1088)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 7 of 46 unique; 39 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 46
- Raw deployments: 46
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Config | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x217368262b094cfc15ef7202f76ac4faad420513` | ⚠️ Unaudited |
| Dealer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159a9fa80516f3779d29c0ec05521bee26650a2e` | ⚠️ Unaudited |
| EMetis | unknown | project_anchor | own_supporting | 0 | metis | unit-237212 | `0x97a2de3a09f4a4229369ee82c7f76be1a5564661` | ⚠️ Unaudited |
| EMetisMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6a58f4b127ccc522c5ad6eff2b67d1dd8c51538d` | ⚠️ Unaudited |
| ENKI | unknown | project_anchor | own_supporting | 0 | metis | unit-237207 | `0x096a84536ab84e68ee210561ffd3a038e79736f1` | ⚠️ Unaudited |
| ENKITreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x93b171deae9c5ea23335ca0c59639c2330b56d96` | ⚠️ Unaudited |
| InviterNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x153694e11768a59c7af7d00a960f70cc6307d76e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1d9c0db3937ad9346ae6b921638bc090736564c0` | ⚠️ Unaudited |
| RedemptionQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5f31e5f22729d58c66147e57f6013315509b5960` | ⚠️ Unaudited |
| RewardDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x06d51063df7842295ea9131432db77285c329e89` | ⚠️ Unaudited |
| SeMetis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9efb0501019e536c70c77c22170f2eb07c420a91` | ⚠️ Unaudited |
| SequencerAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad9864d900b0ec7b7d0d2bda55cce091778f4b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-237208 | `0x13c0ccc4c21a1aa082ab92ca515fe36f514c8cd7` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x72405496730fc3d38fca77dc67f3c7ecc18273dd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78eb118ae6c97ea3d7f02f3859d1fe0314c21865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9fe64d8ed1c07c1ae5bb90f8a6307c0ee451aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad25b6b3cf16e4f8fc2b12e28268664c8c9e01e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xeed9de312f438692570b103b580a59bea80aad65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf1a376a969532337912d9e3d9b16ef9650cd610d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x13fa165e0f25ba2d658ce682faaa7baa84f5c0c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-237209 | `0x28254967e34db48eb548ec078288cd69b5f63ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2e1e221ad59bd24395f1cb93ee35d8fe5e72d3bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x38b641479aef5c34886787e8bb9c768e4c9eb911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x41157b9e74388415c38dbb2e65b3fa9a7505d663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4b76085afa9d396252d25a38e058da2bacced2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x54cd4e7113a34ea1438064ad9365671a3a5e7220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x578577d0ac1cafae86ea6cdfa896e79e5e8800c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x78095d03a4de43c0fa76b445de04b3552cbade1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x78eb118ae6c97ea3d7f02f3859d1fe0314c21865` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-237210 | `0x79f3522a1b56f22a6549e42f9cfa92ef5feb81e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-237211 | `0x810ef8aa1326fb1c5ce57cd79d549cf9b2cc32af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8ba21d31da669db73979dd9edd3db61d927ec428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x98e14a00ec596c678af9497571a15d92794d8e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb5f9f8ce611272c199ba2ed37779cb4aba7fa27c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb9fe64d8ed1c07c1ae5bb90f8a6307c0ee451aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbc678433bcb6fe20ec3c5df0f9b1a6d49efbd3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc9145a885a61fd36fb45f14bd351d2b01914ca96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc9ed9199a4105e26d9da50eb92fae0ff694288ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcf392e44db97b1f574dbbf13250b91ada6157aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcf54c3c15361c1d923ef9997173fa1ba136d134d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-237213 | `0xcf8a7b8ce925133892ec641cd75b6074b6841c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd88d6b965eeb713fda4a6c0bc6254795b4991918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe7d0859ed0a7401c29d02115eb1811adc35343fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xeed9de312f438692570b103b580a59bea80aad65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf1a376a969532337912d9e3d9b16ef9650cd610d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf37c8d7142ad738bd834d06c13da1bc0edf8b33f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 26
- Live contracts: 0
- Unknown liveness contracts: 26
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=2, unverified unclassified=24

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0xeed9de312f438692570b103b580a59bea80aad65` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| exact address book overlap | UnnamedContract<br>`0xf1a376a969532337912d9e3d9b16ef9650cd610d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x78eb118ae6c97ea3d7f02f3859d1fe0314c21865` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xb9fe64d8ed1c07c1ae5bb90f8a6307c0ee451aa8` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xcad25b6b3cf16e4f8fc2b12e28268664c8c9e01e` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x13fa165e0f25ba2d658ce682faaa7baa84f5c0c1` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x2e1e221ad59bd24395f1cb93ee35d8fe5e72d3bc` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x38b641479aef5c34886787e8bb9c768e4c9eb911` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x41157b9e74388415c38dbb2e65b3fa9a7505d663` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x4b76085afa9d396252d25a38e058da2bacced2ec` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x54cd4e7113a34ea1438064ad9365671a3a5e7220` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x578577d0ac1cafae86ea6cdfa896e79e5e8800c9` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x78095d03a4de43c0fa76b445de04b3552cbade1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x78eb118ae6c97ea3d7f02f3859d1fe0314c21865` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x8ba21d31da669db73979dd9edd3db61d927ec428` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0x98e14a00ec596c678af9497571a15d92794d8e10` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xb5f9f8ce611272c199ba2ed37779cb4aba7fa27c` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xb9fe64d8ed1c07c1ae5bb90f8a6307c0ee451aa8` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xbc678433bcb6fe20ec3c5df0f9b1a6d49efbd3c5` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xc9145a885a61fd36fb45f14bd351d2b01914ca96` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xc9ed9199a4105e26d9da50eb92fae0ff694288ab` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xcf392e44db97b1f574dbbf13250b91ada6157aa3` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xcf54c3c15361c1d923ef9997173fa1ba136d134d` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xd88d6b965eeb713fda4a6c0bc6254795b4991918` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xe7d0859ed0a7401c29d02115eb1811adc35343fa` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |
| unverified unclassified | UnnamedContract<br>`0xf37c8d7142ad738bd834d06c13da1bc0edf8b33f` | non_address_book | unknown | unknown | unverified | n/a | `0xa653cf2512bf247f947470196b333e04bff2746b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](http://odex.vip/?sign=9c65ba809188969ca834a3499bca3464) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20229] DL audit link — no match: The provided text only contains 'Armors' and '---', which is insufficient to identify any contracts or audit details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | `0x97a2de3a09f4a4229369ee82c7f76be1a5564661` | EMetis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x096a84536ab84e68ee210561ffd3a038e79736f1` | ENKI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 32 |

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

- [20229] DL audit link

Fork inheritance lineage and inherited audits are included when available.
