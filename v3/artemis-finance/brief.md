# Agentic Audit Brief: Artemis Finance

## Project Overview

- Project: Artemis Finance (`artemis-finance`)
- Website: [https://artemisfinance.io/](https://artemisfinance.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:31.288Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum, metis
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $717,498.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 15 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (2 live, 18 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledOffchainAggregator | unknown | metis | n/a | [`0x06f582...94b5ed`](./contracts/metis-1088/0x06f58206aed15bdfc10e93082fbb399e4c94b5ed/) | ⚠️ Unaudited |
| AMTConfig | unknown | metis | n/a | [`0x646279...f1e6e3`](./contracts/metis-1088/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3/) | ⚠️ Unaudited |
| AMTDepositPool | unknown | metis | n/a | [`0x507fdb...466ced`](./contracts/metis-1088/0x507fdbebdb11c71e7c7565177d0942a6fd466ced/) | ⚠️ Unaudited |
| AMTRewardPool | unknown | metis | n/a | [`0xad2995...53421c`](./contracts/metis-1088/0xad29951cda3dcd0e570e65a6ee34aa455c53421c/) | ⚠️ Unaudited |
| AMTWithdrawalManager | unknown | metis | n/a | [`0x06c499...f663ce`](./contracts/metis-1088/0x06c49988c2111d01a745deeccc757e6f6df663ce/) | ⚠️ Unaudited |
| ArtMetis | unknown | metis | n/a | [`0x920873...56a3b8`](./contracts/metis-1088/0x920873e5b302a619c54c908adfb77a1c4256a3b8/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | metis | n/a | [`0xed2b73...417839`](./contracts/metis-1088/0xed2b73c77887ad41001a6367d11e7ddea2417839/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | metis | n/a | [`0x01da51...805bce`](./contracts/metis-1088/0x01da515c46209ffca4c96625fe8a1b278c805bce/) | ⚠️ Unaudited |
| Flags | unknown | metis | n/a | [`0x42b087...46b04a`](./contracts/metis-1088/0x42b087a1f07faf3067c460182c9ebe2fb346b04a/) | ⚠️ Unaudited |
| LinkToken | unknown | metis | n/a | [`0x79892e...7ec046`](./contracts/metis-1088/0x79892e8a3aea66c8f6893fa49ec6208ef07ec046/) | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | metis | n/a | [`0xb2d167...4264c8`](./contracts/metis-1088/0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8/) | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | metis | n/a | [`0x741620...c4fecc`](./contracts/metis-1088/0x741620136cf08a782c1df1fc9e3caa760cc4fecc/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | metis | n/a | [`0x479603...9e218d`](./contracts/metis-1088/0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d/) | ⚠️ Unaudited |
| SequencerNodeManager | unknown | metis | n/a | [`0xbb1f6c...0f8569`](./contracts/metis-1088/0xbb1f6cff4d92073a7890b80c1245606c520f8569/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | metis | n/a | [`0x345a89...845404`](./contracts/metis-1088/0x345a8935ed569ba5e7abf447f3b64be8b9845404/) | ⚠️ Unaudited |
| TimelockController | unknown | metis | n/a | [`0x135c4d...ee9a16`](./contracts/metis-1088/0x135c4de9238352681efc42575eafe47d50ee9a16/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x014e82...321f5d`](./contracts/ethereum-1/0x014e8248d3b681d4ed703de60885052ff4321f5d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | metis | n/a | [`0x0cf6ab...80e139`](./contracts/metis-1088/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | metis | n/a | [`0x2350ea...709913`](./contracts/metis-1088/0x2350ea954113b1a1eebaaccc47f3a4985f709913/) | ⚠️ Unaudited |
| Vester | unknown | metis | n/a | [`0x1679fe...46723b`](./contracts/metis-1088/0x1679fe95b11959c694af8627e5360267e146723b/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Artemis-v1.0.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2F7DxuyRfKvFSf1kTGkLwN%2FPeckShield-Audit-Report-Artemis-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Artemis-v1.0.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2FvfYMfFs0CegB7fiDbEY1%2FPeckShield-Audit-Report-Artemis-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Artemis_GOAT_Audit_Report_by_WatchPug.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2Fj7xRiPEECoBznYCVViXZ%2FArtemis_GOAT_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2FuzfwiX1PeIuSJkY9Wnzp%2FArtmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2F3CwTyqdsSdVS2VdzLuqe%2FArtemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19452] PeckShield-Audit-Report-Artemis-v1.0.pdf
- [19453] PeckShield-Audit-Report-Artemis-v1.0.pdf
- [19454] Artemis_GOAT_Audit_Report_by_WatchPug.pdf
- [19455] Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf
- [19456] Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf

Fork inheritance lineage and inherited audits are included when available.
