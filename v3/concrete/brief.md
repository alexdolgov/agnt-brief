# Agentic Audit Brief: Concrete

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Concrete (`concrete`)
- Website: [https://app.concrete.xyz](https://app.concrete.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, berachain, ethereum
- Contract surface: 164 unique implementations (166 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $757,965,722.30
- On-chain TVL (included contracts): $26.81
- TVL by chain: Ethereum $26.81

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Concrete in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xacce65b9db4810125addea9797baaaaad2b73788`, chain 1)
- UnnamedContract (`0xf72bd5a56de97840f1fdd3641b556126c10aa1c4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 162 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 2 of 164 unique; 162 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 162
- Unique implementations: 164
- Raw deployments: 166
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 10 aging, 1 stale, 0 unknown
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
| ConcreteMultiStrategyVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ce9be6609db102b70d68ca75a39c555bea5fac` | ⚠️ Unaudited |
| ConcreteStandardVaultImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x2f37d7c8c8c80b85344473daee6b3323ca5b463e`; ethereum `0x5854c7693459c6e316a96565776b72d94ee0e5fd`; ethereum `0xb04e166fd5d7078bb7b3412406609fd92855a08f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (162)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a1a82a02a216224a89c53f9bc06670021d6b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0265d73a8e61f698d8eb0dfeb91ddce55516844c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0294e3f93e2a1e0534d9dbe1bc09c9d186c45fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05f23b0fe8a7d582158871122397ea4ca3097286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07fc402716cc1c42c25da647aa91a6f5abec3afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09078681444583d335fa7bf3b8976c296517169f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095a05f17164298c54ce4345a4cde2fd469464c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d18783e0e5b9cf4583637a8339d26c77db85b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1060e82bbf91f6767d71ab1f2842c6a745edb1c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129fdb7f718329e0d8edaca13b0f97e41e53bff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12fee8a7d080012126d483e36056415488616128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x132835825760ba48b79bba8641ebea38963ff0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141d328fcc030477fba98b1cda8910bec9b9ca4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x142e6e12ca7ba892117f7a1656f6b7e105897143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a905158aebcb44451857603006a7dc23b0d014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158af44486242a9dc13d52360fa6a6d65965719a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15c612b632f1e16e450f14bfe0253e2537e27b64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190c6ec4e1f04d76e349db6c0c173a6be638dfaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1976a81f4b5a0358f4e7f7199afab891a3c76c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a075e924ae848ff121b796a208383696280444a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a297d936b4b1635b0d9e6c015bbeb3e8b40d8c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a392cb09d8d31e8c70ecc7f74fdae0abe40c5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c77de461d398e35d7d95883793b01302d203707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20aa539288c97c1dc188c007f01f768e925e51d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d61e29a95047896a46c0ede8964806325a1675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274c607c436a95bdd0d21793f8669133e04a2e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29f2b52e57ca567a87072128a8e57daeedceb42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed817c9f80a90a3ef81a7f84107fb9a86b48abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x311318072db9ecb484cad05763851d556a7cc24a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321d90c384425b031d9282dd166b0bd996201bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3449eda9c659c4266dd178aa9c2b7cf96cfd3bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34bae6d74c1c8d4b4cf670ef5453cc00f3b8a855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34c83440ff0b21a7dad14c22fb7b1bb3fc8433e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34d7fdc1a1e1849cab608bab1e0c1eeaa41c65b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359152bec5b2d8011dbef0618df4a136e1de1244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35a22f9b794dbd3022515ceabffef06b9e039269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c2c9daccfaef6e271cb8b64532c6b9ee1795f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38f20ad5a233c1b2c91ce987853ff3201540db53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x399dd66149b1dcf3d5618325dacb70905e1615a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a56a470a4f953d056ffe9f4c5b80f64446d7388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc3bb7ca3c909f32e91ca164776939616557d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd9986c0983fb7989244c9a7ea6b846f0d9cc4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eca5a408d09bec7dda85e4bcbc5e81bb4554baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b667d0d51a5274910ce681d6f879bbffcfc283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41cfab8cc84044fb660ba9b14750ef5a28b29d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d41b45d4267850520c3bbe2c7dbc95274fc733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4212da8df8eae97917479696c4602b66e3338bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4278b53acfeab0f2ce10232147a954e451c1f56e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4507ec2ff3c83337b03b7b2789089359bf22f23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b566fccdb8606f87a7d0d8559c55a8988170b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475dfad0d34c4137bdb915b82ab9820f79448d17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47746101416392efaea9c71283992714795f1345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x487c99297ee871a21d0e3965bed702853e382a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4902fe9d7f4ad68adab4890e06a124e8b3a6a3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4924356462894ba85bd31bf06bf9f4057339a5ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbcb048f02ca46652b079a5a3a61d3c9610afda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51af7149ccc38bf6f0676d00a8f6d28cf58997a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5391329cb400f3fa675444095dc0b56361a03782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f498a6f391ac48723f1e11875083aa24cbba8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5532064f489adbbb2790b2341a4e81a5b749f40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a58126bcf9a7da72b64cfd85df7176860ecca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d47372a66b3f640bff83e745de7d10f4b29075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58a27c29c3b94736785b73fa442e18ca622b9400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x592d3d5677d4613374ca7ecf31caff706b465ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59c524b636b4d7c8264c902e97e33556810cf9cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a07be00cfbdfe709140dd2b5b1ea05b0d105464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5af0519fab933ed669ea2beaa91ed8b951103e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d833ead784a68a75ef059e503db2308a2ef1c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fcad7fe4a5889bfb28fa49af1fa6244a3679369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fda25c7e73b8eff92934723785ff164ceeb617c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f6afa64c207b51aa0005269b09cf7b669e26c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b52f2ac8b0976d81ceaed41aac129c87f92f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6463c5f12d100cf3805cbf52682c1ce765e86277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x658ef3544ae69e0d0aa4b1170b1e8c3f2431f901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x666fde8186a463a4c9dcd3594af2ed0059554211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6800cd6901dfc9f3465fc0faf574f2362ede9cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f487ab98cf36c578c7e317e2b3f7bc9d4c7663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6d117eb9596a4daec57b34fdf43ef24e36909f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c64737663ece496f6543cf4a290717409b864e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6caa4edcbe47770d4373fe10672c97c75726f44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cc3e0d6cc519678b5152cf9990184fe43846d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e049b05c08c083a512eca5edb08a25133549a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e9d4ff7997de6517209d0c8834b6663a26a4630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea868cb863ee6b4864d66affdb26720b2a73387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f3305ac918169c0f6a12f4d9329fbf92732e084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7250202a22cdc0136199ace1ddaa7e0d9c216619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7309f8934af0ff2bdd1c866cce16b5af7100d497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a16493f78a7d9e88b471bcbad5a7c37bbb19cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74b36489d14911fbfc82f83ff209f3ff0592693f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x776f810fd9b1186697ca47a0e86d66cc0ede278a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7990d479cc9cf28f4f21c9c20bfac656581a2840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8395782b9181ca260d65b40cfd3f1be8e2b7d13b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84413d305bc605d74edec6d58a22b591b7a7f71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88189f299585e3525cc38b78357bfb3b9bc2ec80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b1c4b530c05fe956324e2c63af73f29934c8dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d2b694fc972c6d39ff343c623129341453af731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0fa5965da0c8f1ff66e38068d21913c9b871dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x905d4824a44f5206d3c0841d5cacb81911c00ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x930e6ba71939c79a25c5d32098870dd41edb9df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93629424a72ad246097f1afc74c64147b26cc9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93e6ecef767bde807a168e73c401bf69a0c21172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x950c11c718f77feb0ff7df45d039c4f0d86ef110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9715f75db1a534dc02990c449490361639572ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x983528ce59c164b857c0cb8cec8cf533ede92628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a1c43b682394225b69ae42f9a99409ad16a5bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad0d3d0eb4e526530f4e74d8a2e2f3967291569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b95be9f2dd7f33cd8f7ad111acd231be982035b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bb919dc8236c87ec035704f8923c4e6e39ebc0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9edb095532457877387ad85233caf4da85d36a49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4477d6b3a07b4b2bcaf37a3cb2a534bc2aeeb34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6e3e801ebe63f2972dbaf9b5d4cc6a16af01c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7fd8da5df12b2bfdc598768dbbe33e0e424dbba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90179d73c1bb6fbd149a7b1e04cc625f075840a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab423fc3c5ded455b5617afcfe54663b7167c7ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381820 | `0xacce65b9db4810125addea9797baaaaad2b73788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad090bfefbbec1815a9cc1812f6fa1d34f5f6ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb070c93945375ddb3df7424e67e5094fdd153dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2d9a885108bb695b6405d0977b4fa6cfe1d88db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb37159fb7edf14ad65f43597d081a7dd00a84795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb54694cd0ea85701fe6af9e9c18cdebf8697a2dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6d9f4195c6e4d9c17e59fac3471536e1a1c84b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb78d0db9cca422313a83eb368ca3d9f443433081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb79f6d8c761f2f8f63a80a7032772b615dfafd8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb86202d2a888484ba1645dea44cd4a5b7228ef04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb784fae329d1fc102be3fb5edb64d97c07a4171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf3731d2a5e59bbbf91a05be6b762eeda89cdaa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc355e7bc26b180c6a3389a7d2bd7f7c4a859438b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3aae8f05f1b52821ead5ab8982ff9a01af22f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4b1c0421df973bba683e887bab3700f2ae0e12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc50303eca7e02feae434f37c88c43aac368c60c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc62cf034360a281916b064cb35b33a2ffeb4d504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc681330d28b2938fdf42b56974023938ca8219b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc755ca14885acdc0cdadbd56557d3b065de71bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92d1f4d5cbe54b11966fbb8dc2c55a9796d9331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9912b9aed113068fb07e6c71cd034b285a8302a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca166f3354c989adac216afcd485d1ac1bc1d0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8d6308d1ecbee92f4dd0e275930f068519ad65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc4c5d7c62fc20ab394a6a00b711d8603d763417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe1b55ba8aac7a259e41d2a31b020b528ceb3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23fac220df8b22232493642b07a8dfbd43b9f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd256a359b8d1212c656bacbbe5c2d23ffbe0bdd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2a9fc1fa0cfd8b602dc527495c1f64cac2a1e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3ae35d97e18fe164deff6f6a266c5b3d25d8654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd49dc450a5d061d7d938061a44ea97241ddda8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4bc37bd662f7bbdbb180ed511b4702c3221b5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6267683200acb507140fd4f7964c3aaa82159c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd76c8b5269bcc1e89822fbe1d53f950421cdc476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb766adc48ed51b117a06689f968d659d2d49e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe487f2e71222dc8c3cd3f2e40101350020ef6f98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe72e5a306d11468b83c161b9f420701fb49e276b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe72eaeeeaf56ac311731e075d6731bdc0c77a608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b64f43c53eaa1beb9ee0095d6df94c99aea3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead6f03f91385102d691435326c005a0add34843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0203dc91e3e30019f9eaaca90d8496f39a26ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf166aaaff53206d181d26c4051c2c714a7f8167c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4782da3f106a93ee2681307ceefa951526739ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf488cd73ade081e4e4150e46dc4be5ff3a3f3f81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381821 | `0xf72bd5a56de97840f1fdd3641b556126c10aa1c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa5622f5d048f0dc6a06ef464d20970d80495e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb50bab88e16565b71dc23272560fee8725e045b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd88d60bb56c970e4862f10b36562f627590274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe2d641256925cad4f419494d9e2e12ce3c2eddf` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 160
- Live contracts: 0
- Unknown liveness contracts: 160
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=160

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x01a1a82a02a216224a89c53f9bc06670021d6b9f` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0265d73a8e61f698d8eb0dfeb91ddce55516844c` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0294e3f93e2a1e0534d9dbe1bc09c9d186c45fa4` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05f23b0fe8a7d582158871122397ea4ca3097286` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07fc402716cc1c42c25da647aa91a6f5abec3afc` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09078681444583d335fa7bf3b8976c296517169f` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x095a05f17164298c54ce4345a4cde2fd469464c2` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d18783e0e5b9cf4583637a8339d26c77db85b05` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1060e82bbf91f6767d71ab1f2842c6a745edb1c1` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x129fdb7f718329e0d8edaca13b0f97e41e53bff1` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12fee8a7d080012126d483e36056415488616128` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x132835825760ba48b79bba8641ebea38963ff0d7` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x141d328fcc030477fba98b1cda8910bec9b9ca4e` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x142e6e12ca7ba892117f7a1656f6b7e105897143` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14a905158aebcb44451857603006a7dc23b0d014` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x158af44486242a9dc13d52360fa6a6d65965719a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15c612b632f1e16e450f14bfe0253e2537e27b64` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x190c6ec4e1f04d76e349db6c0c173a6be638dfaf` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1976a81f4b5a0358f4e7f7199afab891a3c76c97` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a075e924ae848ff121b796a208383696280444a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a297d936b4b1635b0d9e6c015bbeb3e8b40d8c8` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a392cb09d8d31e8c70ecc7f74fdae0abe40c5d2` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c77de461d398e35d7d95883793b01302d203707` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20aa539288c97c1dc188c007f01f768e925e51d2` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26d61e29a95047896a46c0ede8964806325a1675` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x274c607c436a95bdd0d21793f8669133e04a2e4e` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29f2b52e57ca567a87072128a8e57daeedceb42a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ed817c9f80a90a3ef81a7f84107fb9a86b48abf` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f37d7c8c8c80b85344473daee6b3323ca5b463e` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x311318072db9ecb484cad05763851d556a7cc24a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x321d90c384425b031d9282dd166b0bd996201bc2` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3449eda9c659c4266dd178aa9c2b7cf96cfd3bdf` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34bae6d74c1c8d4b4cf670ef5453cc00f3b8a855` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34c83440ff0b21a7dad14c22fb7b1bb3fc8433e6` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34d7fdc1a1e1849cab608bab1e0c1eeaa41c65b0` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x359152bec5b2d8011dbef0618df4a136e1de1244` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x35a22f9b794dbd3022515ceabffef06b9e039269` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38c2c9daccfaef6e271cb8b64532c6b9ee1795f0` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x399dd66149b1dcf3d5618325dacb70905e1615a1` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a56a470a4f953d056ffe9f4c5b80f64446d7388` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bc3bb7ca3c909f32e91ca164776939616557d85` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bd9986c0983fb7989244c9a7ea6b846f0d9cc4c` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3eca5a408d09bec7dda85e4bcbc5e81bb4554baa` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41b667d0d51a5274910ce681d6f879bbffcfc283` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41cfab8cc84044fb660ba9b14750ef5a28b29d05` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41d41b45d4267850520c3bbe2c7dbc95274fc733` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4212da8df8eae97917479696c4602b66e3338bd6` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4278b53acfeab0f2ce10232147a954e451c1f56e` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4507ec2ff3c83337b03b7b2789089359bf22f23a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45b566fccdb8606f87a7d0d8559c55a8988170b3` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x475dfad0d34c4137bdb915b82ab9820f79448d17` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x47746101416392efaea9c71283992714795f1345` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x487c99297ee871a21d0e3965bed702853e382a2e` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4902fe9d7f4ad68adab4890e06a124e8b3a6a3fb` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4924356462894ba85bd31bf06bf9f4057339a5ad` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4dbcb048f02ca46652b079a5a3a61d3c9610afda` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51af7149ccc38bf6f0676d00a8f6d28cf58997a7` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5391329cb400f3fa675444095dc0b56361a03782` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54f498a6f391ac48723f1e11875083aa24cbba8e` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5532064f489adbbb2790b2341a4e81a5b749f40b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55a58126bcf9a7da72b64cfd85df7176860ecca8` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56d47372a66b3f640bff83e745de7d10f4b29075` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58a27c29c3b94736785b73fa442e18ca622b9400` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x592d3d5677d4613374ca7ecf31caff706b465ba8` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59c524b636b4d7c8264c902e97e33556810cf9cd` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a07be00cfbdfe709140dd2b5b1ea05b0d105464` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5af0519fab933ed669ea2beaa91ed8b951103e92` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d833ead784a68a75ef059e503db2308a2ef1c7e` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5fcad7fe4a5889bfb28fa49af1fa6244a3679369` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5fda25c7e73b8eff92934723785ff164ceeb617c` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62f6afa64c207b51aa0005269b09cf7b669e26c3` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63b52f2ac8b0976d81ceaed41aac129c87f92f24` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6463c5f12d100cf3805cbf52682c1ce765e86277` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x658ef3544ae69e0d0aa4b1170b1e8c3f2431f901` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x666fde8186a463a4c9dcd3594af2ed0059554211` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6800cd6901dfc9f3465fc0faf574f2362ede9cc1` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69f487ab98cf36c578c7e317e2b3f7bc9d4c7663` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a6d117eb9596a4daec57b34fdf43ef24e36909f` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c64737663ece496f6543cf4a290717409b864e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6caa4edcbe47770d4373fe10672c97c75726f44b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6cc3e0d6cc519678b5152cf9990184fe43846d44` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e049b05c08c083a512eca5edb08a25133549a99` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e9d4ff7997de6517209d0c8834b6663a26a4630` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ea868cb863ee6b4864d66affdb26720b2a73387` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f3305ac918169c0f6a12f4d9329fbf92732e084` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7250202a22cdc0136199ace1ddaa7e0d9c216619` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7309f8934af0ff2bdd1c866cce16b5af7100d497` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74a16493f78a7d9e88b471bcbad5a7c37bbb19cc` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74b36489d14911fbfc82f83ff209f3ff0592693f` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x776f810fd9b1186697ca47a0e86d66cc0ede278a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7990d479cc9cf28f4f21c9c20bfac656581a2840` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8395782b9181ca260d65b40cfd3f1be8e2b7d13b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84413d305bc605d74edec6d58a22b591b7a7f71b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x88189f299585e3525cc38b78357bfb3b9bc2ec80` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b1c4b530c05fe956324e2c63af73f29934c8dbf` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d2b694fc972c6d39ff343c623129341453af731` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e0fa5965da0c8f1ff66e38068d21913c9b871dc` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x905d4824a44f5206d3c0841d5cacb81911c00ef0` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x930e6ba71939c79a25c5d32098870dd41edb9df0` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93629424a72ad246097f1afc74c64147b26cc9d4` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93e6ecef767bde807a168e73c401bf69a0c21172` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x950c11c718f77feb0ff7df45d039c4f0d86ef110` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9715f75db1a534dc02990c449490361639572ba8` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x983528ce59c164b857c0cb8cec8cf533ede92628` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a1c43b682394225b69ae42f9a99409ad16a5bda` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ad0d3d0eb4e526530f4e74d8a2e2f3967291569` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b95be9f2dd7f33cd8f7ad111acd231be982035b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9bb919dc8236c87ec035704f8923c4e6e39ebc0a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9edb095532457877387ad85233caf4da85d36a49` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa4477d6b3a07b4b2bcaf37a3cb2a534bc2aeeb34` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6e3e801ebe63f2972dbaf9b5d4cc6a16af01c78` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7fd8da5df12b2bfdc598768dbbe33e0e424dbba` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa90179d73c1bb6fbd149a7b1e04cc625f075840a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab423fc3c5ded455b5617afcfe54663b7167c7ac` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad090bfefbbec1815a9cc1812f6fa1d34f5f6ce7` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb070c93945375ddb3df7424e67e5094fdd153dab` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2d9a885108bb695b6405d0977b4fa6cfe1d88db` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb37159fb7edf14ad65f43597d081a7dd00a84795` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb54694cd0ea85701fe6af9e9c18cdebf8697a2dc` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6d9f4195c6e4d9c17e59fac3471536e1a1c84b2` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb78d0db9cca422313a83eb368ca3d9f443433081` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb79f6d8c761f2f8f63a80a7032772b615dfafd8a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb86202d2a888484ba1645dea44cd4a5b7228ef04` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb784fae329d1fc102be3fb5edb64d97c07a4171` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf3731d2a5e59bbbf91a05be6b762eeda89cdaa0` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc355e7bc26b180c6a3389a7d2bd7f7c4a859438b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3aae8f05f1b52821ead5ab8982ff9a01af22f53` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4b1c0421df973bba683e887bab3700f2ae0e12b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc50303eca7e02feae434f37c88c43aac368c60c1` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc62cf034360a281916b064cb35b33a2ffeb4d504` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc681330d28b2938fdf42b56974023938ca8219b9` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc755ca14885acdc0cdadbd56557d3b065de71bb4` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc92d1f4d5cbe54b11966fbb8dc2c55a9796d9331` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9912b9aed113068fb07e6c71cd034b285a8302a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca166f3354c989adac216afcd485d1ac1bc1d0af` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb8d6308d1ecbee92f4dd0e275930f068519ad65` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc4c5d7c62fc20ab394a6a00b711d8603d763417` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfe1b55ba8aac7a259e41d2a31b020b528ceb3b9` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd23fac220df8b22232493642b07a8dfbd43b9f13` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd256a359b8d1212c656bacbbe5c2d23ffbe0bdd0` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2a9fc1fa0cfd8b602dc527495c1f64cac2a1e7d` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3ae35d97e18fe164deff6f6a266c5b3d25d8654` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd49dc450a5d061d7d938061a44ea97241ddda8c1` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4bc37bd662f7bbdbb180ed511b4702c3221b5a7` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6267683200acb507140fd4f7964c3aaa82159c5` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd76c8b5269bcc1e89822fbe1d53f950421cdc476` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb766adc48ed51b117a06689f968d659d2d49e8a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe487f2e71222dc8c3cd3f2e40101350020ef6f98` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe72e5a306d11468b83c161b9f420701fb49e276b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe72eaeeeaf56ac311731e075d6731bdc0c77a608` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8b64f43c53eaa1beb9ee0095d6df94c99aea3ee` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xead6f03f91385102d691435326c005a0add34843` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0203dc91e3e30019f9eaaca90d8496f39a26ee9` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf166aaaff53206d181d26c4051c2c714a7f8167c` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4782da3f106a93ee2681307ceefa951526739ce` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf488cd73ade081e4e4150e46dc4be5ff3a3f3f81` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa5622f5d048f0dc6a06ef464d20970d80495e2c` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb50bab88e16565b71dc23272560fee8725e045b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbd88d60bb56c970e4862f10b36562f627590274` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe2d641256925cad4f419494d9e2e12ce3c2eddf` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa1c72a48243e7c7d78f4b95d942d96a8d05588` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf](https://docs.concrete.xyz/assets/files/Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf) | Zellic | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf](https://docs.concrete.xyz/assets/files/cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 52 | high |
| [Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf](https://docs.concrete.xyz/assets/files/Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf) | Halborn | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf](https://docs.concrete.xyz/assets/files/Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf](https://docs.concrete.xyz/assets/files/Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf) | Halborn | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf](https://docs.concrete.xyz/assets/files/Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf) | SSC | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf](https://docs.concrete.xyz/assets/files/Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf) | Code4rena | Contest | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf](https://docs.concrete.xyz/assets/files/Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf) | Code4rena | Contest | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf](https://docs.concrete.xyz/assets/files/Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf) | Halborn | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf](https://docs.concrete.xyz/assets/files/harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf](https://docs.concrete.xyz/assets/files/Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf](https://docs.concrete.xyz/assets/files/Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [cantinacode-concrete-finance.pdf](https://docs.concrete.xyz/files/cantinacode-concrete-finance.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 52 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12932] Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf — no match: No reason recorded
- [12933] Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf — no match: No reason recorded
- [26341] cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf — no match: All contracts listed in the scope section of the audit report were extracted. The audit date is March 3, 2026 from the cover page.
- [26348] Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf — no match: Extracted 19 contract names from the scope section of the audit report. The audit date is the end date of the engagement (July 19, 2024).
- [26352] Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf — no match: Scope section lists 4 Solidity files. Audit dates: engagement Feb 12-13, 2025; report date 02.12.2025 - 02.13.2025; last updated 03/17/2025. Using end date of engagement.
- [26353] Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf — no match: Only one contract in scope: VaultManager. Audit date is the end of the engagement period.
- [26354] Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf — no match: Scope section lists two files: MigrationStrategy.sol and ConcreteMultiStrategyVaultUpgradeableV1.sol. Audit date is the end date of engagement: February 11th, 2025.
- [26355] Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf — no match: Extracted 46 contract names from the scope section file paths. Audit date is the end date of the engagement: January 24, 2025.
- [26356] Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf — no match: Extracted contract names from the Scope section file listing. Audit date is the end date of the engagement (February 10, 2025).
- [26357] Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf — no match: Only ConcreteMultiStrategyVault is explicitly in scope; Errors.sol and IConcreteMultiStrategyVault.sol are interfaces, not contracts.
- [26358] harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf — no match: Only one contract in scope: ConcreteMultiStrategyVault. Audit date is the end date of engagement: November 25th, 2024.
- [26359] Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf — no match: Scope section explicitly lists 6 files from two repositories. Audit date is the end date of engagement: November 22nd, 2024.
- [26360] Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf — no match: Extracted 5 contracts from scope section. Audit date is the end date of engagement (November 7, 2024).
- [26365] cantinacode-concrete-finance.pdf — no match: All contracts listed in the scope section of the audit report were extracted. The audit date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | AllocateModule | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteCachedVaultStateStorageLib | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteFactory | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteFactoryBaseStorageLib | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteStandardVaultImpl | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteStandardVaultImplStorageLib | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Constants | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Conversion | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Hooks | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Roles | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | StateSetterLib | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Time | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | UpgradeableVault | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | VaultProxy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | AaveV3Strategy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | BTCLinkedPriceFeed | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ConcreteMultiStrategy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ConcreteOracle | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | DeploymentManager | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | FeesHelper | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ImplementationRegistry | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | MorphoVaultStrategy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | MultiSigStrategy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | MultiSigStrategyV1 | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | OracleFactory | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ParkingLot | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | StrategyBase | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | StrategyHelper | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | UniswapV3HelperV1 | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | VaultFactory | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | VaultManager | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | VaultRegistry | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | WithdrawalQueue | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | WithdrawalQueueHelper | unmatched — not counted | — | — | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | UpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | VaultProxy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteBridgedVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IAllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteBridgedAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteTokenizedVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IStrategyTemplate | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IUpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IVaultProxy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | AccessControlLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | AsyncVaultHelperLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Conversion | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ERC20Lib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | StateInitLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | StateSetterLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteAsyncVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteCachedVaultStateStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteFactoryBaseStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcretePredepositVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteStandardVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Time | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | AllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | TwoWayFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | UserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IBaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IPredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IUserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | BaseStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | MultisigStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PeripheryRolesLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PositionAccountingLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PositionAccountingStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PredepostVaultOAppStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | SimpleStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ShareDistributor | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | MultisigStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | SimpleStrategy | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | Swapper | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | OraclePlug | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | StrategyBase | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | VaultRegistry | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | TokenRegistry | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | ImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | DeploymentManager | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | VaultFactory | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | ClaimRouter | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | ProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | AaveV3Strategy | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | IAaveV3 | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | RadiantV2Strategy | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | SiloV1Strategy | unmatched — not counted | — | listed in scope | no |
| Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf | RewardsDistributorFactory | unmatched — not counted | — | listed in scope | no |
| Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf | VaultRewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf | RewardsDistributionErrors | unmatched — not counted | — | listed in scope | no |
| Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf | RewardsDistributionEvents | unmatched — not counted | — | listed in scope | no |
| Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf | VaultManager | unmatched — not counted | — | listed in scope section | no |
| Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf | MigrationStrategy | unmatched — not counted | — | listed in scope | no |
| Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf | ConcreteMultiStrategyVaultUpgradeableV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ClaimRouter | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | VaultFactory | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IBeraOracle | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IClaimRouter | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IMockProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IMockStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IRewardManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ISwapper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ITokenRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IVaultDeploymentManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IVaultFactory | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IVaultRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | DeploymentManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | TokenRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | VaultRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | AaveV3Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IAaveV3 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IRadiantV2 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | RadiantV2Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | EasyMathV2 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IBaseSiloV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ISiloV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | SiloV1Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | StrategyBase | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | CompoundV3Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ICompoundV3 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | OraclePlug | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | Swapper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | MorphoVaultStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | MultiStrategyVaultHelper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ClaimRouter | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | VaultFactory | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IBeraOracle | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IClaimRouter | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IMockProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IMockStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IRewardManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ISwapper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ITokenRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IVaultDeploymentManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IVaultFactory | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IVaultRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | DeploymentManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | TokenRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | VaultRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | AaveV3Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IAaveV3 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IRadiantV2 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | RadiantV2Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | EasyMathV2 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IBaseSiloV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ISiloV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | SiloV1Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | StrategyBase | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | CompoundV3Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ICompoundV3 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | OraclePlug | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | Swapper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | MorphoVaultStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | MultiStrategyVaultHelper | unmatched — not counted | — | listed in scope | no |
| Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope section: src/vault/ConcreteMultiStrategyVault.sol | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | MorphoV1UserImpl01 | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | IMorphoV1 | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | ProtectionHandler | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | OracleLibV1 | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | AddressLib | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | ProtectionViewLibV1 | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | StrategyBase | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | MorphoVaultStrategy | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | MultiStrategiesVaultHelper | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | MorphoV1Helper | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | TokenHelper | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | UpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | VaultProxy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteBridgedVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IAllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteBridgedAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteTokenizedVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IStrategyTemplate | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IUpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IVaultProxy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | AccessControlLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | AsyncVaultHelperLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Conversion | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ERC20Lib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | StateInitLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | StateSetterLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteAsyncVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteCachedVaultStateStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteFactoryBaseStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcretePredepositVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteStandardVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Time | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | AllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | TwoWayFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | UserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IBaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IPredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IUserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | BaseStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | MultisigStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PeripheryRolesLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PositionAccountingLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PositionAccountingStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PredepostVaultOAppStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | SimpleStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ShareDistributor | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | MultisigStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | SimpleStrategy | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 163 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 266 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12
- Match method counts: n/a

Zero-match audit list:

- [12932] Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf
- [12933] Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf
- [26341] cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf
- [26348] Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf
- [26352] Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf
- [26353] Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf
- [26354] Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf
- [26355] Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf
- [26356] Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf
- [26357] Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf
- [26358] harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf
- [26359] Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf
- [26360] Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf
- [26365] cantinacode-concrete-finance.pdf

Fork inheritance lineage and inherited audits are included when available.
