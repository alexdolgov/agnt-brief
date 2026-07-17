# Agentic Audit Brief: Limitless Exchange

## Project Overview

- Project: Limitless Exchange (`limitless-exchange`)
- Website: [https://limitless.exchange](https://limitless.exchange)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.067Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: base
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $727,571.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 21 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 16 common project-authored base contract(s) (ifees, ifeesee, ihashing). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/22 (0.0%)
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 16 fresh, 0 aging, 1 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConditionalTokens | unknown | base | n/a | [`0x0b017cdcd731ff177ec00c4294561ff00ab9ae28`](./contracts/base-8453/0x0b017cdcd731ff177ec00c4294561ff00ab9ae28/) | ⚠️ Unaudited |
| CTFExchange | unknown | base | n/a | [`0x05c748e2f4dcde0ec9fa8ddc40de6b867f923fa5`](./contracts/base-8453/0x05c748e2f4dcde0ec9fa8ddc40de6b867f923fa5/) | ⚠️ Unaudited |
| FeeModule | unknown | base | n/a | [`0x5130c2c398f930c4f43b15635410047cbea9d6eb`](./contracts/base-8453/0x5130c2c398f930c4f43b15635410047cbea9d6eb/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | base | n/a | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | base | n/a | [`0x6d0c9a70d85e42ba8b76dc06620d4e988ec8d0c1`](./contracts/base-8453/0x6d0c9a70d85e42ba8b76dc06620d4e988ec8d0c1/) | ⚠️ Unaudited |
| Fixed192x64Math | unknown | base | n/a | [`0xbe4974e19404894baa5ba4562cf748bcacf466bb`](./contracts/base-8453/0xbe4974e19404894baa5ba4562cf748bcacf466bb/) | ⚠️ Unaudited |
| FixedProductMarketMakerFactory | unknown | base | n/a | [`0x8cf2c130abc977a93ded099bbf54fe8c8f68cb32`](./contracts/base-8453/0x8cf2c130abc977a93ded099bbf54fe8c8f68cb32/) | ⚠️ Unaudited |
| FPMMDeterministicFactory | unknown | base | n/a | [`0x6b5d0c08cffc8de2d079a21e37ddb40c452c7ca6`](./contracts/base-8453/0x6b5d0c08cffc8de2d079a21e37ddb40c452c7ca6/) | ⚠️ Unaudited |
| LMSRMarketMakerFactory | unknown | base | n/a | [`0x0665acb185a54fb3ec6a22a0097d1b432cac94ae`](./contracts/base-8453/0x0665acb185a54fb3ec6a22a0097d1b432cac94ae/) | ⚠️ Unaudited |
| LMTS | unknown | base | n/a | [`0x9eadbe35f3ee3bf3e28180070c429298a1b02f93`](./contracts/base-8453/0x9eadbe35f3ee3bf3e28180070c429298a1b02f93/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x2230393edad0299b7e7b59f20aa856cd1bed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | base | n/a | [`0x050b10cbcd8448bbad6fe644094ed4aa5b8379b8`](./contracts/base-8453/0x050b10cbcd8448bbad6fe644094ed4aa5b8379b8/) | ⚠️ Unaudited |
| MockCoin | unknown | base | n/a | [`0xfd9dc7e303654d910b2b30c1caaefa6e4eec71dd`](./contracts/base-8453/0xfd9dc7e303654d910b2b30c1caaefa6e4eec71dd/) | ⚠️ Unaudited |
| MockERC20 | unknown | base | n/a | [`0x04792d48550be72a5e80d7dd04e65e06ef270378`](./contracts/base-8453/0x04792d48550be72a5e80d7dd04e65e06ef270378/) | ⚠️ Unaudited |
| MockWETH9 | unknown | base | n/a | [`0x0f654baec6fd510309a3a8f3461f8d73e7eef2b3`](./contracts/base-8453/0x0f654baec6fd510309a3a8f3461f8d73e7eef2b3/) | ⚠️ Unaudited |
| NegRiskAdapter | unknown | base | n/a | [`0x6151ef8368b6316c1aa3c68453ef083ad31e712d`](./contracts/base-8453/0x6151ef8368b6316c1aa3c68453ef083ad31e712d/) | ⚠️ Unaudited |
| NegRiskCtfExchange | unknown | base | n/a | [`0x46e607d3f4a8494b0ab9b304d1463e2f4848891d`](./contracts/base-8453/0x46e607d3f4a8494b0ab9b304d1463e2f4848891d/) | ⚠️ Unaudited |
| NegRiskFeeModule | unknown | base | n/a | [`0x18b3e1192c01286050a0994bc26f7226ae4a483d`](./contracts/base-8453/0x18b3e1192c01286050a0994bc26f7226ae4a483d/) | ⚠️ Unaudited |
| NegRiskOperator | unknown | base | n/a | [`0xae363abc7b264755e8706d81475c3586d4543992`](./contracts/base-8453/0xae363abc7b264755e8706d81475c3586d4543992/) | ⚠️ Unaudited |
| Vault | unknown | base | n/a | [`0x2ec22ee9381d0b3570ccb5887960ddfd05d210b3`](./contracts/base-8453/0x2ec22ee9381d0b3570ccb5887960ddfd05d210b3/) | ⚠️ Unaudited |
| Whitelist | unknown | base | n/a | [`0xa94cbe4ad581a7761c62142e6c22582b8c57afed`](./contracts/base-8453/0xa94cbe4ad581a7761c62142e6c22582b8c57afed/) | ⚠️ Unaudited |
| WrappedCollateral | unknown | base | n/a | [`0x428f0fc93221a9957dc667baa07e62d50c6b8c03`](./contracts/base-8453/0x428f0fc93221a9957dc667baa07e62d50c6b8c03/) | ⚠️ Unaudited |

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
| [2020-01-20_accumulator_audit.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/2020-01-20_accumulator_audit.pdf) | unknown | Audit | 2020-01 | stale | Direct | n/a | 0 | n/a |
| [Combinatorial Module - Cantina - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Cantina%20-%20May%202026.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [Combinatorial Module - Certora - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Certora%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [Combinatorial Module - Quantstamp - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Quantstamp%20-%20May%202026.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Cantina%20-%20Beacon%20Upgrade%20-%20May%202026.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [DepositWallet - Certora - Beacon Upgrade - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Certora%20-%20Beacon%20Upgrade%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [DepositWallet - Certora - March 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Certora%20-%20March%202026.pdf) | unknown | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [DepositWallet - Zellic - March 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Zellic%20-%20March%202026.pdf) | Zellic | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Polymarket V2 - Cantina - April 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Cantina%20-%20April%202026.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [Polymarket V2 - Certora - April 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Certora%20-%20April%202026.pdf) | unknown | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [Polymarket V2 - Pashov - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Pashov%20-%20May%202026.pdf) | Pashov Audit Group | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [Polymarket V2 - Quantstamp - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Quantstamp%20-%20May%202026.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [Polymarket V2 Additional changes - Certora - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20Additional%20changes%20-%20Certora%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [Polymarket V2 Diff Review - Cantina - June 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20Diff%20Review%20-%20Cantina%20-%20June%202026.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [cs_conditional_tokens.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_conditional_tokens.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cs_ctf_exchange.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_ctf_exchange.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cs_neg_risk_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_neg_risk_adapter.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cs_proxy_wallet_factories.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_proxy_wallet_factories.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [oz_neg_risk_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/oz_neg_risk_adapter.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [oz_uma_ctf_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/oz_uma_ctf_adapter.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [perps_cantina_20260424_20260501.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_cantina_20260424_20260501.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [perps_certora_20260427_20260428.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_certora_20260427_20260428.pdf) | unknown | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [perps_quantstamp_20260408_20260410.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_quantstamp_20260408_20260410.pdf) | Quantstamp | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0b017cdcd731ff177ec00c4294561ff00ab9ae28`](./contracts/base-8453/0x0b017cdcd731ff177ec00c4294561ff00ab9ae28/) | ConditionalTokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x05c748e2f4dcde0ec9fa8ddc40de6b867f923fa5`](./contracts/base-8453/0x05c748e2f4dcde0ec9fa8ddc40de6b867f923fa5/) | CTFExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5130c2c398f930c4f43b15635410047cbea9d6eb`](./contracts/base-8453/0x5130c2c398f930c4f43b15635410047cbea9d6eb/) | FeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6d0c9a70d85e42ba8b76dc06620d4e988ec8d0c1`](./contracts/base-8453/0x6d0c9a70d85e42ba8b76dc06620d4e988ec8d0c1/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbe4974e19404894baa5ba4562cf748bcacf466bb`](./contracts/base-8453/0xbe4974e19404894baa5ba4562cf748bcacf466bb/) | Fixed192x64Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8cf2c130abc977a93ded099bbf54fe8c8f68cb32`](./contracts/base-8453/0x8cf2c130abc977a93ded099bbf54fe8c8f68cb32/) | FixedProductMarketMakerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6b5d0c08cffc8de2d079a21e37ddb40c452c7ca6`](./contracts/base-8453/0x6b5d0c08cffc8de2d079a21e37ddb40c452c7ca6/) | FPMMDeterministicFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0665acb185a54fb3ec6a22a0097d1b432cac94ae`](./contracts/base-8453/0x0665acb185a54fb3ec6a22a0097d1b432cac94ae/) | LMSRMarketMakerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9eadbe35f3ee3bf3e28180070c429298a1b02f93`](./contracts/base-8453/0x9eadbe35f3ee3bf3e28180070c429298a1b02f93/) | LMTS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2230393edad0299b7e7b59f20aa856cd1bed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x050b10cbcd8448bbad6fe644094ed4aa5b8379b8`](./contracts/base-8453/0x050b10cbcd8448bbad6fe644094ed4aa5b8379b8/) | MerkleDistributorWithDeadline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfd9dc7e303654d910b2b30c1caaefa6e4eec71dd`](./contracts/base-8453/0xfd9dc7e303654d910b2b30c1caaefa6e4eec71dd/) | MockCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04792d48550be72a5e80d7dd04e65e06ef270378`](./contracts/base-8453/0x04792d48550be72a5e80d7dd04e65e06ef270378/) | MockERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0f654baec6fd510309a3a8f3461f8d73e7eef2b3`](./contracts/base-8453/0x0f654baec6fd510309a3a8f3461f8d73e7eef2b3/) | MockWETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6151ef8368b6316c1aa3c68453ef083ad31e712d`](./contracts/base-8453/0x6151ef8368b6316c1aa3c68453ef083ad31e712d/) | NegRiskAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x46e607d3f4a8494b0ab9b304d1463e2f4848891d`](./contracts/base-8453/0x46e607d3f4a8494b0ab9b304d1463e2f4848891d/) | NegRiskCtfExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18b3e1192c01286050a0994bc26f7226ae4a483d`](./contracts/base-8453/0x18b3e1192c01286050a0994bc26f7226ae4a483d/) | NegRiskFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xae363abc7b264755e8706d81475c3586d4543992`](./contracts/base-8453/0xae363abc7b264755e8706d81475c3586d4543992/) | NegRiskOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ec22ee9381d0b3570ccb5887960ddfd05d210b3`](./contracts/base-8453/0x2ec22ee9381d0b3570ccb5887960ddfd05d210b3/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa94cbe4ad581a7761c62142e6c22582b8c57afed`](./contracts/base-8453/0xa94cbe4ad581a7761c62142e6c22582b8c57afed/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x428f0fc93221a9957dc667baa07e62d50c6b8c03`](./contracts/base-8453/0x428f0fc93221a9957dc667baa07e62d50c6b8c03/) | WrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20769] 2020-01-20_accumulator_audit.pdf
- [20770] Combinatorial Module - Cantina - May 2026.pdf
- [20771] Combinatorial Module - Certora - May 2026.pdf
- [20772] Combinatorial Module - Quantstamp - May 2026.pdf
- [20773] DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf
- [20774] DepositWallet - Certora - Beacon Upgrade - May 2026.pdf
- [20775] DepositWallet - Certora - March 2026.pdf
- [20776] DepositWallet - Zellic - March 2026.pdf
- [20777] Polymarket V2 - Cantina - April 2026.pdf
- [20778] Polymarket V2 - Certora - April 2026.pdf
- [20779] Polymarket V2 - Pashov - May 2026.pdf
- [20780] Polymarket V2 - Quantstamp - May 2026.pdf
- [20781] Polymarket V2 Additional changes - Certora - May 2026.pdf
- [20782] Polymarket V2 Diff Review - Cantina - June 2026.pdf
- [20783] cs_conditional_tokens.pdf
- [20784] cs_ctf_exchange.pdf
- [20785] cs_neg_risk_adapter.pdf
- [20786] cs_proxy_wallet_factories.pdf
- [20787] oz_neg_risk_adapter.pdf
- [20788] oz_uma_ctf_adapter.pdf
- [20789] perps_cantina_20260424_20260501.pdf
- [20790] perps_certora_20260427_20260428.pdf
- [20791] perps_quantstamp_20260408_20260410.pdf

Fork inheritance lineage and inherited audits are included when available.
