# Agentic Audit Brief: Swellchain Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Swellchain Bridge (`swellchain-bridge`)
- Website: [https://superbridge.swellnetwork.io](https://superbridge.swellnetwork.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 49 unique implementations (67 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $261,947.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Swellchain Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 49 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 49
- Raw deployments: 67
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

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15a94d49fac6e23e17c1366c999117a1de8ba7b6`; ethereum `0x48dacb0b938aa6d5752ca2ea23cd8593fafb3825` | ⚠️ Unaudited |
| AddressManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa54a84f17c2180148c762d79bc57bdff7fdafc8a` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14387438ee964e826a4eaeb95b2bce7754174dd1` | ⚠️ Unaudited |
| DelayedWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x755a078dee1c264a3053f02cd634e750d505cf85`; ethereum `0x805c6d95c9e707332215f42cb89f93752ffa55b8`; ethereum `0xec6de7031ce1a284d13b551ef8c4c04b6fdf773c` | ⚠️ Unaudited |
| DisputeGameFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87690676786cdc8cca75a472e483af7c8f2f0f57` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9ba6e03d8b90de867373db8cf1a58d2f7f006b3a` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a55871a713fb98a6b60e2e76fc94021c9f182f` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe6a99ef12995defc5ff47ec0e13252f0e6903759` | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7e97935fbdf2a27ea35c4fdddacf5acd685e65a2`; ethereum `0xecf3376512edaca4fbb63d2c67d12a0397d24121` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfd7618330e63b493070dc8c491ad4ad26144bc1e` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7aa4960908b13d104bf056b23e2c76b43c5aacc8` | ⚠️ Unaudited |
| MIPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4` | ⚠️ Unaudited |
| OFTAdapterSwETH | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1b3426e557d6756d8a8859a0779373236f94e2` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc2b228cd433ebae788de287ede2abe55b3f3f603` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x758e0ee66102816f5c3ec9ecc1188860fbb87812` | ⚠️ Unaudited |
| OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa419026809e2d13bc73dee13992e7873ab605981` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0cfbe3402d6e0a74e96d3c360f74d5ea4fa6893` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c065e11870b891d214bc2da7ef1f9ddfa1be277` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4c4710a4ec3f514a492cc6460818c4a6a6269dd6`; ethereum `0x6748220a79446867eb41a824b4f74a92fc0931a9`; ethereum `0x95e8bacd0449a513d954d2ccb5ef48b8ed151ef6` | ⚠️ Unaudited |
| RegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x939f1cc163fdc38a77571019eb4ad1794873bf8c`; ethereum `0xff22ea467301010f1364fc154c13e0c86fcfb077` | ⚠️ Unaudited |
| ReleaseRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6`; ethereum `0x70f8ac14dfdec437aba5e30c7b509dd01e1da901` | ⚠️ Unaudited |
| RoleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1bb44f9d91b4276621550aeea5d2d96279975bf3`; ethereum `0x8413e65374fca711af5eaddcf7191461a1f4d6af`; ethereum `0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1`; ethereum `0xd905418c46d8141dd80ba065e694abd4dfd5b4a1` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2db7583852c700549b710fd79dd1b54af2efa4dd`; ethereum `0x9d663f1dd3cb752b47301abdc22d620d1868f377`; ethereum `0xa9bd691b166aafcc9ef55aabc1960825630558d6` | ⚠️ Unaudited |
| RSwellOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428cda6c1994b926f75a4830d5baedee9db2ac58` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06f7fb1c74147e34fce04a6828c7bf809b038d0e` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95703e0982140d16f8eba6d158fccede42f04a4c` | ⚠️ Unaudited |
| SwBtcOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2`; ethereum `0xa5bd95bfd47d439ce544bcc22b642bf46a2aa3e2` | ⚠️ Unaudited |
| SwellOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09341022ea237a4db1644de7ccf8fa0e489d85b7` | ⚠️ Unaudited |
| SwETHOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9b07fb810ef909b01f959911cef2cc834433f562`; ethereum `0xd98f5cd9699d2824149015985df21cc568c27b5e` | ⚠️ Unaudited |
| SymbioticAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x2a6a2beebf6d65e03246087a41812db1c5c0caf8`; ethereum `0x69dda92dd42040c1290a7870b9fc1dc05e41836a`; ethereum `0x9e07af58c4c8893b0509e5d6d0ab8c92083fdae7` | ⚠️ Unaudited |
| SystemConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd3d4c6b703978a5d24fecf3a70a51127667ff1a4` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8041ba598f0e656ebe80c67289efb42c09e86ae3` | ⚠️ Unaudited |
| WithdrawLimitModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22`; ethereum `0xa2ed40f46c391ddd30094e866aac913a20f17216` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171000 | `0x00000000000c2e074ec69a0dfb2997ba6c7d2e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171001 | `0x3154cf16ccdb4c6d922629664174b904d80f2c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171002 | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171003 | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171004 | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171005 | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171006 | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171007 | `0x4200000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171008 | `0x43edb88c4b80fdd2adff2412a7bebf9df42cb40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171009 | `0x49048044d57e1c92a77f79988d21fa8faf74e97e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171010 | `0x56315b90c40730925ec5485cf004d835058518a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171011 | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171012 | `0xce01f8eee7e479c928f8919abd53e553a36cef67` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
