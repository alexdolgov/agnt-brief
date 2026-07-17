# Agentic Audit Brief: Sonic Market

## Project Overview

- Project: Sonic Market (`sonic-market`)
- Website: [https://www.sonic.market](https://www.sonic.market)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:57.700Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: sonic
- Contract surface: 36 unique implementations (47 raw deployments)
- DeFi Llama TVL: $2,697.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 11 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 58; live-surface contracts included: 47 (9 live, 38 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/7 (28.6%)
- Deployed-live implementations: 7 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/7
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 36
- Raw deployments: 47
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 28.6% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Minter | operational_periphery | sonic | n/a | [`0x466795c0eae3c44a6dcbb6db0534f7019e0803a7`](./contracts/sonic-146/0x466795c0eae3c44a6dcbb6db0534f7019e0803a7/) | ✅ Audited |
| SimpleOracleStrategy | unknown | sonic | n/a | 2 deployments: sonic [`0xdd30f831beb51fbf33e3d579e5529d3b1495554f`](./contracts/sonic-146/0xdd30f831beb51fbf33e3d579e5529d3b1495554f/); sonic `0xe4fd3f36b832dc67dd758fe1d58fd1194fa6e854` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Book | unknown | sonic | n/a | [`0x5489922f8312c812fbb7184ebf70b9dbfaeed9d4`](./contracts/sonic-146/0x5489922f8312c812fbb7184ebf70b9dbfaeed9d4/) | ⚠️ Unaudited |
| BookManager | governance | sonic | n/a | [`0xd4ad5ed9e1436904624b6db8b1be31f36317c636`](./contracts/sonic-146/0xd4ad5ed9e1436904624b6db8b1be31f36317c636/) | ⚠️ Unaudited |
| Controller | governance | sonic | n/a | [`0xca6c15b7b03ca69087b85b8ea690ed44a92eadd1`](./contracts/sonic-146/0xca6c15b7b03ca69087b85b8ea690ed44a92eadd1/) | ⚠️ Unaudited |
| LiquidityVault | unknown | sonic | n/a | 2 deployments: sonic [`0x9bb7d556a4eb463b213135df3184303cbdd52e1d`](./contracts/sonic-146/0x9bb7d556a4eb463b213135df3184303cbdd52e1d/); sonic `0xad4515a7443f063263c6bb507670e5dc27632815` | ⚠️ Unaudited |
| SonicMarketGem | unknown | sonic | n/a | [`0x3bed0daf59a0a6fc8d2aefff015600641c4ed952`](./contracts/sonic-146/0x3bed0daf59a0a6fc8d2aefff015600641c4ed952/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x4abb86f499f53e2b1f52302b2ba7bbb0a90a49a8) | unknown | sonic | n/a | 2 deployments: sonic `0x06731177b4fa6df2b14a714736828e373e3ae03b`; sonic `0x4abb86f499f53e2b1f52302b2ba7bbb0a90a49a8` | ❓ Unverified |
| Proxy (impl: 0x6bab446256cdbd4749db8bbd1302c40286f3fbf5) | unknown | sonic | n/a | 2 deployments: sonic `0x243e60870f63fd0eba2ad940408ac5c9f04adc6b`; sonic `0x6bab446256cdbd4749db8bbd1302c40286f3fbf5` | ❓ Unverified |
| Proxy (impl: 0x8dda5d9df107a38fb809b72bf8d65653ed3fce65) | unknown | sonic | n/a | 2 deployments: sonic `0x3998441b4fe48fabfccd0de33db340909227e3a3`; sonic `0x8dda5d9df107a38fb809b72bf8d65653ed3fce65` | ❓ Unverified |
| Proxy (impl: 0xc89049b10e0ab1829484f7a53b84ce842ac771a8) | unknown | sonic | n/a | 2 deployments: sonic `0x1286ffab44ced25e96465f6a094684756f9c36fb`; sonic `0xc89049b10e0ab1829484f7a53b84ce842ac771a8` | ❓ Unverified |
| Proxy (impl: 0xce0275ddaae25494cf1e4d9255b2acb3e689afcd) | unknown | sonic | n/a | 2 deployments: sonic `0x7b5156e67697fff104de1bb07f6c4d342d815069`; sonic `0xce0275ddaae25494cf1e4d9255b2acb3e689afcd` | ❓ Unverified |
| Proxy (impl: 0xfef34c64d5ec13e04b0797d3d2e536137a0c44e1) | unknown | sonic | n/a | 2 deployments: sonic `0x2277e5cafa9fa3dc56c3c9bd0b2c91af7e8ec101`; sonic `0xfef34c64d5ec13e04b0797d3d2e536137a0c44e1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x014780652ee8cb9a8d227757307aae4656a794f5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x090883fca5b1ce812c13c7966c03479a39922ac8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x15f9199a421c19b9e69e77af0a319458352fc637`; sonic `0xc6e3f46f441a1f32892279aeca19827431512aee` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x268f44b3153dd276e65b6f0bcd3c050449acd4d1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x28e33115e346a63525e6d96405d5ba8ca41d909f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x31d45803f3752566de6a49334eeda922356225b6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x4240d18640932bcff44b213297b88d6328d408eb`; sonic `0xf98fd34483b0e7b0211301309222bb212658d82d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x4d1353beeef4a6a3d14f41b949ab7a58958f57c5`; sonic `0xd1505639bd6722ab79b0311e7a0ebe9ebbeaec85` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4dfa49b9a519c626e265fdc181d6d4d4fd6fe645` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4efa42048465b2e4ce7407f4ae808bf79ae5cdd6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x567acfd331b20e718daa6e068a3683683ffcf051` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6489f0f4d479d4b4afb503be5eb35cd3ff690edb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7a07d16324722595e940cbf173990103257af153` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa9f92548491997ee0de26a03311535a4961ee8eb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbee97af61e9f6272b01ac864b6a05056d4bb5c8b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc175dc39cef1ba945bcc5111a9b89c00b0557ef2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc1a69abb54a969e3f9a75644363d00e08d7185f3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc47e4f2d113a51abf0dacef6687fe0dba70d09e6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xded58e263087f5b45d878bd9cf599b7a1a75d1e4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe1ac9b5ae1dc4345c12972dba6fd73a7a38c8e4d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf7453828cc272d7ba255e9d455e80a4bf529a003` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfceb0b391bda5f4a54e855ccf0ccb6bcf4c8be4f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xff87f321bf3b575742718b38892877e0ea0678c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf](https://docs.clober.io/assets/files/Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf](https://docs.clober.io/assets/files/2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x5489922f8312c812fbb7184ebf70b9dbfaeed9d4`](./contracts/sonic-146/0x5489922f8312c812fbb7184ebf70b9dbfaeed9d4/) | Book | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd4ad5ed9e1436904624b6db8b1be31f36317c636`](./contracts/sonic-146/0xd4ad5ed9e1436904624b6db8b1be31f36317c636/) | BookManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xca6c15b7b03ca69087b85b8ea690ed44a92eadd1`](./contracts/sonic-146/0xca6c15b7b03ca69087b85b8ea690ed44a92eadd1/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9bb7d556a4eb463b213135df3184303cbdd52e1d`](./contracts/sonic-146/0x9bb7d556a4eb463b213135df3184303cbdd52e1d/) | LiquidityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3bed0daf59a0a6fc8d2aefff015600641c4ed952`](./contracts/sonic-146/0x3bed0daf59a0a6fc8d2aefff015600641c4ed952/) | SonicMarketGem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=1, extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
