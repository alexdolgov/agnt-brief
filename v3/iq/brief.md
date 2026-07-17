# Agentic Audit Brief: IQ

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: IQ (`iq`)
- Website: [https://iq.wiki](https://iq.wiki)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, fraxtal, polygon
- Contract surface: 56 unique implementations (89 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,544,333.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for IQ. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, bsc, ethereum, fraxtal, polygon. Structural roles: 1 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), unclassified (1)
- Contract kinds: contract (1), unclassified (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e37d70b51ffa2b98b4d34a5712c5291115464e3`, chain 56)
- UnnamedContract (`0xb9638272ad6998708de56bbc0a290a1de534a578`, chain 137)
- UnnamedContract (`0x6efb84bda519726fa1c65558e520b92b51712101`, chain 252)
- UnnamedContract (`0xe59b07c6fea12e83e68d2fe2c3d6b56af68f7734`, chain 8453)
- IQERC20 (`0x579cea1889991f68acc35ff5c3dd0621ff29b0c9`, chain 1)
- Vyper_contract (`0x1bf5457ecaa14ff63cc89efd560e251e814e16ba`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 50 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 6 of 56 unique; 50 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 56
- Raw deployments: 89
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

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BAMMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x19928170d739139bfbbb6614007f8eeed17db0ba` | ⚠️ Unaudited |
| BAMMUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb16f68c7351bbf8491824e7971efa14d2fa0885a` | ⚠️ Unaudited |
| ExponentialPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: fraxtal `0x01480a0c134cecc309015a564c7e292ba6e0f358`; fraxtal `0x1a60b40601bb5aa192389b05f80a7beade6d77d7`; fraxtal `0x5c845cab3f05958b965a88139c0cc885aaaa4b3e`; fraxtal `0x92e606fd8b99f99928f690a5beb20f6f6e3ec0f3` | ⚠️ Unaudited |
| EzEthEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6fd11e0e14314853988e1bbdabdd1c07d0d36681` | ⚠️ Unaudited |
| EzEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1174b74acb27cb20f2acd12a324ded7a1ce16041` | ⚠️ Unaudited |
| FLETwammGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x7a6be195f9931341c1f4c4230fc48f8b9b9de91b`; fraxtal `0xce70630b4b2e889adc558b58b2980437f58003d4` | ⚠️ Unaudited |
| FpiOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcacc0928f84d6a7ed55de1a5c4e3a7379190c60d` | ⚠️ Unaudited |
| FPISLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: fraxtal `0x36b406a00997e4bd5b9bb3618d832fb88fb09840`; fraxtal `0xb4fdd7444e1d86b2035c97124c46b1528802da35`; fraxtal `0xbbb3a133936d080da9120b5fab83610975126850`; fraxtal `0xe91488002186029221efc2449c19addf79e61c01` | ⚠️ Unaudited |
| FPISLockerUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x858afbe668f4f562900bae3e2daed65d88027aea`; fraxtal `0x8a3399c9d97b88af969ee9d90da9c7df462da974`; fraxtal `0xf823853d09ffa596a6fcfbbcd1018e8590732414` | ⚠️ Unaudited |
| FraxswapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe30521fe7f3beb6ad556887b50739d6c7ca667e6` | ⚠️ Unaudited |
| FrxEthDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4b0ca693e29e5fd2aa39332a0387bbcd0f91a527` | ⚠️ Unaudited |
| FxsDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb99c9d329bd69ddf8af57110e011f5d81801c6d2` | ⚠️ Unaudited |
| IQERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-387719 | `0x579cea1889991f68acc35ff5c3dd0621ff29b0c9` | ⚠️ Unaudited |
| L1VeFXSTotalSupplyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: fraxtal `0x04d43544fc601d6fd15fb2a2cbd5ed4e139f091d`; fraxtal `0x5185e82339f825ae8dab987c5331e9b6f28a1922`; fraxtal `0x602ccfee6b4ba8eb5e35cf26e05fdede379e578e`; fraxtal `0xa938b8dc2b55a119b3618287c95427f9998caff0`; fraxtal `0xc42e3c654a36661fad19b32f484395a69a7dbd72` | ⚠️ Unaudited |
| MerkleProofPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x190ef482a3c8f45b9bd8575ecfa65954bd6d5ee5`; fraxtal `0x9990eb28e58380122aa3adf64ea6f874df51114c` | ⚠️ Unaudited |
| MerkleProofPriceSourceEzEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa871745d853b941af700f1aa24b58f7a6903abc5` | ⚠️ Unaudited |
| MerkleProofPriceSourceFpiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8fc7425cd36d7e4605650198099e4539238e9c37` | ⚠️ Unaudited |
| MerkleProofPriceSourceRsEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5bac02527bbaa82453c0f93b8e3deab8ad0c8dac` | ⚠️ Unaudited |
| MerkleProofPriceSourceSdai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x816cf9dcf8fce6fa7a2249d56cb203ddbf36974e`; fraxtal `0xf3e3e2a376939bff87e9cac84e0e5a35e495417a` | ⚠️ Unaudited |
| MerkleProofPriceSourceSfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0xa560e014501f96752726f65c27e96c3e9127ce32`; fraxtal `0xabca0b314d15b3e28f24ac0ee84a63001d1b44db` | ⚠️ Unaudited |
| MerkleProofPriceSourceSUSDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc2b984e37d1caf5eef82d9d892287361058955e9` | ⚠️ Unaudited |
| MerkleProofPriceSourceWstEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xef583ccb0bed4c9473178ebb228689a63bdce8a2` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa37fe075d792894c32fe444aaa67f3e027ca243b` | ⚠️ Unaudited |
| SfrxEthDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0xa36a19e0ae3a91d886fc9d0914fc88a6cbf7e7f2`; fraxtal `0xfbcdf41cc692ed529b9a8cc1a5867b9524fd0164` | ⚠️ Unaudited |
| SfrxUsd2OracleImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | fraxtal | n/a | 2 deployments: fraxtal `0x1b680f4385f24420d264d78cab7c58365ed3f1ff`; fraxtal `0xf750636e1df115e3b334ed06e5b45c375107fc60` | ⚠️ Unaudited |
| StateRootOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x28fb3520426d90eb03711bee041b9c3213acb383`; fraxtal `0xed403d48e2bc946438b5686aa1ad65056ccf9512` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x72d7b869ba1af7d7ee9010dd98180e9231362588`; fraxtal `0xc16068d1ca7e24e20e56bb70af4d00d92aa4f0b2` | ⚠️ Unaudited |
| VariableInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x3fda3e9e78eacd7381f1ed2cf145b93537878c1f`; fraxtal `0x3fdb6bc356dad0d7260e9619efa125409a08c3b2`; fraxtal `0xfa7207f02ba29cd122a9d49ce96f6ca7707a1652` | ⚠️ Unaudited |
| VeFXSAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: fraxtal `0x481073f0c82cd600c1c54dc5cae0a5dda6886f26`; fraxtal `0x6a546c9f49c0abca3b9a30f45e726f89b86a57ae`; fraxtal `0x840f20ffed887c61435e81fd1231cb923df39d3d`; fraxtal `0x8b7b8196072286ebfa68fec7e0a6f18053ef31c1`; fraxtal `0x90eb2f13acf1bc35c2c40c0ebaff2de4d2eb0d6b` | ⚠️ Unaudited |
| VeFXSYieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 8 deployments: fraxtal `0x12915be9ee3222f272bec01859c267c99104fed7`; fraxtal `0x2816ab1f4db656602b6b0041c006652a4f5d0437`; fraxtal `0x5fa02554432eb3c8a5397306d0b30e707bf21a6d`; fraxtal `0x691d1aafb550c35b24e09bb991aec9612342ed93`; fraxtal `0x90d52cdc60b7ff7994095aa184694225035e8a60`; fraxtal `0xa7ea2c8c166328c5a7c7ea8e5649724a2c9b78e9`; fraxtal `0xb075ab368e84e8652452eb2cc91965c7e3893a7d`; fraxtal `0xcadb1747d43c14d755d87f90af1d5ad4e7f666f2` | ⚠️ Unaudited |
| VestedFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x54bd5c72645fed784c117ca83533e0584b24ee5c` | ⚠️ Unaudited |
| VestedFXSUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc540f05bf5a09336078634d65e46242dfba55030` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387718 | `0x1bf5457ecaa14ff63cc89efd560e251e814e16ba` | ⚠️ Unaudited |
| YieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe901afd3c37024b780d95985ace581f679de527b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387722 | `0x0e37d70b51ffa2b98b4d34a5712c5291115464e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387720 | `0xb9638272ad6998708de56bbc0a290a1de534a578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0d9346964791878bb54c02294e72106d8794185c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x18348ddbf9c512081d444bdee9b25e53ef707a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5854f44bbabada5d55d765b576fd390962d69909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6bd8680eacdbc6513a5e40b711926d357ab2e4cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-387721 | `0x6efb84bda519726fa1c65558e520b92b51712101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8bf7af56bb721bc3d015111508593fcb301546f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x954f18a500ec24c9c3be4b973bd0631776478114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9937ab3f353836256d82ac77c28c2c66b9a8624a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9fab6a6b9a78515d9d95d224b75371d1006896c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xad84dac1c249ec3999242bdd89bb82adf74f071f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbb18f2d4e1f9ce0055b13351725e09897ee85fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc4af86d01420598a8746361576c98f5d46d289dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd5be3c020f66b1fdf416fd9a551bad2460a28723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdbb6da2c103397fa502eca74afb5a274a900f892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdcf13ad4b4b3d7cba5894f5d3addff6fe8257508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdf567ef9ce0475254b057113e702a02d6e782427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe510cc8d19da2aefdb94082359825e507f57704e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xeec80691c5c470691246b883f2a50b9a9ac7026a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xffd3a9a6c28eda12869eb54b7284bc306d60550d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387723 | `0xe59b07c6fea12e83e68d2fe2c3d6b56af68f7734` | ❓ Unverified |

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
| ethereum | `0x579cea1889991f68acc35ff5c3dd0621ff29b0c9` | IQERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bf5457ecaa14ff63cc89efd560e251e814e16ba` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 22 |

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
