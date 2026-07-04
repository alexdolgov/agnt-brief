# Agentic Audit Brief: Sonic Market

## Project Overview

- Project: Sonic Market (`sonic-market`)
- Website: [https://www.sonic.market](https://www.sonic.market)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:55.778Z
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
| Minter | operational_periphery | sonic | n/a | [`0x466795...0803a7`](./contracts/sonic-146/0x466795c0eae3c44a6dcbb6db0534f7019e0803a7/) | ✅ Audited |
| SimpleOracleStrategy | unknown | sonic | n/a | 2 deployments: sonic [`0xdd30f8...95554f`](./contracts/sonic-146/0xdd30f831beb51fbf33e3d579e5529d3b1495554f/); sonic `0xe4fd3f...a6e854` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Book | unknown | sonic | n/a | [`0x548992...eed9d4`](./contracts/sonic-146/0x5489922f8312c812fbb7184ebf70b9dbfaeed9d4/) | ⚠️ Unaudited |
| BookManager | governance | sonic | n/a | [`0xd4ad5e...17c636`](./contracts/sonic-146/0xd4ad5ed9e1436904624b6db8b1be31f36317c636/) | ⚠️ Unaudited |
| Controller | governance | sonic | n/a | [`0xca6c15...2eadd1`](./contracts/sonic-146/0xca6c15b7b03ca69087b85b8ea690ed44a92eadd1/) | ⚠️ Unaudited |
| LiquidityVault | unknown | sonic | n/a | 2 deployments: sonic [`0x9bb7d5...d52e1d`](./contracts/sonic-146/0x9bb7d556a4eb463b213135df3184303cbdd52e1d/); sonic `0xad4515...632815` | ⚠️ Unaudited |
| SonicMarketGem | unknown | sonic | n/a | [`0x3bed0d...4ed952`](./contracts/sonic-146/0x3bed0daf59a0a6fc8d2aefff015600641c4ed952/) | ⚠️ Unaudited |

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
| Proxy (impl: 0x4abb86f499f53e2b1f52302b2ba7bbb0a90a49a8) | unknown | sonic | n/a | 2 deployments: sonic `0x067311...3ae03b`; sonic `0x4abb86...0a49a8` | ❓ Unverified |
| Proxy (impl: 0x6bab446256cdbd4749db8bbd1302c40286f3fbf5) | unknown | sonic | n/a | 2 deployments: sonic `0x243e60...4adc6b`; sonic `0x6bab44...f3fbf5` | ❓ Unverified |
| Proxy (impl: 0x8dda5d9df107a38fb809b72bf8d65653ed3fce65) | unknown | sonic | n/a | 2 deployments: sonic `0x399844...27e3a3`; sonic `0x8dda5d...3fce65` | ❓ Unverified |
| Proxy (impl: 0xc89049b10e0ab1829484f7a53b84ce842ac771a8) | unknown | sonic | n/a | 2 deployments: sonic `0x1286ff...9c36fb`; sonic `0xc89049...c771a8` | ❓ Unverified |
| Proxy (impl: 0xce0275ddaae25494cf1e4d9255b2acb3e689afcd) | unknown | sonic | n/a | 2 deployments: sonic `0x7b5156...815069`; sonic `0xce0275...89afcd` | ❓ Unverified |
| Proxy (impl: 0xfef34c64d5ec13e04b0797d3d2e536137a0c44e1) | unknown | sonic | n/a | 2 deployments: sonic `0x2277e5...8ec101`; sonic `0xfef34c...0c44e1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x014780...a794f5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x090883...922ac8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x15f919...2fc637`; sonic `0xc6e3f4...512aee` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x268f44...acd4d1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x28e331...1d909f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x31d458...6225b6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x4240d1...d408eb`; sonic `0xf98fd3...58d82d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x4d1353...8f57c5`; sonic `0xd15056...eaec85` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4dfa49...6fe645` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4efa42...e5cdd6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x567acf...fcf051` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6489f0...690edb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7a07d1...7af153` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa9f925...1ee8eb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbee97a...bb5c8b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc175dc...557ef2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc1a69a...7185f3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc47e4f...0d09e6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xded58e...75d1e4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe1ac9b...8c8e4d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf74538...29a003` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfceb0b...c8be4f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xff87f3...0678c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf](https://docs.clober.io/assets/files/Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf](https://docs.clober.io/assets/files/2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=1, extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
