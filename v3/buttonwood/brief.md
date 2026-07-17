# Agentic Audit Brief: Buttonwood

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Buttonwood (`buttonwood`)
- Website: [https://www.button.finance](https://www.button.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 43 unique implementations (71 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $300,030.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Buttonwood in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 43
- Raw deployments: 71
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnkrETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bea94c2651b1ccda2c15a12ca6e7e9e8512f9fc` | ⚠️ Unaudited |
| BondController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84d7a34f3efbe552b2855d158b10c3970b19cc04` | ⚠️ Unaudited |
| BondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x019fa32d71bb96922695c6cdea33774fdeb04ac0`; ethereum `0x17550f48c61915a67f216a083ced89e04d91fd54` | ⚠️ Unaudited |
| ButtonswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x75a92dfb38c3506dce3bbb5eb32a10852f9ba64a` | ⚠️ Unaudited |
| ButtonswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x5c2539bdb5487877876265cd3f31500e1afb1d6e`; ethereum `0x6cf6ac4712fe64cda8138009b042b36e80f072be`; base `0x4322f635ac515bb3b6eda73a33e3955443d710f1`; base `0x8648e218d128bf89d48b4d3b797990fc5f6529a5` | ⚠️ Unaudited |
| ButtonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x97040ab746803e7645779d2383da216e8ef4eac5`; ethereum `0x9af5c1fa62d0dedb7be3c68939a4b2d96d010fb3`; ethereum `0xab4691ad011adb810610e9610a74be77c553e9f9`; base `0x23aafbcd479d14ca802bd39d70a03c7384daca85`; base `0x5f9348a845f0fe74bcc343c2cde11b65f1ed4cc1` | ⚠️ Unaudited |
| ButtonTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x65bc95ac790f8afd47fc9b83640bf722a73bc021`; ethereum `0x84d0f1cd873122f2a87673e079ea69cd80b51960`; ethereum `0xfa5914837f3c225a9e6ae93f9e35d2d85f54adc5`; base `0x5f51466c781e74c53c043f441e700d3bb80373e1`; base `0x6a6bd97dbb3001dbc306cffefa8f1b900457144a` | ⚠️ Unaudited |
| ButtonTokenWethRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08c5e2e8e73d0fb9842171496b2da04e8e80a0d` | ⚠️ Unaudited |
| ETHxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x18f4f8d9aef590c8af2a70f46d46572f955b62cf`; ethereum `0x6e252827a23f5dd89185395d9aea19fe0c282f24` | ⚠️ Unaudited |
| GenericButtonswapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xf4a25f7d15fa822e060f64d0eb83bf7200657071`; base `0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f` | ⚠️ Unaudited |
| GeyserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c3fc934df9fdb469add40245622d51d96ea1c1` | ⚠️ Unaudited |
| GeyserViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe897769d639f68005e2bf56e8f7f11094ac2777f` | ⚠️ Unaudited |
| InceptionTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e7061f723ff38c501d6334b23337dad87187f4` | ⚠️ Unaudited |
| MarzMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ea1864ce8669036f0eb082e29fffad4adaefd64` | ⚠️ Unaudited |
| MarzResources | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a731c5a16fa8b4b085287e4b98e505990d24c2` | ⚠️ Unaudited |
| MarzResources | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7532e3e303e721b81f8a2492344e8b15f11be5cb`; ethereum `0xc4a0a55a949012b8b52611f4e78cd9e924ae4d45` | ⚠️ Unaudited |
| MarzResources | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75376c8b1afc6a6d7cd18617cf2ada431d50b3fa`; ethereum `0xf7764821280afc17e010a149346e1fbb7822fd30` | ⚠️ Unaudited |
| MevEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46f1a3889552c3e4bab3a4572ed3951ecc87663b` | ⚠️ Unaudited |
| MultiMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e938ce66af91b02ef7e1c753ef3efb692ef5006` | ⚠️ Unaudited |
| PairLauncher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0266513bb58095b161afe978f3f06bbd7659d314`; ethereum `0xb0c0a78d7b2191bbb2f534989d6415cd365476e3`; ethereum `0xcabb66c9d320e7b267076770c2855ccf881b9785`; ethereum `0xd1a59b7900633f7aa78feec1db2938afd5e7e0be`; ethereum `0xdced448603e3c1e0f2dfe136b2f9ba2f5779e869` | ⚠️ Unaudited |
| PartyVaultRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1889fe86ef694be1470e4a0ce5fd9f030cf2b0e` | ⚠️ Unaudited |
| Plot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de5a3735699e689d4e2f2c68204553776e2e493` | ⚠️ Unaudited |
| Plot | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6795eef1ac76ee5dbb1e9eb219e72171ad18519a`; ethereum `0xd0ba8b19b0f5e25c11ed233302e75794c9d3142b` | ⚠️ Unaudited |
| Points2Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x9dd61f638712adc3f7d92ceaa08253e2ef5fe14b`; base `0x47d44ec7b0608f9bc34235817f36ab0875136243`; base `0x814dbbf5ce11e5e171f5154be95e620a6fe596d0` | ⚠️ Unaudited |
| PointsVaultExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7c4ec89c64286976e471a9d672e7c4fdddda7f0c`; ethereum `0xaacc96f18aac0dd16a8c854e9a4f14b55a366145`; base `0xd16ec98b906a17fe7e1fccd0b53858da87e6caa2` | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812599fc02981a1c22c370119d5d3081e805a9e0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb422932496bc97aa626ae9f8efaf1344cd99652` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c0fe2f2f49e3c56879635dec82e5857ff89bea` | ⚠️ Unaudited |
| RouterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac89770f49700b38bb9174a8c6a951149e023ca9` | ⚠️ Unaudited |
| SDaiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb36ffea8bd59728970faab35ac9d29b90288a9f1` | ⚠️ Unaudited |
| SwETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e9a0f785b63dd721c28dfc0b338551af69da17` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36787412f5ddc051c95c313138b8ae4e396af137` | ⚠️ Unaudited |
| TrancheFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124e3ccc6e8fd6f949c9f1773e1c465b99067de9` | ⚠️ Unaudited |
| UnbuttonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a528b28062096d994a0569db6be5a0550165de` | ⚠️ Unaudited |
| UnbuttonTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ff649d6119fab43dea5e5e9e02586f27fc8b8f` | ⚠️ Unaudited |
| UniETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a6d958dd0aa07ddd4d2cf9c8a91b3fd3e542d6b` | ⚠️ Unaudited |
| UniV3LoanRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x154797797df7668855045d6737d38e80dd5f9468`; ethereum `0x26fa9931ac24b2abdc2e2de23ae722ede5915464`; ethereum `0x5bdd0812f0f6ce66024ddaa92650f838e94d253e`; ethereum `0xb482c27d2753a734196d330d07b6ffa8e9afc73d` | ⚠️ Unaudited |
| UniversalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1ec9d57f5295a82e8bd24e045db83100d09f053` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc905e46a1207dc4a4a19538f21fc7d0c890ad2c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626e7dfaa0b8cd68c4f6831d7f27601a6f6d5cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f6392aab030043420d184a025e0cd63f508798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94fd1efdecaac484601a4537efbdb016a571a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8a48c1a4f0584c4d3013c2707e0f3b61e771cd4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Certik-2021-07-30.pdf](https://github.com/buttonwood-protocol/tranche/blob/main/audits/Certik-2021-07-30.pdf) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12877] Certik-2021-07-30.pdf — no match: Extracted from audit report header and findings sections. Audit scope table was not fully populated but file paths were inferred from findings locations.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Certik-2021-07-30.pdf | BondController | unmatched — not counted | — | listed in scope and findings | no |
| Certik-2021-07-30.pdf | BondFactory | unmatched — not counted | — | listed in findings | no |
| Certik-2021-07-30.pdf | ButtonToken | unmatched — not counted | — | listed in findings | no |
| Certik-2021-07-30.pdf | ChainlinkOracle | unmatched — not counted | — | listed in findings | no |
| Certik-2021-07-30.pdf | Tranche | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [12877] Certik-2021-07-30.pdf

Fork inheritance lineage and inherited audits are included when available.
