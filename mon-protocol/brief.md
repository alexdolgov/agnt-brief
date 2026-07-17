# Agentic Audit Brief: mon-protocol

## Project Overview

- Project: mon-protocol (`mon-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.280Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 5 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 5 contract(s).

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Mon | unknown | ethereum | n/a | [`0xc555d625828c4527d477e595ff1dd5801b4a600e`](./contracts/ethereum-1/0xc555d625828c4527d477e595ff1dd5801b4a600e/) | ⚠️ Unaudited |
| NftBasedClaim | unknown | ethereum | n/a | [`0x2b4f7b99fdd1d01b376a3da54990406785692deb`](./contracts/ethereum-1/0x2b4f7b99fdd1d01b376a3da54990406785692deb/) | ⚠️ Unaudited |
| StakingAndClaimsRegistry | unknown | ethereum | n/a | [`0x65a8b32bc4de5e0156dba85ce615d9ef8ea59780`](./contracts/ethereum-1/0x65a8b32bc4de5e0156dba85ce615d9ef8ea59780/) | ⚠️ Unaudited |
| WalletBasedClaim | unknown | ethereum | n/a | [`0x0ffe970e4de8ef267efd6c415ee1a41679f3fc3d`](./contracts/ethereum-1/0x0ffe970e4de8ef267efd6c415ee1a41679f3fc3d/) | ⚠️ Unaudited |
| WalletBasedClaimWithDirectWithdrawal | unknown | ethereum | n/a | [`0x1c985f8dc670c6b4a406fab04316ac12a4a9cb93`](./contracts/ethereum-1/0x1c985f8dc670c6b4a406fab04316ac12a4a9cb93/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc555d625828c4527d477e595ff1dd5801b4a600e`](./contracts/ethereum-1/0xc555d625828c4527d477e595ff1dd5801b4a600e/) | Mon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b4f7b99fdd1d01b376a3da54990406785692deb`](./contracts/ethereum-1/0x2b4f7b99fdd1d01b376a3da54990406785692deb/) | NftBasedClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65a8b32bc4de5e0156dba85ce615d9ef8ea59780`](./contracts/ethereum-1/0x65a8b32bc4de5e0156dba85ce615d9ef8ea59780/) | StakingAndClaimsRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ffe970e4de8ef267efd6c415ee1a41679f3fc3d`](./contracts/ethereum-1/0x0ffe970e4de8ef267efd6c415ee1a41679f3fc3d/) | WalletBasedClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c985f8dc670c6b4a406fab04316ac12a4a9cb93`](./contracts/ethereum-1/0x1c985f8dc670c6b4a406fab04316ac12a4a9cb93/) | WalletBasedClaimWithDirectWithdrawal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
