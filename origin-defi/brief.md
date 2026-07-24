# Agentic Audit Brief: Origin Ether

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

- Project: Origin Ether (`origin-defi`)
- Website: [https://www.originprotocol.com/oeth](https://www.originprotocol.com/oeth)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 92 unique implementations (92 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Origin Ether in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- OUSD (`0x1ae95dd4eeae7ed03da79856c2d44ffa3318f805`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 91 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 92 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 91
- Unique implementations: 92
- Raw deployments: 92
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390443 | `0x1ae95dd4eeae7ed03da79856c2d44ffa3318f805` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (91)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051caefa90adf261b8e8200920c83778b7b176b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05f4ae0ae089eba88db8b554b636b6f2fa43562d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0660bf15a89d8e90cba1b3f0ccf493c415b1369d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ca757e2c2f2ebe87f871997eee9ea280a598a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af44feeb5737736b6beb42fe8e5e6b7bb7391cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cfd001bb3f832f05ae5b16be50f9ef98b7d35aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e666bf74fd9515e873db67c41b5ecb950c1d464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe0b698b02bbc7fc7029ee1fc15885389b53067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e3f1b45a905776f98bf8f2a0d1f7b7949a2133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265a48bc9bf5d274e8f88190c26d713524d61edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2693c0eccb5734ebd3910e9c23a8039401a73c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277e80f3e14e7fb3fc40a9d6184088e0241034bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8e1e676ec238d8a992307b495b45b3feaa5e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bedb429f94040ea4d150e9cba39b23ea362b1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e648e88d13694c2b8f0de909f66342096282561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328d15f6b5eba1c30cde1a5f1f5a9e35b07f5424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38dd5226989756a2414fc9bcf669a8fd9ba1e35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b2a812c13ab8affb23cb6dc2aa87f2bd8a0a7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c09b440f9e46c0e4a665539aeca80fcaa92c36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dcd70e6a3fb474cfd7567a021864066fdef6c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ddb21eff50640af57bcea41374001aff245bf28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x403d5dacef8d38126d9d8960d52f62ded5fa6b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a9257554c69c2187bafa6977d4953e0f2e4c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45994d68b77b37da4ce0a063547e4a733bc551a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485bb413c9b480345f96d6052475fd68e41628db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x498a6cc92c5a3709c46ca4a0219c36434da153b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a0cb29bed18a9fdcd296ef1bbf0a9e908452b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b37bc487a0e0bbb044378765c014fd51f1bf9c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4f5e7a1fe57f5ceb38bfce8653effa5e584458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e2bfe3430d6d9a9ec897de50985715d324674ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52bebd3d7f37ec4284853fd5861ae71253a7f428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x553845f9c44c43224620055eca64c6cc79f5ddfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f325436d79a3c7c466b5f111ce087884259a568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641e3b5b081fb2fb8b43d5a163649312a28e23da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67023c56548ba15ad3542e65493311f19adfdd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c977434b2cd32498bef4bc112371b1988cd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69a8b2ae6a3606b766be99c42328459167f51b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75bc09f72db1663ed35925b89de2b5212b9b6cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79b152da4ad8fb774700639bed68a965b0440644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79be524aeca16d117a0a9f0dfa6aec5e31802984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dd04cbae57eb4e1155685792742b2b5954e3a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x819bb9964b6ebf52361f1ae42cf4831b921510f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8207c1ffc5b6804f6024322ccf34f29c3541ae26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x864106c97520134f713a715a0f7a4adf6ed20a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870f3d5100ea58be65021880195f20a87ad52e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a5ff78bfe0de04f5dc1b57d2e1095be697be76e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac16c08105de55a02e2b7462b1eec6085fa4d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bf121c1cba7096d505e9726abae34414e0e0a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cfbd5098d778f919574f85e3ede3e4bd41d0229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d091c549a37b6cb6de092f0ca2f2df25e46dec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fef645719b53caa163cb937d1ed2970ddabcb14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91b417bae2f17fbace1c0130c41f83fed42707bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x946a8d5fb1f12eef62a0d137abfa73f8563955be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96e89b021e4d72b680bb0400ff504eb5f4a24327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x973f31e96f4920f84e5441a5553c4e708810834f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x980cb2cbeb59ca1fcd52be5e51770133abf0dee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b13ee7c26ef26062e08a2d6d69d3d0e5ea44ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cbcb549cd18eedbbe83e6ea361609c96f50ed38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d09d9353bd7d76d4bf116a83d54a3f81f74df1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4428439ec214cc68240552ec93298d1da391114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa568c229bb963a172153ee178334a46db3d0952b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7f26e9aeeea4fe16d9c4a6a0464af8258f437bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d40402883c8086d9edb5e367cbbe09101f1592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa4a294ac654553c28800c525c7b18954478ce80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0f262e569c84f39c95afaa20f79cf845e5e96b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaeb94e6c052e93ac7f7914e655a81fbe39628fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a9b7dc98cc563fa97487e91a3d74781f2fa055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72b3f5523851c2eb0ca14137803ca4ac7295f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95423e3ca13ce5336cb177b06cd4f647d2aad57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb763809d70844763ff5d178f3c9f254776e2015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc1324c5f3c99c758b71a4ad64027c16a4d956fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0cc675b4c9a209fce23f0fa976a495f9a1b0c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc27e00af539303f59ce5ff486e33c25298154a01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc37a236c1b27b7a3d8b8d57b9c770b70d8ccc566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5edec657cd0b9718bc0d8b9937fd3f9c460e12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf67e56965ad7cec05ebf88bad798a875e0460eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3386c31795be750824bb5b7e8614e4459cc4577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f3398cea0b1876ad50dcc92e3fbdb4eda67945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb82f88d572d99e4ebd10ed50e761c2ced00f380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde5a0b8103bb22223a85466b5aab64f9a9d5a391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdee4f70f1fb52b0826e8642c944396ebab019c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe40e09cd6725e542001fcb900d9dfea447b529c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe77ebe552ad1c9b94c08e10689cf646dc28ccd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7dd5b75a984fcb64eb7d3cbe22f124eb9539b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec7f2d7e21a875aee53b05eb511473a385d90d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf251cb9129fdb7e9ca5cad097de3ea70cab9d8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf59ed1bba622271911f95b22ba42e9b76423589a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf92b0de25660c18bedaa55795986781d7899b0f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbbe3090e06721168979818fe006a1fcb136e953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfceea3923dd126d8fb3873389187307519c1de37` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 91
- Live contracts: 0
- Unknown liveness contracts: 91
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=91

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x051caefa90adf261b8e8200920c83778b7b176b6` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05f4ae0ae089eba88db8b554b636b6f2fa43562d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0660bf15a89d8e90cba1b3f0ccf493c415b1369d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18ca757e2c2f2ebe87f871997eee9ea280a598a9` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1af44feeb5737736b6beb42fe8e5e6b7bb7391cd` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1cfd001bb3f832f05ae5b16be50f9ef98b7d35aa` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e666bf74fd9515e873db67c41b5ecb950c1d464` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1fe0b698b02bbc7fc7029ee1fc15885389b53067` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22e3f1b45a905776f98bf8f2a0d1f7b7949a2133` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x265a48bc9bf5d274e8f88190c26d713524d61edd` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2693c0eccb5734ebd3910e9c23a8039401a73c87` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x277e80f3e14e7fb3fc40a9d6184088e0241034bd` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a8e1e676ec238d8a992307b495b45b3feaa5e86` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bedb429f94040ea4d150e9cba39b23ea362b1bd` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e648e88d13694c2b8f0de909f66342096282561` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x328d15f6b5eba1c30cde1a5f1f5a9e35b07f5424` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38dd5226989756a2414fc9bcf669a8fd9ba1e35d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b2a812c13ab8affb23cb6dc2aa87f2bd8a0a7e8` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c09b440f9e46c0e4a665539aeca80fcaa92c36e` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3dcd70e6a3fb474cfd7567a021864066fdef6c5c` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ddb21eff50640af57bcea41374001aff245bf28` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x403d5dacef8d38126d9d8960d52f62ded5fa6b4c` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41a9257554c69c2187bafa6977d4953e0f2e4c10` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45994d68b77b37da4ce0a063547e4a733bc551a7` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x485bb413c9b480345f96d6052475fd68e41628db` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x498a6cc92c5a3709c46ca4a0219c36434da153b2` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a0cb29bed18a9fdcd296ef1bbf0a9e908452b94` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b37bc487a0e0bbb044378765c014fd51f1bf9c6` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d4f5e7a1fe57f5ceb38bfce8653effa5e584458` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e2bfe3430d6d9a9ec897de50985715d324674ee` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52bebd3d7f37ec4284853fd5861ae71253a7f428` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x553845f9c44c43224620055eca64c6cc79f5ddfd` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f325436d79a3c7c466b5f111ce087884259a568` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x641e3b5b081fb2fb8b43d5a163649312a28e23da` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67023c56548ba15ad3542e65493311f19adfdd6d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x676c977434b2cd32498bef4bc112371b1988cd8f` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69a8b2ae6a3606b766be99c42328459167f51b25` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75bc09f72db1663ed35925b89de2b5212b9b6cb3` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79b152da4ad8fb774700639bed68a965b0440644` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79be524aeca16d117a0a9f0dfa6aec5e31802984` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7dd04cbae57eb4e1155685792742b2b5954e3a61` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x819bb9964b6ebf52361f1ae42cf4831b921510f9` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8207c1ffc5b6804f6024322ccf34f29c3541ae26` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x864106c97520134f713a715a0f7a4adf6ed20a4d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x870f3d5100ea58be65021880195f20a87ad52e9b` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a5ff78bfe0de04f5dc1b57d2e1095be697be76e` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ac16c08105de55a02e2b7462b1eec6085fa4d86` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8bf121c1cba7096d505e9726abae34414e0e0a36` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cfbd5098d778f919574f85e3ede3e4bd41d0229` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d091c549a37b6cb6de092f0ca2f2df25e46dec6` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8fef645719b53caa163cb937d1ed2970ddabcb14` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91b417bae2f17fbace1c0130c41f83fed42707bb` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x946a8d5fb1f12eef62a0d137abfa73f8563955be` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96e89b021e4d72b680bb0400ff504eb5f4a24327` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x973f31e96f4920f84e5441a5553c4e708810834f` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x980cb2cbeb59ca1fcd52be5e51770133abf0dee4` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b13ee7c26ef26062e08a2d6d69d3d0e5ea44ff4` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9cbcb549cd18eedbbe83e6ea361609c96f50ed38` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d09d9353bd7d76d4bf116a83d54a3f81f74df1d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa4428439ec214cc68240552ec93298d1da391114` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa568c229bb963a172153ee178334a46db3d0952b` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7f26e9aeeea4fe16d9c4a6a0464af8258f437bb` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8d40402883c8086d9edb5e367cbbe09101f1592` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa4a294ac654553c28800c525c7b18954478ce80` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad0f262e569c84f39c95afaa20f79cf845e5e96b` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaeb94e6c052e93ac7f7914e655a81fbe39628fce` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4a9b7dc98cc563fa97487e91a3d74781f2fa055` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb72b3f5523851c2eb0ca14137803ca4ac7295f3f` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb95423e3ca13ce5336cb177b06cd4f647d2aad57` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb763809d70844763ff5d178f3c9f254776e2015` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc1324c5f3c99c758b71a4ad64027c16a4d956fc` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0cc675b4c9a209fce23f0fa976a495f9a1b0c28` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc27e00af539303f59ce5ff486e33c25298154a01` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc37a236c1b27b7a3d8b8d57b9c770b70d8ccc566` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5edec657cd0b9718bc0d8b9937fd3f9c460e12d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf67e56965ad7cec05ebf88bad798a875e0460eb` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3386c31795be750824bb5b7e8614e4459cc4577` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8f3398cea0b1876ad50dcc92e3fbdb4eda67945` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb82f88d572d99e4ebd10ed50e761c2ced00f380` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde5a0b8103bb22223a85466b5aab64f9a9d5a391` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdee4f70f1fb52b0826e8642c944396ebab019c96` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe40e09cd6725e542001fcb900d9dfea447b529c0` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe77ebe552ad1c9b94c08e10689cf646dc28ccd8f` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe7dd5b75a984fcb64eb7d3cbe22f124eb9539b52` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec7f2d7e21a875aee53b05eb511473a385d90d04` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf251cb9129fdb7e9ca5cad097de3ea70cab9d8f9` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf59ed1bba622271911f95b22ba42e9b76423589a` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf92b0de25660c18bedaa55795986781d7899b0f9` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbbe3090e06721168979818fe006a1fcb136e953` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfceea3923dd126d8fb3873389187307519c1de37` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |

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
| needs_review | 92 |

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
