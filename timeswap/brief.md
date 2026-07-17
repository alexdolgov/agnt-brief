# Agentic Audit Brief: Timeswap

## Project Overview

- Project: Timeswap (`timeswap`)
- Website: [https://timeswap.io](https://timeswap.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.510Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum, mantle
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $333,514.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 20 project-authored contract(s) across 2 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (onlyoperatorreceiver, nativeimmutablestate, nativewithdraws). Dominant framework: openzeppelin.

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
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| MerkleDistributorPeriphery | unknown | mantle | n/a | [`0x224f74ef1ca1e86e6d2150dab8c080779bbde41d`](./contracts/mantle-5000/0x224f74ef1ca1e86e6d2150dab8c080779bbde41d/) | ⚠️ Unaudited |
| TimeswapV2OptionFactory | unknown | ethereum | n/a | [`0x17385e95cb74a20150e4fa092aa72d57330896c4`](./contracts/ethereum-1/0x17385e95cb74a20150e4fa092aa72d57330896c4/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal | unknown | mantle | n/a | [`0x19b29b18f43ce59fb93c2e7d2d70403a3e774734`](./contracts/mantle-5000/0x19b29b18f43ce59fb93c2e7d2d70403a3e774734/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal | unknown | mantle | n/a | [`0x709156f91ee9212a40bad264acf318a066740964`](./contracts/mantle-5000/0x709156f91ee9212a40bad264acf318a066740964/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition | unknown | mantle | n/a | [`0x6b38a8b475f4f9432dbc44c2e38f1fdaeb17dc93`](./contracts/mantle-5000/0x6b38a8b475f4f9432dbc44c2e38f1fdaeb17dc93/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition | unknown | mantle | n/a | [`0x0b74d6cd05d53c7131ba9a822127cd3db98eba59`](./contracts/mantle-5000/0x0b74d6cd05d53c7131ba9a822127cd3db98eba59/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCollect | unknown | mantle | n/a | [`0x4846e86bc082c1f5940fef2c19272a9c8300b7e0`](./contracts/mantle-5000/0x4846e86bc082c1f5940fef2c19272a9c8300b7e0/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexLendGivenPrincipal | unknown | mantle | n/a | [`0x963f5bdedb314d2aba6894543ebd6ea475656464`](./contracts/mantle-5000/0x963f5bdedb314d2aba6894543ebd6ea475656464/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal | unknown | mantle | n/a | [`0x5fb0e2bf34d3b6c6a423ec793db355a36529d379`](./contracts/mantle-5000/0x5fb0e2bf34d3b6c6a423ec793db355a36529d379/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal | unknown | mantle | n/a | [`0x681bb47edb800c419e17c617004721db3d804771`](./contracts/mantle-5000/0x681bb47edb800c419e17c617004721db3d804771/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition | unknown | mantle | n/a | [`0x5fe7869bdc30a2160c0a312bba06a95fbf5afe9a`](./contracts/mantle-5000/0x5fe7869bdc30a2160c0a312bba06a95fbf5afe9a/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition | unknown | mantle | n/a | [`0x323d4e0e1bff089d55b68b8a7b7d382ce083612b`](./contracts/mantle-5000/0x323d4e0e1bff089d55b68b8a7b7d382ce083612b/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCollect | unknown | mantle | n/a | [`0x27230d7da4eaf829fce7fb32784a4fa202ec3eb2`](./contracts/mantle-5000/0x27230d7da4eaf829fce7fb32784a4fa202ec3eb2/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal | unknown | mantle | n/a | [`0xb22b60c5e9ad3c2ffcef707cfc47085be7a18cf8`](./contracts/mantle-5000/0xb22b60c5e9ad3c2ffcef707cfc47085be7a18cf8/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition | unknown | mantle | n/a | [`0x2fa4c7b6534b111d0708651d2adad342c3571a74`](./contracts/mantle-5000/0x2fa4c7b6534b111d0708651d2adad342c3571a74/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdraw | unknown | mantle | n/a | [`0x3e49d46f155eb16bf760d274f49ea2292de7368e`](./contracts/mantle-5000/0x3e49d46f155eb16bf760d274f49ea2292de7368e/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition | unknown | mantle | n/a | [`0x0ee7a17e3e5c334b380988a12624248fe6046e5d`](./contracts/mantle-5000/0x0ee7a17e3e5c334b380988a12624248fe6046e5d/) | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdraw | unknown | mantle | n/a | [`0x11c0653d4a36435af8eb28d6166272679bba07b7`](./contracts/mantle-5000/0x11c0653d4a36435af8eb28d6166272679bba07b7/) | ⚠️ Unaudited |
| TimeswapV2PoolFactory | unknown | mantle | n/a | [`0x6c9e7ede169168fb573cc95bf3558cfe936338f6`](./contracts/mantle-5000/0x6c9e7ede169168fb573cc95bf3558cfe936338f6/) | ⚠️ Unaudited |
| Token | unknown | mantle | n/a | [`0x5d7fb56ef4c015b3466e32402f22d93bffa75993`](./contracts/mantle-5000/0x5d7fb56ef4c015b3466e32402f22d93bffa75993/) | ⚠️ Unaudited |

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
| [DL audit link](https://code4rena.com/reports/2022-03-timeswap) | Code4rena | Contest | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x224f74ef1ca1e86e6d2150dab8c080779bbde41d`](./contracts/mantle-5000/0x224f74ef1ca1e86e6d2150dab8c080779bbde41d/) | MerkleDistributorPeriphery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17385e95cb74a20150e4fa092aa72d57330896c4`](./contracts/ethereum-1/0x17385e95cb74a20150e4fa092aa72d57330896c4/) | TimeswapV2OptionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x19b29b18f43ce59fb93c2e7d2d70403a3e774734`](./contracts/mantle-5000/0x19b29b18f43ce59fb93c2e7d2d70403a3e774734/) | TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x709156f91ee9212a40bad264acf318a066740964`](./contracts/mantle-5000/0x709156f91ee9212a40bad264acf318a066740964/) | TimeswapV2PeripheryNoDexBorrowGivenPrincipal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6b38a8b475f4f9432dbc44c2e38f1fdaeb17dc93`](./contracts/mantle-5000/0x6b38a8b475f4f9432dbc44c2e38f1fdaeb17dc93/) | TimeswapV2PeripheryNoDexCloseBorrowGivenPosition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0b74d6cd05d53c7131ba9a822127cd3db98eba59`](./contracts/mantle-5000/0x0b74d6cd05d53c7131ba9a822127cd3db98eba59/) | TimeswapV2PeripheryNoDexCloseLendGivenPosition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x4846e86bc082c1f5940fef2c19272a9c8300b7e0`](./contracts/mantle-5000/0x4846e86bc082c1f5940fef2c19272a9c8300b7e0/) | TimeswapV2PeripheryNoDexCollect | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x963f5bdedb314d2aba6894543ebd6ea475656464`](./contracts/mantle-5000/0x963f5bdedb314d2aba6894543ebd6ea475656464/) | TimeswapV2PeripheryNoDexLendGivenPrincipal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5fb0e2bf34d3b6c6a423ec793db355a36529d379`](./contracts/mantle-5000/0x5fb0e2bf34d3b6c6a423ec793db355a36529d379/) | TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x681bb47edb800c419e17c617004721db3d804771`](./contracts/mantle-5000/0x681bb47edb800c419e17c617004721db3d804771/) | TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5fe7869bdc30a2160c0a312bba06a95fbf5afe9a`](./contracts/mantle-5000/0x5fe7869bdc30a2160c0a312bba06a95fbf5afe9a/) | TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x323d4e0e1bff089d55b68b8a7b7d382ce083612b`](./contracts/mantle-5000/0x323d4e0e1bff089d55b68b8a7b7d382ce083612b/) | TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x27230d7da4eaf829fce7fb32784a4fa202ec3eb2`](./contracts/mantle-5000/0x27230d7da4eaf829fce7fb32784a4fa202ec3eb2/) | TimeswapV2PeripheryNoDexQuoterCollect | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb22b60c5e9ad3c2ffcef707cfc47085be7a18cf8`](./contracts/mantle-5000/0xb22b60c5e9ad3c2ffcef707cfc47085be7a18cf8/) | TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x2fa4c7b6534b111d0708651d2adad342c3571a74`](./contracts/mantle-5000/0x2fa4c7b6534b111d0708651d2adad342c3571a74/) | TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x3e49d46f155eb16bf760d274f49ea2292de7368e`](./contracts/mantle-5000/0x3e49d46f155eb16bf760d274f49ea2292de7368e/) | TimeswapV2PeripheryNoDexQuoterWithdraw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0ee7a17e3e5c334b380988a12624248fe6046e5d`](./contracts/mantle-5000/0x0ee7a17e3e5c334b380988a12624248fe6046e5d/) | TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x11c0653d4a36435af8eb28d6166272679bba07b7`](./contracts/mantle-5000/0x11c0653d4a36435af8eb28d6166272679bba07b7/) | TimeswapV2PeripheryNoDexWithdraw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6c9e7ede169168fb573cc95bf3558cfe936338f6`](./contracts/mantle-5000/0x6c9e7ede169168fb573cc95bf3558cfe936338f6/) | TimeswapV2PoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5d7fb56ef4c015b3466e32402f22d93bffa75993`](./contracts/mantle-5000/0x5d7fb56ef4c015b3466e32402f22d93bffa75993/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
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

- [24522] DL audit link

Fork inheritance lineage and inherited audits are included when available.
