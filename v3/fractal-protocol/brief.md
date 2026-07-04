# Agentic Audit Brief: Fractal Protocol

## Project Overview

- Project: Fractal Protocol (`fractal-protocol`)
- Website: [https://www.fractalprotocol.org](https://www.fractalprotocol.org)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:52.840Z
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
| Loan | unknown | ethereum | n/a | [`0x558deb...d9d21f`](./contracts/ethereum-1/0x558deb72ffaa9fc074d31019db51c18e5cd9d21f/) | ⚠️ Unaudited |
| OpenTermLoan | unknown | ethereum | n/a | [`0x55549c...fd56cc`](./contracts/ethereum-1/0x55549c2e41e30bfc4e1ea4a93d0c3528d7fd56cc/) | ⚠️ Unaudited |
| OriginStrategy | unknown | ethereum | n/a | [`0x533e0e...37fd8e`](./contracts/ethereum-1/0x533e0edbe7d2d0fbf4c4d2acb95aee6ee137fd8e/) | ⚠️ Unaudited |
| ReceiptToken | token | ethereum | n/a | [`0x51acb1...6dc8aa`](./contracts/ethereum-1/0x51acb1ea45c1ec2512ae4202b9076c13016dc8aa/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x3eaa4b...838dfc`](./contracts/ethereum-1/0x3eaa4b3e8967c02ce1304c1eb35e8c5409838dfc/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x08bc3a...d5772b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bee31...a1da10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc415...07bf36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10a849...936219` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x157665...aafddd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16e6d3...8d9562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e418b...a90109` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48711c...a749d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x572dd3...0ac138` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68d2c0...e1c138` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b15e1...627bf3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ea759...22cae8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x967074...5023f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98ad34...d43642` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadaf3a...8dd6fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0c223...a90b42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1cb11...0c1a4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcb91e...532da4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4f7c1...4476c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc50c47...249315` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb644f...d82a11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd19279...4b9ac9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddee9c...3168c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6e3cc...07c50b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf762d2...07724f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbca74...8a3e1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc0db2...75549b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd1d13...71bc2d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [docs.google.com/viewerng/viewer](https://docs.google.com/viewerng/viewer?url=https://fractalprotocol.s3.amazonaws.com/Fractal%2BAudit%2BReport.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

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
