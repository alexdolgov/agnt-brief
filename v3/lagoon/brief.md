# Agentic Audit Brief: Lagoon

## Project Overview

- Project: Lagoon (`lagoon`)
- Website: [https://lagoon.finance](https://lagoon.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:20.272Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum, hyperliquid, mantle, polygon, sei
- Contract surface: 13 unique implementations (13 raw deployments)
- DeFi Llama TVL: $130,184,735.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 10 project-authored contract(s) across 6 chain(s); 2 ERC4626 vaults, 2 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (contextupgradeable, ownable2stepupgradeable, ownableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/13 (46.2%)
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/13
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 4 fresh, 7 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 30.8% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HopperLabs | Tier 2 | 5 | 38.5% | 2024-11 |
| unknown | Tier 2 | 5 | 38.5% | 2025-01 |
| Nomic Foundation | Tier 2 | 4 | 30.8% | 2026-05 |
| Trail of Bits | Tier 1 | 4 | 30.8% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeRegistry | unknown | mantle | n/a | [`0x16fd09...7c18e8`](./contracts/mantle-5000/0x16fd09034c04d31f7776159393e3a577fa7c18e8/) | ✅ Audited |
| OptinProxyFactory | unknown | polygon | n/a | [`0x0c0e28...d05a91`](./contracts/polygon-137/0x0c0e287f6e4de685f4b44a5282a3ad4a29d05a91/) | ✅ Audited |
| ProtocolRegistry | unknown | polygon | n/a | [`0x13664b...fe49b9`](./contracts/polygon-137/0x13664b3131031e7ff7ca19fb74344da050fe49b9/) | ✅ Audited |
| Silo | unknown | polygon | n/a | [`0x572f73...e4839b`](./contracts/polygon-137/0x572f734f7c4673e8864ab79d71f22a9805e4839b/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0x065ef7...0d8950`](./contracts/ethereum-1/0x065ef71bcdc43adb76bd0585d02ffe7c9e0d8950/) | ✅ Audited |
| Vault_v0_5_0 | unknown | ethereum | n/a | [`0x23fbda...d397cb`](./contracts/ethereum-1/0x23fbda54849e8904154c8f8436a59b95b1d397cb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EquilibriaCrutch | unknown | ethereum | n/a | [`0xb10794...77ad62`](./contracts/ethereum-1/0xb107943bbf7c6874af38ebf49c15b383b077ad62/) | ⚠️ Unaudited |
| LagoonVault | unknown | ethereum | n/a | [`0x03d1ec...e14bfc`](./contracts/ethereum-1/0x03d1ec0d01b659b89a87eabb56e4af5cb6e14bfc/) | ⚠️ Unaudited |
| MockLogicRegistry | unknown | sei | n/a | [`0x2f02db...86dbfd`](./contracts/sei-1329/0x2f02db0a974841f710362e96742cacc2c786dbfd/) | ⚠️ Unaudited |
| PTOraclePriceAdapterFactory | unknown | ethereum | n/a | [`0x70efd8...001d05`](./contracts/ethereum-1/0x70efd899dd4934e25b6042d0a06412e4ea001d05/) | ⚠️ Unaudited |
| ShowcaseBug | unknown | arbitrum | n/a | [`0x23fbda...d397cb`](./contracts/arbitrum-42161/0x23fbda54849e8904154c8f8436a59b95b1d397cb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x90beb5...24cd84`](./contracts/hyperliquid-999/0x90beb507a1ba7d64633540cbce615b574224cd84/) | ⚠️ Unaudited |
| Vault0_2_1 | unknown | arbitrum | n/a | [`0x652716...23ab20`](./contracts/arbitrum-42161/0x652716fad571f04d26a3c8ffd9e593f17123ab20/) | ⚠️ Unaudited |

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
| [NM_0304_HopperLabs.pdf](https://content.gitbook.com/content/5vcVbvvRrtwZ0uaFrufF/blobs/aUGQBCCKrkRj2a2JqcU7/NM_0304_HopperLabs.pdf) | HopperLabs | Audit | 2024-11 | aging | Direct | contract_name | 5 | high |
| [lagoon-review.pdf](https://content.gitbook.com/content/5vcVbvvRrtwZ0uaFrufF/blobs/inufZt8d5BRJq6tJWoED/lagoon-review.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 5 | high |
| [NM_0432_Lagoon.pdf](https://content.gitbook.com/content/5vcVbvvRrtwZ0uaFrufF/blobs/6mNZOJq6XeTjGMcMnM5N/NM_0432_Lagoon.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 2 | high |
| [NM_0499_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2Fcjt5DaNb1FBoKp1EL22z%2FNM_0499_Lagoon.pdf) | Nomic Foundation | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [NM_0516_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F6ikCSitYVQQdDDcWfVdp%2FNM_0516_Lagoon.pdf) | Nomic Foundation | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [NM_0534_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F8HkE2EU7hepf08gYGPsx%2FNM_0534_Lagoon.pdf) | Nomic Foundation | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |
| [NM_0581-FINAL_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F9pXJSEmutn6clKhvly6m%2FNM_0581-FINAL_Lagoon.pdf) | Nomic Foundation | Audit | 2025-07 | aging | Direct | contract_name | 1 | high |
| [NM_0534_Bug_Disclosure.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2FtDP4IRcaDp90PdfyOytL%2FNM_0534_Bug_Disclosure.pdf) | Nomic Foundation | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [ToB-v0.5.0.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2FILDRIc5ZH9HblSRMBoLw%2FToB-v0.5.0.pdf) | Trail of Bits | Audit | 2026-03 | fresh | Direct | contract_name | 4 | high |
| [NM_0822_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2Frk5VgBBMxx0fkaXD65tQ%2FNM_0822_Lagoon.pdf) | Nomic Foundation | Audit | 2026-05 | fresh | Direct | contract_name | 3 | high |
| [ToB-v0.6.0.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F3Ig5AUs4tRCYQjsMIas1%2FToB-v0.6.0.pdf) | Trail of Bits | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9
- Match method counts: extraction_exact=25

Zero-match audit list:

- [17482] NM_0534_Bug_Disclosure.pdf
- [17485] ToB-v0.6.0.pdf

Fork inheritance lineage and inherited audits are included when available.
