# Agentic Audit Brief: Polymarket

## Project Overview

- Project: Polymarket (`polymarket`)
- Website: [https://polymarket.com/?r=defillamareal](https://polymarket.com/?r=defillamareal)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.014Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum, polygon
- Contract surface: 33 unique implementations (33 raw deployments)
- DeFi Llama TVL: $467,043,374.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 33 project-authored contract(s) across 2 chain(s); 11 ERC20 tokens, 2 ERC1155 multi-tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 31 common project-authored base contract(s) (erc20basic, blacklistable, fiattokenv1_1). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/31 (74.2%)
- Deployed-live implementations: 33 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 24/33
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 21
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 16 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 24 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 51.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 20 | 60.6% | 2026-05 |
| Spearbit | Tier 1 | 16 | 48.5% | 2026-06 |
| Pashov Audit Group | Tier 2 | 12 | 36.4% | 2026-05 |
| Quantstamp | Tier 2 | 7 | 21.2% | 2026-05 |
| Zellic | Tier 2 | 1 | 3.0% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutoRedeemer | unknown | polygon | n/a | [`0x64860b...afb66c`](./contracts/polygon-137/0x64860bfd14fccaac09cd36f347784a9616afb66c/) | ✅ Audited |
| BinaryModule | unknown | polygon | n/a | [`0x100000...da00ba`](./contracts/polygon-137/0x1000008dd9001b968442c1000017eae6e0da00ba/) | ✅ Audited |
| CollateralOfframp | unknown | polygon | n/a | [`0x295792...dc5854`](./contracts/polygon-137/0x2957922eb93258b93368531d39facca3b4dc5854/) | ✅ Audited |
| CollateralOnramp | unknown | polygon | n/a | [`0x93070a...f5b8ee`](./contracts/polygon-137/0x93070a847efef7f70739046a929d47a521f5b8ee/) | ✅ Audited |
| CollateralToken | unknown | polygon | n/a | [`0x6bbcef...d0925f`](./contracts/polygon-137/0x6bbcef9f7ef3b6c592c99e0f206a0de94ad0925f/) | ✅ Audited |
| CombinatorialModule | unknown | polygon | n/a | [`0x300000...c031a8`](./contracts/polygon-137/0x30000034706c7d8e12009dab006be20000c031a8/) | ✅ Audited |
| ConditionalTokens | unknown | polygon | n/a | [`0x4d97dc...476045`](./contracts/polygon-137/0x4d97dcd97ec945f40cf65f87097ace5ea0476045/) | ✅ Audited |
| CtfCollateralAdapter | unknown | polygon | n/a | [`0xada100...8fce1f`](./contracts/polygon-137/0xada100db00ca00073811820692005400218fce1f/) | ✅ Audited |
| CTFExchange | unknown | polygon | n/a | [`0xe11118...7b996b`](./contracts/polygon-137/0xe111180000d2663c0091e4f400237545b87b996b/) | ✅ Audited |
| DepositWalletFactory | unknown | polygon | n/a | [`0x000000...23cc07`](./contracts/polygon-137/0x00000000000fb5c9adea0298d729a0cb3823cc07/) | ✅ Audited |
| Exchange | unknown | polygon | n/a | [`0x7345c6...20b5dc`](./contracts/polygon-137/0x7345c6842b244926125ed4054905cac49620b5dc/) | ✅ Audited |
| NegRiskAdapter | unknown | polygon | n/a | [`0xd91e80...a35296`](./contracts/polygon-137/0xd91e80cf2e7be2e162c6513ced06f1dd0da35296/) | ✅ Audited |
| NegRiskCtfCollateralAdapter | unknown | polygon | n/a | [`0xada200...b6eaab`](./contracts/polygon-137/0xada2005600dec949baf300f4c6120000bdb6eaab/) | ✅ Audited |
| NegRiskCtfExchange | unknown | polygon | n/a | [`0xc5d563...20f80a`](./contracts/polygon-137/0xc5d563a36ae78145c45a50134d48a1215220f80a/) | ✅ Audited |
| NegRiskFeeModule | unknown | polygon | n/a | [`0x78769d...bff29e`](./contracts/polygon-137/0x78769d50be1763ed1ca0d5e878d93f05aabff29e/) | ✅ Audited |
| NegRiskModule | unknown | polygon | n/a | [`0x200000...028933`](./contracts/polygon-137/0x200000900045e3b6259600682756002200028933/) | ✅ Audited |
| NegRiskOperator | unknown | polygon | n/a | [`0x000ce7...534def`](./contracts/polygon-137/0x000ce7ac9cc86e65729d74315c449eebb5534def/) | ✅ Audited |
| PermissionedRamp | unknown | polygon | n/a | [`0xebc245...2bcb08`](./contracts/polygon-137/0xebc2459ec962869ca4c0bd1e06368272732bcb08/) | ✅ Audited |
| PositionManager | unknown | polygon | n/a | [`0x006f54...ae9fef`](./contracts/polygon-137/0x006f54f7f9a22e0000cc2ab60031000000ae9fef/) | ✅ Audited |
| ProxyWallet | unknown | polygon | n/a | [`0x56687b...f55839`](./contracts/polygon-137/0x56687bf447db6ffa42ffe2204a05edaa20f55839/) | ✅ Audited |
| ProxyWalletFactory | unknown | polygon | n/a | [`0xab45c5...254052`](./contracts/polygon-137/0xab45c5a4b0c941a2f231c04c3f49182e1a254052/) | ✅ Audited |
| SafeProxyFactory | unknown | polygon | n/a | [`0xaacfee...e3541b`](./contracts/polygon-137/0xaacfeea03eb1561c4e67d661e40682bd20e3541b/) | ✅ Audited |
| UmaCtfAdapter | unknown | polygon | n/a | [`0x21cf6b...a29be7`](./contracts/polygon-137/0x21cf6b83995c17fa460e387cb45211772aa29be7/) | ✅ Audited |
| Vault | unknown | polygon | n/a | [`0x7f6732...75e11d`](./contracts/polygon-137/0x7f67327e88c258932d7d8f72950be0d46975e11d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | polygon | n/a | [`0x6d8c4e...d6b4fa`](./contracts/polygon-137/0x6d8c4e9adf5748af82dabe2c6225207770d6b4fa/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| UmaConditionalTokensBinaryAdapter | unknown | polygon | n/a | [`0xcb1822...995130`](./contracts/polygon-137/0xcb1822859cef82cd2eb4e6276c7916e692995130/) | ⚠️ Unaudited |

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
| [2020-01-20_accumulator_audit.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/2020-01-20_accumulator_audit.pdf) | unknown | Audit | 2020-01 | stale | Direct | contract_name | 1 | high |
| [Combinatorial Module - Cantina - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Cantina%20-%20May%202026.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | 3 | high |
| [Combinatorial Module - Certora - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Certora%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |
| [Combinatorial Module - Quantstamp - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Quantstamp%20-%20May%202026.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | contract_name | 2 | high |
| [DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Cantina%20-%20Beacon%20Upgrade%20-%20May%202026.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |
| [DepositWallet - Certora - Beacon Upgrade - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Certora%20-%20Beacon%20Upgrade%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |
| [DepositWallet - Certora - March 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Certora%20-%20March%202026.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [DepositWallet - Zellic - March 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Zellic%20-%20March%202026.pdf) | Zellic | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Polymarket V2 - Cantina - April 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Cantina%20-%20April%202026.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | 13 | high |
| [Polymarket V2 - Certora - April 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Certora%20-%20April%202026.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | 8 | high |
| [Polymarket V2 - Pashov - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Pashov%20-%20May%202026.pdf) | Pashov Audit Group | Audit | 2026-05 | fresh | Direct | contract_name | 12 | high |
| [Polymarket V2 - Quantstamp - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Quantstamp%20-%20May%202026.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | contract_name | 6 | high |
| [Polymarket V2 Additional changes - Certora - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20Additional%20changes%20-%20Certora%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | 6 | high |
| [Polymarket V2 Diff Review - Cantina - June 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20Diff%20Review%20-%20Cantina%20-%20June%202026.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | 13 | high |
| [cs_conditional_tokens.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_conditional_tokens.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [cs_ctf_exchange.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_ctf_exchange.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 3 | high |
| [cs_neg_risk_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_neg_risk_adapter.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [cs_proxy_wallet_factories.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_proxy_wallet_factories.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [oz_neg_risk_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/oz_neg_risk_adapter.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 4 | high |
| [oz_uma_ctf_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/oz_uma_ctf_adapter.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 2 | high |
| [perps_cantina_20260424_20260501.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_cantina_20260424_20260501.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [perps_certora_20260427_20260428.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_certora_20260427_20260428.pdf) | unknown | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [perps_quantstamp_20260408_20260410.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_quantstamp_20260408_20260410.pdf) | Quantstamp | Audit | 2026-04 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcb1822...995130`](./contracts/polygon-137/0xcb1822859cef82cd2eb4e6276c7916e692995130/) | UmaConditionalTokensBinaryAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=21
- Match method counts: extraction_exact=88

Zero-match audit list:

- [20966] perps_cantina_20260424_20260501.pdf
- [20967] perps_certora_20260427_20260428.pdf

Fork inheritance lineage and inherited audits are included when available.
