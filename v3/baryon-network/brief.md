# Agentic Audit Brief: baryon-network

## Project Overview

- Project: baryon-network (`baryon-network`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:33.275Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 21 unique implementations (21 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 21 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (erc165, payable, blacklistable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Stake DAO** (`stake-dao`) in the DomainClaimAchievement subsystem.
5 audits inherited from `stake-dao`, scoped to that subsystem.

Total inherited audits: 5. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 7 (2 direct, 5 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 2 unknown
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
| Address | unknown | bsc | n/a | [`0x8f2beb...c338d1`](./contracts/bsc-56/0x8f2bebc9298aed2a9ba51b46458f97c483c338d1/) | ⚠️ Unaudited |
| BaryonFire | unknown | bsc | n/a | [`0x19c3f7...9a41b1`](./contracts/bsc-56/0x19c3f76f054e9147d448a39aa1b49a8ddd9a41b1/) | ⚠️ Unaudited |
| BaryonMasterFactory | unknown | bsc | n/a | [`0xabd8dd...381899`](./contracts/bsc-56/0xabd8ddb9c60f9ad25387c0f70fff1ed63b381899/) | ⚠️ Unaudited |
| BaryonProfile | unknown | bsc | n/a | [`0x6be246...302d72`](./contracts/bsc-56/0x6be246ca87949b279689a2207e184ac4cf302d72/) | ⚠️ Unaudited |
| BaryonRouter | unknown | bsc | n/a | [`0x2e0be1...1f21a1`](./contracts/bsc-56/0x2e0be10d0207db3132e583c9332b153f861f21a1/) | ⚠️ Unaudited |
| BaryToken | unknown | bsc | n/a | [`0x0555dd...dab113`](./contracts/bsc-56/0x0555ddc9f4d7829f9e00203547190fcc08dab113/) | ⚠️ Unaudited |
| BatchTransferWallet | unknown | bsc | n/a | [`0xf7eee3...53cfe8`](./contracts/bsc-56/0xf7eee3a8363731c611a24cddfcbcade9c153cfe8/) | ⚠️ Unaudited |
| C98MSiGFactory | unknown | bsc | n/a | [`0x82c3da...725a63`](./contracts/bsc-56/0x82c3da62b7db06e93c67ba90330ccedeef725a63/) | ⚠️ Unaudited |
| C98MultiSend | unknown | bsc | n/a | [`0x2e1d30...4b7498`](./contracts/bsc-56/0x2e1d30460265bfebedacf5bb6f9a80f0e74b7498/) | ⚠️ Unaudited |
| Coin98 | unknown | bsc | n/a | [`0x0ece57...f1d743`](./contracts/bsc-56/0x0ece57a677d5e72d1ad45774239e23463cf1d743/) | ⚠️ Unaudited |
| Coin98DollarMintBurn | unknown | bsc | n/a | [`0x8c6f4b...cd1a83`](./contracts/bsc-56/0x8c6f4b8c604f512c9a2f3260d9a695a5ffcd1a83/) | ⚠️ Unaudited |
| Coin98KYC | unknown | bsc | n/a | [`0x229775...40d602`](./contracts/bsc-56/0x229775e8c94562fc49c49eb3c13a25293040d602/) | ⚠️ Unaudited |
| Coin98MultisigFactory | unknown | bsc | n/a | [`0x836bf4...bd44e3`](./contracts/bsc-56/0x836bf46520c373fdc4dc7e5a3bae735d13bd44e3/) | ⚠️ Unaudited |
| Coin98Stake | unknown | bsc | n/a | [`0x08ac9c...b94385`](./contracts/bsc-56/0x08ac9c38ce078b9b81e5ab5bf8aafc3d2db94385/) | ⚠️ Unaudited |
| Coin98Vault | unknown | bsc | n/a | [`0x7d0e48...e2062e`](./contracts/bsc-56/0x7d0e482df667780a1d75072acb720078dbe2062e/) | ⚠️ Unaudited |
| Coin98VaultFactory | unknown | bsc | n/a | [`0x2b9b7d...d04e84`](./contracts/bsc-56/0x2b9b7dd36e8754debf2e37cdda64f3d080d04e84/) | ⚠️ Unaudited |
| CUSD | unknown | bsc | n/a | [`0x2e8fe8...2955e7`](./contracts/bsc-56/0x2e8fe80f664e2525c7e88c59acc28ef0f42955e7/) | ⚠️ Unaudited |
| DagoraMinter | unknown | bsc | n/a | [`0x366660...641956`](./contracts/bsc-56/0x366660dca241afee67c1f3da9cb93aa465641956/) | ⚠️ Unaudited |
| INS | unknown | bsc | n/a | [`0x5c93f4...06fdad`](./contracts/bsc-56/0x5c93f4b35d3dd97ef481881aa33d00f76806fdad/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | bsc | n/a | [`0x89f5fd...9aa0c7`](./contracts/bsc-56/0x89f5fd4ee9d032ce65ec998db0f9bd34f19aa0c7/) | ⚠️ Unaudited |
| SmartBaryFactory | unknown | bsc | n/a | [`0x1f2260...96131d`](./contracts/bsc-56/0x1f2260863f3bb14c84c676d83636abe43c96131d/) | ⚠️ Unaudited |

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
| [2025-09-03_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-09-03_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-09 | fresh | Inherited from Stake DAO — forked code, scoped to DomainClaimAchievement | n/a | 0 | n/a |
| [2025-08-08_pashov_staking_v2_morpho_support.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-08-08_pashov_staking_v2_morpho_support.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Inherited from Stake DAO — forked code, scoped to DomainClaimAchievement | n/a | 0 | n/a |
| [2025-05-01_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-05-01_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-05 | aging | Inherited from Stake DAO — forked code, scoped to DomainClaimAchievement | n/a | 0 | n/a |
| [2025-04-01_trust_security_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-04-01_trust_security_staking_v2.pdf) | Trust Security | Audit | 2025-04 | aging | Inherited from Stake DAO — forked code, scoped to DomainClaimAchievement | n/a | 0 | n/a |
| [spaces/5uhLcyGCQlnjfHxzK8rZ/uploads/51Xw7l4YmEbWgu2Bu65Z/Inspex_AUDIT2021050_BaryonNetwork_BaryonSwap_FullReport_v1.0.pdf](https://1786158701-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5uhLcyGCQlnjfHxzK8rZ%2Fuploads%2F51Xw7l4YmEbWgu2Bu65Z%2FInspex_AUDIT2021050_BaryonNetwork_BaryonSwap_FullReport_v1.0.pdf) | Inspex | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/5uhLcyGCQlnjfHxzK8rZ/uploads/8EIETIrUmHsgrAa60A6r/Inspex_AUDIT2022031_BaryonNetwork_BaryonFarm_FullReport_v1.0.pdf](https://1786158701-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5uhLcyGCQlnjfHxzK8rZ%2Fuploads%2F8EIETIrUmHsgrAa60A6r%2FInspex_AUDIT2022031_BaryonNetwork_BaryonFarm_FullReport_v1.0.pdf) | Inspex | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2026_03_26_trust_security_vlsdt.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/vlsdt/2026_03_26_trust_security_vlsdt.pdf) | Trust Security | Audit | 2026-04 | fresh | Inherited from Stake DAO — forked code, scoped to DomainClaimAchievement | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [18824] 2025-09-03_omniscia_staking_v2.pdf
- [18826] 2025-08-08_pashov_staking_v2_morpho_support.pdf
- [18828] 2025-05-01_omniscia_staking_v2.pdf
- [18830] 2025-04-01_trust_security_staking_v2.pdf
- [20649] spaces/5uhLcyGCQlnjfHxzK8rZ/uploads/51Xw7l4YmEbWgu2Bu65Z/Inspex_AUDIT2021050_BaryonNetwork_BaryonSwap_FullReport_v1.0.pdf
- [20650] spaces/5uhLcyGCQlnjfHxzK8rZ/uploads/8EIETIrUmHsgrAa60A6r/Inspex_AUDIT2022031_BaryonNetwork_BaryonFarm_FullReport_v1.0.pdf
- [24591] 2026_03_26_trust_security_vlsdt.pdf

Fork inheritance lineage and inherited audits are included when available.
