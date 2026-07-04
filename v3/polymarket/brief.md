# Agentic Audit Brief: Polymarket

## Project Overview

- Project: Polymarket (`polymarket`)
- Website: [https://polymarket.com/?r=defillamareal](https://polymarket.com/?r=defillamareal)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.883Z
- Pipeline run: v2-2026-07-02-1ba3fd
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

- Coverage of deployed-live implementations: 0/33 (0.0%)
- Deployed-live implementations: 33 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 14 fresh, 0 aging, 1 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutoRedeemer | unknown | polygon | n/a | [`0x64860b...afb66c`](./contracts/polygon-137/0x64860bfd14fccaac09cd36f347784a9616afb66c/) | ⚠️ Unaudited |
| BinaryModule | unknown | polygon | n/a | [`0x100000...da00ba`](./contracts/polygon-137/0x1000008dd9001b968442c1000017eae6e0da00ba/) | ⚠️ Unaudited |
| CollateralOfframp | unknown | polygon | n/a | [`0x295792...dc5854`](./contracts/polygon-137/0x2957922eb93258b93368531d39facca3b4dc5854/) | ⚠️ Unaudited |
| CollateralOnramp | unknown | polygon | n/a | [`0x93070a...f5b8ee`](./contracts/polygon-137/0x93070a847efef7f70739046a929d47a521f5b8ee/) | ⚠️ Unaudited |
| CollateralToken | unknown | polygon | n/a | [`0x6bbcef...d0925f`](./contracts/polygon-137/0x6bbcef9f7ef3b6c592c99e0f206a0de94ad0925f/) | ⚠️ Unaudited |
| CombinatorialModule | unknown | polygon | n/a | [`0x300000...c031a8`](./contracts/polygon-137/0x30000034706c7d8e12009dab006be20000c031a8/) | ⚠️ Unaudited |
| ConditionalTokens | unknown | polygon | n/a | [`0x4d97dc...476045`](./contracts/polygon-137/0x4d97dcd97ec945f40cf65f87097ace5ea0476045/) | ⚠️ Unaudited |
| CtfCollateralAdapter | unknown | polygon | n/a | [`0xada100...8fce1f`](./contracts/polygon-137/0xada100db00ca00073811820692005400218fce1f/) | ⚠️ Unaudited |
| CTFExchange | unknown | polygon | n/a | [`0xe11118...7b996b`](./contracts/polygon-137/0xe111180000d2663c0091e4f400237545b87b996b/) | ⚠️ Unaudited |
| DepositWalletFactory | unknown | polygon | n/a | [`0x000000...23cc07`](./contracts/polygon-137/0x00000000000fb5c9adea0298d729a0cb3823cc07/) | ⚠️ Unaudited |
| Exchange | unknown | polygon | n/a | [`0x7345c6...20b5dc`](./contracts/polygon-137/0x7345c6842b244926125ed4054905cac49620b5dc/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | polygon | n/a | [`0x6d8c4e...d6b4fa`](./contracts/polygon-137/0x6d8c4e9adf5748af82dabe2c6225207770d6b4fa/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| NegRiskAdapter | unknown | polygon | n/a | [`0xd91e80...a35296`](./contracts/polygon-137/0xd91e80cf2e7be2e162c6513ced06f1dd0da35296/) | ⚠️ Unaudited |
| NegRiskCtfCollateralAdapter | unknown | polygon | n/a | [`0xada200...b6eaab`](./contracts/polygon-137/0xada2005600dec949baf300f4c6120000bdb6eaab/) | ⚠️ Unaudited |
| NegRiskCtfExchange | unknown | polygon | n/a | [`0xc5d563...20f80a`](./contracts/polygon-137/0xc5d563a36ae78145c45a50134d48a1215220f80a/) | ⚠️ Unaudited |
| NegRiskFeeModule | unknown | polygon | n/a | [`0x78769d...bff29e`](./contracts/polygon-137/0x78769d50be1763ed1ca0d5e878d93f05aabff29e/) | ⚠️ Unaudited |
| NegRiskModule | unknown | polygon | n/a | [`0x200000...028933`](./contracts/polygon-137/0x200000900045e3b6259600682756002200028933/) | ⚠️ Unaudited |
| NegRiskOperator | unknown | polygon | n/a | [`0x000ce7...534def`](./contracts/polygon-137/0x000ce7ac9cc86e65729d74315c449eebb5534def/) | ⚠️ Unaudited |
| PermissionedRamp | unknown | polygon | n/a | [`0xebc245...2bcb08`](./contracts/polygon-137/0xebc2459ec962869ca4c0bd1e06368272732bcb08/) | ⚠️ Unaudited |
| PositionManager | unknown | polygon | n/a | [`0x006f54...ae9fef`](./contracts/polygon-137/0x006f54f7f9a22e0000cc2ab60031000000ae9fef/) | ⚠️ Unaudited |
| ProxyWallet | unknown | polygon | n/a | [`0x56687b...f55839`](./contracts/polygon-137/0x56687bf447db6ffa42ffe2204a05edaa20f55839/) | ⚠️ Unaudited |
| ProxyWalletFactory | unknown | polygon | n/a | [`0xab45c5...254052`](./contracts/polygon-137/0xab45c5a4b0c941a2f231c04c3f49182e1a254052/) | ⚠️ Unaudited |
| SafeProxyFactory | unknown | polygon | n/a | [`0xaacfee...e3541b`](./contracts/polygon-137/0xaacfeea03eb1561c4e67d661e40682bd20e3541b/) | ⚠️ Unaudited |
| UmaConditionalTokensBinaryAdapter | unknown | polygon | n/a | [`0xcb1822...995130`](./contracts/polygon-137/0xcb1822859cef82cd2eb4e6276c7916e692995130/) | ⚠️ Unaudited |
| UmaCtfAdapter | unknown | polygon | n/a | [`0x21cf6b...a29be7`](./contracts/polygon-137/0x21cf6b83995c17fa460e387cb45211772aa29be7/) | ⚠️ Unaudited |
| Vault | unknown | polygon | n/a | [`0x7f6732...75e11d`](./contracts/polygon-137/0x7f67327e88c258932d7d8f72950be0d46975e11d/) | ⚠️ Unaudited |

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
| [perps_cantina_20260424_20260501.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_cantina_20260424_20260501.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [perps_certora_20260427_20260428.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_certora_20260427_20260428.pdf) | unknown | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [perps_quantstamp_20260408_20260410.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_quantstamp_20260408_20260410.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20946] 2020-01-20_accumulator_audit.pdf
- [20947] Combinatorial Module - Cantina - May 2026.pdf
- [20948] Combinatorial Module - Certora - May 2026.pdf
- [20949] Combinatorial Module - Quantstamp - May 2026.pdf
- [20950] DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf
- [20951] DepositWallet - Certora - Beacon Upgrade - May 2026.pdf
- [20952] DepositWallet - Certora - March 2026.pdf
- [20953] DepositWallet - Zellic - March 2026.pdf
- [20954] Polymarket V2 - Cantina - April 2026.pdf
- [20955] Polymarket V2 - Certora - April 2026.pdf
- [20956] Polymarket V2 - Pashov - May 2026.pdf
- [20957] Polymarket V2 - Quantstamp - May 2026.pdf
- [20958] Polymarket V2 Additional changes - Certora - May 2026.pdf
- [20959] Polymarket V2 Diff Review - Cantina - June 2026.pdf
- [20960] cs_conditional_tokens.pdf
- [20961] cs_ctf_exchange.pdf
- [20962] cs_neg_risk_adapter.pdf
- [20963] cs_proxy_wallet_factories.pdf
- [20964] oz_neg_risk_adapter.pdf
- [20965] oz_uma_ctf_adapter.pdf
- [20966] perps_cantina_20260424_20260501.pdf
- [20967] perps_certora_20260427_20260428.pdf
- [20968] perps_quantstamp_20260408_20260410.pdf

Fork inheritance lineage and inherited audits are included when available.
