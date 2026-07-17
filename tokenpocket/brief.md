# Agentic Audit Brief: TokenPocket

## Project Overview

- Project: TokenPocket (`tokenpocket`)
- Website: [https://dapp.tokenpocket.pro/StakeVault/#/](https://dapp.tokenpocket.pro/StakeVault/#/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.534Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $157,282.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Staking Pool. Structurally: 10 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BKSToken | unknown | ethereum | n/a | [`0x121ca6a8079179678aef599d63449c6a9f3fdf7c`](./contracts/ethereum-1/0x121ca6a8079179678aef599d63449c6a9f3fdf7c/) | ⚠️ Unaudited |
| BMRToken | unknown | ethereum | n/a | [`0xc6df049c9471730e20a90f621db4df2b168b0e92`](./contracts/ethereum-1/0xc6df049c9471730e20a90f621db4df2b168b0e92/) | ⚠️ Unaudited |
| ContractChecker | unknown | ethereum | n/a | [`0xde858e297969f9981e65ae3c73e65f87ad8b8e2d`](./contracts/ethereum-1/0xde858e297969f9981e65ae3c73e65f87ad8b8e2d/) | ⚠️ Unaudited |
| ERC20TokenFactory | unknown | ethereum | n/a | [`0xb9b6885d0af9914d432871dcbeb20daa8282a763`](./contracts/ethereum-1/0xb9b6885d0af9914d432871dcbeb20daa8282a763/) | ⚠️ Unaudited |
| EWSToken | unknown | ethereum | n/a | [`0xf7737361b538841a7157cafe5e932b27eac42f90`](./contracts/ethereum-1/0xf7737361b538841a7157cafe5e932b27eac42f90/) | ⚠️ Unaudited |
| KTToken | unknown | ethereum | n/a | [`0x335a763df5bbcabd501303a9d8201cba0746e617`](./contracts/ethereum-1/0x335a763df5bbcabd501303a9d8201cba0746e617/) | ⚠️ Unaudited |
| KWToken | unknown | ethereum | n/a | [`0x270d32dc8b6ac374ffef0da958a16fe48e0ebbe9`](./contracts/ethereum-1/0x270d32dc8b6ac374ffef0da958a16fe48e0ebbe9/) | ⚠️ Unaudited |
| RSPToken | unknown | ethereum | n/a | [`0xfc79e5ecbfb64cb292c71267731d4ef8f9b6fed3`](./contracts/ethereum-1/0xfc79e5ecbfb64cb292c71267731d4ef8f9b6fed3/) | ⚠️ Unaudited |
| TPToken | unknown | ethereum | n/a | [`0x4161725d019690a3e0de50f6be67b07a86a9fae1`](./contracts/ethereum-1/0x4161725d019690a3e0de50f6be67b07a86a9fae1/) | ⚠️ Unaudited |
| UWSToken | unknown | ethereum | n/a | [`0xe96959522effd18da0238fbbe1bc97aff2fded05`](./contracts/ethereum-1/0xe96959522effd18da0238fbbe1bc97aff2fded05/) | ⚠️ Unaudited |

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
| ethereum | [`0x121ca6a8079179678aef599d63449c6a9f3fdf7c`](./contracts/ethereum-1/0x121ca6a8079179678aef599d63449c6a9f3fdf7c/) | BKSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6df049c9471730e20a90f621db4df2b168b0e92`](./contracts/ethereum-1/0xc6df049c9471730e20a90f621db4df2b168b0e92/) | BMRToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde858e297969f9981e65ae3c73e65f87ad8b8e2d`](./contracts/ethereum-1/0xde858e297969f9981e65ae3c73e65f87ad8b8e2d/) | ContractChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9b6885d0af9914d432871dcbeb20daa8282a763`](./contracts/ethereum-1/0xb9b6885d0af9914d432871dcbeb20daa8282a763/) | ERC20TokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7737361b538841a7157cafe5e932b27eac42f90`](./contracts/ethereum-1/0xf7737361b538841a7157cafe5e932b27eac42f90/) | EWSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x335a763df5bbcabd501303a9d8201cba0746e617`](./contracts/ethereum-1/0x335a763df5bbcabd501303a9d8201cba0746e617/) | KTToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x270d32dc8b6ac374ffef0da958a16fe48e0ebbe9`](./contracts/ethereum-1/0x270d32dc8b6ac374ffef0da958a16fe48e0ebbe9/) | KWToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc79e5ecbfb64cb292c71267731d4ef8f9b6fed3`](./contracts/ethereum-1/0xfc79e5ecbfb64cb292c71267731d4ef8f9b6fed3/) | RSPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4161725d019690a3e0de50f6be67b07a86a9fae1`](./contracts/ethereum-1/0x4161725d019690a3e0de50f6be67b07a86a9fae1/) | TPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe96959522effd18da0238fbbe1bc97aff2fded05`](./contracts/ethereum-1/0xe96959522effd18da0238fbbe1bc97aff2fded05/) | UWSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
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
