# Agentic Audit Brief: Re

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Re (`re`)
- Website: [https://app.re.xyz](https://app.re.xyz)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, ink
- Contract surface: 64 unique implementations (64 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $246,864,754.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Re. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, ink. Structural roles: 4 core, 3 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), infra (3)
- Contract kinds: contract (7)
- Detected standards: accesscontrol (3), erc165 (3), erc1967proxy (3)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x0937df35e95e8ed2d2ecd66af3426c669d64f281`, chain 43114)
- ERC1967Proxy (`0x180af87b47bf272b2df59dccf2d76a6eafa625bf`, chain 43114)
- InsuranceCapitalLayer (`0x4691c475be804fa85f91c2d6d0adf03114de3093`, chain 1)
- KYCRegistry (`0x2723d4063765223e40d21d02d9d8685511bedb19`, chain 43114)
- RedemptionVault (`0x5c454f5526e41fbe917b63475cd8ca7e4631b147`, chain 1)
- SharePriceCalculator (`0x5cd24d20e2f3c6742be752cb0f8c2531ca3b7425`, chain 42161)
- TimelockController (`0x69ddea332723cf5407151aaf68b9b076557fca93`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 23 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 34 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 7 of 64 unique; 57 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 64
- Raw deployments: 64
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c04457b00b09f30d3bc866e3d14493a8069e7d7` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1872758f3635aa3cfa58ca30bc2ec84e5a2c493f` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x296da459b6192ec337a4784ea4fd8c90df38a2cc` | ⚠️ Unaudited |
| AddressBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9e4f633ed11178f69a861913124150e00d0cf5` | ⚠️ Unaudited |
| CollateralManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18538f534c74176bd9384e28f95ef98e4ef8f1c7` | ⚠️ Unaudited |
| CompositeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x439b0f40ed075ff3052b5bf035d17c26d22accc7` | ⚠️ Unaudited |
| DecentralizedFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78b52f4d1f0d8226dc400072c66d38beae23ef71` | ⚠️ Unaudited |
| DepositTokenRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x474bd40cfddafb2cff7954cc50c10c6dd7ec47f1` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f41ef93dece881ad0b98082b2d44d3f6f0c515b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-252554 | `0x0937df35e95e8ed2d2ecd66af3426c669d64f281` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-252553 | `0x180af87b47bf272b2df59dccf2d76a6eafa625bf` | ⚠️ Unaudited |
| ExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05175571fe251be44511240caf3ac305a4b3fb1e` | ⚠️ Unaudited |
| FeeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15fd35d6207e7f3d8cc28c5965c615420fd9da45` | ⚠️ Unaudited |
| InstantRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x121e2db2f8eed242d7265d2e2bd9a527843f9de4` | ⚠️ Unaudited |
| InsuranceCapitalLayer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-252552 | `0x4691c475be804fa85f91c2d6d0adf03114de3093` | ⚠️ Unaudited |
| InsuranceCapitalLayerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x355fee76e3860902b39a42fd12372b382296e1f6` | ⚠️ Unaudited |
| KYCRegistry | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252551 | `0x2723d4063765223e40d21d02d9d8685511bedb19` | ⚠️ Unaudited |
| L2SequencerAwareOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0920f9d54352df06ceba0737aa1712c3b08a670d` | ⚠️ Unaudited |
| NAVConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105f7f110ed2293b3d34fc8871204d20a631d717` | ⚠️ Unaudited |
| PayoutTokenRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15b5330d0ac7fafa5e51e763852ad54ce387a0ea` | ⚠️ Unaudited |
| PendleREUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0707523e0cd77d8ed714feadbdd200ccd37432e2` | ⚠️ Unaudited |
| PendleREUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x62f338f22045cdac5dcc6b7b0bcaa21cf1c7b2d4` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61d551baa2cf670836813720bf07db98e13d2975` | ⚠️ Unaudited |
| Prestaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03d16b9a4107a2abcfe6385c8c61d6afd773875d` | ⚠️ Unaudited |
| PriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c0a73999f8898e28f79b1bd7d9ed9f14105b9e4` | ⚠️ Unaudited |
| RatioVaultStableTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38ce52d3ad37929612b047130ce804bdd308ad26` | ⚠️ Unaudited |
| RedemptionGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x380b62fb2a436bc304b02950a73c6970bb9f15e7` | ⚠️ Unaudited |
| RedemptionReserveCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1928772d65a7da4630ab7e2feb425d89509538d3` | ⚠️ Unaudited |
| RedemptionVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252545 | `0x5c454f5526e41fbe917b63475cd8ca7e4631b147` | ⚠️ Unaudited |
| ReProtocolExchangeRateChainlinkAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c558694f16484e5c7a4a52bd210d471860ce7bc` | ⚠️ Unaudited |
| ReProtocolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d24b40e5b1103b3ce071192fce91ef39abc0273` | ⚠️ Unaudited |
| ReProtocolTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0590612e831c137c314cb2d3a7534993a1f1c984` | ⚠️ Unaudited |
| SharePriceCalculator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252550 | `0x5cd24d20e2f3c6742be752cb0f8c2531ca3b7425` | ⚠️ Unaudited |
| SharePriceCalculatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0520a29f93bedd7f360850e205bb070d3de96033` | ⚠️ Unaudited |
| SharePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0764bfa862164d28799f31e7e1e7206f5177b6bb` | ⚠️ Unaudited |
| SimpleOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906a94ca3275243459fdb22324b242be4c65c87c` | ⚠️ Unaudited |
| StableTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024457df4689e15f6453417f944a45bf9e3525d3` | ⚠️ Unaudited |
| ThresholdOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a5425abdb2ff01671b0596a015a08c2037a6bb6` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252546 | `0x69ddea332723cf5407151aaf68b9b076557fca93` | ⚠️ Unaudited |
| VolatileTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56b079978151421cbe625660eefc45380e469511` | ⚠️ Unaudited |
| WindowRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f4effe40d9e479e1909212f024c0181ed7b9686` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5086bf358635b81d8c47c66d1c8b9e567db70c72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x73d37a98c0fcbd049bffffe67bf9af36d603c0f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x82f1806aeab5ecb9a485eb041d5ed4940b123995` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb9453ef22cb38abc7a3af9c208f65c1bfe31e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd1d104a7515989ac82f1afda15a23650411b05b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xddc0f880ff6e4e22e4b74632fbb43ce4df6ccc5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe1886be2ba8b2496c2044a77516f63a734193082` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf04422e68f55e7c25724128692c3063a775472f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xba9425ec55ee0e72216d18e0ad8bbba2553bfb60` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x7d214438d0f27afccc23b3d1e1a53906ace5cfea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x9ab62aebabe738ab233c447eedce88d1d0a61fe3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6825d9441e022ef3e7e97dcee75b30dda758f392` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x76ce01f0ef25aa66cc5f1e546a005e4a63b25609` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x802edbb1ec20548a4388abc337e4011718eb0291` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9cf2bb61666221aeb028cf0eb27c282ead25fa4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9e2e05799966fd79852525368c201ed1624e09f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xfd4016ea13ca8acc04a11a99702df076a4d3b852` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8cb96010a05cab68faecbd650830f4ac400f5c24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xb22a8533e6cd81598f82514a42f0b3161745fbe1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc79a363a3f849d8b3f6a1932f748ea9d4fb2f607` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xdc481e538125a8542d3ec262d40415328f1b16c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xe13292f97e38da0c64398de5e0bfc95180de9d23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | n/a | `0x5bcf6b008bf80b9296238546bace1797657b05d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.certora.com/reports/re-core](https://www.certora.com/reports/re-core) | Hacken | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20984] www.certora.com/reports/re-core — no match: The provided text is a summary page without a detailed scope section listing specific contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x4691c475be804fa85f91c2d6d0adf03114de3093` | InsuranceCapitalLayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2723d4063765223e40d21d02d9d8685511bedb19` | KYCRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c454f5526e41fbe917b63475cd8ca7e4631b147` | RedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5cd24d20e2f3c6742be752cb0f8c2531ca3b7425` | SharePriceCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 23 |

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

- [20984] www.certora.com/reports/re-core

Fork inheritance lineage and inherited audits are included when available.
