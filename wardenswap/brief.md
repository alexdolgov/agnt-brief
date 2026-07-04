# Agentic Audit Brief: WardenSwap

## Project Overview

- Project: WardenSwap (`wardenswap`)
- Website: [https://www.wardenswap.com](https://www.wardenswap.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.121Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc
- Contract surface: 21 unique implementations (21 raw deployments)
- DeFi Llama TVL: $249,004.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 21 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (whitelistedrole, whitelistadminrole, wardentokenpriviledge). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/21 (47.6%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/21
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 8 | 38.1% | 2021-05 |
| CertiK | Tier 2 | 2 | 9.5% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterChef | unknown | bsc | n/a | [`0xde866d...26c674`](./contracts/bsc-56/0xde866dd77b6df6772e320dc92bff0eddc626c674/) | ✅ Audited |
| SpartanRoute | unknown | bsc | n/a | [`0xecc52c...e0d88a`](./contracts/bsc-56/0xecc52cc4d767d85a451b542c09a0eb1392e0d88a/) | ✅ Audited |
| Tempest | unknown | bsc | n/a | [`0x372aed...4b226e`](./contracts/bsc-56/0x372aed0528ea4bc95e1101b2882cb15fca4b226e/) | ✅ Audited |
| Timelock | unknown | bsc | n/a | [`0x7a6981...9a3d86`](./contracts/bsc-56/0x7a6981d4dbfa6b8fe4a75b8947363084719a3d86/) | ✅ Audited |
| WardenBestRateQuery | unknown | bsc | n/a | [`0x8d32aa...c34eff`](./contracts/bsc-56/0x8d32aa3ce12c9869156eba5e384ea00e81c34eff/) | ✅ Audited |
| WardenCosmoCore | unknown | bsc | n/a | [`0xbf0955...5c575a`](./contracts/bsc-56/0xbf0955a3c4d3dd474b397ae4cdb8d264065c575a/) | ✅ Audited |
| WardenSwap | unknown | bsc | n/a | [`0xb75fa2...a6610a`](./contracts/bsc-56/0xb75fa2a799fc7935f37500ba9780cbe10aa6610a/) | ✅ Audited |
| WardenSwap1_5_Aegis | unknown | bsc | n/a | [`0x68fac8...d0e5b6`](./contracts/bsc-56/0x68fac8a95d04b69bdbf66ca554f47a8193d0e5b6/) | ✅ Audited |
| WardenToken | unknown | bsc | n/a | [`0x0feadc...1627fc`](./contracts/bsc-56/0x0feadcc3824e7f3c12f40e324a60c23ca51627fc/) | ✅ Audited |
| WardenUV2Router | unknown | bsc | n/a | [`0x023591...cb6978`](./contracts/bsc-56/0x0235910cd3017178f69db8ea98c43f3764cb6978/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NullifierToken | unknown | bsc | n/a | [`0x359805...feddd1`](./contracts/bsc-56/0x3598059bfe7ce24ab939bee17bf06101ddfeddd1/) | ⚠️ Unaudited |
| WardenACryptoSRouter | unknown | bsc | n/a | [`0x210686...5e0711`](./contracts/bsc-56/0x21068601985069868cef87b951763e47cd5e0711/) | ⚠️ Unaudited |
| WardenBnbRoute | unknown | bsc | n/a | [`0x83e187...a9001a`](./contracts/bsc-56/0x83e187bba6f16424b8efcdc21ba13d0e0fa9001a/) | ⚠️ Unaudited |
| WardenCosmicBrain | unknown | bsc | n/a | [`0x3c0d05...bcb783`](./contracts/bsc-56/0x3c0d058aab0b47a377c25effc856b84f0ebcb783/) | ⚠️ Unaudited |
| WardenFactory | unknown | bsc | n/a | [`0x365795...b46293`](./contracts/bsc-56/0x3657952d7ba5a0a4799809b5b6fdff9ec5b46293/) | ⚠️ Unaudited |
| WardenMdexRouter | unknown | bsc | n/a | [`0x00a73c...17e516`](./contracts/bsc-56/0x00a73c823044ff385d905636ebd48a122517e516/) | ⚠️ Unaudited |
| WardenNerveRouter | unknown | bsc | n/a | [`0xd3d8ef...71b602`](./contracts/bsc-56/0xd3d8efc4c3289163e52de716212b67e3c571b602/) | ⚠️ Unaudited |
| WardenRouterV2 | unknown | bsc | n/a | [`0x451ef8...761004`](./contracts/bsc-56/0x451ef8d6b645a60115eb8b8bea76b39c0c761004/) | ⚠️ Unaudited |
| WardenSwap1_5 | unknown | bsc | n/a | [`0x359b9f...8125ae`](./contracts/bsc-56/0x359b9fc0765481569c33ccef23bd14d0878125ae/) | ⚠️ Unaudited |
| WardenswapV2Router02 | unknown | bsc | n/a | [`0x71ac17...de4054`](./contracts/bsc-56/0x71ac17934b60a4610dc58b715b61e45dcbde4054/) | ⚠️ Unaudited |
| WardenswapValueDefiRouter | unknown | bsc | n/a | [`0x64e16e...9ff415`](./contracts/bsc-56/0x64e16e42493c9d537521a0346c91e254de9ff415/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/wardenswap) | CertiK | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [Audit Report Valix](https://github.com/valixconsulting/audit-reports/blob/main/ValixConsulting-Audit-Report-WardenFinance-Aegis-and-AegisL2-v1.0.pdf) | CertiK | Audit | 2021-10 | stale | Direct | contract_name | 2 | high |
| [Audited by Certik](https://docs.wardenswap.finance/warden/transparency/audited-by-certik.md) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audited by Valix](https://docs.wardenswap.finance/warden/transparency/audited-by-valix.md) | Valix | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf](https://github.com/valixconsulting/audit-reports/blob/main/ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf) | Valix Consulting | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [WardenSwap Farm](https://github.com/Wardenswap/warden-farm/blob/main/audits/WardenSwap-Farm-Audit.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | 4 | high |
| [WardenSwap Protocol](https://github.com/Wardenswap/warden-protocol/blob/main/audits/WardenSwap-Protocal-Audit.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x359805...feddd1`](./contracts/bsc-56/0x3598059bfe7ce24ab939bee17bf06101ddfeddd1/) | NullifierToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x210686...5e0711`](./contracts/bsc-56/0x21068601985069868cef87b951763e47cd5e0711/) | WardenACryptoSRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x83e187...a9001a`](./contracts/bsc-56/0x83e187bba6f16424b8efcdc21ba13d0e0fa9001a/) | WardenBnbRoute | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c0d05...bcb783`](./contracts/bsc-56/0x3c0d058aab0b47a377c25effc856b84f0ebcb783/) | WardenCosmicBrain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x365795...b46293`](./contracts/bsc-56/0x3657952d7ba5a0a4799809b5b6fdff9ec5b46293/) | WardenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00a73c...17e516`](./contracts/bsc-56/0x00a73c823044ff385d905636ebd48a122517e516/) | WardenMdexRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd3d8ef...71b602`](./contracts/bsc-56/0xd3d8efc4c3289163e52de716212b67e3c571b602/) | WardenNerveRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x451ef8...761004`](./contracts/bsc-56/0x451ef8d6b645a60115eb8b8bea76b39c0c761004/) | WardenRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x359b9f...8125ae`](./contracts/bsc-56/0x359b9fc0765481569c33ccef23bd14d0878125ae/) | WardenSwap1_5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x71ac17...de4054`](./contracts/bsc-56/0x71ac17934b60a4610dc58b715b61e45dcbde4054/) | WardenswapV2Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64e16e...9ff415`](./contracts/bsc-56/0x64e16e42493c9d537521a0346c91e254de9ff415/) | WardenswapValueDefiRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=10

Zero-match audit list:

- [18622] DL audit link
- [18624] Audited by Certik
- [18625] Audited by Valix
- [18626] ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
