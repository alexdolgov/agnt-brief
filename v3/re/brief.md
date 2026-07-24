# Agentic Audit Brief: Re

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

- Project: Re (`re`)
- Website: [https://app.re.xyz](https://app.re.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, ink
- Contract surface: 226 unique implementations (226 raw deployments)
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
- Outside the address book: 196 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 7 of 226 unique; 219 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 185
- Unique implementations: 226
- Raw deployments: 226
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

### ❓ Unverified (185)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0606ed32e8ca72a65526ae1e338c3b0f4686fa66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0649a6ad66f145e1907401ae3db6418fe42e084b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x071df66df17f894606988f237ecb6ee36ab0512e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1293c5c97af6670f3296261cee12197dc732f681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8468f0cd9724017e12d16042ac16ff00a233f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df87810fcf9b8e6a42adc5923bc2ee0ca0467ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38ec1212fe87253943abb0f904f457dad59c5996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0da1c363e34802c6f12f9c27276dc0e6696fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47dfd0c8eee949748c1d5cb6b695a4aba5fe7379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e12e4a94257f7278df73c453547daf93257399f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50437254fcf805b44c997b2ee04f34704170bd3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5086bf358635b81d8c47c66d1c8b9e567db70c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e9b453ea1966a71002c52c33d22d155b726b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bfefb1638a12b0a0a5edc4b4ad33a14f41c1496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e97e2a71e6c041e52cc5e5eb5895f983a69cf80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603892a59967c3fc0dd452018a5a786e8ce420c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641d997e682dcd15966dcdcf9941eeb39c9da325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678287d2a6ac5f892598084a2a8323afb6c18676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fd7ef1c4e42d3bcc7cbb0a6869ddebcff6c67f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x73d37a98c0fcbd049bffffe67bf9af36d603c0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x749eb5c8c857e965abf5dee617e1a25803c65c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74ff3f3505771828bba6c88da42f4b47fcbbc773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e499842e7634cce793ffd5d44383bb4a2f086e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ea853a346d0ba5c9a1730d3a6cf7cfd789e42af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x822f703b92195ea7188a929e7bf614e543cc73ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x82f1806aeab5ecb9a485eb041d5ed4940b123995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8317dd90dacf0fa7926e1546dd3f9b03c26fc836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84d4eaeb10f9e57b67622f667c6c13e22fa4b2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8940132f30de21e427825efe82c9aa17118e9ef8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb9453ef22cb38abc7a3af9c208f65c1bfe31e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92203028db040123e85a653773f9011f10a3050b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9487bd5a3b16ecb5f3184453e3ee75b800141648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f9e2178b0c7fabe7bf6737c331ac6fdc5836351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa31deebb3680a3007120e74bcbdf4df36f042a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3e4a82b1e775c2072105ace3cb0d5335c919723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa621fa1ce6f30cad6785e5f462b08f4b1b6e5631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb533d33b53227950951e5c9df89d2dc2a9fe1d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5930ad554f9da6783a3dd259a111e9d1bd85b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6ad3633cb3fafed3d375d8c64240f122e19fb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c31dc5722212f5353f3afe9c602d861332d2fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a1b3ee205f3f16514ed104ba4bf01b9ba1021a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc054364cd87601e5eeeff0fa411d7dacab496cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2f7c5fda6c25ec6e9a2c5eaa7cb66b90ca4d6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc991199b61562fa8541159095970f044159143f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd8dbcbdde849188bacbf19313043d102413985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd2d8fffb6bbf03a45e014b769fc3711c83aa714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf5ca0b3d358c39daff24142d1bbc7c6b96395d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd1d104a7515989ac82f1afda15a23650411b05b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2e077d945ec77b45fbe4622e01f4c79e4ba389a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd34c1268cd6ed5abf885e95e04f2b3b8650374e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd85d3718249d485e358c3e4db162abc5be9ac0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xddc0f880ff6e4e22e4b74632fbb43ce4df6ccc5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0daa5afe0e7550be8d020cb1abba0bb346f3776` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe1886be2ba8b2496c2044a77516f63a734193082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe442fed469622612e68176b665b1cba17cb712e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedd9bc7964d052c2d2ad025c5877320ec21b794c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf04422e68f55e7c25724128692c3063a775472f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3ff6a66a7fd8168d06f470c1517848f1083aa61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf682e0e4288e9db3229d6f8d9adf0bb1289e99eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf788624278dc0d5b4e494f834932e6938aa2bdc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe76cf5ed606593fb7764f33627b8d7e0f9fab66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xba9425ec55ee0e72216d18e0ad8bbba2553bfb60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7fb6432017dc43752372a629b15c3ad446e827c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe566471a49ba61110e9a5570e5f298762443aa52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ac879efef492a500434caa434f04ca6f4d4defd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a6cb15c714ab2e1bfcecf28763de9fe5208d8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36d954469e49e6f271f9e9a1e905c397882d9caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ac76d267f7d619c2452b15791bd60f2259768e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47de22ca61f65af241205e45dadf039475a02241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x553b98760f75f384aaa406f75d722990cf84e527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ff04e2dfd6e8f10cbc77107b816f8db9423f512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6357d8fb7d951a1b259ebcf6ba3b5393324e85c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66629e2c368383b37defcb9ca064f524708c4347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d70d88bf47f26e9f3426fb4acab663d1aaf6901` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x7d214438d0f27afccc23b3d1e1a53906ace5cfea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x80d835e784912356175654aa132526279eba2c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x890c81bed42a3b2080218eb8e4c7c51524e56c09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x9ab62aebabe738ab233c447eedce88d1d0a61fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b1203725daf1805790e1701cc3d9782618e63d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b15fd928f5cbb2fc523bbe4c849ad4175c382de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bc0d11ac56d0a251162635389f7dfe14f567962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f644c7156f0b8f464246dea8b2d59fb36fcc91f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0a638dc8f3a3bb0a35a98e454ae9f4a69531b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb2e297ff0269a2708e9520ae00fdaf7c63f3b1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb83dbb9a190fedd2fc538037179a86e44f4e5ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc87e94afd99cdf220152dcbf22e33c332621788c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccc274454dd89e58c53f1aafb196e71885ff96f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcdc6159ef15c931a1af0d9e2576a65149558259d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce978312695c307a9810ad49ecc74a9743e8c605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4326b167222be2478af3e5e3352c180e97f395e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf58c8edd1dd26cf3a5e7de534b34aee059082342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c8680b86abde0bbdedb25e8be5f96df82b0907b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x104f8e8ea3fd2f33cde5f43e63932e8931ca7444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x138c42d9070c00381661148b334bbbd69f89e2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a93bf029e35f0ba59e32b9f818e054e57beb800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c2cb2d07a73bc48cf4c6785ea1bc66e6c244898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35223ac12cb565d2af845448ed8aa3c5f997bc85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x383cf59911b63669c7b548d23fef2a48ad86680e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c909b22bf1a23d3e930cff55c4d36b68f82bdef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3db62bd5bb40cf4b21223bce6f22bbe5d7f258bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f16167082d03074ebc97a984f98bfc550c133d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x474047e01aa9e24c9699f0b0ceeb9918ebeba5d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a7075270489056bbc545eda68394155ea24caf3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6825d9441e022ef3e7e97dcee75b30dda758f392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72b32741931a5cf3039f75ee53ab67356a5a7d12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x76ce01f0ef25aa66cc5f1e546a005e4a63b25609` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x802edbb1ec20548a4388abc337e4011718eb0291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b5ae70fb72b1d63201dfa101f7c59400ef07fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98bdded5056c1aa6a2532f006a3c45986eaee9e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9cf2bb61666221aeb028cf0eb27c282ead25fa4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9e2e05799966fd79852525368c201ed1624e09f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa37fc809dabead2a16f79c24c618afb8b58c94e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3b25d04306f1552ed4b4e18a22197912fc07aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3d5d7a9ab0dd5e2940e8a409649ef35319f6009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa80a636b3626ca5f78b590bccb0feb1564a6d9c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa0b20239920a1bb5bca701af071f1050f18cc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba16fe5b0fc7344cfe649dd60a05564cdc0bc7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe8d00261f7677df4c052694e2b66e6405d6bddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbecc90df3ddc0c1420688568e7b45b3d9a70fd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2e999e47fd11bd48bee21bff00f24e9a7450f18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd840e9975d454a7ddd2ef76c72d2f19b2d3ab1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3d848bc66f90608f9ab4cf613d4fd2307dca21c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6f8f20353f59234a932c0e58d11379d99e1c6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3b62b29680eeb18ffaed0fcdf9b4799f9d10bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4842cf4a30e363919b0d31f4186235f6f54a189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8039527fb2dfe77c081f70e00c3a334dcea055c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfbd8e6064767115404c84ddd5dbe4eaba281d504` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xfd4016ea13ca8acc04a11a99702df076a4d3b852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x014a14089b4e695045bf89f1066b3ef3f1afd5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18a2c607d5e0ba436cba5cbc3e25c7ebded5292f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b11df089bf16af78c9eda838796121aa6c5abfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22295d0f8c874bb9a0444702c1007c8ab9e84689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27355df92298c785440a4d16574df736eb0627d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28043b1ebd41860b93ec1f1ec19560760b6db556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ca02eda655e9d1fece1954e0994b2f2c608aa83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2dd517b2f9ba49cedb0573131fd97a5ac19ff648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x318bfa8c1ce223836fde0ad60e8a5e04fd0d8924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x334ee14619cef590cd3e64753a69f99e61db4f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x336ffb39d411394dd92d08035bdc14e0e4f1dd73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a5ce69a1ada639042b30e1574eb9d6e939388a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4aa8647f889f077f32ea5232f88398e7491c1e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cf57dc9028187b9daaf773c8eca941036989238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f2eaebdd835ebe9108e718c0b6551e868381a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5420df40c5d00317927bbece65b879520207f91f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5429100c3856718191d73794bf38be5d6c0b7ca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c2d58627fbe746f5ea24ef6d618f09f8e3f0122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x601630d7670ae4ad5dd0c290302ec1188eaa2f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65ff399873431f38b56ab02fc86462b08a56ddaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a06da87e290e468a2cf698946a51fca29a36a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b4b16001868e5a97c4c8762203aa9d22ceacbde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7480ef6da925afac676a9539b8eb8cb401fc3c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76b961755c509024d0f174d6b527bace7cf7d9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b5c1665cd6c3172e6768f05d049626c7a02df4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f7a07ffde2ab490dad0c0d139d6c730bbe842cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b050c37b0c8de8f91c1bf648c6c0a4e4ed7c6ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x8cb96010a05cab68faecbd650830f4ac400f5c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d0ad3cd06185e13ea047fd479a5ac2a2f85b87e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f937bbaa8508268cc2c3d2a54c8d01d30eed679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x979ba33e32eaccf53818ba985c0813d699d0e9d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99c83ef05f249247312e95653764794728c63467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c33643076dabb133bfd55447b3b5a953d069039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c75c979e61f65f7a1c516e6fd6bf14b7a48b63d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0436b18750de5823c3ef54bec502ed78b34ffa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7087c87028e8ece44d867d8b822a3ed21ed4ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa99d9d4b22485ff56110bf8579c4beeb00082dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaec3e48648c46b9eda4c8832e2f0a6b23289915d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf389ff3df4441648610adae203bfc8a385ac0ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xb22a8533e6cd81598f82514a42f0b3161745fbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb51b96a145c55f102c0e593daa510f0340d11ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfbaca3a84a27d7528db1168415c6ea0ae3395b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc27201f18fe55128de3aa54e9863b3b792941cf5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xc79a363a3f849d8b3f6a1932f748ea9d4fb2f607` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xdc481e538125a8542d3ec262d40415328f1b16c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xe13292f97e38da0c64398de5e0bfc95180de9d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe464bfe19f718b7da9306381b3485188334d846e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe782a75a735251963bb16e903268eff13b45617c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8ec51566ba555d59cdc75caf2b3d1bf81c8d4bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe97b99fa3a4df696c70026aa86020261bcbb6e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf79e51598146e7a579e6f51be3529e825dc668ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8b283ad4d969ecfd70005714dd5910160565b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb5a24d071e29e18ef260a4eb86d4bdb03c00f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd436ad484d29bd75d0917777a8d7b183255212b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfee204625a9a5591fc2b593c1353403914b7c613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff708a2f317fee7b082858c210949ad825cfe9ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | n/a | `0x5bcf6b008bf80b9296238546bace1797657b05d6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 175
- Live contracts: 0
- Unknown liveness contracts: 175
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=13, unverified unclassified=162

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x73d37a98c0fcbd049bffffe67bf9af36d603c0f6` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| exact address book overlap | UnnamedContract<br>`0x82f1806aeab5ecb9a485eb041d5ed4940b123995` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| exact address book overlap | UnnamedContract<br>`0x8aeb9453ef22cb38abc7a3af9c208f65c1bfe31e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| exact address book overlap | UnnamedContract<br>`0xf04422e68f55e7c25724128692c3063a775472f2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| exact address book overlap | UnnamedContract<br>`0xba9425ec55ee0e72216d18e0ad8bbba2553bfb60` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x88e358349a78c0c29ef8e540e1131a87f54c9797` |
| exact address book overlap | UnnamedContract<br>`0x9ab62aebabe738ab233c447eedce88d1d0a61fe3` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| exact address book overlap | UnnamedContract<br>`0x6825d9441e022ef3e7e97dcee75b30dda758f392` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| exact address book overlap | UnnamedContract<br>`0x9cf2bb61666221aeb028cf0eb27c282ead25fa4e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| exact address book overlap | UnnamedContract<br>`0x9e2e05799966fd79852525368c201ed1624e09f4` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| exact address book overlap | UnnamedContract<br>`0xfd4016ea13ca8acc04a11a99702df076a4d3b852` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| exact address book overlap | UnnamedContract<br>`0x8cb96010a05cab68faecbd650830f4ac400f5c24` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| exact address book overlap | UnnamedContract<br>`0xc79a363a3f849d8b3f6a1932f748ea9d4fb2f607` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| exact address book overlap | UnnamedContract<br>`0xe13292f97e38da0c64398de5e0bfc95180de9d23` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x0606ed32e8ca72a65526ae1e338c3b0f4686fa66` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x0649a6ad66f145e1907401ae3db6418fe42e084b` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x071df66df17f894606988f237ecb6ee36ab0512e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x1293c5c97af6670f3296261cee12197dc732f681` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x1b8468f0cd9724017e12d16042ac16ff00a233f9` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x2df87810fcf9b8e6a42adc5923bc2ee0ca0467ca` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x38ec1212fe87253943abb0f904f457dad59c5996` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x3f0da1c363e34802c6f12f9c27276dc0e6696fd8` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x47dfd0c8eee949748c1d5cb6b695a4aba5fe7379` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x4e12e4a94257f7278df73c453547daf93257399f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x50437254fcf805b44c997b2ee04f34704170bd3c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x56e9b453ea1966a71002c52c33d22d155b726b0f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x5bfefb1638a12b0a0a5edc4b4ad33a14f41c1496` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x5e97e2a71e6c041e52cc5e5eb5895f983a69cf80` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x603892a59967c3fc0dd452018a5a786e8ce420c4` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x641d997e682dcd15966dcdcf9941eeb39c9da325` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x678287d2a6ac5f892598084a2a8323afb6c18676` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x6fd7ef1c4e42d3bcc7cbb0a6869ddebcff6c67f2` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x749eb5c8c857e965abf5dee617e1a25803c65c8d` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x74ff3f3505771828bba6c88da42f4b47fcbbc773` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x7e499842e7634cce793ffd5d44383bb4a2f086e0` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x7ea853a346d0ba5c9a1730d3a6cf7cfd789e42af` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x822f703b92195ea7188a929e7bf614e543cc73ae` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x8317dd90dacf0fa7926e1546dd3f9b03c26fc836` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x84d4eaeb10f9e57b67622f667c6c13e22fa4b2b6` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x8940132f30de21e427825efe82c9aa17118e9ef8` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x92203028db040123e85a653773f9011f10a3050b` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x9487bd5a3b16ecb5f3184453e3ee75b800141648` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0x9f9e2178b0c7fabe7bf6737c331ac6fdc5836351` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xa31deebb3680a3007120e74bcbdf4df36f042a40` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xa3e4a82b1e775c2072105ace3cb0d5335c919723` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xa621fa1ce6f30cad6785e5f462b08f4b1b6e5631` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xb533d33b53227950951e5c9df89d2dc2a9fe1d71` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xb5930ad554f9da6783a3dd259a111e9d1bd85b75` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xb6ad3633cb3fafed3d375d8c64240f122e19fb4d` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xb6c31dc5722212f5353f3afe9c602d861332d2fd` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xb7a1b3ee205f3f16514ed104ba4bf01b9ba1021a` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xc054364cd87601e5eeeff0fa411d7dacab496cbd` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xc2f7c5fda6c25ec6e9a2c5eaa7cb66b90ca4d6ed` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xc991199b61562fa8541159095970f044159143f5` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xcbd8dbcbdde849188bacbf19313043d102413985` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xcd2d8fffb6bbf03a45e014b769fc3711c83aa714` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xcf5ca0b3d358c39daff24142d1bbc7c6b96395d3` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xd2e077d945ec77b45fbe4622e01f4c79e4ba389a` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xd34c1268cd6ed5abf885e95e04f2b3b8650374e3` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xdd85d3718249d485e358c3e4db162abc5be9ac0d` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xe0daa5afe0e7550be8d020cb1abba0bb346f3776` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xe442fed469622612e68176b665b1cba17cb712e7` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xedd9bc7964d052c2d2ad025c5877320ec21b794c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xf3ff6a66a7fd8168d06f470c1517848f1083aa61` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xf682e0e4288e9db3229d6f8d9adf0bb1289e99eb` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xf788624278dc0d5b4e494f834932e6938aa2bdc3` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xfe76cf5ed606593fb7764f33627b8d7e0f9fab66` | non_address_book | unknown | unknown | unverified | n/a | `0x6c15b25e9750dccb698c1a4023f34015bfe57649` |
| unverified unclassified | UnnamedContract<br>`0xc7fb6432017dc43752372a629b15c3ad446e827c` | non_address_book | unknown | unknown | unverified | n/a | `0x88e358349a78c0c29ef8e540e1131a87f54c9797` |
| unverified unclassified | UnnamedContract<br>`0xe566471a49ba61110e9a5570e5f298762443aa52` | non_address_book | unknown | unknown | unverified | n/a | `0x88e358349a78c0c29ef8e540e1131a87f54c9797` |
| unverified unclassified | UnnamedContract<br>`0x0ac879efef492a500434caa434f04ca6f4d4defd` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x1a6cb15c714ab2e1bfcecf28763de9fe5208d8ba` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x36d954469e49e6f271f9e9a1e905c397882d9caa` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x3ac76d267f7d619c2452b15791bd60f2259768e1` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x47de22ca61f65af241205e45dadf039475a02241` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x553b98760f75f384aaa406f75d722990cf84e527` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x5ff04e2dfd6e8f10cbc77107b816f8db9423f512` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x6357d8fb7d951a1b259ebcf6ba3b5393324e85c0` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x66629e2c368383b37defcb9ca064f524708c4347` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x6d70d88bf47f26e9f3426fb4acab663d1aaf6901` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x80d835e784912356175654aa132526279eba2c95` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x890c81bed42a3b2080218eb8e4c7c51524e56c09` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x9b1203725daf1805790e1701cc3d9782618e63d2` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x9b15fd928f5cbb2fc523bbe4c849ad4175c382de` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x9bc0d11ac56d0a251162635389f7dfe14f567962` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x9f644c7156f0b8f464246dea8b2d59fb36fcc91f` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0xb0a638dc8f3a3bb0a35a98e454ae9f4a69531b7b` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0xb2e297ff0269a2708e9520ae00fdaf7c63f3b1f3` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0xb83dbb9a190fedd2fc538037179a86e44f4e5ceb` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0xc87e94afd99cdf220152dcbf22e33c332621788c` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0xccc274454dd89e58c53f1aafb196e71885ff96f8` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0xcdc6159ef15c931a1af0d9e2576a65149558259d` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0xce978312695c307a9810ad49ecc74a9743e8c605` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0xd4326b167222be2478af3e5e3352c180e97f395e` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0xf58c8edd1dd26cf3a5e7de534b34aee059082342` | non_address_book | unknown | unknown | unverified | n/a | `0x0aa8deccc88f930b9a13b798fb1075901160e2e8` |
| unverified unclassified | UnnamedContract<br>`0x0c8680b86abde0bbdedb25e8be5f96df82b0907b` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x104f8e8ea3fd2f33cde5f43e63932e8931ca7444` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x138c42d9070c00381661148b334bbbd69f89e2f3` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x1a93bf029e35f0ba59e32b9f818e054e57beb800` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x1c2cb2d07a73bc48cf4c6785ea1bc66e6c244898` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x35223ac12cb565d2af845448ed8aa3c5f997bc85` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x383cf59911b63669c7b548d23fef2a48ad86680e` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x3c909b22bf1a23d3e930cff55c4d36b68f82bdef` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x3db62bd5bb40cf4b21223bce6f22bbe5d7f258bf` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x3f16167082d03074ebc97a984f98bfc550c133d2` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x474047e01aa9e24c9699f0b0ceeb9918ebeba5d6` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x4a7075270489056bbc545eda68394155ea24caf3` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x72b32741931a5cf3039f75ee53ab67356a5a7d12` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x8b5ae70fb72b1d63201dfa101f7c59400ef07fdd` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x98bdded5056c1aa6a2532f006a3c45986eaee9e9` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xa37fc809dabead2a16f79c24c618afb8b58c94e3` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xa3b25d04306f1552ed4b4e18a22197912fc07aef` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xa3d5d7a9ab0dd5e2940e8a409649ef35319f6009` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xa80a636b3626ca5f78b590bccb0feb1564a6d9c6` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xaa0b20239920a1bb5bca701af071f1050f18cc96` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xba16fe5b0fc7344cfe649dd60a05564cdc0bc7df` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xbe8d00261f7677df4c052694e2b66e6405d6bddd` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xbecc90df3ddc0c1420688568e7b45b3d9a70fd96` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xd2e999e47fd11bd48bee21bff00f24e9a7450f18` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xd840e9975d454a7ddd2ef76c72d2f19b2d3ab1b9` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xe3d848bc66f90608f9ab4cf613d4fd2307dca21c` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xe6f8f20353f59234a932c0e58d11379d99e1c6fe` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xf3b62b29680eeb18ffaed0fcdf9b4799f9d10bf0` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xf4842cf4a30e363919b0d31f4186235f6f54a189` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xf8039527fb2dfe77c081f70e00c3a334dcea055c` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0xfbd8e6064767115404c84ddd5dbe4eaba281d504` | non_address_book | unknown | unknown | unverified | n/a | `0x365a11a951fc8fc964eaa282fa0a64e326c7af0d` |
| unverified unclassified | UnnamedContract<br>`0x014a14089b4e695045bf89f1066b3ef3f1afd5bb` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x18a2c607d5e0ba436cba5cbc3e25c7ebded5292f` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x1b11df089bf16af78c9eda838796121aa6c5abfd` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x22295d0f8c874bb9a0444702c1007c8ab9e84689` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x27355df92298c785440a4d16574df736eb0627d0` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x28043b1ebd41860b93ec1f1ec19560760b6db556` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x2ca02eda655e9d1fece1954e0994b2f2c608aa83` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x2dd517b2f9ba49cedb0573131fd97a5ac19ff648` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x318bfa8c1ce223836fde0ad60e8a5e04fd0d8924` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x334ee14619cef590cd3e64753a69f99e61db4f61` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x336ffb39d411394dd92d08035bdc14e0e4f1dd73` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x4a5ce69a1ada639042b30e1574eb9d6e939388a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x4aa8647f889f077f32ea5232f88398e7491c1e67` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x4cf57dc9028187b9daaf773c8eca941036989238` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x4f2eaebdd835ebe9108e718c0b6551e868381a88` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x5420df40c5d00317927bbece65b879520207f91f` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x5429100c3856718191d73794bf38be5d6c0b7ca5` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x5c2d58627fbe746f5ea24ef6d618f09f8e3f0122` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x601630d7670ae4ad5dd0c290302ec1188eaa2f02` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x65ff399873431f38b56ab02fc86462b08a56ddaf` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x6a06da87e290e468a2cf698946a51fca29a36a4f` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x6b4b16001868e5a97c4c8762203aa9d22ceacbde` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x7480ef6da925afac676a9539b8eb8cb401fc3c64` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x76b961755c509024d0f174d6b527bace7cf7d9dc` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x7b5c1665cd6c3172e6768f05d049626c7a02df4f` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x7f7a07ffde2ab490dad0c0d139d6c730bbe842cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x8b050c37b0c8de8f91c1bf648c6c0a4e4ed7c6ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x8d0ad3cd06185e13ea047fd479a5ac2a2f85b87e` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x8f937bbaa8508268cc2c3d2a54c8d01d30eed679` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0x979ba33e32eaccf53818ba985c0813d699d0e9d7` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x99c83ef05f249247312e95653764794728c63467` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x9c33643076dabb133bfd55447b3b5a953d069039` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0x9c75c979e61f65f7a1c516e6fd6bf14b7a48b63d` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xa0436b18750de5823c3ef54bec502ed78b34ffa0` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xa7087c87028e8ece44d867d8b822a3ed21ed4ef7` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xa99d9d4b22485ff56110bf8579c4beeb00082dc8` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xaec3e48648c46b9eda4c8832e2f0a6b23289915d` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0xaf389ff3df4441648610adae203bfc8a385ac0ff` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xb51b96a145c55f102c0e593daa510f0340d11ad0` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xbfbaca3a84a27d7528db1168415c6ea0ae3395b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xc27201f18fe55128de3aa54e9863b3b792941cf5` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0xe464bfe19f718b7da9306381b3485188334d846e` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xe782a75a735251963bb16e903268eff13b45617c` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xe8ec51566ba555d59cdc75caf2b3d1bf81c8d4bc` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xe97b99fa3a4df696c70026aa86020261bcbb6e5a` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xf79e51598146e7a579e6f51be3529e825dc668ac` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xf8b283ad4d969ecfd70005714dd5910160565b94` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0xfb5a24d071e29e18ef260a4eb86d4bdb03c00f5a` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xfd436ad484d29bd75d0917777a8d7b183255212b` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| unverified unclassified | UnnamedContract<br>`0xfee204625a9a5591fc2b593c1353403914b7c613` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |
| unverified unclassified | UnnamedContract<br>`0xff708a2f317fee7b082858c210949ad825cfe9ae` | non_address_book | unknown | unknown | unverified | n/a | `0xa62723e0243e36b336bebc99606185e6e093b87f` |

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
| needs_review | 185 |

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
