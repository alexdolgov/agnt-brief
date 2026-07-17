# Agentic Audit Brief: Avant Protocol

## Project Overview

- Project: Avant Protocol (`avant-protocol`)
- Website: [https://app.avantprotocol.com/rewards?ref=defillama](https://app.avantprotocol.com/rewards?ref=defillama)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.002Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: avalanche, ethereum, linea
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $129,030,459.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 15 project-authored contract(s) across 3 chain(s); 2 ERC4626 vaults, 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 12 common project-authored base contract(s) (singleadminaccesscontrol, erc165, accesscontrolupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/16 (50.0%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/18
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 4 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 25.0% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 4 | 22.2% | 2026-06 |
| unknown | Tier 2 | 4 | 22.2% | 2025-08 |
| yAudit | Tier 2 | 4 | 22.2% | 2025-04 |
| Dedaub | Tier 2 | 3 | 16.7% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressesWhitelist | unknown | ethereum | n/a | [`0x570c0eb59655407d137b207e60ce3ab103cc1c4d`](./contracts/ethereum-1/0x570c0eb59655407d137b207e60ce3ab103cc1c4d/) | ✅ Audited |
| AvUSD | unknown | avalanche | n/a | [`0x24de8771bc5ddb3362db529fc3358f2df3a0e346`](./contracts/avalanche-43114/0x24de8771bc5ddb3362db529fc3358f2df3a0e346/) | ✅ Audited |
| AvUSDMinting | unknown | avalanche | n/a | [`0x1499cb3197427b78dc0e2d356a1e0e4149e0ed51`](./contracts/avalanche-43114/0x1499cb3197427b78dc0e2d356a1e0e4149e0ed51/) | ✅ Audited |
| OFTUpgradeableWithCCIP | unknown | ethereum | n/a | [`0x02755e2c3f95080cad3669010a60c74096fdea2b`](./contracts/ethereum-1/0x02755e2c3f95080cad3669010a60c74096fdea2b/) | ✅ Audited |
| PriceStorage | unknown | avalanche | n/a | [`0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af`](./contracts/avalanche-43114/0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af/) | ✅ Audited |
| RequestsManager | unknown | avalanche | n/a | [`0x4c129d3aa27272211d151ca39a0a01e4c16fc887`](./contracts/avalanche-43114/0x4c129d3aa27272211d151ca39a0a01e4c16fc887/) | ✅ Audited |
| SimpleToken | unknown | ethereum | n/a | [`0x1411f6d18d4e0015ee2dc22d4f7b6893dedbdbe1`](./contracts/ethereum-1/0x1411f6d18d4e0015ee2dc22d4f7b6893dedbdbe1/) | ✅ Audited |
| StakedAvUSDV2 | unknown | avalanche | n/a | [`0x06d47f3fb376649c3a9dafe069b3d6e35572219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AvantCoin | unknown | ethereum | n/a | [`0x9469470c9878bf3d6d0604831d9a3a366156f7ee`](./contracts/ethereum-1/0x9469470c9878bf3d6d0604831d9a3a366156f7ee/) | ⚠️ Unaudited |
| AvantCoinSilo | unknown | ethereum | n/a | [`0x1a3e690b6ebc3013a89e922167570b2684d238e8`](./contracts/ethereum-1/0x1a3e690b6ebc3013a89e922167570b2684d238e8/) | ⚠️ Unaudited |
| AvantMintingV2 | unknown | ethereum | n/a | [`0x09becf6e5e297825d19aa14ed6081a03524532d7`](./contracts/ethereum-1/0x09becf6e5e297825d19aa14ed6081a03524532d7/) | ⚠️ Unaudited |
| AvantOFTAdapter | unknown | avalanche | n/a | [`0x3524609c4d8111d45afc912bf1e1270cd5a1bd85`](./contracts/avalanche-43114/0x3524609c4d8111d45afc912bf1e1270cd5a1bd85/) | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | linea | n/a | [`0x10cbdedfd636c777977d621d344791a288528ff0`](./contracts/linea-59144/0x10cbdedfd636c777977d621d344791a288528ff0/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x4d4daca1fa6440ed4508161328368118bed4d29d`](./contracts/avalanche-43114/0x4d4daca1fa6440ed4508161328368118bed4d29d/) | ⚠️ Unaudited |
| FactoryBurnMintERC20 | unknown | linea | n/a | [`0x01c9abfebcdcb53e72bf017fc1d17f9db38f722a`](./contracts/linea-59144/0x01c9abfebcdcb53e72bf017fc1d17f9db38f722a/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | ethereum | n/a | [`0x18d3ebcef1074f30aba5da3951ff1a87b30b6ec1`](./contracts/ethereum-1/0x18d3ebcef1074f30aba5da3951ff1a87b30b6ec1/) | ⚠️ Unaudited |
| StakedAvantCoinV2 | unknown | avalanche | n/a | [`0x649342c6bff544d82df1b2ba3c93e0c22cdeba84`](./contracts/avalanche-43114/0x649342c6bff544d82df1b2ba3c93e0c22cdeba84/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0caefeb807152fbd945bf947893e6feba5aed61b`](./contracts/ethereum-1/0x0caefeb807152fbd945bf947893e6feba5aed61b/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FGtOr3Rn7KQk2mvuQzdd1%2FDedaub-Avant-USD-Report-2024-06-06.pdf) | Dedaub | Audit | 2024-06 | stale | Direct | contract_name | 3 | high |
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FJRa5k4HyfKmlCmc5OEF8%2FRiley-Avant-Contracts-Max-Report-2025-08-26.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 4 | high |
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FmVn7SMlUpSDQgkeDdfpf%2FCyfrin-Avant-Contracts-Max-Report-2025-08-27..pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | contract_name | 4 | high |
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FFOfLp5biW5vzBzq7n7HK%2FCyfrin-Avant-RequestManagerV2-FV-Report-2026-06-24.pdf) | Cyfrin | Audit | 2026-06 | fresh | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FCcsm6eERNkzKwXOTE4QI%2FCyfrin-Avant-RequestManagerV2-Report-2026-06-24.pdf) | Cyfrin | Audit | 2026-06 | fresh | Direct | contract_name | 2 | high |
| [July 2024 - Omniscia - avUSD System Security Audit.pdf](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FZxJC7e2hD0rgDb8RaWrt%2FOmniscia-Avant-avUSD-System-Report-2024-07-13.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | 3 | high |
| [March 2025 - Omniscia - avUSD Minting v2 Report.pdf](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FyxLfLGfwlU7PWu0VBswY%2FOmniscia-Avant-AvUSD-Minting-v2-Report-2025-03-31.pdf) | Omniscia | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [April 2025 - Omniscia - Cross Chain ERC20 Token Bridge Security Audit.pdf](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2F6gFfA5Y25KNKNS8N93ZC%2FOmniscia-Avant-Cross%3DChain-ERC20-Token-Bridge-Report-2025-04-01.pdf) | yAudit | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9469470c9878bf3d6d0604831d9a3a366156f7ee`](./contracts/ethereum-1/0x9469470c9878bf3d6d0604831d9a3a366156f7ee/) | AvantCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a3e690b6ebc3013a89e922167570b2684d238e8`](./contracts/ethereum-1/0x1a3e690b6ebc3013a89e922167570b2684d238e8/) | AvantCoinSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09becf6e5e297825d19aa14ed6081a03524532d7`](./contracts/ethereum-1/0x09becf6e5e297825d19aa14ed6081a03524532d7/) | AvantMintingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3524609c4d8111d45afc912bf1e1270cd5a1bd85`](./contracts/avalanche-43114/0x3524609c4d8111d45afc912bf1e1270cd5a1bd85/) | AvantOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x10cbdedfd636c777977d621d344791a288528ff0`](./contracts/linea-59144/0x10cbdedfd636c777977d621d344791a288528ff0/) | BurnMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x01c9abfebcdcb53e72bf017fc1d17f9db38f722a`](./contracts/linea-59144/0x01c9abfebcdcb53e72bf017fc1d17f9db38f722a/) | FactoryBurnMintERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18d3ebcef1074f30aba5da3951ff1a87b30b6ec1`](./contracts/ethereum-1/0x18d3ebcef1074f30aba5da3951ff1a87b30b6ec1/) | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x649342c6bff544d82df1b2ba3c93e0c22cdeba84`](./contracts/avalanche-43114/0x649342c6bff544d82df1b2ba3c93e0c22cdeba84/) | StakedAvantCoinV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=19

Zero-match audit list:

- [16782] March 2025 - Omniscia - avUSD Minting v2 Report.pdf

Fork inheritance lineage and inherited audits are included when available.
