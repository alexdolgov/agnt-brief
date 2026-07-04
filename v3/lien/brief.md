# Agentic Audit Brief: Lien

## Project Overview

- Project: Lien (`lien`)
- Website: [https://lien.finance/](https://lien.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.518Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $132,464.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 14 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (usesafemath, time, usebondmaker). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 14 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 14
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Auction | unknown | ethereum | n/a | [`0x075e0a...c6e5c4`](./contracts/ethereum-1/0x075e0a8623d42e8a3b99409b4e18a1bd82c6e5c4/) | ⚠️ Unaudited |
| BondMaker | unknown | ethereum | n/a | [`0xacdc94...4e37a3`](./contracts/ethereum-1/0xacdc94b9f187fa7ee3c5cf0969c2faccab4e37a3/) | ⚠️ Unaudited |
| BondTokenName | unknown | ethereum | n/a | [`0x0b06da...aeed72`](./contracts/ethereum-1/0x0b06dada89d0df1c9162c97009af56509caeed72/) | ⚠️ Unaudited |
| DecentralizedOTC | unknown | ethereum | n/a | [`0x858dbd...c1b0c7`](./contracts/ethereum-1/0x858dbdff0dee9dfc21d3413245cc0f349ec1b0c7/) | ⚠️ Unaudited |
| FlattenStableCoin | unknown | ethereum | n/a | [`0xdb4f5b...6ad782`](./contracts/ethereum-1/0xdb4f5bc7d37816537e8af48c885ef28f366ad782/) | ⚠️ Unaudited |
| IDOLvsETHBoxExchange | unknown | ethereum | n/a | [`0x8e0ae5...7c7d5d`](./contracts/ethereum-1/0x8e0ae5254dc4c6f89ef9a4079096958f787c7d5d/) | ⚠️ Unaudited |
| LBTExchangeFactory | unknown | ethereum | n/a | [`0x662dd9...847749`](./contracts/ethereum-1/0x662dd92acb050e677fdd1d458ccace9f8d847749/) | ⚠️ Unaudited |
| LBTPricing | unknown | ethereum | n/a | [`0x1f760a...60772b`](./contracts/ethereum-1/0x1f760ad8fef7843f5e5e3d085b71ceaa6f60772b/) | ⚠️ Unaudited |
| LienBoxExchange | unknown | ethereum | n/a | [`0x31dcf5...7cf690`](./contracts/ethereum-1/0x31dcf50fa6c21f189a7953ce84387f50b77cf690/) | ⚠️ Unaudited |
| LienToken | unknown | ethereum | n/a | [`0xab37e1...a7557e`](./contracts/ethereum-1/0xab37e1358b639fd877f015027bb62d3ddaa7557e/) | ⚠️ Unaudited |
| MarketOracle | unknown | ethereum | n/a | [`0x120a07...c7ac82`](./contracts/ethereum-1/0x120a078fdc516a1a98bbecb9e961f8741ac7ac82/) | ⚠️ Unaudited |
| PriceCalculator | unknown | ethereum | n/a | [`0xe9aa04...0b3e2d`](./contracts/ethereum-1/0xe9aa04b8d955fd291d44c9fdb8eb1227850b3e2d/) | ⚠️ Unaudited |
| SpreadCalculator | unknown | ethereum | n/a | [`0xc05cb1...bc5cbf`](./contracts/ethereum-1/0xc05cb1999ab97a9ae5337fbdc4cb0e1458bc5cbf/) | ⚠️ Unaudited |
| TrustedPriceOracle | unknown | ethereum | n/a | [`0x27bb7c...6e9d39`](./contracts/ethereum-1/0x27bb7c9c06c8e5c886685df31da4b094756e9d39/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
