# Agentic Audit Brief: Fractal Protocol

## Project Overview

- Project: Fractal Protocol (`fractal-protocol`)
- Website: [https://www.fractalprotocol.org](https://www.fractalprotocol.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.457Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 33 unique implementations (33 raw deployments)
- DeFi Llama TVL: $10,898.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 25 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 6 common project-authored base contract(s) (controllable, customownable, custominitializable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 85; live-surface contracts included: 33 (2 live, 31 unknown).
- Excluded by liveness: 52 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Loan | unknown | ethereum | n/a | [`0x558deb72ffaa9fc074d31019db51c18e5cd9d21f`](./contracts/ethereum-1/0x558deb72ffaa9fc074d31019db51c18e5cd9d21f/) | ⚠️ Unaudited |
| OpenTermLoan | unknown | ethereum | n/a | [`0x55549c2e41e30bfc4e1ea4a93d0c3528d7fd56cc`](./contracts/ethereum-1/0x55549c2e41e30bfc4e1ea4a93d0c3528d7fd56cc/) | ⚠️ Unaudited |
| OriginStrategy | unknown | ethereum | n/a | [`0x533e0edbe7d2d0fbf4c4d2acb95aee6ee137fd8e`](./contracts/ethereum-1/0x533e0edbe7d2d0fbf4c4d2acb95aee6ee137fd8e/) | ⚠️ Unaudited |
| ReceiptToken | token | ethereum | n/a | [`0x51acb1ea45c1ec2512ae4202b9076c13016dc8aa`](./contracts/ethereum-1/0x51acb1ea45c1ec2512ae4202b9076c13016dc8aa/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x3eaa4b3e8967c02ce1304c1eb35e8c5409838dfc`](./contracts/ethereum-1/0x3eaa4b3e8967c02ce1304c1eb35e8c5409838dfc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x08bc3a5298a749ea57455d5e48c5dbea1ed5772b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bee316516ec2ba951578a7491a22e71fba1da10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc415489ee7533fd435bc1866cd46bac407bf36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10a8496001622d0e02952efb7584b269df936219` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1576651439f1ea5bac114e1bbe0fe10a4aaafddd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16e6d3add05a47b64e91412a10a0b569ab8d9562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e418b8b118782d4bba88776ad1b6a13f0a90109` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48711cc6a554b4b6f96fde74f72fd0810da749d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x572dd31adabaed62bd59d39ea1b16dbdd00ac138` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68d2c0f3ab17f45cb17821849d8a0d9856e1c138` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b15e1bb035e4ce5f2976fbc3f7f370431627bf3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ea759b3b72408f64c6896553d070411ff22cae8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96707426e572d1a7666e5e5029a3ec3c2b5023f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98ad349f61ad30f40696391622e83fa3c6d43642` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadaf3a3e4563a38c241bbdfa1988474cd18dd6fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0c2235175c51a47448b281d254ebd73fba90b42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1cb11cb5e53b0f881dc161f23a1890b5b0c1a4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcb91e99e7ebd15f60de55ac1effa39dee532da4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4f7c17cd2c9a87ca865541ff345a3d1b64476c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc50c47140551232e561d527f6c01863352249315` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb644f4e31c9f0f89784a0c81e72bc4a93d82a11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1927949e56843a1d69c036a115e18044e4b9ac9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddee9c8250c913101fbc3fd4f0c139d45b3168c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6e3cc8aebca10efae7c7b17bad2e6897c07c50b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf762d2b4e25865aa5571d51c3ad131882c07724f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbca7455519a1ba159b8efd6c2fbd1f34e8a3e1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc0db2fe722d412be2f806c3c2927f64c375549b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd1d1339dbc24496d70dbf7912c07ae2ef71bc2d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [docs.google.com/viewerng/viewer](https://docs.google.com/viewerng/viewer?url=https://fractalprotocol.s3.amazonaws.com/Fractal%2BAudit%2BReport.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x558deb72ffaa9fc074d31019db51c18e5cd9d21f`](./contracts/ethereum-1/0x558deb72ffaa9fc074d31019db51c18e5cd9d21f/) | Loan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55549c2e41e30bfc4e1ea4a93d0c3528d7fd56cc`](./contracts/ethereum-1/0x55549c2e41e30bfc4e1ea4a93d0c3528d7fd56cc/) | OpenTermLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533e0edbe7d2d0fbf4c4d2acb95aee6ee137fd8e`](./contracts/ethereum-1/0x533e0edbe7d2d0fbf4c4d2acb95aee6ee137fd8e/) | OriginStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51acb1ea45c1ec2512ae4202b9076c13016dc8aa`](./contracts/ethereum-1/0x51acb1ea45c1ec2512ae4202b9076c13016dc8aa/) | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3eaa4b3e8967c02ce1304c1eb35e8c5409838dfc`](./contracts/ethereum-1/0x3eaa4b3e8967c02ce1304c1eb35e8c5409838dfc/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13134] docs.google.com/viewerng/viewer

Fork inheritance lineage and inherited audits are included when available.
