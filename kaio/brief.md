# Agentic Audit Brief: KAIO

⚠️ Lifecycle status: DECLINING - TVL dropped 32.0% over 90 days

## Project Overview

- Project: KAIO (`kaio`)
- Website: [https://www.kaio.xyz/](https://www.kaio.xyz/)
- Lifecycle: declining (Tier 0, 49.4% below peak)
- Generated: 2026-06-12T07:17:14.886Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-d6af
- Chains: avalanche, ethereum, polygon, sei
- Contract surface: 35 unique implementations (206 raw deployments)
- DeFi Llama TVL: $60,807,206.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

KAIO, previously Libre Capital, is an institutional fund and real-world asset (RWA) platform focused on bringing regulated funds onchain. The project provides compliant fund tokenization and access infrastructure, interoperability across supported chains, liquidity access, mirrored/receipt token components, and a sovereign AppChain for regulated onchain fund distribution and management.

### Architecture

All contracts belong to a single product family, KAIO, which uses ERC1967Proxy for upgradeability across its core token contracts. SecurityTokenMirror and LibreReceiptToken instances are deployed via proxies and share supporting infrastructure like InvestorRegistryMirror for compliance and LibreEdgeGateway for cross-chain interactions.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 1
- Unverified implementations: 30
- Unique implementations: 35
- Raw deployments: 206
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC1967Proxy | proxy | sei | 36 deployments: sei [`0x000a71...c65839`](./contracts/sei-1329/0x000a71e5a0014dff449fcd3146af4f2e26c65839/); sei `0x03c660...d125d3`; sei `0x07e19c...3d7c3f`; sei `0x2002fa...4f95d2`; sei `0x3246d4...fe0443`; sei `0x3f606a...8fd181`; sei `0x42ef20...7323de`; sei `0x45da24...5530ae`; sei `0x48b822...657331`; sei `0x4e0d47...a608dc`; sei `0x56e95a...6e2212`; sei `0x570cb1...1de6ca`; sei `0x5bd540...addcc4`; sei `0x5e581d...8aeb37`; sei `0x757625...d3bf20`; sei `0x867625...554d3e`; sei `0x88227d...a60af3`; sei `0x8aabbb...452bd4`; sei `0x91f723...ec0f9d`; sei `0x93afe5...b34139`; sei `0x940d97...e73aff`; sei `0x9e453e...990cbe`; sei `0xa99e64...d33623`; sei `0xc30a79...b7fc6a`; sei `0xd7c70a...efceee`; sei `0xeb2fac...ebd19e`; sei `0xeecf64...781852`; sei `0xf36bd0...32b0da`; sei `0xf85432...9dddc7`; sei `0xfdedd7...e9294c`; avalanche `0x1b62f1...c74d5d`; avalanche `0xbee427...bf6f7b`; avalanche `0xc1cd4c...d57af3`; avalanche `0xcc777c...34fb3b`; avalanche `0xcf2ca1...791c79`; avalanche `0xe5631c...b47a9f` | ⚠️ Unaudited |
| InvestorRegistryMirror | operational_periphery | sei | 18 deployments: sei [`0x1f981b...0d825c`](./contracts/sei-1329/0x1f981b595adb59be43cf346d5583c228f30d825c/); sei `0x3a884d...8258e3`; sei `0x42fb39...ec86cb`; sei `0x64dace...c2c132`; sei `0x70fc32...e9b5b3`; sei `0x78ec2e...e70ee5`; sei `0x790273...d75450`; sei `0x7e35ce...9855a5`; sei `0x8342f8...d074db`; sei `0x85353e...086a31`; sei `0xa90074...308132`; sei `0xa92a25...b86b45`; sei `0xdb06aa...f25ef9`; sei `0xe06b30...a6efc6`; sei `0xe9eb36...4fdea5`; sei `0xf1cc67...df9f1a`; sei `0xf938e3...ff03ca`; sei `0xfe3fb1...880bc8` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | sei | 18 deployments: sei [`0x0029c9...1177c4`](./contracts/sei-1329/0x0029c9d040a51985c07b1e7d1eaa343e8c1177c4/); sei `0x22d0bc...7886f7`; sei `0x295aa4...8353f2`; sei `0x358524...d850ff`; sei `0x36a2e6...632401`; sei `0x3a1b86...e9ea18`; sei `0x3bb645...78f994`; sei `0x5e7cda...469d1a`; sei `0x6ad798...b25f79`; sei `0x6af926...25ace3`; sei `0x7ea856...bee71d`; sei `0x97e95a...d77e3f`; sei `0xb315f9...79f440`; sei `0xb5d1aa...ad6255`; sei `0xc95004...abb096`; sei `0xe57510...b5e495`; sei `0xedbb62...c730dc`; sei `0xfebdab...2f0231` | ⚠️ Unaudited |
| SecurityTokenMirror | token | sei | 91 deployments: sei [`0x00b6e8...392568`](./contracts/sei-1329/0x00b6e8cecf14e808cb6244d8222031069c392568/); sei `0x0a887b...d5abdf`; sei `0x0e7dce...b8bade`; sei `0x0f7614...c3d2d9`; sei `0x0f9317...ea7912`; sei `0x102bb2...df1d8c`; sei `0x14fcd2...3e21c3`; sei `0x1778c5...7776d4`; sei `0x19411c...e8a204`; sei `0x1a304f...66e601`; sei `0x1f4c7a...d8259e`; sei `0x24c33b...db187d`; sei `0x252241...88b824`; sei `0x254988...162be5`; sei `0x279998...880ebd`; sei `0x2915e6...05010b`; sei `0x2dc00d...942956`; sei `0x2de3f4...14938b`; sei `0x304bbf...5b35cf`; sei `0x32796c...6998a4`; sei `0x36961a...88b60c`; sei `0x37d5df...71fa6c`; sei `0x39c1f9...8a32cb`; sei `0x3aad97...b3f534`; sei `0x3ae9b0...70e67a`; sei `0x40eb49...e544f1`; sei `0x4264c5...10f495`; sei `0x42f9ce...c17a2f`; sei `0x436ad7...235a3e`; sei `0x442086...025a1f`; sei `0x4b87a0...499f45`; sei `0x4f416e...28f9e0`; sei `0x544419...0f0252`; sei `0x59f0d5...d0d1db`; sei `0x5fc70f...cd6cf0`; sei `0x6df85a...15a757`; sei `0x6f0519...1f6f19`; sei `0x706a93...43107a`; sei `0x71a03c...495e31`; sei `0x7243fc...acbd86`; sei `0x74d718...71a621`; sei `0x75732d...250a92`; sei `0x7c016c...6926aa`; sei `0x7fb059...057924`; sei `0x8186d9...36959e`; sei `0x842e66...726548`; sei `0x88645c...6d7162`; sei `0x894564...7cb8f9`; sei `0x8d31da...20a49f`; sei `0x8d969e...e5a1eb`; sei `0x8dc8f1...c8e031`; sei `0x938d6e...012e2f`; sei `0x97c254...860bb4`; sei `0x9c78be...80fdaf`; sei `0x9cb118...de52a8`; sei `0x9e0597...3bdb51`; sei `0x9e19d8...a72e25`; sei `0xa41647...61b84a`; sei `0xa82bf6...7d513b`; sei `0xaa9da5...b92320`; sei `0xaaf737...8d78ee`; sei `0xacac3b...5edb3b`; sei `0xaebbcb...9e720d`; sei `0xb36e94...48a7b8`; sei `0xb4c637...324997`; sei `0xb5c2dd...6a62f2`; sei `0xb77690...c99e54`; sei `0xb80f48...462a1d`; sei `0xbda516...93e85b`; sei `0xc2713e...6b3bd7`; sei `0xc47013...017a66`; sei `0xc7e355...187e2e`; sei `0xc8b90e...e92bd3`; sei `0xca4721...15fc83`; sei `0xcbf5bc...7d1045`; sei `0xd12ac3...432408`; sei `0xd213f4...0072cd`; sei `0xd440c3...3f3f7d`; sei `0xdb0ca7...3579af`; sei `0xdd3845...7634b1`; sei `0xe28272...697b74`; sei `0xe2e544...b78c2f`; sei `0xe5cebf...3f98c2`; sei `0xe5e6c6...efa700`; sei `0xe9c752...2860eb`; sei `0xedf5e9...a4789a`; sei `0xf46094...042df5`; sei `0xfa71cf...d21f25`; sei `0xfb41de...55b5cc`; sei `0xfd343f...796b43`; sei `0xffd20d...e6cb3b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LibreReceiptToken | token | ethereum | 13 deployments: ethereum [`0x1b62f1...c74d5d`](./contracts/ethereum-1/0x1b62f1b8b04736e8f9ecc8eeae8b7d5957c74d5d/); ethereum `0x8b37f3...ddf64b`; ethereum `0xc1cd4c...d57af3`; ethereum `0xcc777c...34fb3b`; ethereum `0xcf2ca1...791c79`; ethereum `0xe5631c...b47a9f`; polygon [`0x1b62f1...c74d5d`](./contracts/polygon-137/0x1b62f1b8b04736e8f9ecc8eeae8b7d5957c74d5d/); polygon `0x8b37f3...ddf64b`; polygon `0xc1cd4c...d57af3`; polygon `0xcc777c...34fb3b`; polygon `0xcf2ca1...791c79`; polygon `0xe5631c...b47a9f`; avalanche `0x8b37f3...ddf64b` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sei | `0x07c923...4daa3c` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x1bf0b6...bb10cc` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x2018a6...804e20` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x2ec750...30aba0` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x34c424...77d4e7` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x39cc01...6b26e7` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x3b42bb...378cba` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x4d1b4e...3f4711` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x65f4fc...373f74` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x6b8d62...29bdd4` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x7a35f5...662c1c` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x7b6b75...4ae74d` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x7bb2a7...04f714` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x8184f5...ba9b47` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x87f014...4ca5db` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x8fb15f...75c5de` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x8fe9d1...ff748a` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x9752aa...efe898` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x9998ee...0b078a` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x9a6f09...b0b329` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xa1f019...6f9882` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xa2029a...da0715` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xb3e349...254485` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xc5306f...f58200` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xcccb6a...46ca7a` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xd0d235...3438f7` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xd2029c...23c3de` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xd2bc19...e75913` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xde9ad8...3c2446` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xe328f7...2f323d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
