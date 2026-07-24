# Agentic Audit Brief: Aktionariat

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Aktionariat (`aktionariat`)
- Website: [https://www.aktionariat.com/](https://www.aktionariat.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, optimism, polygon
- Contract surface: 346 unique implementations (346 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $377,509.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Aktionariat. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum, optimism. Structural roles: 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Brokerbot Registry (`0xcb3e482df38d62e73a7ae0e15a2605cadcc5ae98`, chain 1)
- Brokerbot Registry (`0x2c9b9b9143a9ef5051a299ef3cc8039b06927093`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 344 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 346 unique; 344 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 344
- Unique implementations: 346
- Raw deployments: 346
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Brokerbot Registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378652 | `0xcb3e482df38d62e73a7ae0e15a2605cadcc5ae98` | ⚠️ Unaudited |
| Brokerbot Registry | unknown | project_anchor | own_supporting | 0 | optimism | unit-378653 | `0x2c9b9b9143a9ef5051a299ef3cc8039b06927093` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (344)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b4ef40aa886c92126995b82617cb7d9f92a2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00d60eaee7ae47bc90c79083829aa36d678c214b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0195b0856c212759bf51e74679227539004601d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f15a8933f4d93635fe69aa65b44a9601f8687d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0273308ef6bf133756fd57e2252ca526bd43b234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03bb3011c4daa20c466a0a3c17aa5c7ca2e339b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f0d7fde338ff228f2ac038acda35a0b3bca8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045645687fd1327314d71e449d7ae39e86ac0364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0618d80830f4adb887032d23eafd5b99eb276771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0791bc1d8251c7c220bf61c2bdf953d7fb21afea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08eb636bfc6d88d67320325ac8714f1426d2093d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09445a10ff503fb696d0f81723c71966fa3348c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a56c3d6368c075e62415bf6170d741d1d65ae61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac4799afc3587a6bb17c443c4299f4ee719db8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b3ac3ab056dcc9baee89a821cbbf87dce2b34b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b7955e8611a2b3fb2d39d1bca55f0e86c6e1d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4dc5ada841cf5a7652e52d04ae786070cc9472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12d57174b35d64fc2798e7aa62f8379bb49c2250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13dde2675449d949affbecede379beddc83d1834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f7fea5f87d0f289d9827be78fc96027f8ed724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1abd8b5194d733691d64c3f898300f88ba0035d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8bf880e17fe5d8b2432a102346424b3237b2a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3a2497d18bbe913798ce3f951fc5a5ec805dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f6db77bf48cb29f30b84ea2ae9ffd4b07c4571e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f89d09e1d799350f69803c6b11b567dd40871e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f8a5aa7236375ab68deb934293415ea25ad0a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250a54eb1f6871dbd98222b7f23ea8b6d5241a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25abf1fec6a89796e61107917b5c235557657ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25f5119d4c9b599dbfc16e4445e16ad3f1fddf31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a02627f4d683594984984f0fd2de9aa3c8b2f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28cbf0350fcd845cca8eab9bb5b1fa357e7c882f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b2b237d8f9a42706bdcd4083c20a2b799c8b45c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc8102bc1eab3689f0dadb53071ab5965ceefd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ca626a7e6d056e1cc963795cb873e651045032c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f2c3cf0b2d6f4f6cd5f57665ae629eee813350b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f4722f3b37a17e23a6e3ab90ab6ff4aaefe99d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f7ba68774060cce1d0b1fc0d20f712f311b49c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffa1c52d0943a01d6f0a440bd77d26d44ad0e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32180f8c9af1b164d6945dd0f14b9af635270ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32405a44e7dbebd29afa68956d3d53112fe1ad75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x330a9d736fff0bc339ed928a65fbcaab6096a81a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33afd73185b7426b7bf50486910f495a344cf047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343324f53cbeee3ee6d171f2a20f005964c98047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34b4f3a225057361bfe663de0aae77c5f6acf2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x366012e00ffcfd782be19a9ea5b47ad640998895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2148cea2a8a4dae51487fa28451038c24d2576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de64c8c6cfbd03cfcbb45a05381c5aed8c48ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3decd449f7cadf59c43160998ee3434b91576afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e73d3fc22a8637b2c16790aa2c0e2d552d44e69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x402964551e1564aec462ec08b26e788327f5f399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42d7de6c51324bedba55b4733637786630377e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ffaa65fe273d2ef9edd78418091d41b1aa40e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x453e384862245faf4e021894d78ba8f6e51b8c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ce1476b47bb4e2946839ee624deecc7dfef16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9cc826e704dfa3e2966347bf070097cb4efda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8de529fe22dee9266b029cdfc52142b82e0e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fa0c488f321a1d089f7e5f951fe8c43f2064709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4faebfa3bd4dc6e15688720517fd56bfa2ec55cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x522803c9e899e710f07f4f3561f4f7b2c2d1b18a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54abeb9fdfb68c52bf06d7b0059207ad16f41437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54aff8d1b5825942ba86cd1868b0a92b252892c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x553c7f9c780316fc1d34b8e14ac2465ab22a090b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x554ade8b02facc4304b80ab439092b5396786d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56217a14a65bcc6a3b5e547cf7e9301c8d602787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56528c1df17fd5451451eb6efde297758bc8f9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56fca58a92930729309ed4cad09899190209220c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a90e48b81edf50813192e5f5da0ed934bf94c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e200b3c6e9ce8280dbb14a0e5486895456136ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f4b3c5535252ec49932b36741d04f33696209e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b04b30e8e6e0121d121077124876b5559d9e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b7ec64292b9fc98230dfbd0180f0e864e45c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x620bf52fa5e97fbfb3992cab478e3272285adfd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d1c2e9a5a08120e063c3e4cf9b8e8f2ea0c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6548fad069f2eda512a658c17606eed81095c93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656d8b98deae704ac6d22c2c7edf967630d3a2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fcd8629b691fa5108168535c332068f5089ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a338f800eaf717550450f003a372820925d295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6884ade31ac154dc52395f9db819a03c667063a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x690d26caeb5c878182af126cf4e6d8c0de82a62a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699b77b40bef9eba25c39b480c20c38cf7abad81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c9653ec2c6a69dcee9fc3005fef02d2d5cf1ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6b7d1db521df9a1763b2516eb8b04560dee073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x726359d8560acd175c71a33edd502b0724a52d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x765147bd2b25f6bb1e2bdcc1c06dd10ce7f3be4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79b4e1fad5651a8684644a5339a523227accb218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b37fa96e950083d955deda7cbc0eab1b489943b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4f2e6292d1a22b61525a003ebf3bbd85536c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f34b9d2c3682b70ff6e8bc8fa2ed69def2f81cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x801bb49efadf9b8a9ad7dc0b8275ec94b92d2497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b26de8227e23014c6f29f7fbbc20ee8be794a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84098db9c012adcf8a8bd2fa1b7227f3a0b83f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8485f9a2d7207ca9d45c6c4dbd7661e7e76586dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x855ff073f647f8ff479839bc3e912509233370ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a4821068334c3b219aef4cd6461061efd0be9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85c0c08ec417d5f8476934eec7934a9f374da3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d90319fe817fe9e23973fcab9f1ff0f1e0d9b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x919cbb80c920d2d60fa0709bca327d3726474a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9307359753f1ef5bad4c8503e52e19f369f54fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931dd6e2b3a1893645d920c2b5a6e837a9b7879e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9566083cfce8615c4861bc36ccba98b172031277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96772b1006e35694fa0c2c9df5e446118f2ee437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972bff8e5f0f97c880ccb92616c07dc78d4d89f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d77d8fd7e78c3d4fcc85dcca494b71ac42845e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a9626c66ded40e761a65de768df1228baacd8d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b886c04ce3cfb74e644de92d65cfb873636e1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ba7b25e2d2c2be54a3f0ced1f3288b5b7724667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c5796d752d333ddb9787012a817c6d46f43b668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6471dc5b5bc216a74fc37056042256fd5e95b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea6427f76b27f939942941ffba43667f4e2a45c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f524c14005881c90f5e044dd83a0fa9405bcb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12706714bb95b3869f2beb72b5d1d304bfe153f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d6b59758d307df27d5809426252d91a060cb24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5cce1fbb1a26eba3ed9d7a56d803bc202ba709a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa68bf91161bb2d8be367350b8f7c48ef41b02813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e05ceb38e75b4a46803d716c04a4a0d3ae70ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa891de65bdd776168ad155943b6d731bdaacb901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa995d67fd0187b4b8fea3a60e11f31a08e4ac40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0cb4ca7af641c7d046604bb6adff0805f1dfbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae9df72be0680531fbae60c0f52a81395e988364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf1a5a633a31f8659f06e32da7b41e207adad43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf21e166adc362465a27aedc15315dcfc0c51624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22423a02233c32302e26ead3e419aabfd44270f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2332c7af3a433aa284c9af103c8dc4548632698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb34e47da0a612ffc5325790dd8e219d870f84898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b2e638bd63d077710daa16f35772ca4141e7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb40d40d1a8c8d29980cbd6aefee30d1495b79c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb985e3e24e783ff5a959025d91f280860285e404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba013ba113cca605d85863e89384ddec0658df0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb55b164b641cd0ec89e901884d79f920f310605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0641da96bd9c8276680b5a57f292666c05b4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcb3dfa08d24f38d2cee3b618a1f02e6e85496e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd940c7cb2cfce7a9895c5f4901be79bc4f057fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe2057bac4157bba00759f61dacb08a64f703c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0da2786176dac9eda661c566828950ca571348c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d938911ef8d7740aa052ea0773c58eede4891f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40ada4340767e5a08138f0095f18a1c4e805a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41575d0cf4a630b7992c675d760939e1402151c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b87e71e47f77ff27bfc91b25f321420d388ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc69f6321a4b78a9e8a59149e0dc48ded4b9e567b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6afd3b605957b9ba94143f59d451c657f507516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc73b5e812fd9dc5190db8bbd0182646290bfd5e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77277c27c5370d405f43b46ee92a55cc4fa25da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc894ef112cc26741397053248f9f677398eb56e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b562d4d53ef13617b98ced8896110ad5136d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95506540268b0447663efbfffd71b51fe92ea7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1d5644297502812f9545e5c6d6c6479d0d1666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc3193e98dbff48ae5d460052dfbf3355afec432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcff32c60b87296b8c0c12980de685bed6cb9dd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd029a8cd27eb4432f23abe712fd650ffdad2c565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd151546e3315bd3594f4c47dff81e57aa9945ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1635be2eaa34a5ee588113fe1ea5d7a20d40d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd17201d7c2a25e2c5622f9c240a7bb56767be29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3de54d9e424bf27b8259e69b205127722c771cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3f53dda37e606a78bc1b45f27b3d3a05a1fa07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7ea9570a633a5f243c92b3017a9bba2a871b219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd83e8ce48cc68bf6337aa5709f8addc282db21bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd858df7060e178616da5b4168b351c13a9e14fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc04c96b0eff781b8de575b2ac5ccace925f7835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc6715b0d5ad3add9e9bd4b2c49df2bb220ad44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe08008b32b85f272e9bb48336c9e3a019063c964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1d8593882fa4700efdf446b9e4855d5ccccde8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe221db71c5c527149bdf56c4d13a54cf55e543c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe284d8b9ace134c541a39cc6a8292aca4c342896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaee772489648614316ab1323ee8db20890d9bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb14c5ed2036609a24dfb46f58908061c9b839b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb3a8874eee15a55cb0380540a93dbeeac1b13b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6e3f40503c693b8353a483b221713be1083c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf561c6e3e31e98eba8a110c243d70119b43a394f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf60d5179f1276606a78e4b69b840705b64314b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb05a48a36bb36ef52d4467cba4f1460d2231535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb330379134ea1efce9cf6f28e2ccb917899e007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcbe8cd587551046f052c6aa7fc9ec962e2caf5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd04e85ebba564af3052743a88374405d1e8a8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe9098d62af73ef8a24bf48a1d0dad19d7d592e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffed1d4e809523cc47164dd07973bd77b1b07577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0018453ca52d1d71458ad1ad48a5560a51a94601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x032a7c1364cd65f9f96f45a99fe9152e0bd9932b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03998093d22db7b5729047af62bfbe96212683d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06512e6bab2712fca9f4d123c80fce34de2bc2d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x065399a1e5522af1c9044c18ce60ec70d64d74a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x071682832d213638f8eda67a873262e581a4006d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09f1c103e18066e8522f6798d996e848dd41e091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0bba384812a64164fed62c6c40d399c0ac5d99bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c8daa2760153128d1ac69f6193da05cdb508810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d82b5d3a8420c285c6d353a6bdc30d164bb50f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x10b3667304130ecc9c972008459249e8141ced97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1279bd692851c32797ab527ea54e376d1f8fb99c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15818632e7bacc2b32248d470f08bb5ffe3a187b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16679cd8965c248e02a3459b9d12eda160d4c340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x19e60461b1f16947c68bc4180e56273535772ac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a0561289120f816580b514d8cbd48c28e2270e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b99e363b1f7c752cc293fdfd1b648d956f76031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1db33fc67874bb7b2e3794879f6c8e33681c0a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e82e445f4069fc03ba4cb6de1490b29ac119772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20d1c515e38ae9c345836853e2af98455f919637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2399ebac94686377132dbd05fbddae9b22b2a9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x241f38316199b4332a295b58295deeec60c23677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x293c62b0640bfbc06b2e72e3ef5916a6fa284e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ccf0eaf8496bd1169ae4ce5a98e9a3979b4fdbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f968a73425583b9b6618345d2be9c789d01c8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x306451e6605e73d04b8c73a459039dba73fc29f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x324cd5bd64c78f71559d2d53e5878e03b31a4283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b926901b8fcbdea795448bd6eb33c594ab4e1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x412ea8e33e6ebe26e4433e18a7dfd5f70bb3ec42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x415bd762a88a5857b4d4552f2bcef9e7ebdd05c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x418d766706f660e11ed6f5033554f81084193127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4282f89e15245a7f9dc97318ff5b57ce53fcd3fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x42dcf1f5878fb06a9096521b3139fde1fab0cb9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x43569d483deed4287b462747992440df5b999c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4448856ea601d405d6b0433e13562a6072a02f9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x44a876b8ff6390c06e9961a3dd4ddcf9761996d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47983df7ba4be0a06353c02bf42d23c857d2eccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47b606cdedfdcb5192be3c47ed8767b61966b0bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x490b8c0bf568df81435d766b559f939fe4ff0228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4ac11c1c2fee4dbcd0816dfc763d133d014515f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4bad7c3b78a6d3af0d906435379409660e759f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4c7f9327419452252e2c02f9587f70a8a2efbc69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4da38dc84285badb0d032d9dc443f571e1aefc10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4f8a84c442f9675610c680990eddb2ccddb8ab6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x501ccd17ce7c33072a32ed2e0e39e86e7fcf9de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x504e0a50b69fefb62ae20a07d218bb4a49c03e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x50cf95e0de70c5437d1ef0aa626274350a5a2f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x51693339eb4ff71dd56c903c452719b01da51470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x51f8b486662ea4c4051eba3bc207c20be96377e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x528c988a9790cd4ebd8a3e64fc96686a6e81a099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5395b2825081377f7e3e5b4473fdf3119e70b1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x54bf17891f32003fbb1daf0a744c091d06ebddcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x554f306bd9cd835edb1d6a512c00d7412f8bab3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x56549444166f61a404e8963778e7b3a81dc0fca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58b48d958d324d3e8922e5bff989533cf0c01a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5984c1417a6ecec89ceebc561b7fdf8af61baa73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5aa68f7c198938e94fdd3d307c665a292a0ca344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ad323d764301e057614edb0449f470d68ea9485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5cf353788d671bbd81daf8727146c654a4ef3f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e231c20e914b55631b3c6dd88e739296ef83269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6058b0b21b5b4edd3e1a6bfbc3584d91a15771bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x606795077cef55d61bcfff343ff0919d1dc497a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60790fa3256c6e50d4a94741aeb2f8d55ddaa506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x607f4abb6c4c1c62e9378b071b175ef37251c5d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60a11ce20b636d840db1f71f4da4f37f997a747a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6709e9ca7fd540005e80ed487958f34f1587a650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6832e3351a9e7ac30d114e23f3420ca43d556e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x683a4a2609b582da6b30624b23edbba438916f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x69ced99b806bb61c20bf87af774e57e3dc6a5ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c1b174848570efa6bb190343ef624402289df27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c4028d7fd82f29cd97a47e7342f02ca529c5531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6ca3741ddeb8f971465a34bd3e887324ba921c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x71bb2879ac6b9fd2a262c0d9b0e152804b4b2036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x722393dddefaebb1e98bbd2fef7a2e5dafe18a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x724a27146a6139ff59b5c4b3283fa14e33bbe442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x746b118e089f19d56f5b06ef8e202b5389bbe802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x758fafc6957f01ba9e22a7d471ca81ce32b5aa1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7af6a6844bce0f1d6df5df5111d02324d3f61694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b0260a113b8094bbb8ec5ab4a714c273cd1c119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ba2ee0bfb72e768e5e3bb620f2fd2e87b8f343a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7e08078adccbfda94daf16184fbfa50acbdeb848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f78f48065957d4627a675d1346b65442e783e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x811c20069b5c53a5b4110b7c98834ca7ebf2579d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81de38fbc65b07ad02517daa6281550d3661148f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81fa06b52803788685508d2997b472045d4f2504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x82484aa356fffc824b52df9b61d1fb485b027d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x82cea1306907a8e07e20e82b70d76802c3f90f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x83d288427e55511846877326f38c9773c19f678c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x847a3c48d0884fb15e590aa28f073a392de6190f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x86316811e2968d2cd30fe849e7b0bf094e2603ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x89888fed5309180606137d6e17236331a3f9d3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8c2651bcacc632d865b30b19bf4d5c8387f93df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8c7c45f87bb9e17260eb91b2460eb27f5054bef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8dce6aa3215d0f5b0960dfbe2e4b84e6d502f46a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e5bceb487ded5544aa0dbd1be7572c47ad0a9cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8fa9ecd14bbcb24ced18e16692e49b388f07257e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8fb94e08bc984497aaaf1a545ed455be89f8c675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90b54b1d3218a01c6a56eaedb246add57c97753c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93411accab148f8633ed7d7adc6b046d7e5a8638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9369bf63c1fe2fa5e5a1fcd9cdb46a4f3d4c55a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93e43115bc2e054b23ae5188b342adfc8a0d2970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x957635b87d99b3cb56003c7c5048e980afa720d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x964119f698e60ccb64796bf844fcc8512d81cc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x97260d63705d96373612db4c78fea32bd940dfeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x97d6e13c50855d956b4550a5ed27cd2d368341f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98634dce22240fc8a758032df7e9a8f892e943e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9eb2d36c6049ad31351cca8d516dc89bf3e7e0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ee41cbdfaf9521c66bdd44453c8f056962ecc97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0a7b727a01f50836c80ceef58b9866e84dbf141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0e93e191bf33b0b2607390d846689c671929301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa105c597ff23555e212b3694da0d40e5cd4ded05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa26072540af0c5d6cc7ea0867d3d6b8ebbae1358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4fb4335d8a3a2cc74877ecb2e52eb45e8425779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa61a5b4f77d5a1c59df6e036ae8dec6893bf1ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa72f7df6c1454096387dbb74f70b3dac4f0a61f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa7f71c9c99063ee255786a04134585cadc597c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xac5625a64e4b94bb157fe5fd9deb4d790a455bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae08118c1de5f67baa549c62160eb0d2f0d30296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae52fdaadebfe4d943546d3f60640ba6959b8fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf4db3711bb5e1f1ddd4114d28c6ef70fac7db0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xafff62fd985bf1764cd31097dead1078e63b1141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb1335b28d5e9bd5924e93b640c24f106cfb8aeb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2a8d3cc37d914c8868d3fc8d011a65a266d56a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4d0b25d28fc55d56dadd6cdacba45779b9a3656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb76f511330876a49e57b5bee578da4450433a07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb87f6bbf8d6b9015884e0925c9276f27b772627f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb94e8435dece2800a5b6ffd0b2a5bed4926bae27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba4accd78ef2e4e05aa89de24e5072a5222b0f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbc5c8ddea45e543b20ddc6b84f6649231e35dfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbffe3a2323e059cc22944be85fc57a54c38af7f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc02b55bb2fe3643e1955b13515396ce23b110f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc54ef2f60f3f7d88a3fa0061f8915a97c54e682e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc55153cd30afdabfe415aed799028fdcef234c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc7427fa5c6a0ac3541c567897b96116b5bf75d64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcbffe4b94c3ed5bf64938fb2b97b63307ac35bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd12b934a3170741acd3b107a631c1a5e66cf3ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd135cfc8b2f6cae763e13e0e5d4fb44d759b6881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd4c631e4582059cc36c4fb06f54bdabe953379e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd5608dee5f0ed1a09b5cc3febb9b3fc48e68057d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd5e5d912d7ab139b2dd56a4b9e7aa46e9558508f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd6c67ff71a82f1d994d94fa01295467d273d7324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd70cd32bf9ba7f0355cf3fe55929fce461e2b9e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7cf3ae174e1741f5c36184c076f94cf190394ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd8f8580d7f4ca8c367843e9cb14ed2168cb600f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd998df250d8bc3384ba0a8458a5a6600bdf2d576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdad89b53e5780683ec041100158c427da02a630b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xde9b911a2c3984ba956ae2415a3e938aac840e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdf6317c47addf3e7655994330357a8fc9b44dd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe29bc35b3113c550861c4a8e273717ffa25a483b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe357dcdfbb3dbff3a7587f7ac807209d4d9f714b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe51ae6d0106cd5a3a685154ca8400b903be15e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe5696d6fb9b0cb105c0f89973de791289cff5b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe64b4eb5eec6343887c4683da31f0ca62ea39ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe79c3d7ba6a30479db6edc0b4e1295a3cd19ec91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe869319d5154fbb8e4f858f471179487e6cf184a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe9eea1d5b86e7365fe6cbcea84c8851df781650a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed9b52e6d2df4ad9fc258254e1e5ef5ad0b3ca3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeed97ae2285a6ae98c6050489404477862f067f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeef314399f7d0c3e7eadd6bdcbdb8767176fc6c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf00b91839ff7a6ac6dddac7e73d2f222c19a9ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf12292e8801752bccd56e90ef70165ba8475a505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf34efaa8f9b950c6e32652f1fec63cf56f8cef1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf54062df69e709a32cf816589986c91f84814c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6087768675544a6218b6d5a8043d4b60301ba1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf73716c6721dc2f1a621923dd71f54fc6703f4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfa0f2b98aec990cd011aa9071d86051491b1dfcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfa36d63fba328145cb333411f2da1cf49ad691d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfaa828dd4eee475ad5a1c56741cfc659b53caebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe48b9b01f145e9c26b20ce648b37d687740bf27` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 344
- Live contracts: 0
- Unknown liveness contracts: 344
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=344

Showing first 200 of 344 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x00b4ef40aa886c92126995b82617cb7d9f92a2da` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x00d60eaee7ae47bc90c79083829aa36d678c214b` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0195b0856c212759bf51e74679227539004601d7` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01f15a8933f4d93635fe69aa65b44a9601f8687d` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0273308ef6bf133756fd57e2252ca526bd43b234` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03bb3011c4daa20c466a0a3c17aa5c7ca2e339b6` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03f0d7fde338ff228f2ac038acda35a0b3bca8e0` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x045645687fd1327314d71e449d7ae39e86ac0364` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0618d80830f4adb887032d23eafd5b99eb276771` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0791bc1d8251c7c220bf61c2bdf953d7fb21afea` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08eb636bfc6d88d67320325ac8714f1426d2093d` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09445a10ff503fb696d0f81723c71966fa3348c7` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a56c3d6368c075e62415bf6170d741d1d65ae61` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ac4799afc3587a6bb17c443c4299f4ee719db8d` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b3ac3ab056dcc9baee89a821cbbf87dce2b34b7` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b7955e8611a2b3fb2d39d1bca55f0e86c6e1d8f` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f4dc5ada841cf5a7652e52d04ae786070cc9472` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12d57174b35d64fc2798e7aa62f8379bb49c2250` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13dde2675449d949affbecede379beddc83d1834` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17f7fea5f87d0f289d9827be78fc96027f8ed724` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1abd8b5194d733691d64c3f898300f88ba0035d5` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b8bf880e17fe5d8b2432a102346424b3237b2a7` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e3a2497d18bbe913798ce3f951fc5a5ec805dd9` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f6db77bf48cb29f30b84ea2ae9ffd4b07c4571e` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f89d09e1d799350f69803c6b11b567dd40871e9` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f8a5aa7236375ab68deb934293415ea25ad0a57` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x250a54eb1f6871dbd98222b7f23ea8b6d5241a42` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25abf1fec6a89796e61107917b5c235557657ddd` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25f5119d4c9b599dbfc16e4445e16ad3f1fddf31` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27a02627f4d683594984984f0fd2de9aa3c8b2f5` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28cbf0350fcd845cca8eab9bb5b1fa357e7c882f` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b2b237d8f9a42706bdcd4083c20a2b799c8b45c` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bc8102bc1eab3689f0dadb53071ab5965ceefd4` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ca626a7e6d056e1cc963795cb873e651045032c` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f2c3cf0b2d6f4f6cd5f57665ae629eee813350b` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f4722f3b37a17e23a6e3ab90ab6ff4aaefe99d0` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f7ba68774060cce1d0b1fc0d20f712f311b49c0` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ffa1c52d0943a01d6f0a440bd77d26d44ad0e61` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32180f8c9af1b164d6945dd0f14b9af635270ab3` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32405a44e7dbebd29afa68956d3d53112fe1ad75` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x330a9d736fff0bc339ed928a65fbcaab6096a81a` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33afd73185b7426b7bf50486910f495a344cf047` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x343324f53cbeee3ee6d171f2a20f005964c98047` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34b4f3a225057361bfe663de0aae77c5f6acf2ce` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x366012e00ffcfd782be19a9ea5b47ad640998895` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a2148cea2a8a4dae51487fa28451038c24d2576` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3de64c8c6cfbd03cfcbb45a05381c5aed8c48ae3` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3decd449f7cadf59c43160998ee3434b91576afd` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e73d3fc22a8637b2c16790aa2c0e2d552d44e69` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x402964551e1564aec462ec08b26e788327f5f399` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42d7de6c51324bedba55b4733637786630377e14` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43ffaa65fe273d2ef9edd78418091d41b1aa40e8` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x453e384862245faf4e021894d78ba8f6e51b8c19` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48ce1476b47bb4e2946839ee624deecc7dfef16b` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c9cc826e704dfa3e2966347bf070097cb4efda9` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e8de529fe22dee9266b029cdfc52142b82e0e2f` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fa0c488f321a1d089f7e5f951fe8c43f2064709` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4faebfa3bd4dc6e15688720517fd56bfa2ec55cd` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x522803c9e899e710f07f4f3561f4f7b2c2d1b18a` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54abeb9fdfb68c52bf06d7b0059207ad16f41437` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54aff8d1b5825942ba86cd1868b0a92b252892c8` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x553c7f9c780316fc1d34b8e14ac2465ab22a090b` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x554ade8b02facc4304b80ab439092b5396786d79` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56217a14a65bcc6a3b5e547cf7e9301c8d602787` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56528c1df17fd5451451eb6efde297758bc8f9a1` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56fca58a92930729309ed4cad09899190209220c` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a90e48b81edf50813192e5f5da0ed934bf94c93` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e200b3c6e9ce8280dbb14a0e5486895456136ef` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f4b3c5535252ec49932b36741d04f33696209e5` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60b04b30e8e6e0121d121077124876b5559d9e21` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60b7ec64292b9fc98230dfbd0180f0e864e45c7a` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x620bf52fa5e97fbfb3992cab478e3272285adfd1` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x631d1c2e9a5a08120e063c3e4cf9b8e8f2ea0c79` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6548fad069f2eda512a658c17606eed81095c93d` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x656d8b98deae704ac6d22c2c7edf967630d3a2bf` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65fcd8629b691fa5108168535c332068f5089ede` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67a338f800eaf717550450f003a372820925d295` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6884ade31ac154dc52395f9db819a03c667063a9` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x690d26caeb5c878182af126cf4e6d8c0de82a62a` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x699b77b40bef9eba25c39b480c20c38cf7abad81` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c9653ec2c6a69dcee9fc3005fef02d2d5cf1ddc` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d6b7d1db521df9a1763b2516eb8b04560dee073` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x726359d8560acd175c71a33edd502b0724a52d80` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x765147bd2b25f6bb1e2bdcc1c06dd10ce7f3be4a` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79b4e1fad5651a8684644a5339a523227accb218` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b37fa96e950083d955deda7cbc0eab1b489943b` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b4f2e6292d1a22b61525a003ebf3bbd85536c5d` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f34b9d2c3682b70ff6e8bc8fa2ed69def2f81cd` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x801bb49efadf9b8a9ad7dc0b8275ec94b92d2497` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82b26de8227e23014c6f29f7fbbc20ee8be794a9` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84098db9c012adcf8a8bd2fa1b7227f3a0b83f9c` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8485f9a2d7207ca9d45c6c4dbd7661e7e76586dd` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x855ff073f647f8ff479839bc3e912509233370ae` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85a4821068334c3b219aef4cd6461061efd0be9d` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85c0c08ec417d5f8476934eec7934a9f374da3b9` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d90319fe817fe9e23973fcab9f1ff0f1e0d9b65` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x919cbb80c920d2d60fa0709bca327d3726474a8e` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9307359753f1ef5bad4c8503e52e19f369f54fae` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x931dd6e2b3a1893645d920c2b5a6e837a9b7879e` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9566083cfce8615c4861bc36ccba98b172031277` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96772b1006e35694fa0c2c9df5e446118f2ee437` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x972bff8e5f0f97c880ccb92616c07dc78d4d89f8` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99d77d8fd7e78c3d4fcc85dcca494b71ac42845e` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a9626c66ded40e761a65de768df1228baacd8d7` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b886c04ce3cfb74e644de92d65cfb873636e1fb` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ba7b25e2d2c2be54a3f0ced1f3288b5b7724667` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c5796d752d333ddb9787012a817c6d46f43b668` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c6471dc5b5bc216a74fc37056042256fd5e95b3` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ea6427f76b27f939942941ffba43667f4e2a45c` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f524c14005881c90f5e044dd83a0fa9405bcb40` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa12706714bb95b3869f2beb72b5d1d304bfe153f` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2d6b59758d307df27d5809426252d91a060cb24` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5cce1fbb1a26eba3ed9d7a56d803bc202ba709a` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa68bf91161bb2d8be367350b8f7c48ef41b02813` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7e05ceb38e75b4a46803d716c04a4a0d3ae70ea` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa891de65bdd776168ad155943b6d731bdaacb901` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa995d67fd0187b4b8fea3a60e11f31a08e4ac40b` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa0cb4ca7af641c7d046604bb6adff0805f1dfbf` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae9df72be0680531fbae60c0f52a81395e988364` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf1a5a633a31f8659f06e32da7b41e207adad43c` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf21e166adc362465a27aedc15315dcfc0c51624` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb22423a02233c32302e26ead3e419aabfd44270f` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2332c7af3a433aa284c9af103c8dc4548632698` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb34e47da0a612ffc5325790dd8e219d870f84898` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3b2e638bd63d077710daa16f35772ca4141e7c2` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb40d40d1a8c8d29980cbd6aefee30d1495b79c8a` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb985e3e24e783ff5a959025d91f280860285e404` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba013ba113cca605d85863e89384ddec0658df0d` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb55b164b641cd0ec89e901884d79f920f310605` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc0641da96bd9c8276680b5a57f292666c05b4d7` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcb3dfa08d24f38d2cee3b618a1f02e6e85496e5` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd940c7cb2cfce7a9895c5f4901be79bc4f057fa` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe2057bac4157bba00759f61dacb08a64f703c2d` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0da2786176dac9eda661c566828950ca571348c` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2d938911ef8d7740aa052ea0773c58eede4891f` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc40ada4340767e5a08138f0095f18a1c4e805a70` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc41575d0cf4a630b7992c675d760939e1402151c` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5b87e71e47f77ff27bfc91b25f321420d388ceb` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc69f6321a4b78a9e8a59149e0dc48ded4b9e567b` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6afd3b605957b9ba94143f59d451c657f507516` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc73b5e812fd9dc5190db8bbd0182646290bfd5e3` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc77277c27c5370d405f43b46ee92a55cc4fa25da` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc894ef112cc26741397053248f9f677398eb56e2` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8b562d4d53ef13617b98ced8896110ad5136d5e` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc95506540268b0447663efbfffd71b51fe92ea7f` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb1d5644297502812f9545e5c6d6c6479d0d1666` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc3193e98dbff48ae5d460052dfbf3355afec432` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcff32c60b87296b8c0c12980de685bed6cb9dd6d` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd029a8cd27eb4432f23abe712fd650ffdad2c565` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd151546e3315bd3594f4c47dff81e57aa9945ce8` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1635be2eaa34a5ee588113fe1ea5d7a20d40d67` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd17201d7c2a25e2c5622f9c240a7bb56767be29e` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3de54d9e424bf27b8259e69b205127722c771cb` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3f53dda37e606a78bc1b45f27b3d3a05a1fa07b` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7ea9570a633a5f243c92b3017a9bba2a871b219` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd83e8ce48cc68bf6337aa5709f8addc282db21bc` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd858df7060e178616da5b4168b351c13a9e14fdf` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc04c96b0eff781b8de575b2ac5ccace925f7835` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc6715b0d5ad3add9e9bd4b2c49df2bb220ad44a` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe08008b32b85f272e9bb48336c9e3a019063c964` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1d8593882fa4700efdf446b9e4855d5ccccde8c` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe221db71c5c527149bdf56c4d13a54cf55e543c1` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe284d8b9ace134c541a39cc6a8292aca4c342896` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeaee772489648614316ab1323ee8db20890d9bf0` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb14c5ed2036609a24dfb46f58908061c9b839b1` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb3a8874eee15a55cb0380540a93dbeeac1b13b2` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec6e3f40503c693b8353a483b221713be1083c8e` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf561c6e3e31e98eba8a110c243d70119b43a394f` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf60d5179f1276606a78e4b69b840705b64314b81` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb05a48a36bb36ef52d4467cba4f1460d2231535` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb330379134ea1efce9cf6f28e2ccb917899e007` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfcbe8cd587551046f052c6aa7fc9ec962e2caf5e` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd04e85ebba564af3052743a88374405d1e8a8e7` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe9098d62af73ef8a24bf48a1d0dad19d7d592e9` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xffed1d4e809523cc47164dd07973bd77b1b07577` | non_address_book | unknown | unknown | unverified | n/a | `0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be` |
| optimism | unverified unclassified | UnnamedContract<br>`0x0018453ca52d1d71458ad1ad48a5560a51a94601` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x032a7c1364cd65f9f96f45a99fe9152e0bd9932b` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x03998093d22db7b5729047af62bfbe96212683d0` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x06512e6bab2712fca9f4d123c80fce34de2bc2d7` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x065399a1e5522af1c9044c18ce60ec70d64d74a1` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x071682832d213638f8eda67a873262e581a4006d` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x09f1c103e18066e8522f6798d996e848dd41e091` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x0bba384812a64164fed62c6c40d399c0ac5d99bd` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x0c8daa2760153128d1ac69f6193da05cdb508810` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x0d82b5d3a8420c285c6d353a6bdc30d164bb50f0` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x10b3667304130ecc9c972008459249e8141ced97` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1279bd692851c32797ab527ea54e376d1f8fb99c` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x15818632e7bacc2b32248d470f08bb5ffe3a187b` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x16679cd8965c248e02a3459b9d12eda160d4c340` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x19e60461b1f16947c68bc4180e56273535772ac6` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1a0561289120f816580b514d8cbd48c28e2270e1` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1b99e363b1f7c752cc293fdfd1b648d956f76031` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1db33fc67874bb7b2e3794879f6c8e33681c0a94` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1e82e445f4069fc03ba4cb6de1490b29ac119772` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x20d1c515e38ae9c345836853e2af98455f919637` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x2399ebac94686377132dbd05fbddae9b22b2a9b9` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x241f38316199b4332a295b58295deeec60c23677` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x293c62b0640bfbc06b2e72e3ef5916a6fa284e78` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x2ccf0eaf8496bd1169ae4ce5a98e9a3979b4fdbe` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |
| optimism | unverified unclassified | UnnamedContract<br>`0x2f968a73425583b9b6618345d2be9c789d01c8d9` | non_address_book | unknown | unknown | unverified | n/a | `0xcc59c42d05bd66fe22fba27016f783af43f68fa7` |

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 346 |

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
