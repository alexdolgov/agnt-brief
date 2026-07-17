# Agentic Audit Brief: Tydro

## Project Overview

- Project: Tydro (`tydro`)
- Website: [https://tydro.com/](https://tydro.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.621Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 24 unique implementations (24 raw deployments)
- DeFi Llama TVL: $182,787,193.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 20 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 17 common project-authored base contract(s) (claimablerewardsbase, paxosbaseabstract, basestoragev3). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 24
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

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BorrowLogic | unknown | ethereum | n/a | [`0xfed9871528e713b5038c4c44bbe7a315f56cadc6`](./contracts/ethereum-1/0xfed9871528e713b5038c4c44bbe7a315f56cadc6/) | ⚠️ Unaudited |
| ClaimableRewardsFacet | unknown | ethereum | n/a | [`0x07252906a80ac482aeb1a44e1153cdd3e6005127`](./contracts/ethereum-1/0x07252906a80ac482aeb1a44e1153cdd3e6005127/) | ⚠️ Unaudited |
| EModeLogic | unknown | ethereum | n/a | [`0xd1bddc05a3bb5a7907d82a1b4f1e21dbce69c3d5`](./contracts/ethereum-1/0xd1bddc05a3bb5a7907d82a1b4f1e21dbce69c3d5/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xbe62db8ed4838e10e1318593ac9e3eb9ccfb2dc7`](./contracts/ethereum-1/0xbe62db8ed4838e10e1318593ac9e3eb9ccfb2dc7/) | ⚠️ Unaudited |
| FlashLoanLogic | unknown | ethereum | n/a | [`0x5e84cee2afb7b37d2ab14722c39a7c1c26f5b0bb`](./contracts/ethereum-1/0x5e84cee2afb7b37d2ab14722c39a7c1c26f5b0bb/) | ⚠️ Unaudited |
| KBTCV2 | unknown | ethereum | n/a | [`0x73e0c0d45e048d25fc26fa3159b0aa04bfa4db98`](./contracts/ethereum-1/0x73e0c0d45e048d25fc26fa3159b0aa04bfa4db98/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | ethereum | n/a | [`0x36ae486289bb807c3c79a1427b9c3d934294ef43`](./contracts/ethereum-1/0x36ae486289bb807c3c79a1427b9c3d934294ef43/) | ⚠️ Unaudited |
| MultiplierMgmtFacet | unknown | ethereum | n/a | [`0x018a090fb8d50376bf8464922ffda935a1fe2859`](./contracts/ethereum-1/0x018a090fb8d50376bf8464922ffda935a1fe2859/) | ⚠️ Unaudited |
| OFTWrapper | unknown | ethereum | n/a | [`0x147bde4f997f0d4c7544ed0c55eacf1e5e6bf9c4`](./contracts/ethereum-1/0x147bde4f997f0d4c7544ed0c55eacf1e5e6bf9c4/) | ⚠️ Unaudited |
| PAXG | unknown | ethereum | n/a | [`0x7da4c5d9eca180a03765a6d27196f2a0380fa543`](./contracts/ethereum-1/0x7da4c5d9eca180a03765a6d27196f2a0380fa543/) | ⚠️ Unaudited |
| PayoutGroupFacet | unknown | ethereum | n/a | [`0x77fe0365db15a1ec05833b7c1802d68356a363df`](./contracts/ethereum-1/0x77fe0365db15a1ec05833b7c1802d68356a363df/) | ⚠️ Unaudited |
| PoolLogic | unknown | ethereum | n/a | [`0xe51b69e5722bf547866a4d7bc190c6e81b626806`](./contracts/ethereum-1/0xe51b69e5722bf547866a4d7bc190c6e81b626806/) | ⚠️ Unaudited |
| PYUSD | unknown | ethereum | n/a | [`0x7302ea4e51b041b691d1f3458fa7d36560f90708`](./contracts/ethereum-1/0x7302ea4e51b041b691d1f3458fa7d36560f90708/) | ⚠️ Unaudited |
| StakedUSDeOFTAdapter | unknown | ethereum | n/a | [`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2`](./contracts/ethereum-1/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| SupplyControl | unknown | ethereum | n/a | [`0x31d9bdea6f104606c954f8fe6ba614f1bd347ec3`](./contracts/ethereum-1/0x31d9bdea6f104606c954f8fe6ba614f1bd347ec3/) | ⚠️ Unaudited |
| SupplyLogic | unknown | ethereum | n/a | [`0x034fd14b9ae6bb066a1f9f85a55e990b0b25c168`](./contracts/ethereum-1/0x034fd14b9ae6bb066a1f9f85a55e990b0b25c168/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x9036566eaa5f83e0b9e1161c6c602b0adf997654`](./contracts/ethereum-1/0x9036566eaa5f83e0b9e1161c6c602b0adf997654/) | ⚠️ Unaudited |
| TokenAdminFacet | unknown | ethereum | n/a | [`0x01a473ed747c29397616eabae1dff273c5b1e3f5`](./contracts/ethereum-1/0x01a473ed747c29397616eabae1dff273c5b1e3f5/) | ⚠️ Unaudited |
| TokenExtensionsFacet | unknown | ethereum | n/a | [`0x5dff613f9e283d268489ba6ae1c9b22970d561a8`](./contracts/ethereum-1/0x5dff613f9e283d268489ba6ae1c9b22970d561a8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa1290d69c65a6fe4df752f95823fae25cb99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| USDeOFTAdapter | unknown | ethereum | n/a | [`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`](./contracts/ethereum-1/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| USDG | unknown | ethereum | n/a | [`0x568c28170115fe772b30229199d4ae0595a507f7`](./contracts/ethereum-1/0x568c28170115fe772b30229199d4ae0595a507f7/) | ⚠️ Unaudited |
| USDP | unknown | ethereum | n/a | [`0x28edab7eec878d54fa877ffff4604dfd649f533f`](./contracts/ethereum-1/0x28edab7eec878d54fa877ffff4604dfd649f533f/) | ⚠️ Unaudited |
| XERC20 | unknown | ethereum | n/a | [`0x2416092f143378750bb29b79ed961ab195cceea5`](./contracts/ethereum-1/0x2416092f143378750bb29b79ed961ab195cceea5/) | ⚠️ Unaudited |

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
| ethereum | [`0xfed9871528e713b5038c4c44bbe7a315f56cadc6`](./contracts/ethereum-1/0xfed9871528e713b5038c4c44bbe7a315f56cadc6/) | BorrowLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07252906a80ac482aeb1a44e1153cdd3e6005127`](./contracts/ethereum-1/0x07252906a80ac482aeb1a44e1153cdd3e6005127/) | ClaimableRewardsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1bddc05a3bb5a7907d82a1b4f1e21dbce69c3d5`](./contracts/ethereum-1/0xd1bddc05a3bb5a7907d82a1b4f1e21dbce69c3d5/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e84cee2afb7b37d2ab14722c39a7c1c26f5b0bb`](./contracts/ethereum-1/0x5e84cee2afb7b37d2ab14722c39a7c1c26f5b0bb/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73e0c0d45e048d25fc26fa3159b0aa04bfa4db98`](./contracts/ethereum-1/0x73e0c0d45e048d25fc26fa3159b0aa04bfa4db98/) | KBTCV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ae486289bb807c3c79a1427b9c3d934294ef43`](./contracts/ethereum-1/0x36ae486289bb807c3c79a1427b9c3d934294ef43/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x018a090fb8d50376bf8464922ffda935a1fe2859`](./contracts/ethereum-1/0x018a090fb8d50376bf8464922ffda935a1fe2859/) | MultiplierMgmtFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x147bde4f997f0d4c7544ed0c55eacf1e5e6bf9c4`](./contracts/ethereum-1/0x147bde4f997f0d4c7544ed0c55eacf1e5e6bf9c4/) | OFTWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7da4c5d9eca180a03765a6d27196f2a0380fa543`](./contracts/ethereum-1/0x7da4c5d9eca180a03765a6d27196f2a0380fa543/) | PAXG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77fe0365db15a1ec05833b7c1802d68356a363df`](./contracts/ethereum-1/0x77fe0365db15a1ec05833b7c1802d68356a363df/) | PayoutGroupFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe51b69e5722bf547866a4d7bc190c6e81b626806`](./contracts/ethereum-1/0xe51b69e5722bf547866a4d7bc190c6e81b626806/) | PoolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7302ea4e51b041b691d1f3458fa7d36560f90708`](./contracts/ethereum-1/0x7302ea4e51b041b691d1f3458fa7d36560f90708/) | PYUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2`](./contracts/ethereum-1/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | StakedUSDeOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31d9bdea6f104606c954f8fe6ba614f1bd347ec3`](./contracts/ethereum-1/0x31d9bdea6f104606c954f8fe6ba614f1bd347ec3/) | SupplyControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x034fd14b9ae6bb066a1f9f85a55e990b0b25c168`](./contracts/ethereum-1/0x034fd14b9ae6bb066a1f9f85a55e990b0b25c168/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01a473ed747c29397616eabae1dff273c5b1e3f5`](./contracts/ethereum-1/0x01a473ed747c29397616eabae1dff273c5b1e3f5/) | TokenAdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dff613f9e283d268489ba6ae1c9b22970d561a8`](./contracts/ethereum-1/0x5dff613f9e283d268489ba6ae1c9b22970d561a8/) | TokenExtensionsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`](./contracts/ethereum-1/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | USDeOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x568c28170115fe772b30229199d4ae0595a507f7`](./contracts/ethereum-1/0x568c28170115fe772b30229199d4ae0595a507f7/) | USDG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28edab7eec878d54fa877ffff4604dfd649f533f`](./contracts/ethereum-1/0x28edab7eec878d54fa877ffff4604dfd649f533f/) | USDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2416092f143378750bb29b79ed961ab195cceea5`](./contracts/ethereum-1/0x2416092f143378750bb29b79ed961ab195cceea5/) | XERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
