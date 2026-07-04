# Agentic Audit Brief: BSCSwap

## Project Overview

- Project: BSCSwap (`bscswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.607Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 16 unique implementations (19 raw deployments)
- DeFi Llama TVL: $4,162,856.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 29 project-authored contract(s) across 1 chain(s); 11 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (stakepool, erc20burnable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 113; live-surface contracts included: 19 (11 live, 8 unknown).
- Excluded by liveness: 94 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 16
- Raw deployments: 19
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

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSCswap | unknown | bsc | n/a | [`0xacc234...d82584`](./contracts/bsc-56/0xacc234978a5eb941665fd051ca48765610d82584/) | ⚠️ Unaudited |
| BSCswapFactory | unknown | bsc | n/a | [`0xce8fd6...d2b8d0`](./contracts/bsc-56/0xce8fd65646f2a2a897755a1188c04ace94d2b8d0/) | ⚠️ Unaudited |
| BSCswapPair | unknown | bsc | n/a | 2 deployments: bsc [`0xc5c848...541616`](./contracts/bsc-56/0xc5c84863d32f41ad60eb2dead2d69c9553541616/); bsc `0xe61d0d...626e15` | ⚠️ Unaudited |
| BSCswapRouter | adapter | bsc | n/a | [`0xd95455...21424a`](./contracts/bsc-56/0xd954551853f55deb4ae31407c423e67b1621424a/) | ⚠️ Unaudited |
| BSWAPStaking | unknown | bsc | n/a | [`0x7b2dac...331e2d`](./contracts/bsc-56/0x7b2dac429df0b39390cd3d4e6a8b8bcceb331e2d/) | ⚠️ Unaudited |
| BurnPool | core_logic | bsc | n/a | [`0xbeeb41...7e9a12`](./contracts/bsc-56/0xbeeb4173f906e3cb395b04c7ca8ed389a97e9a12/) | ⚠️ Unaudited |
| LaunchField | unknown | bsc | n/a | 2 deployments: bsc [`0x62d6ee...d4cb08`](./contracts/bsc-56/0x62d6eeaf4e1895ce72bf10f8b0dbdb0e1dd4cb08/); bsc `0xe394b0...c2682a` | ⚠️ Unaudited |
| LFIVault | core_logic | bsc | n/a | 2 deployments: bsc [`0x2fd8ad...56fca8`](./contracts/bsc-56/0x2fd8ad2546db48cc0666d6f1a12aba3ca056fca8/); bsc `0x785987...036863` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x018e97...d134c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e9c90...2fc1e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b00cf...0c7d15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x587f50...9fd8e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ef09f...7d666c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe112f5...e7394f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4aea0...91347f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6c797...81d63a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xacc234...d82584`](./contracts/bsc-56/0xacc234978a5eb941665fd051ca48765610d82584/) | BSCswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xce8fd6...d2b8d0`](./contracts/bsc-56/0xce8fd65646f2a2a897755a1188c04ace94d2b8d0/) | BSCswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc5c848...541616`](./contracts/bsc-56/0xc5c84863d32f41ad60eb2dead2d69c9553541616/) | BSCswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd95455...21424a`](./contracts/bsc-56/0xd954551853f55deb4ae31407c423e67b1621424a/) | BSCswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7b2dac...331e2d`](./contracts/bsc-56/0x7b2dac429df0b39390cd3d4e6a8b8bcceb331e2d/) | BSWAPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbeeb41...7e9a12`](./contracts/bsc-56/0xbeeb4173f906e3cb395b04c7ca8ed389a97e9a12/) | BurnPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x62d6ee...d4cb08`](./contracts/bsc-56/0x62d6eeaf4e1895ce72bf10f8b0dbdb0e1dd4cb08/) | LaunchField | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2fd8ad...56fca8`](./contracts/bsc-56/0x2fd8ad2546db48cc0666d6f1a12aba3ca056fca8/) | LFIVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
