# Agentic Audit Brief: Sommelier

## Project Overview

- Project: Sommelier (`sommelier`)
- Website: [https://somm.finance/](https://somm.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:55.757Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum
- Contract surface: 34 unique implementations (34 raw deployments)
- DeFi Llama TVL: $835,849.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 34 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (erc721holder, erc20permit, eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 32/34 (94.1%)
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 32/34
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 18
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 18 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 32 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 29 | 85.3% | 2023-12 |
| Macro | Tier 2 | 28 | 82.4% | 2023-01 |
| FYEO | Tier 2 | 4 | 11.8% | n/a |

## Contract Surface

### ✅ Verified + Audited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV2StablecoinCellar | unknown | ethereum | n/a | [`0x7bad5d...34c0d5`](./contracts/ethereum-1/0x7bad5df5e11151dc5ee1a648800057c5c934c0d5/) | ✅ Audited |
| AaveV3ATokenAdaptor | unknown | arbitrum | n/a | [`0x392b1e...f6e5a8`](./contracts/arbitrum-42161/0x392b1e6905bb8449d26af701cdea6ff47bf6e5a8/) | ✅ Audited |
| Cellar | unknown | ethereum | n/a | [`0x05641a...f29652`](./contracts/ethereum-1/0x05641a27c82799aaf22b436f20a3110410f29652/) | ✅ Audited |
| CellarAdaptor | unknown | ethereum | n/a | [`0x23a739...9bed38`](./contracts/ethereum-1/0x23a739cba6e29767082c26b3d9c421409d9bed38/) | ✅ Audited |
| CellarFactory | unknown | ethereum | n/a | [`0x09d158...3ad159`](./contracts/ethereum-1/0x09d158103a311471d8f2cb2a879a54735b3ad159/) | ✅ Audited |
| CellarInitializable | unknown | ethereum | n/a | [`0x644d0f...5b4c24`](./contracts/ethereum-1/0x644d0f801521810530b60cc338931d835b5b4c24/) | ✅ Audited |
| CellarInitializableV2_1 | unknown | ethereum | n/a | [`0x8d4b8f...aa8753`](./contracts/ethereum-1/0x8d4b8f3576c988d0764ae61963366ca044aa8753/) | ✅ Audited |
| CellarInitializableV2_2 | unknown | ethereum | n/a | [`0x0274a7...cdad36`](./contracts/ethereum-1/0x0274a704a6d9129f90a62ddc6f6024b33ecdad36/) | ✅ Audited |
| CellarRouter | unknown | ethereum | n/a | [`0x15533b...cc4a58`](./contracts/ethereum-1/0x15533ba95b85da500e1faa444871d4760ecc4a58/) | ✅ Audited |
| CellarStaking | unknown | ethereum | n/a | [`0x0349b3...dd80d1`](./contracts/ethereum-1/0x0349b3c56adb9e39b5d75fc1df52eee313dd80d1/) | ✅ Audited |
| CellarWithOracleWithBalancerFlashLoans | unknown | ethereum | n/a | [`0x0c190d...c7975c`](./contracts/ethereum-1/0x0c190ded9be5f512bd72827bdad4003e9cc7975c/) | ✅ Audited |
| CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport | unknown | ethereum | n/a | [`0x19b8d8...fe597e`](./contracts/ethereum-1/0x19b8d8fc682fc56fbb42653f68c7d48dd3fe597e/) | ✅ Audited |
| CellarWithShareLockPeriod | unknown | ethereum | n/a | [`0x6c5104...208897`](./contracts/ethereum-1/0x6c51041a91c91c86f3f08a72cb4d3f67f1208897/) | ✅ Audited |
| CTokenAdaptor | unknown | ethereum | n/a | [`0x26dba8...02f078`](./contracts/ethereum-1/0x26dba82495f6189dde7648ae88bead46c402f078/) | ✅ Audited |
| ERC20Adaptor | unknown | ethereum | n/a | [`0x195e76...074693`](./contracts/ethereum-1/0x195e769df61f201e2161f575302edb3ac7074693/) | ✅ Audited |
| ERC4626SharePriceOracle | unknown | ethereum | n/a | [`0xfc254a...dc71cc`](./contracts/ethereum-1/0xfc254a090af27a94d00677191955f7713fdc71cc/) | ✅ Audited |
| EulerDebtTokenAdaptor | unknown | ethereum | n/a | [`0xb079d4...eb1b38`](./contracts/ethereum-1/0xb079d4ccf8557b0dd9ab829eedb62fa70feb1b38/) | ✅ Audited |
| EulerETokenAdaptor | unknown | ethereum | n/a | [`0x4869a3...6cfb8d`](./contracts/ethereum-1/0x4869a3c6642c824d9de238ebbe6e4424086cfb8d/) | ✅ Audited |
| FeesAndReserves | unknown | ethereum | n/a | [`0xba7f27...987c84`](./contracts/ethereum-1/0xba7f27d2893a908cceb08bc9952eb1ba5a987c84/) | ✅ Audited |
| FeesAndReservesAdaptor | unknown | ethereum | n/a | [`0x647d26...5d8933`](./contracts/ethereum-1/0x647d264d800a2461e594796af61a39b7735d8933/) | ✅ Audited |
| FTokenAdaptor | unknown | ethereum | n/a | [`0x13c7da...50acb9`](./contracts/ethereum-1/0x13c7da01977e6de1dfa8b135da34bd569650acb9/) | ✅ Audited |
| FTokenAdaptorV1 | unknown | ethereum | n/a | [`0x3bd96c...e1c5b0`](./contracts/ethereum-1/0x3bd96cb052d8e7162edc929b254c63596ae1c5b0/) | ✅ Audited |
| MockERC20 | unknown | ethereum | n/a | [`0xa5e3b2...966c2c`](./contracts/ethereum-1/0xa5e3b273ecbfe90a9abb8824974343d46a966c2c/) | ✅ Audited |
| MockFTokenAdaptor | unknown | ethereum | n/a | [`0x5d0282...538aa6`](./contracts/ethereum-1/0x5d02823c235048236a293f3d6c634bbb70538aa6/) | ✅ Audited |
| OneInchAdaptor | unknown | ethereum | n/a | [`0xa99ae6...ece7de`](./contracts/ethereum-1/0xa99ae6a11db22ff50bb17ca24c49a2bad8ece7de/) | ✅ Audited |
| PriceRouter | unknown | ethereum | n/a | [`0x01d2f9...a840a8`](./contracts/ethereum-1/0x01d2f9353393a2e5854c87d816bc4d5965a840a8/) | ✅ Audited |
| Registry | unknown | ethereum | n/a | [`0x2cbd27...050741`](./contracts/ethereum-1/0x2cbd27e034fee53f79b607430da7771b22050741/) | ✅ Audited |
| SwapRouter | unknown | ethereum | n/a | [`0x070f43...032020`](./contracts/ethereum-1/0x070f43e613b33ad3efc6b2928f3c01d58d032020/) | ✅ Audited |
| VestingSimple | unknown | ethereum | n/a | [`0x797337...f9143a`](./contracts/ethereum-1/0x797337de25b8a2649ca08a25b701dee2aef9143a/) | ✅ Audited |
| VestingSimpleAdaptor | unknown | ethereum | n/a | [`0x1eaa1a...faab60`](./contracts/ethereum-1/0x1eaa1a100a460f46a2032f0402bc01fe89faab60/) | ✅ Audited |
| WstEthExtension | unknown | ethereum | n/a | [`0xd9fd7d...6a71c7`](./contracts/ethereum-1/0xd9fd7dd08b3ffc53323db881661367e0d16a71c7/) | ✅ Audited |
| ZeroXAdaptor | unknown | ethereum | n/a | [`0x1039a9...fe35ef`](./contracts/ethereum-1/0x1039a9b61dff6a3fb8dbf4e924aa749e5cfe35ef/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CosmosERC20 | unknown | ethereum | n/a | [`0xa670d7...010fd1`](./contracts/ethereum-1/0xa670d7237398238de01267472c6f13e5b8010fd1/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x97a23e...8d6aff`](./contracts/ethereum-1/0x97a23e208d9de5546c3dfac655cb88288c8d6aff/) | ⚠️ Unaudited |

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
| [.css-16qnc5m{transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-fast);transition-timing-function:var(--chakra-transition-easing-ease-out);cursor:pointer;-webkit-text-decoration:none;text-decoration:none;outline:2px solid transparent;outline-offset:2px;color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;white-space:nowrap;vertical-align:middle;outline:2px solid transparent;outline-offset:2px;line-height:1.2;font-weight:var(--chakra-fontWeights-semibold);transition-property:var(--chakra-transition-property-common);transition-duration:var(--chakra-transition-duration-normal);height:var(--chakra-sizes-10);min-width:var(--chakra-sizes-10);font-size:var(--chakra-fontSizes-md);-webkit-padding-start:var(--chakra-space-4);padding-inline-start:var(--chakra-space-4);-webkit-padding-end:var(--chakra-space-4);padding-inline-end:var(--chakra-space-4);background:var(--chakra-colors-whiteAlpha-200);color:var(--chakra-colors-neutral-100);border:2px solid;border-color:var(--chakra-colors-primary-base);background-color:var(--chakra-colors-surface-primary);border-radius:2rem;}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:underline;text-decoration:underline;}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:focus-visible,.css-16qnc5m[data-focus-visible]{box-shadow:var(--chakra-shadows-outline);}.css-16qnc5m:disabled,.css-16qnc5m[disabled],.css-16qnc5m[aria-disabled=true],.css-16qnc5m[data-disabled]{opacity:0.4;cursor:not-allowed;box-shadow:var(--chakra-shadows-none);}.css-16qnc5m:active,.css-16qnc5m[data-active]{background:var(--chakra-colors-whiteAlpha-400);}.css-16qnc5m:hover,.css-16qnc5m[data-hover]{-webkit-text-decoration:none;text-decoration:none;background-color:var(--chakra-colors-surface-quinary);}](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Macro_Cellar_CellarStaking_07_2022.pdf) | Macro | Audit | 2022-07 | stale | Direct | contract_name | 2 | high |
| [sommelier-7.html](https://0xmacro.com/library/audits/sommelier-7.html) | 0xMacro | Audit | 2023-04 | stale | Direct | contract_name | 26 | high |
| [sommelier-9.html](https://0xmacro.com/library/audits/sommelier-9.html) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | 24 | high |
| [sommelier-3.html](https://0xmacro.com/library/audits/sommelier-3.html) | 0xMacro | Audit | 2022-10 | stale | Direct | contract_name | 25 | high |
| [sommelier-8.html](https://0xmacro.com/library/audits/sommelier-8.html) | 0xMacro | Audit | 2023-06 | stale | Direct | contract_name | 6 | high |
| [sommelier-14.html](https://0xmacro.com/library/audits/sommelier-14.html) | 0xMacro | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [sommelier-15.html](https://0xmacro.com/library/audits/sommelier-15.html) | 0xMacro | Audit | 2023-01 | stale | Direct | contract_name | 1 | high |
| [sommelier-4.html](https://0xmacro.com/library/audits/sommelier-4.html) | 0xMacro | Audit | 2023-01 | stale | Direct | contract_name | 26 | high |
| [sommelier-12.html](https://0xmacro.com/library/audits/sommelier-12.html) | 0xMacro | Audit | 2023-10 | stale | Direct | contract_name | 3 | high |
| [LeastAuthority_Althea_Gravity Bridge_Final_Audit_Report.pdf](https://leastauthority.com/static/publications/LeastAuthority_Althea_Gravity%20Bridge_Final_Audit_Report.pdf) | Least Authority | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [FYEO_Cellar_07_2022.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/FYEO_Cellar_07_2022.pdf) | FYEO | Audit | n/a | unknown | Direct | contract_name | 4 | high |
| [Macro_Sommelier-3_10_2022.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Macro_Sommelier-3_10_2022.pdf) | Macro | Audit | 2022-10 | stale | Direct | contract_name | 25 | high |
| [Macro_Sommelier-4_01_2023.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Macro_Sommelier-4_01_2023.pdf) | Macro | Audit | 2023-01 | stale | Direct | contract_name | 26 | high |
| [Sommelier A-10 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-10%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [Sommelier A-11 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-11%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | 2 | high |
| [Sommelier A-12 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-12%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-10 | stale | Direct | contract_name | 3 | high |
| [Sommelier A-14 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-14%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [Sommelier A-8 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-8%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-06 | stale | Direct | contract_name | 6 | high |
| [Sommelier A-9 _ Macro Audits _ The 0xMacro Library.pdf](https://github.com/PeggyJV/cellar-contracts/blob/main/audits/Sommelier%20A-9%20_%20Macro%20Audits%20_%20The%200xMacro%20Library.pdf) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | 24 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=18
- Match method counts: extraction_exact=206

Zero-match audit list:

- [18129] LeastAuthority_Althea_Gravity Bridge_Final_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
