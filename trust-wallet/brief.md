# Agentic Audit Brief: Trust Wallet

## Project Overview

- Project: Trust Wallet (`trust-wallet`)
- Website: [https://trustwallet.com/](https://trustwallet.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:32.601Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 10 unique implementations (13 raw deployments)
- DeFi Llama TVL: $32,627,506.00
- On-chain TVL (included contracts): $470,243,802.55
- TVL by chain: Bsc $470,243,802.55

## Project Description

Trust Wallet is primarily a multi-chain, non-custodial wallet application and browser extension for storing, sending, receiving, and managing cryptocurrencies and NFTs, with access to dApps and DeFi services. The listed BSC contracts should be treated separately as TWT token and token-locking/staking-related infrastructure, not as the core wallet product or the full Trust Wallet smart-contract surface. Any SWIFT smart-contract-wallet/account-abstraction deployments should be added separately if they are in scope and verified.

### Architecture

The TrustWalletToken and TokenLocker contracts form the core token management system, with the TokenLocker likely interacting with the TrustWalletToken for staking or vesting purposes.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 11 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 6; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 10
- Raw deployments: 13
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $470,243,802.55
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TrustWalletToken | token | bsc | n/a | [`0x4b0f18...508003`](./contracts/bsc-56/0x4b0f1812e5df2a09796481ff14017e6005508003/) | ⚠️ Unaudited |
| TokenLocker | token | bsc | n/a | 3 deployments: bsc [`0x0e7dd5...002c25`](./contracts/bsc-56/0x0e7dd56f7d2cadc066b992cec58253190f002c25/); bsc `0x3bffd2...0146b9`; bsc `0x5029f4...bfc2ed` | ⚠️ Unaudited |
| Token | token | bsc | n/a | [`0x799a29...7a872b`](./contracts/bsc-56/0x799a290f9cc4085a0ce5b42b5f2c30193a7a872b/) | ⚠️ Unaudited |
| bscSUNDOG | unknown | bsc | n/a | [`0xdc419c...1936a7`](./contracts/bsc-56/0xdc419cfe5454bf58001f131e98cf2065e11936a7/) | ⚠️ Unaudited |
| DistributionCreator | unknown | bsc | n/a | [`0x46a9e9...c57829`](./contracts/bsc-56/0x46a9e9434dac9baa1f95a5129f04aef6c8c57829/) | ⚠️ Unaudited |
| Distributor | operational_periphery | bsc | n/a | [`0x4195fa...a6a9a7`](./contracts/bsc-56/0x4195faaba1cbad584fe2fec711d788cdb9a6a9a7/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | n/a | 2 deployments: bsc [`0x147f41...54c52d`](./contracts/bsc-56/0x147f4163756db2eee9092bb848603a9e7054c52d/); bsc `0xedbebe...8c24ba` | ⚠️ Unaudited |
| PointToken | token | bsc | n/a | [`0x1276d6...7932db`](./contracts/bsc-56/0x1276d63baef24d316383be594b8f978a507932db/) | ⚠️ Unaudited |
| PullTokenWrapperAllow | token | bsc | n/a | [`0xc9dfd5...e0c45b`](./contracts/bsc-56/0xc9dfd5c18f12a3ba6293001700810602efe0c45b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0xe0e2a2...0a32e3` | ❓ Unverified |

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
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
