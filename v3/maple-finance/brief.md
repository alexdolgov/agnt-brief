# Agentic Audit Brief: Maple Finance

## Project Overview

- Project: Maple Finance (`maple-finance`)
- Website: [https://www.maple.finance](https://www.maple.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:28.811Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $6,696,956,834.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 21 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 3 ERC20 tokens, 3 Chainlink feeds; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (owned, simplewriteaccesscontroller, typeandversioninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/22 (31.8%)
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/22
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/maple/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 7 fresh, 5 aging, 12 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 18.2% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Three Sigma | Tier 2 | 6 | 27.3% | 2024-12 |
| Spearbit | Tier 1 | 4 | 18.2% | 2025-11 |
| 0xMacro | Tier 2 | 3 | 13.6% | 2025-09 |
| ThreeSigma | Tier 2 | 3 | 13.6% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MapleToken | unknown | ethereum | n/a | [`0x643c4e...f52d66`](./contracts/ethereum-1/0x643c4e15d7d62ad0abec4a9bd4b001aa3ef52d66/) | ✅ Audited |
| MapleTokenInitializer | unknown | ethereum | n/a | [`0xfe4a4f...4b30fc`](./contracts/ethereum-1/0xfe4a4fd3bd2e0eb400355aef5aa1752bc54b30fc/) | ✅ Audited |
| Migrator | unknown | ethereum | n/a | [`0x9c9499...ad8f2c`](./contracts/ethereum-1/0x9c9499edd0cd2dcbc3c9dd5070baf54777ad8f2c/) | ✅ Audited |
| MplUserActions | unknown | ethereum | n/a | [`0x59371c...b6c183`](./contracts/ethereum-1/0x59371c31a30028be76d17d70141c4e25d5b6c183/) | ✅ Audited |
| PoolDeployer | unknown | ethereum | n/a | [`0x9ca99f...e079c2`](./contracts/ethereum-1/0x9ca99f16ba2ed5627407fd44bd3f9d2810e079c2/) | ✅ Audited |
| RecapitalizationModule | unknown | ethereum | n/a | [`0x5dfe04...b3f69d`](./contracts/ethereum-1/0x5dfe0460f66fa06bfcbb3211e723556be6b3f69d/) | ✅ Audited |
| SyrupDrip | unknown | ethereum | n/a | [`0x509712...e986ea`](./contracts/ethereum-1/0x509712f368255e92410893ba2e488f40f7e986ea/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledAggregator | unknown | ethereum | n/a | [`0x00c7a3...275446`](./contracts/ethereum-1/0x00c7a37b03690fb9f41b5c5af8131735c7275446/) | ⚠️ Unaudited |
| AggregatorFacade | unknown | ethereum | n/a | [`0x057e26...0627ba`](./contracts/ethereum-1/0x057e2610e76d70e8c6ad56711798c5790d0627ba/) | ⚠️ Unaudited |
| ArbitrumValidator | unknown | ethereum | n/a | [`0x31982c...c38ac1`](./contracts/ethereum-1/0x31982c9e5edd99bb923a948252167ea4bbc38ac1/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | ethereum | n/a | [`0x2e1b5a...d67f6b`](./contracts/ethereum-1/0x2e1b5a40edc922bce489668b11749b8eabd67f6b/) | ⚠️ Unaudited |
| CPoR | unknown | ethereum | n/a | [`0x575a16...f28c51`](./contracts/ethereum-1/0x575a16cd2305ad7171f5c1036c3506070df28c51/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x010eef...29d14c`](./contracts/ethereum-1/0x010eef34dc1f831c86b547e826d52d6e4d29d14c/) | ⚠️ Unaudited |
| FeedRegistry | unknown | ethereum | n/a | [`0x47fb25...ceeedf`](./contracts/ethereum-1/0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf/) | ⚠️ Unaudited |
| Flags | unknown | ethereum | n/a | [`0x24ec84...3bdabf`](./contracts/ethereum-1/0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf/) | ⚠️ Unaudited |
| KeeperRegistry | unknown | ethereum | n/a | [`0x5c8b4d...d63698`](./contracts/ethereum-1/0x5c8b4d52683758cf855fa2118ef0104fdcd63698/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x0fc84a...546ebe`](./contracts/ethereum-1/0x0fc84ab084a08971e6f52a9da41bfae82b546ebe/) | ⚠️ Unaudited |
| PriceConsumer | unknown | ethereum | n/a | [`0x7f7d99...22f242`](./contracts/ethereum-1/0x7f7d995fc12752fe5df42134252e8b7a8922f242/) | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | ethereum | n/a | [`0x4a9d21...82700d`](./contracts/ethereum-1/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | ethereum | n/a | [`0x641b69...89dfe6`](./contracts/ethereum-1/0x641b698ad1c6e503470520b0eecb472c0589dfe6/) | ⚠️ Unaudited |
| ValidatorProxy | unknown | ethereum | n/a | [`0x264bdd...d50236`](./contracts/ethereum-1/0x264bddfd9d93d48d759fbdb0670be1c6fdd50236/) | ⚠️ Unaudited |
| xMPL | unknown | ethereum | n/a | [`0x5458a2...f78ab7`](./contracts/ethereum-1/0x5458a294a75c3f58984a6476df4bc300e0f78ab7/) | ⚠️ Unaudited |

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
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/maple/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [`2022-08 - Trail of Bits Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2022-december/TrailOfBits-Maple.pdf) | Trail of Bits | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [`2022-10 - Spearbit Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2022-december/Spearbit-maple.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [`2022-10 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2022-december/Three-Sigma-Maple-Finance-Dec-2022.pdf) | Spearbit | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [`2023-06 - Cantina Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2023-june/Cantina-Maple.pdf) | Spearbit | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [`2023-04 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2023-june/Three-Sigma-Maple-Finance-Jun-2023.pdf) | Spearbit | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [`2023-11 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2023-december/Three-Sigma-Maple-Finance-Dec-2023.pdf) | Three Sigma | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [`2023-11 - 0xMacro Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2023-december/0xMacro-Maple-Finance-Dec-2023.pdf) | 0xMacro | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [`2024-08 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-august/Three-Sigma-Maple-Finance-Aug-2024.pdf) | Three Sigma | Audit | 2024-08 | aging | Direct | contract_name | 3 | high |
| [`2024-08 - 0xMacro Report` (also discovered via alternate URL)](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-august/0xMacro-Maple-Finance-Aug-2024.pdf) | 0xMacro | Audit | 2024-08 | aging | Direct | contract_name | 3 | high |
| [`2024-05 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-august/Three-Sigma-Maple-Finance-Aug-2024-Syrup.pdf) | 0xMacro | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [`2024-12 - Three Sigma Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-december/Three-Sigma-Maple-Finance-Dec-2024%20.pdf) | Three Sigma | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [`2024-12 - 0xMacro Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2024-december/0xMacro-Maple-Finance-Dec-2024.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [`2025-09 - Sherlock Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2025-sept-governor-timelock/Sherlock-Maple-Finance-timelock-Sept-2025.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [`2025-09 - 0xMacro Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2025-sept-governor-timelock/0xMacro-Maple-Finance-timelock-Sept-2025.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [`2025-11 - Spearbit Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2025-november/Spearbit-Maple-Finance-WM-Nov-2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [`2025-11 - Sherlock Report`](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2025-november/Sherlock-Maple-Finance-WM-Nov-2025.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [`2025-11 - Dedaub Report`](https://github.com/maple-labs/maple-cross-chain-receiver/blob/main/audits/2025-november/Dedaub-Chainlink-Maple.pdf) | Dedaub | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [`2026-01 - Sigma Prime Report`](https://github.com/maple-labs/maple-cross-chain-receiver/blob/main/audits/2026-january/SigmaPrime-Chainlink-Maple.pdf) | Sigma Prime | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [here](https://docs.google.com/viewer?url=https://github.com/maple-labs/maple-v2-audits/files/10223545/Maple.Finance.v2.-.Spearbit.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2022-december](https://github.com/maple-labs/maple-core-v2/blob/main/audits/2022-december) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [2025-november](https://github.com/maple-labs/maple-cross-chain-receiver/blob/main/audits/2025-november) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [CantinaManaged-maplev2-report.pdf](https://github.com/maple-labs/mplv2/blob/main/audits/CantinaManaged-maplev2-report.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | 3 | medium |
| [ThreeSigma-MapleV2-Token-Audit.pdf](https://github.com/maple-labs/mplv2/blob/main/audits/ThreeSigma-MapleV2-Token-Audit.pdf) | Three Sigma | Audit | 2023-07 | stale | Direct | contract_name | 3 | high |
| [**Designed by Maple, in partnership with leading 3rd parties**: The team at Room40 are experts in trading treasuries and will trade, custody and clear from an account with a regulated broker. Maple has a track record in providing secure and scalable products on top of best in class smart contract infrastructure and was recently awarded a 92% Safety Score by DeFi Safety [full report]().](https://www.defisafety.com/app/pqrs/533) | DeFi Safety | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2024-05-22 ThreeSigma Report](https://github.com/maple-labs/syrup-utils/blob/main/audits/ThreeSigma-MapleSyrupRouter.pdf) | ThreeSigma | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [2024-08-23 - Three Sigma Report](https://github.com/maple-labs/syrup-utils/blob/main/audits/ThreeSigma-Maple-Finance-Aug-2024.pdf) | ThreeSigma | Audit | 2024-08 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 19
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: extraction_exact=23

Zero-match audit list:

- [17685] `2022-08 - Trail of Bits Report`
- [17686] `2022-10 - Spearbit Report`
- [17687] `2022-10 - Three Sigma Report`
- [17690] `2023-11 - Three Sigma Report`
- [17691] `2023-11 - 0xMacro Report`
- [17694] `2024-05 - Three Sigma Report`
- [17695] `2024-12 - Three Sigma Report`
- [17696] `2024-12 - 0xMacro Report`
- [17697] `2025-09 - Sherlock Report`
- [17698] `2025-09 - 0xMacro Report`
- [17699] `2025-11 - Spearbit Report`
- [17700] `2025-11 - Sherlock Report`
- [17701] `2025-11 - Dedaub Report`
- [17702] `2026-01 - Sigma Prime Report`
- [17703] here
- [17704] 2022-december
- [17705] 2025-november
- [17709] **Designed by Maple, in partnership with leading 3rd parties**: The team at Room40 are experts in trading treasuries and will trade, custody and clear from an account with a regulated broker. Maple has a track record in providing secure and scalable products on top of best in class smart contract infrastructure and was recently awarded a 92% Safety Score by DeFi Safety [full report]().
- [17710] 2024-05-22 ThreeSigma Report

Fork inheritance lineage and inherited audits are included when available.
