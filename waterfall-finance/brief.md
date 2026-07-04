# Agentic Audit Brief: Waterfall Finance

## Project Overview

- Project: Waterfall Finance (`waterfall-finance`)
- Website: [https://lottery.defiwaterfall.com/](https://lottery.defiwaterfall.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.182Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, bsc, fantom
- Contract surface: 18 unique implementations (29 raw deployments)
- DeFi Llama TVL: $35,128.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 28 project-authored contract(s) across 2 chain(s); 11 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 4 common project-authored base contract(s) (contractguard, erc20burnable, operator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 29 (23 live, 6 unknown).
- Excluded by liveness: 23 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/14 (14.3%)
- Deployed-live implementations: 15 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/15
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 18
- Raw deployments: 29
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 6.7% | 2022-01 |
| unknown | Tier 2 | 1 | 6.7% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Waterfall | unknown | arbitrum | n/a | [`0xedbf59...c87e83`](./contracts/arbitrum-42161/0xedbf59b40336244c6ea94a11a6b0cf6864c87e83/) | ✅ Audited |
| WaterfallToken | token | arbitrum | n/a | 2 deployments: bsc `0xfdf36f...8176d0`; arbitrum [`0x4e6482...4f71b9`](./contracts/arbitrum-42161/0x4e6482b05d13085f1c4a7e2ef612ba43104f71b9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Boardroom | unknown | bsc | n/a | [`0xa40e3c...52dc0f`](./contracts/bsc-56/0xa40e3cfeee96b3142c42fb1648db761ef652dc0f/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | bsc | n/a | [`0x5bd862...20e32e`](./contracts/bsc-56/0x5bd8628f49227078a559d90b5eab1d840320e32e/) | ⚠️ Unaudited |
| Oracle | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x2ea445...eb5a91`](./contracts/bsc-56/0x2ea445696b257e7498c38fa8d0ac753215eb5a91/); bsc `0x8fd65b...2f93d6`; bsc `0xac38fb...9996d3`; bsc `0xd23b82...22daba`; bsc `0xd48432...e1a349` | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | 2 deployments: bsc [`0x70785c...43b057`](./contracts/bsc-56/0x70785cd02d468e335bf9b58dcd3e106a1a43b057/); bsc `0xbaf461...f42a4f` | ⚠️ Unaudited |
| Treasury | operational_periphery | bsc | n/a | [`0x040d9d...6dcadc`](./contracts/bsc-56/0x040d9d243a5fd7e864d6f5290a8aea50aa6dcadc/) | ⚠️ Unaudited |
| WaterDendyToken | token | arbitrum | n/a | [`0x88692a...c2a2c6`](./contracts/arbitrum-42161/0x88692ad37c48e8f4c821b71484ae3c2878c2a2c6/) | ⚠️ Unaudited |
| WaterfallReferral | unknown | bsc | n/a | [`0x2eaddd...49da15`](./contracts/bsc-56/0x2eaddd25a6bebf98f9f8c369fe285a3f2549da15/) | ⚠️ Unaudited |
| Wbond | unknown | bsc | n/a | [`0xb78994...8d70d7`](./contracts/bsc-56/0xb7899418a99e428d1c973e33a96fa2828c8d70d7/) | ⚠️ Unaudited |
| Wshare | unknown | bsc | n/a | [`0xf4fa83...cb6dda`](./contracts/bsc-56/0xf4fa8396e2bae8528fd5da5a07ac8915e1cb6dda/) | ⚠️ Unaudited |
| WShareRewardPool | core_logic | bsc | n/a | [`0xe50ed3...9b3a59`](./contracts/bsc-56/0xe50ed3b9eb101397273db82679d27883a69b3a59/) | ⚠️ Unaudited |
| Wtf | unknown | bsc | n/a | 2 deployments: bsc [`0x1811b7...f32576`](./contracts/bsc-56/0x1811b7ed3b613805a9a4b4b1b80c99d58af32576/); bsc `0xeb6054...33d7ab` | ⚠️ Unaudited |
| WtfGenesisRewardPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x76d562...d5388e`](./contracts/bsc-56/0x76d562afee41ffeeed6b9cae32b23b0409d5388e/); bsc `0xf1f092...a5185a` | ⚠️ Unaudited |
| XWTF | unknown | bsc | n/a | [`0x547fb1...5a3191`](./contracts/bsc-56/0x547fb1ea689a8f7507d5fe8a598467f7d55a3191/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | 4 deployments: fantom `0x1e2a49...2b09de`; fantom `0x6b2a7b...7645d5`; fantom `0x71be8f...a4c26b`; fantom `0x7a0ac7...e62488` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9de484...648170` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef8dae...6fd6ae` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladinsec.co/projects/waterfall-finance](https://paladinsec.co/projects/waterfall-finance) | Paladin | Audit | 2022-01 | stale | Direct | contract_name | 1 | n/a |
| [ContractWolf_Audit_WaterfallDEX_Token.pdf](https://github.com/ContractWolf/smart-contract-audits/blob/main/ContractWolf_Audit_WaterfallDEX_Token.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xa40e3c...52dc0f`](./contracts/bsc-56/0xa40e3cfeee96b3142c42fb1648db761ef652dc0f/) | Boardroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2ea445...eb5a91`](./contracts/bsc-56/0x2ea445696b257e7498c38fa8d0ac753215eb5a91/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x70785c...43b057`](./contracts/bsc-56/0x70785cd02d468e335bf9b58dcd3e106a1a43b057/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x040d9d...6dcadc`](./contracts/bsc-56/0x040d9d243a5fd7e864d6f5290a8aea50aa6dcadc/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x88692a...c2a2c6`](./contracts/arbitrum-42161/0x88692ad37c48e8f4c821b71484ae3c2878c2a2c6/) | WaterDendyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2eaddd...49da15`](./contracts/bsc-56/0x2eaddd25a6bebf98f9f8c369fe285a3f2549da15/) | WaterfallReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb78994...8d70d7`](./contracts/bsc-56/0xb7899418a99e428d1c973e33a96fa2828c8d70d7/) | Wbond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf4fa83...cb6dda`](./contracts/bsc-56/0xf4fa8396e2bae8528fd5da5a07ac8915e1cb6dda/) | Wshare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe50ed3...9b3a59`](./contracts/bsc-56/0xe50ed3b9eb101397273db82679d27883a69b3a59/) | WShareRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1811b7...f32576`](./contracts/bsc-56/0x1811b7ed3b613805a9a4b4b1b80c99d58af32576/) | Wtf | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x76d562...d5388e`](./contracts/bsc-56/0x76d562afee41ffeeed6b9cae32b23b0409d5388e/) | WtfGenesisRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x547fb1...5a3191`](./contracts/bsc-56/0x547fb1ea689a8f7507d5fe8a598467f7d55a3191/) | XWTF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
