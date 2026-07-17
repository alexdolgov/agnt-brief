# Agentic Audit Brief: Mars Poolin

## Project Overview

- Project: Mars Poolin (`mars-poolin`)
- Website: [https://mars.poolin.fi](https://mars.poolin.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.447Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $138,834.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 17 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (baseupgradeabilityproxy, proxy, rewardsdistributionrecipient). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BACMARSLPTOKENPool | unknown | ethereum | n/a | [`0x8360b0d0d01e938441902569dfff66af701644b1`](./contracts/ethereum-1/0x8360b0d0d01e938441902569dfff66af701644b1/) | ⚠️ Unaudited |
| BTCParamV2 | unknown | ethereum | n/a | [`0x260f6bab7680019d2447bf62e9dbbc80dd94b897`](./contracts/ethereum-1/0x260f6bab7680019d2447bf62e9dbbc80dd94b897/) | ⚠️ Unaudited |
| ETHParamV2 | unknown | ethereum | n/a | [`0x2472effdc3e4379074e808f475a7266357c200ff`](./contracts/ethereum-1/0x2472effdc3e4379074e808f475a7266357c200ff/) | ⚠️ Unaudited |
| LpStaking | unknown | ethereum | n/a | [`0x95cb6853e35f8a8bd1da907c7d1c967a0ad080de`](./contracts/ethereum-1/0x95cb6853e35f8a8bd1da907c7d1c967a0ad080de/) | ⚠️ Unaudited |
| MarsLpStakingController | unknown | ethereum | n/a | [`0xa91706451e7f547233b13b3ce245186a2fa60142`](./contracts/ethereum-1/0xa91706451e7f547233b13b3ce245186a2fa60142/) | ⚠️ Unaudited |
| MarsStakingRewards | unknown | ethereum | n/a | [`0x395f12c3af52a3b2ee3b63dcef8be2130a202e3c`](./contracts/ethereum-1/0x395f12c3af52a3b2ee3b63dcef8be2130a202e3c/) | ⚠️ Unaudited |
| MarsToken | unknown | ethereum | n/a | [`0x66c0dded8433c9ea86c8cf91237b14e10b4d70b7`](./contracts/ethereum-1/0x66c0dded8433c9ea86c8cf91237b14e10b4d70b7/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x97386b57e15c7fd09e36f04018f0b442b99a1c1a`](./contracts/ethereum-1/0x97386b57e15c7fd09e36f04018f0b442b99a1c1a/) | ⚠️ Unaudited |
| POWToken | unknown | ethereum | n/a | [`0x14b939e7eb0cb290fadccd0816e8975069158ce6`](./contracts/ethereum-1/0x14b939e7eb0cb290fadccd0816e8975069158ce6/) | ⚠️ Unaudited |
| POWTokenProxy | unknown | ethereum | n/a | [`0x16a60d78fe6f92d25ebddaff6b1efc9d193d4fc8`](./contracts/ethereum-1/0x16a60d78fe6f92d25ebddaff6b1efc9d193d4fc8/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x033666a848d68c9854b038ebb3958097f688ce00`](./contracts/ethereum-1/0x033666a848d68c9854b038ebb3958097f688ce00/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | ethereum | n/a | [`0xe3a8f85ab99e5e90d9d0dda0adf2139389d6106c`](./contracts/ethereum-1/0xe3a8f85ab99e5e90d9d0dda0adf2139389d6106c/) | ⚠️ Unaudited |
| StakingRewardsWbtc | unknown | ethereum | n/a | [`0x51a710218ec2ba2ac459ee28ec37c6df7fe18e11`](./contracts/ethereum-1/0x51a710218ec2ba2ac459ee28ec37c6df7fe18e11/) | ⚠️ Unaudited |
| TokenDistribute | unknown | ethereum | n/a | [`0x52fe73fa78d4b85437a33a7dcbda16aada07e7b7`](./contracts/ethereum-1/0x52fe73fa78d4b85437a33a7dcbda16aada07e7b7/) | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x5771144334826d79c07ffa544e935921904d45f2`](./contracts/ethereum-1/0x5771144334826d79c07ffa544e935921904d45f2/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x64b91b92240bc1901855dd55ae632addb650d089`](./contracts/ethereum-1/0x64b91b92240bc1901855dd55ae632addb650d089/) | ⚠️ Unaudited |
| USDTMARSLPTOKENPool | unknown | ethereum | n/a | [`0x9b9c2d202f9a0ed9be9daf9df50cc0e327a809dd`](./contracts/ethereum-1/0x9b9c2d202f9a0ed9be9daf9df50cc0e327a809dd/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8360b0d0d01e938441902569dfff66af701644b1`](./contracts/ethereum-1/0x8360b0d0d01e938441902569dfff66af701644b1/) | BACMARSLPTOKENPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x260f6bab7680019d2447bf62e9dbbc80dd94b897`](./contracts/ethereum-1/0x260f6bab7680019d2447bf62e9dbbc80dd94b897/) | BTCParamV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2472effdc3e4379074e808f475a7266357c200ff`](./contracts/ethereum-1/0x2472effdc3e4379074e808f475a7266357c200ff/) | ETHParamV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95cb6853e35f8a8bd1da907c7d1c967a0ad080de`](./contracts/ethereum-1/0x95cb6853e35f8a8bd1da907c7d1c967a0ad080de/) | LpStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa91706451e7f547233b13b3ce245186a2fa60142`](./contracts/ethereum-1/0xa91706451e7f547233b13b3ce245186a2fa60142/) | MarsLpStakingController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x395f12c3af52a3b2ee3b63dcef8be2130a202e3c`](./contracts/ethereum-1/0x395f12c3af52a3b2ee3b63dcef8be2130a202e3c/) | MarsStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66c0dded8433c9ea86c8cf91237b14e10b4d70b7`](./contracts/ethereum-1/0x66c0dded8433c9ea86c8cf91237b14e10b4d70b7/) | MarsToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97386b57e15c7fd09e36f04018f0b442b99a1c1a`](./contracts/ethereum-1/0x97386b57e15c7fd09e36f04018f0b442b99a1c1a/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14b939e7eb0cb290fadccd0816e8975069158ce6`](./contracts/ethereum-1/0x14b939e7eb0cb290fadccd0816e8975069158ce6/) | POWToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16a60d78fe6f92d25ebddaff6b1efc9d193d4fc8`](./contracts/ethereum-1/0x16a60d78fe6f92d25ebddaff6b1efc9d193d4fc8/) | POWTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x033666a848d68c9854b038ebb3958097f688ce00`](./contracts/ethereum-1/0x033666a848d68c9854b038ebb3958097f688ce00/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3a8f85ab99e5e90d9d0dda0adf2139389d6106c`](./contracts/ethereum-1/0xe3a8f85ab99e5e90d9d0dda0adf2139389d6106c/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51a710218ec2ba2ac459ee28ec37c6df7fe18e11`](./contracts/ethereum-1/0x51a710218ec2ba2ac459ee28ec37c6df7fe18e11/) | StakingRewardsWbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52fe73fa78d4b85437a33a7dcbda16aada07e7b7`](./contracts/ethereum-1/0x52fe73fa78d4b85437a33a7dcbda16aada07e7b7/) | TokenDistribute | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5771144334826d79c07ffa544e935921904d45f2`](./contracts/ethereum-1/0x5771144334826d79c07ffa544e935921904d45f2/) | TreasuryVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b9c2d202f9a0ed9be9daf9df50cc0e327a809dd`](./contracts/ethereum-1/0x9b9c2d202f9a0ed9be9daf9df50cc0e327a809dd/) | USDTMARSLPTOKENPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
