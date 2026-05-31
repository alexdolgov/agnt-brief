# Agentic Audit Brief: Trust Wallet

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Trust Wallet (`trust-wallet`)
- Website: [https://trustwallet.com/](https://trustwallet.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-31T14:54:10.996Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: bsc
- Contract surface: 6 unique implementations (10 raw deployments)
- DeFi Llama TVL: $39,041,004.00
- On-chain TVL (included contracts): $470,218,283.11
- TVL by chain: Bsc $470,218,283.11

## Project Description

Trust Wallet is a multi-chain self-custody wallet that allows users to store, send, receive, and manage cryptocurrencies and NFTs. It also provides access to decentralized applications and DeFi services.

### Architecture

The TrustWalletToken and TokenLocker contracts form the core token management system, with the TokenLocker likely interacting with the TrustWalletToken for staking or vesting purposes.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 6
- Raw deployments: 10
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $470,218,283.11
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $470,218,283.11 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TrustWalletToken | token | bsc | [`0x4b0f18...508003`](./contracts/bsc-56/0x4b0f1812e5df2a09796481ff14017e6005508003/) | ⚠️ Unaudited |
| TokenLocker | token | bsc | 4 deployments: bsc [`0x0e7dd5...002c25`](./contracts/bsc-56/0x0e7dd56f7d2cadc066b992cec58253190f002c25/); bsc `0x3bffd2...0146b9`; bsc `0x5029f4...bfc2ed`; bsc `0x63dc02...cd740b` | ⚠️ Unaudited |
| RadiantMerklTokenWrapper | token | bsc | [`0x1c6f6e...914442`](./contracts/bsc-56/0x1c6f6e2b226d99af2c34d875a03e055492914442/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | 2 deployments: bsc [`0x147f41...54c52d`](./contracts/bsc-56/0x147f4163756db2eee9092bb848603a9e7054c52d/); bsc `0xedbebe...8c24ba` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x22b0ac...c47f5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0e2a2...0a32e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4b0f18...508003`](./contracts/bsc-56/0x4b0f1812e5df2a09796481ff14017e6005508003/) | TrustWalletToken | token | $450,719,842.94 | Verified native implementation with $450,719,842.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e7dd5...002c25`](./contracts/bsc-56/0x0e7dd56f7d2cadc066b992cec58253190f002c25/) | TokenLocker | token | $19,498,440.17 | Verified native implementation with $19,498,440.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
