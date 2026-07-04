# Agentic Audit Brief: SteakBank Finance

## Project Overview

- Project: SteakBank Finance (`steakbank-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.912Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 21 unique implementations (22 raw deployments)
- DeFi Llama TVL: $231,285.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 22 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (20 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/20 (0.0%)
- Deployed-live implementations: 20 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 22
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

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | bsc | n/a | [`0x11fdc6...0b85c8`](./contracts/bsc-56/0x11fdc6419650ecc43b4a9e9797e2ab55980b85c8/) | ⚠️ Unaudited |
| aLBNB2BNBLP | unknown | bsc | n/a | [`0x0f8da1...a3932f`](./contracts/bsc-56/0x0f8da11e2999d3d3afc3d6e1a6b9cb2947a3932f/) | ⚠️ Unaudited |
| aSBF | unknown | bsc | n/a | [`0x4a3a16...8e6752`](./contracts/bsc-56/0x4a3a16a365bd4f906ca53ce74c838ee5618e6752/) | ⚠️ Unaudited |
| aSBF2BUSDLP | unknown | bsc | n/a | [`0x5426ed...b0f77d`](./contracts/bsc-56/0x5426ed17abab08f8cab70556cfd8692252b0f77d/) | ⚠️ Unaudited |
| BlindFarmingCenter | unknown | bsc | n/a | [`0xc7c13f...f56ad5`](./contracts/bsc-56/0xc7c13f002a62704f297067f89880332f4af56ad5/) | ⚠️ Unaudited |
| CMCAirdrop | unknown | bsc | n/a | [`0x4fac24...33ad87`](./contracts/bsc-56/0x4fac244cc22f67ac1b9c9c371f9ed75bdd33ad87/) | ⚠️ Unaudited |
| CommunityTaxVault | unknown | bsc | n/a | [`0x2202f1...bede44`](./contracts/bsc-56/0x2202f1f7261dcd5b9341beb1e79fb9cf9cbede44/) | ⚠️ Unaudited |
| FarmingCenter | unknown | bsc | n/a | [`0x0cbb6f...f0f76b`](./contracts/bsc-56/0x0cbb6fc5287257faa78fe6e8a70e85b111f0f76b/) | ⚠️ Unaudited |
| FarmingPhase1 | unknown | bsc | n/a | [`0xa20d61...cd0bfc`](./contracts/bsc-56/0xa20d616e34e6a026b8ba8047914afd72b2cd0bfc/) | ⚠️ Unaudited |
| FarmingPhase2 | unknown | bsc | n/a | [`0x90c368...5ffab9`](./contracts/bsc-56/0x90c368d990302d744d3bf336e29bdc01465ffab9/) | ⚠️ Unaudited |
| FarmingPhase3 | unknown | bsc | n/a | [`0x9d1e4a...4c8604`](./contracts/bsc-56/0x9d1e4addcf4ffdafe5445c60b987f58c4f4c8604/) | ⚠️ Unaudited |
| FarmingPhase4 | unknown | bsc | n/a | [`0x8d51e2...c68373`](./contracts/bsc-56/0x8d51e27b7772dc9c74c9d2afd0998caa21c68373/) | ⚠️ Unaudited |
| FarmRewardLock | unknown | bsc | n/a | [`0x08f76d...44b324`](./contracts/bsc-56/0x08f76dc29ee4fa7f8d7a2a56cb04253c3044b324/) | ⚠️ Unaudited |
| Governor | unknown | bsc | n/a | [`0xc09ba5...13037c`](./contracts/bsc-56/0xc09ba54e321784cd7bc7fa618419614ee813037c/) | ⚠️ Unaudited |
| LBNB | unknown | bsc | n/a | [`0x43c37e...226388`](./contracts/bsc-56/0x43c37e8240d0fccef747d12e201bf295e4226388/) | ⚠️ Unaudited |
| PrivateSaleLock | unknown | bsc | n/a | [`0x28505e...819e32`](./contracts/bsc-56/0x28505ea6f4fb7647b916423e359689f87b819e32/) | ⚠️ Unaudited |
| SBF | unknown | bsc | n/a | [`0xa944c5...d9d7a1`](./contracts/bsc-56/0xa944c5619d2f22d44c9f3a8de9642902c6d9d7a1/) | ⚠️ Unaudited |
| StakingRewardVault | unknown | bsc | n/a | [`0xb7feb1...659960`](./contracts/bsc-56/0xb7feb19c1ff49b524a45e0a998330abe1b659960/) | ⚠️ Unaudited |
| SteakBankImpl | unknown | bsc | n/a | 2 deployments: bsc [`0x06f424...be7180`](./contracts/bsc-56/0x06f424f8bca18421db31ed9a1eec2c88f8be7180/); bsc `0x79db0d...aa6f9a` | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x6218a1...8ce602`](./contracts/bsc-56/0x6218a12da75c238de7e0f0d636172517c68ce602/) | ⚠️ Unaudited |
| UnstakeVault | unknown | bsc | n/a | [`0x2c027e...69dfd2`](./contracts/bsc-56/0x2c027ede5f46e20cb467652cfdb9a9e52269dfd2/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
