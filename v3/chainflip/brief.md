# Agentic Audit Brief: Chainflip

## Project Overview

- Project: Chainflip (`chainflip`)
- Website: [https://chainflip.io/](https://chainflip.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:39.335Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, ethereum
- Contract surface: 13 unique implementations (26 raw deployments)
- DeFi Llama TVL: $33,405,700.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 33 project-authored contract(s) across 2 chain(s); 13 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 25 common project-authored base contract(s) (shared, erc20basic, blacklistable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 136; live-surface contracts included: 26 (24 live, 2 unknown).
- Excluded by liveness: 110 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/11 (27.3%)
- Deployed-live implementations: 11 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/11
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 13
- Raw deployments: 26
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 27.3% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 3 | 27.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FLIP | unknown | ethereum | n/a | [`0x826180...22678a`](./contracts/ethereum-1/0x826180541412d574cf1336d22c0c0a287822678a/) | ✅ Audited |
| KeyManager | governance | arbitrum | n/a | 2 deployments: ethereum `0xcd351d...bf08be`; arbitrum [`0xbfe612...000275`](./contracts/arbitrum-42161/0xbfe612c77c2807ac5a6a41f84436287578000275/) | ✅ Audited |
| Vault | core_logic | arbitrum | n/a | 2 deployments: ethereum `0xf5e103...f62bcc`; arbitrum [`0x79001a...498920`](./contracts/arbitrum-42161/0x79001a5e762f3befc8e5871b42f6734e00498920/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x5f4ec3...5b8419`](./contracts/ethereum-1/0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| ScUtils | unknown | ethereum | n/a | [`0x13ad79...301380`](./contracts/ethereum-1/0x13ad793e7b75eaacee34b69792552f086b301380/) | ⚠️ Unaudited |
| StateChainGateway | unknown | ethereum | n/a | [`0x6995ab...621dbd`](./contracts/ethereum-1/0x6995ab7c4d7f4b03f467cf4c8e920427d9621dbd/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenVestingNoStaking | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x1aaa03...43e887`](./contracts/ethereum-1/0x1aaa037bfbbe56995db04b30298f9a7ccc43e887/); ethereum `0x5df5e9...2b3773`; ethereum `0x7eb1b8...4b7e75`; ethereum `0x8d1ecf...736e3a`; ethereum `0xfa7431...361507` | ⚠️ Unaudited |
| TokenVestingStaking | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x00b284...2830b9`](./contracts/ethereum-1/0x00b2849f4bdb572858ac144f83340a3f472830b9/); ethereum `0x159cd1...8699ed`; ethereum `0x1728e5...bc0861`; ethereum `0x36541c...e2ba8e`; ethereum `0x3bfe74...5bf858`; ethereum `0x49d9c4...0fef37`; ethereum `0xde4c12...c67d38`; ethereum `0xf361c4...4fe474` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xbfe612...000275` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59d9e1...bd5925` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-04-TrailOfBits-securityreview.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/2023-04-TrailOfBits-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | 3 | n/a |
| [Chainflip_Backend_-_Zellic_Audit_Report.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Chainflip_Backend_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [Multisig-Kudelski-Q1-2022.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Multisig-Kudelski-Q1-2022.pdf) | Kudelski Security | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2023-04-chainflip-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-04-chainflip-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Zero-match audit list:

- [3974] Chainflip_Backend_-_Zellic_Audit_Report.pdf
- [3975] Multisig-Kudelski-Q1-2022.pdf

Fork inheritance lineage and inherited audits are included when available.
