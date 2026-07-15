# Agentic Audit Brief: KAIO

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

- Project: KAIO (`kaio`)
- Website: [https://www.kaio.xyz/](https://www.kaio.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum, polygon, sei
- Contract surface: 57 unique implementations (187 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $60,798,378.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for KAIO in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 57 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 130
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 57
- Raw deployments: 187
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

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x000a71...c65839`; sei `0x56e95a...6e2212`; sei `0xd2bc19...e75913` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x03c660...d125d3`; sei `0x867625...554d3e`; sei `0xcccb6a...46ca7a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x07c923...4daa3c`; sei `0x757625...d3bf20` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x07e19c...3d7c3f`; sei `0xd0d235...3438f7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x1bf0b6...bb10cc`; sei `0x93afe5...b34139` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x2ec750...30aba0`; sei `0x45da24...5530ae` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3246d4...fe0443`; sei `0x7a35f5...662c1c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3b42bb...378cba`; sei `0x4e0d47...a608dc` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3f606a...8fd181`; sei `0x8184f5...ba9b47` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x42ef20...7323de`; sei `0xa1f019...6f9882` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x48b822...657331`; sei `0x65f4fc...373f74` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x4d1b4e...3f4711`; sei `0xf36bd0...32b0da` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x570cb1...1de6ca`; sei `0x6b8d62...29bdd4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x5bd540...addcc4`; sei `0x88227d...a60af3`; sei `0x9a6f09...b0b329` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x5e581d...8aeb37`; sei `0xa2029a...da0715` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x7b6b75...4ae74d`; sei `0xeb2fac...ebd19e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x7bb2a7...04f714`; sei `0xa99e64...d33623` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x87f014...4ca5db`; sei `0xfdedd7...e9294c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x8aabbb...452bd4`; sei `0x8fb15f...75c5de` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x91f723...ec0f9d`; sei `0xe328f7...2f323d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x940d97...e73aff`; sei `0xd2029c...23c3de`; sei `0xd7c70a...efceee` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x9752aa...efe898`; sei `0xc30a79...b7fc6a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x9e453e...990cbe`; sei `0xb3e349...254485` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xc5306f...f58200`; sei `0xf85432...9dddc7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xde9ad8...3c2446`; sei `0xeecf64...781852` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x1f981b...0d825c`; sei `0xa90074...308132` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3a884d...8258e3`; sei `0xfe3fb1...880bc8` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x42fb39...ec86cb`; sei `0x70fc32...e9b5b3` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x64dace...c2c132`; sei `0xe9eb36...4fdea5` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x78ec2e...e70ee5`; sei `0xdb06aa...f25ef9` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x790273...d75450`; sei `0x8342f8...d074db` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x7e35ce...9855a5`; sei `0xa92a25...b86b45` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x85353e...086a31`; sei `0xf1cc67...df9f1a` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xe06b30...a6efc6`; sei `0xf938e3...ff03ca` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x0029c9...1177c4`; sei `0xedbb62...c730dc` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x22d0bc...7886f7`; sei `0x358524...d850ff` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x295aa4...8353f2`; sei `0xb315f9...79f440` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x36a2e6...632401`; sei `0xb5d1aa...ad6255` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3a1b86...e9ea18`; sei `0x5e7cda...469d1a` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3bb645...78f994`; sei `0x7ea856...bee71d` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x6ad798...b25f79`; sei `0x6af926...25ace3` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x97e95a...d77e3f`; sei `0xc95004...abb096` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xe57510...b5e495`; sei `0xfebdab...2f0231` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 10 | sei | n/a | 11 deployments: sei `0x00b6e8...392568`; sei `0x0e7dce...b8bade`; sei `0x0f7614...c3d2d9`; sei `0x14fcd2...3e21c3`; sei `0x59f0d5...d0d1db`; sei `0x5fc70f...cd6cf0`; sei `0x8d31da...20a49f`; sei `0xa41647...61b84a`; sei `0xd213f4...0072cd`; sei `0xe28272...697b74`; sei `0xe9c752...2860eb` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x0a887b...d5abdf`; sei `0x24c33b...db187d`; sei `0x304bbf...5b35cf`; sei `0x37d5df...71fa6c`; sei `0x6df85a...15a757`; sei `0x706a93...43107a`; sei `0x8d969e...e5a1eb`; sei `0xb4c637...324997`; sei `0xcbf5bc...7d1045`; sei `0xf46094...042df5` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x0f9317...ea7912`; sei `0x19411c...e8a204`; sei `0x279998...880ebd`; sei `0x2915e6...05010b`; sei `0x32796c...6998a4`; sei `0x71a03c...495e31`; sei `0x9e0597...3bdb51`; sei `0xa82bf6...7d513b`; sei `0xaaf737...8d78ee`; sei `0xffd20d...e6cb3b` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 10 | sei | n/a | 11 deployments: sei `0x102bb2...df1d8c`; sei `0x4264c5...10f495`; sei `0x7fb059...057924`; sei `0x9cb118...de52a8`; sei `0xb36e94...48a7b8`; sei `0xb77690...c99e54`; sei `0xbda516...93e85b`; sei `0xc47013...017a66`; sei `0xc7e355...187e2e`; sei `0xca4721...15fc83`; sei `0xe5e6c6...efa700` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x1778c5...7776d4`; sei `0x1a304f...66e601`; sei `0x254988...162be5`; sei `0x436ad7...235a3e`; sei `0x8186d9...36959e`; sei `0x88645c...6d7162`; sei `0xacac3b...5edb3b`; sei `0xe5cebf...3f98c2`; sei `0xedf5e9...a4789a`; sei `0xfb41de...55b5cc` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x1f4c7a...d8259e`; sei `0x39c1f9...8a32cb`; sei `0x3ae9b0...70e67a`; sei `0x40eb49...e544f1`; sei `0x4f416e...28f9e0`; sei `0xaebbcb...9e720d`; sei `0xb80f48...462a1d`; sei `0xc2713e...6b3bd7`; sei `0xc8b90e...e92bd3`; sei `0xd440c3...3f3f7d` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x2002fa...4f95d2`; sei `0x42f9ce...c17a2f`; sei `0x442086...025a1f`; sei `0x544419...0f0252`; sei `0x6f0519...1f6f19`; sei `0x74d718...71a621`; sei `0x75732d...250a92`; sei `0x894564...7cb8f9`; sei `0xdb0ca7...3579af`; sei `0xfa71cf...d21f25` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x252241...88b824`; sei `0x2de3f4...14938b`; sei `0x36961a...88b60c`; sei `0x3aad97...b3f534`; sei `0x7243fc...acbd86`; sei `0x9c78be...80fdaf`; sei `0x9e19d8...a72e25`; sei `0xaa9da5...b92320`; sei `0xd12ac3...432408`; sei `0xfd343f...796b43` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x2dc00d...942956`; sei `0x4b87a0...499f45`; sei `0x7c016c...6926aa`; sei `0x842e66...726548`; sei `0x8dc8f1...c8e031`; sei `0x938d6e...012e2f`; sei `0x97c254...860bb4`; sei `0xb5c2dd...6a62f2`; sei `0xdd3845...7634b1`; sei `0xe2e544...b78c2f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x2018a6...804e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x34c424...77d4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x39cc01...6b26e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x8fe9d1...ff748a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9998ee...0b078a` | ❓ Unverified |

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
| native | 27 |
| upstream | 0 |
| standard_library | 14 |
| needs_review | 16 |

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
