# Agentic Audit Brief: Mars Ecosystem

## Project Overview

- Project: Mars Ecosystem (`mars-ecosystem`)
- Website: [https://marsecosystem.com/home](https://marsecosystem.com/home)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.442Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $233,545.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 14 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (coreref, daotoken). Dominant framework: openzeppelin.

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
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/marsecosystem/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| AirDrop | unknown | bsc | n/a | [`0x01d152ff991e76b6cb310387c07cafdfda790a25`](./contracts/bsc-56/0x01d152ff991e76b6cb310387c07cafdfda790a25/) | ⚠️ Unaudited |
| Core | unknown | bsc | n/a | [`0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7`](./contracts/bsc-56/0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7/) | ⚠️ Unaudited |
| IMO | unknown | bsc | n/a | [`0x243ddd2e42ceb93349e726e2367edec6339aba75`](./contracts/bsc-56/0x243ddd2e42ceb93349e726e2367edec6339aba75/) | ⚠️ Unaudited |
| LiquidityMiningMaster | unknown | bsc | n/a | [`0x18878ca9b1cd1862c2cc357a6cf7a0ec857c80ed`](./contracts/bsc-56/0x18878ca9b1cd1862c2cc357a6cf7a0ec857c80ed/) | ⚠️ Unaudited |
| LiquidityMiningMasterBNB | unknown | bsc | n/a | [`0x48c42579d98aa768cde893f8214371ed607cabe3`](./contracts/bsc-56/0x48c42579d98aa768cde893f8214371ed607cabe3/) | ⚠️ Unaudited |
| MarsFarmV2 | unknown | bsc | n/a | [`0x3762899a888944c1dde493041a339df2f9e310e9`](./contracts/bsc-56/0x3762899a888944c1dde493041a339df2f9e310e9/) | ⚠️ Unaudited |
| MarsStake | unknown | bsc | n/a | [`0x3b550bbfac32ec434f858a8135fa17c40636583b`](./contracts/bsc-56/0x3b550bbfac32ec434f858a8135fa17c40636583b/) | ⚠️ Unaudited |
| MarsStratX2_PCS | unknown | bsc | n/a | [`0x4c7f4daca14c4bb0e6b616cc6faa8354ccc5238f`](./contracts/bsc-56/0x4c7f4daca14c4bb0e6b616cc6faa8354ccc5238f/) | ⚠️ Unaudited |
| MarsSwapFactory | unknown | bsc | n/a | [`0x6f12482d9869303b998c54d91bcd8bccba81f3be`](./contracts/bsc-56/0x6f12482d9869303b998c54d91bcd8bccba81f3be/) | ⚠️ Unaudited |
| MarsSwapRouter | unknown | bsc | n/a | [`0xb68825c810e67d4e444ad5b9deb55ba56a66e72d`](./contracts/bsc-56/0xb68825c810e67d4e444ad5b9deb55ba56a66e72d/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc`](./contracts/bsc-56/0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc/) | ⚠️ Unaudited |
| USDMToken | unknown | bsc | n/a | [`0xbb0fa2fbe9b37444f5d1dbd22e0e5bdd2afbbe85`](./contracts/bsc-56/0xbb0fa2fbe9b37444f5d1dbd22e0e5bdd2afbbe85/) | ⚠️ Unaudited |
| VestingMaster | unknown | bsc | n/a | [`0x381facb9282770a5e3ac6c8637096b442039c3db`](./contracts/bsc-56/0x381facb9282770a5e3ac6c8637096b442039c3db/) | ⚠️ Unaudited |
| XMSToken | unknown | bsc | n/a | [`0x7859b01bbf675d67da8cd128a50d155cd881b576`](./contracts/bsc-56/0x7859b01bbf675d67da8cd128a50d155cd881b576/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/marsecosystem](https://skynet.certik.com/projects/marsecosystem) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [immunefi.com/bug-bounty/marsecosystem/information](https://immunefi.com/bug-bounty/marsecosystem/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x01d152ff991e76b6cb310387c07cafdfda790a25`](./contracts/bsc-56/0x01d152ff991e76b6cb310387c07cafdfda790a25/) | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7`](./contracts/bsc-56/0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x243ddd2e42ceb93349e726e2367edec6339aba75`](./contracts/bsc-56/0x243ddd2e42ceb93349e726e2367edec6339aba75/) | IMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18878ca9b1cd1862c2cc357a6cf7a0ec857c80ed`](./contracts/bsc-56/0x18878ca9b1cd1862c2cc357a6cf7a0ec857c80ed/) | LiquidityMiningMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48c42579d98aa768cde893f8214371ed607cabe3`](./contracts/bsc-56/0x48c42579d98aa768cde893f8214371ed607cabe3/) | LiquidityMiningMasterBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3762899a888944c1dde493041a339df2f9e310e9`](./contracts/bsc-56/0x3762899a888944c1dde493041a339df2f9e310e9/) | MarsFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b550bbfac32ec434f858a8135fa17c40636583b`](./contracts/bsc-56/0x3b550bbfac32ec434f858a8135fa17c40636583b/) | MarsStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4c7f4daca14c4bb0e6b616cc6faa8354ccc5238f`](./contracts/bsc-56/0x4c7f4daca14c4bb0e6b616cc6faa8354ccc5238f/) | MarsStratX2_PCS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6f12482d9869303b998c54d91bcd8bccba81f3be`](./contracts/bsc-56/0x6f12482d9869303b998c54d91bcd8bccba81f3be/) | MarsSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb68825c810e67d4e444ad5b9deb55ba56a66e72d`](./contracts/bsc-56/0xb68825c810e67d4e444ad5b9deb55ba56a66e72d/) | MarsSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc`](./contracts/bsc-56/0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb0fa2fbe9b37444f5d1dbd22e0e5bdd2afbbe85`](./contracts/bsc-56/0xbb0fa2fbe9b37444f5d1dbd22e0e5bdd2afbbe85/) | USDMToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x381facb9282770a5e3ac6c8637096b442039c3db`](./contracts/bsc-56/0x381facb9282770a5e3ac6c8637096b442039c3db/) | VestingMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7859b01bbf675d67da8cd128a50d155cd881b576`](./contracts/bsc-56/0x7859b01bbf675d67da8cd128a50d155cd881b576/) | XMSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20817] skynet.certik.com/projects/marsecosystem

Fork inheritance lineage and inherited audits are included when available.
