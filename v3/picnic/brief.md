# Agentic Audit Brief: Picnic

## Project Overview

- Project: Picnic (`picnic`)
- Website: [https://www.usepicnic.com](https://www.usepicnic.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.328Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: polygon
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $200,470.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 20 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/20 (0.0%)
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutofarmDepositBridge | unknown | polygon | n/a | [`0x478949...a51704`](./contracts/polygon-137/0x4789499ed6d3c9e9b874e7e02ab8139779a51704/) | ⚠️ Unaudited |
| BaseTransfers | unknown | polygon | n/a | [`0x0e5047...2e14d8`](./contracts/polygon-137/0x0e5047e1273dfab56eb800f31da9e8a8872e14d8/) | ⚠️ Unaudited |
| DeFiBasket | unknown | polygon | n/a | [`0xee13c8...666b3b`](./contracts/polygon-137/0xee13c86ee4eb1ec3a05e2cc3ab70576f31666b3b/) | ⚠️ Unaudited |
| GenesisAddresses | unknown | polygon | n/a | [`0x7d5424...7d124e`](./contracts/polygon-137/0x7d5424f6c617c486ab4437b88410357bba7d124e/) | ⚠️ Unaudited |
| genesisBuys | unknown | polygon | n/a | [`0x7ca3ff...cd6799`](./contracts/polygon-137/0x7ca3ffa001d9bc98bf1fdfb1e48830b785cd6799/) | ⚠️ Unaudited |
| Lists | unknown | polygon | n/a | [`0x9c9aeb...b366dc`](./contracts/polygon-137/0x9c9aeb7906e677edbbad1bc86caf464924b366dc/) | ⚠️ Unaudited |
| Minereum | unknown | polygon | n/a | [`0x0b91b0...e3a578`](./contracts/polygon-137/0x0b91b07beb67333225a5ba0259d55aee10e3a578/) | ⚠️ Unaudited |
| Minereum32 | unknown | polygon | n/a | [`0x0848b6...cf6ea1`](./contracts/polygon-137/0x0848b63bf95f145f56d7d0413e386f9636cf6ea1/) | ⚠️ Unaudited |
| MinereumEvmOrdinals | unknown | polygon | n/a | [`0x20e9fd...bee138`](./contracts/polygon-137/0x20e9fd46b1d8544d50224e391120d1e4c1bee138/) | ⚠️ Unaudited |
| MinereumSecondary | unknown | polygon | n/a | [`0xbb9c51...a88b78`](./contracts/polygon-137/0xbb9c51e950517a4009c9e416bab5bd04b7a88b78/) | ⚠️ Unaudited |
| MinereumWorldPolygonRefund | unknown | polygon | n/a | [`0x74eb21...ce70ad`](./contracts/polygon-137/0x74eb21ce66e226e28f8e510da9623d959bce70ad/) | ⚠️ Unaudited |
| NormalAddresses | unknown | polygon | n/a | [`0x426d86...5504b3`](./contracts/polygon-137/0x426d86b00f85d8ea716727fec9cdff58f65504b3/) | ⚠️ Unaudited |
| publicArrays | unknown | polygon | n/a | [`0x12c609...33ee66`](./contracts/polygon-137/0x12c60985421f3ea92ac4997e2cec8b1bbf33ee66/) | ⚠️ Unaudited |
| publicCalls | unknown | polygon | n/a | [`0x0e35a9...d73b33`](./contracts/polygon-137/0x0e35a9caef5f24e1802c51ee935836af07d73b33/) | ⚠️ Unaudited |
| QuickswapLiquidityBridge | unknown | polygon | n/a | [`0x89db51...ca81a8`](./contracts/polygon-137/0x89db516b50819593f058040f781bff9880ca81a8/) | ⚠️ Unaudited |
| QuickswapSwapBridge | unknown | polygon | n/a | [`0xfa299c...bd7c77`](./contracts/polygon-137/0xfa299c3f1ee9dea789b1d94243ab7aeea8bd7c77/) | ⚠️ Unaudited |
| stakes | unknown | polygon | n/a | [`0xc59e57...33bf71`](./contracts/polygon-137/0xc59e57fc338e4dd177904faccd063c688833bf71/) | ⚠️ Unaudited |
| stakesBuys | unknown | polygon | n/a | [`0x8efd83...30c1b6`](./contracts/polygon-137/0x8efd839d6bcabaac5072d1c2bb360cbdb130c1b6/) | ⚠️ Unaudited |
| tokenService | unknown | polygon | n/a | [`0x5e1790...ba9833`](./contracts/polygon-137/0x5e179082c652fd750b7bf3b48c5a253a63ba9833/) | ⚠️ Unaudited |
| WMaticWrapBridge | unknown | polygon | n/a | [`0x9ba04e...e20647`](./contracts/polygon-137/0x9ba04edb13e129c19823a084c7e9988fa5e20647/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/defi-basket](https://skynet.certik.com/projects/defi-basket) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20937] skynet.certik.com/projects/defi-basket

Fork inheritance lineage and inherited audits are included when available.
