# Agentic Audit Brief: Mars Poolin

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Mars Poolin (`mars-poolin`)
- Website: [https://mars.poolin.fi](https://mars.poolin.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 44 unique implementations (46 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $138,834.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mars Poolin. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 4 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: erc1967proxy (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5cbade4d03ea436f792e9f939e70908524949efd`, chain 1)
- UnnamedContract (`0xa8b12cc90abf65191532a12bb5394a714a46d358`, chain 1)
- UnnamedContract (`0xae26170200ec3ae66b8afaa87f2fa49c1e0a02b9`, chain 1)
- BTCParamV2 (`0x260f6bab7680019d2447bf62e9dbbc80dd94b897`, chain 1)
- MarsToken (`0x66c0dded8433c9ea86c8cf91237b14e10b4d70b7`, chain 1)
- TokenDistribute (`0x52fe73fa78d4b85437a33a7dcbda16aada07e7b7`, chain 1)
- USDTMARSLPTOKENPool (`0x9b9c2d202f9a0ed9be9daf9df50cc0e327a809dd`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 7 of 44 unique; 37 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 44
- Raw deployments: 46
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BACMARSLPTOKENPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8360b0d0d01e938441902569dfff66af701644b1` | ⚠️ Unaudited |
| BTCParamV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388955 | `0x260f6bab7680019d2447bf62e9dbbc80dd94b897` | ⚠️ Unaudited |
| ETHParamV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2472effdc3e4379074e808f475a7266357c200ff`; ethereum `0xb6d9581d2df4985a34f99f2d12aca27e014a6a51` | ⚠️ Unaudited |
| LpStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cb6853e35f8a8bd1da907c7d1c967a0ad080de` | ⚠️ Unaudited |
| MarsLpStakingController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91706451e7f547233b13b3ce245186a2fa60142` | ⚠️ Unaudited |
| MarsStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f12c3af52a3b2ee3b63dcef8be2130a202e3c` | ⚠️ Unaudited |
| MarsToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388951 | `0x66c0dded8433c9ea86c8cf91237b14e10b4d70b7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97386b57e15c7fd09e36f04018f0b442b99a1c1a` | ⚠️ Unaudited |
| POWToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b939e7eb0cb290fadccd0816e8975069158ce6` | ⚠️ Unaudited |
| POWTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x16a60d78fe6f92d25ebddaff6b1efc9d193d4fc8`; ethereum `0xadf69ad146132b8e0dcbf47657c3463f9c071065` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x033666a848d68c9854b038ebb3958097f688ce00` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3a8f85ab99e5e90d9d0dda0adf2139389d6106c` | ⚠️ Unaudited |
| StakingRewardsWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a710218ec2ba2ac459ee28ec37c6df7fe18e11` | ⚠️ Unaudited |
| TokenDistribute | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388949 | `0x52fe73fa78d4b85437a33a7dcbda16aada07e7b7` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5771144334826d79c07ffa544e935921904d45f2` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x64b91b92240bc1901855dd55ae632addb650d089` | ⚠️ Unaudited |
| USDTMARSLPTOKENPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388952 | `0x9b9c2d202f9a0ed9be9daf9df50cc0e327a809dd` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0867116d24634c1e68c7d070e68825c9a91afb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca747e2a9560fda38348b844195277ec05f3765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef1ea792c990349f02029284df4fd2d3fc03dba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388950 | `0x5cbade4d03ea436f792e9f939e70908524949efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77c076a06b80ef655abd23f3c61062cd8daa3ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8084c75c042ccee814280151ecbe1e6d217335f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81c5d2a8624a786ac5c47ff7afbf0ca4a05ee4b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972c10acd08e8194dd66d16ae18869da7a7f11cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa15690e9205de386ce849889831c1668c300c1ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388953 | `0xa8b12cc90abf65191532a12bb5394a714a46d358` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388954 | `0xae26170200ec3ae66b8afaa87f2fa49c1e0a02b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebc37426de5e7054a6c2bce6806ab29c0ac5b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb326e32564586854cef347defa98410526356280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc15c83ca823417a0ccdcf2f37a8fb93f7928b97a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc76812da08c9fff551c90c2dffb4ba1de6e92f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2c5966b435b66b2ab0b165cc5a08b5da1bbc941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd77e6bdb5f61bf6d6abb1e8545bcb8ccb2414550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf23427abe061cd10408661bd3a7d051efe7fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfb185d12c92d6e78e89be7835d1d0d00b403a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0926e7fbdff2c3881d63971d392f1e6be57a582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4893553cb3693a890a4640fc19fd6c2ba05adeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe49486e1412fb9697303cd3e3e9b3f41324b4540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf39f8086446abd5323652504641ea331787bc62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3da734c6040665eac90f1466d23301d6d0b7cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9f520c02025e0e3b3a6b81248ca340e309eb6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc2e351d66b2e1df813cca33f409d5ceaf495a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8945079d2a02603f2101eb3872f739ce1174bc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 26
- Live contracts: 0
- Unknown liveness contracts: 26
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=26

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x0867116d24634c1e68c7d070e68825c9a91afb48` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ca747e2a9560fda38348b844195277ec05f3765` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ef1ea792c990349f02029284df4fd2d3fc03dba` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77c076a06b80ef655abd23f3c61062cd8daa3ad0` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8084c75c042ccee814280151ecbe1e6d217335f9` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81c5d2a8624a786ac5c47ff7afbf0ca4a05ee4b8` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x972c10acd08e8194dd66d16ae18869da7a7f11cd` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa15690e9205de386ce849889831c1668c300c1ad` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xadf69ad146132b8e0dcbf47657c3463f9c071065` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaebc37426de5e7054a6c2bce6806ab29c0ac5b33` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb326e32564586854cef347defa98410526356280` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6d9581d2df4985a34f99f2d12aca27e014a6a51` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc15c83ca823417a0ccdcf2f37a8fb93f7928b97a` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc76812da08c9fff551c90c2dffb4ba1de6e92f00` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2c5966b435b66b2ab0b165cc5a08b5da1bbc941` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd77e6bdb5f61bf6d6abb1e8545bcb8ccb2414550` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xddf23427abe061cd10408661bd3a7d051efe7fed` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdfb185d12c92d6e78e89be7835d1d0d00b403a4e` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0926e7fbdff2c3881d63971d392f1e6be57a582` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4893553cb3693a890a4640fc19fd6c2ba05adeb` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe49486e1412fb9697303cd3e3e9b3f41324b4540` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf39f8086446abd5323652504641ea331787bc62b` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3da734c6040665eac90f1466d23301d6d0b7cb7` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9f520c02025e0e3b3a6b81248ca340e309eb6cc` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc2e351d66b2e1df813cca33f409d5ceaf495a9d` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe8945079d2a02603f2101eb3872f739ce1174bc` | non_address_book | unknown | unknown | unverified | n/a | `0x65785917bc751f6506bd4818527b1909d0b1e57a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x260f6bab7680019d2447bf62e9dbbc80dd94b897` | BTCParamV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66c0dded8433c9ea86c8cf91237b14e10b4d70b7` | MarsToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52fe73fa78d4b85437a33a7dcbda16aada07e7b7` | TokenDistribute | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b9c2d202f9a0ed9be9daf9df50cc0e327a809dd` | USDTMARSLPTOKENPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 27 |

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
