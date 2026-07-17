# Agentic Audit Brief: Ellipsis Finance

## Project Overview

- Project: Ellipsis Finance (`ellipsis-finance`)
- Website: [https://ellipsis.finance/](https://ellipsis.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.759Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 20 unique implementations (46 raw deployments)
- DeFi Llama TVL: $1,070,786.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 23 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 6 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 135; live-surface contracts included: 46 (41 live, 5 unknown).
- Excluded by liveness: 89 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/14 (28.6%)
- Deployed-live implementations: 15 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/15
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 20
- Raw deployments: 46
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 13.3% | 2021-04 |
| PeckShield | Tier 2 | 2 | 13.3% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EllipsisToken2 | token | bsc | n/a | [`0xaf41054c1487b0e5e2b9250c0332ecbce6ce9d71`](./contracts/bsc-56/0xaf41054c1487b0e5e2b9250c0332ecbce6ce9d71/) | ✅ Audited |
| IncentiveVoting | unknown | bsc | n/a | [`0x4695e50a38e33ea09d1f623ba8a8db24219bb06a`](./contracts/bsc-56/0x4695e50a38e33ea09d1f623ba8a8db24219bb06a/) | ✅ Audited |
| LpTokenStaker | core_logic | bsc | n/a | [`0xcce949de564fe60e7f96c85e55177f8b9e4cf61b`](./contracts/bsc-56/0xcce949de564fe60e7f96c85e55177f8b9e4cf61b/) | ✅ Audited |
| MerkleDistributor | operational_periphery | bsc | n/a | [`0xa7bd1fb19d0af2739431dd1d318a8a04cd52b9ff`](./contracts/bsc-56/0xa7bd1fb19d0af2739431dd1d318a8a04cd52b9ff/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurveStableSwapNG | operational_periphery | bsc | n/a | [`0xe6e2905f54baf7625f4943b74c50338362741cd4`](./contracts/bsc-56/0xe6e2905f54baf7625f4943b74c50338362741cd4/) | ⚠️ Unaudited |
| EllipsisLpStaking | unknown | bsc | n/a | [`0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe`](./contracts/bsc-56/0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | bsc | n/a | [`0x3670c10c6a4994ec8926edcf54bf53092217ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | bsc | n/a | [`0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | ⚠️ Unaudited |
| PancakeStableSwap | unknown | bsc | n/a | 2 deployments: bsc [`0x169f653a54acd441ab34b73da9946e2c451787ef`](./contracts/bsc-56/0x169f653a54acd441ab34b73da9946e2c451787ef/); bsc `0xc2f5b9a3d9138ab2b74d581fc11346219ebf43fe` | ⚠️ Unaudited |
| PancakeStableSwapTwoPool | core_logic | bsc | n/a | [`0x85259443fad3dc9ecfafe62f043a020992f0e4fc`](./contracts/bsc-56/0x85259443fad3dc9ecfafe62f043a020992f0e4fc/) | ⚠️ Unaudited |
| RewardsToken | token | bsc | n/a | 9 deployments: bsc [`0x052e566a25ace8934dcc52c41a27b04a7c7eccbe`](./contracts/bsc-56/0x052e566a25ace8934dcc52c41a27b04a7c7eccbe/); bsc `0x143d702bc7bfa46c17129bd751f7c6cf2f1ded79`; bsc `0x151f1611b2e304ded36661f65506f9d7d172beba`; bsc `0x2a435ecb3fcc0e316492dc1cdd62d0f189be5640`; bsc `0x373410a99b64b089dfe16f1088526d399252dace`; bsc `0x5781041f9cf18484533f433cb2ea9ad42e117b3a`; bsc `0x8339156534e2d7354eed097a6fb4a5820d8d0d27`; bsc `0xa2520f3596449105bfe899f3d573c4353917eaf8`; bsc `0xf1e7f81671aeb2f559b147b6a91c4d25be882c48` | ⚠️ Unaudited |
| TokenLocker | token | bsc | n/a | [`0x22a93f53a0a3e6847d05dd504283e8e296a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/) | ⚠️ Unaudited |
| ValasMetapoolRewardsToken | core_logic | bsc | n/a | 2 deployments: bsc [`0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac`](./contracts/bsc-56/0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac/); bsc `0xf6be0f52be5e68df4ed3ea7ccd569c16024c250d` | ⚠️ Unaudited |
| ValasRewardsToken | token | bsc | n/a | [`0x5b5bd8913d766d005859ce002533d4838b0ebbb5`](./contracts/bsc-56/0x5b5bd8913d766d005859ce002533d4838b0ebbb5/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | 17 deployments: bsc [`0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56`](./contracts/bsc-56/0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56/); bsc `0x160caed03795365f3a589f10c379ffa7d75d4e76`; bsc `0x19ec9e3f7b21dd27598e7ad5aae7dc0db00a806d`; bsc `0x245e8bb5427822fb8fd6ce062d8dd853fbcfabf5`; bsc `0x2477fb288c5b4118315714ad3c7fd7cc69b00bf9`; bsc `0x2f8e25c21a17bd9d0c337e1b409e73bc959b41be`; bsc `0x41871a4c63d8fae4855848cd1790ed237454a5c4`; bsc `0x556ea0b4c06d043806859c9490072faadc104b63`; bsc `0x8d7408c2b3154f9f97fc6dd24cd36143908d1e52`; bsc `0xa7f552078dcc247c2684336020c03648500c6d9f`; bsc `0xab499095961516f058245c1395f9c0410764b6cd`; bsc `0xaf4de8e872131ae328ce21d909c74705d3aaf452`; bsc `0xb4c0a71bfa5a5a4b1a096a7addb5025eafada122`; bsc `0xc377e2648e5add3f1cb51a8b77dbeb63bd52c874`; bsc `0xc6a752948627becab5474a10821df73ff4771a49`; bsc `0xedbb3f63c0901ba500e4525da0c2cbd27ac8ffdc`; bsc `0xfd4afeac39da03a05f61844095a75c4fb7d766da` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x1037f82a4e0b4038aba73137f7474e0550086925` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a2d34989838ecf4fdec82c1a6f381e5a4a7dda9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98cfa2e66f366a88160f1342fde1da7db35ba049` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca9090fa24e0adfb54d0a38d0b28ca34cfd383e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8552e631a3a3f4949913b3b2cea85307e475d9f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [010421_Hacken_Ellipsis_SC_Audit_Report.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/010421_Hacken_Ellipsis_SC_Audit_Report.pdf) | Hacken | Audit | 2021-04 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf](https://github.com/ellipsis-finance/ellipsis-audits/blob/master/PeckShield-Audit-Report-EllipsisV2Staking-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 2 | n/a |
| [www.curve.finance/audits](https://www.curve.finance/audits) | Curve Finance | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe`](./contracts/bsc-56/0x5b74c99aa2356b4eaa7b85dc486843edff8dfdbe/) | EllipsisLpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3670c10c6a4994ec8926edcf54bf53092217ee1b`](./contracts/bsc-56/0x3670c10c6a4994ec8926edcf54bf53092217ee1b/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c`](./contracts/bsc-56/0x4076cc26efee47825917d0fec3a79d0bb9a6bb5c/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x169f653a54acd441ab34b73da9946e2c451787ef`](./contracts/bsc-56/0x169f653a54acd441ab34b73da9946e2c451787ef/) | PancakeStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85259443fad3dc9ecfafe62f043a020992f0e4fc`](./contracts/bsc-56/0x85259443fad3dc9ecfafe62f043a020992f0e4fc/) | PancakeStableSwapTwoPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x052e566a25ace8934dcc52c41a27b04a7c7eccbe`](./contracts/bsc-56/0x052e566a25ace8934dcc52c41a27b04a7c7eccbe/) | RewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22a93f53a0a3e6847d05dd504283e8e296a49aae`](./contracts/bsc-56/0x22a93f53a0a3e6847d05dd504283e8e296a49aae/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac`](./contracts/bsc-56/0x8087a94ffe6bcf08dc4b4ebb3d28b4ed75a792ac/) | ValasMetapoolRewardsToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b5bd8913d766d005859ce002533d4838b0ebbb5`](./contracts/bsc-56/0x5b5bd8913d766d005859ce002533d4838b0ebbb5/) | ValasRewardsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56`](./contracts/bsc-56/0x0bc3a8239b0a63e945ea1bd6722ba747b9557e56/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Zero-match audit list:

- [11900] www.curve.finance/audits

Fork inheritance lineage and inherited audits are included when available.
