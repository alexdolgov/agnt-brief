# Agentic Audit Brief: Free Protocol

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

- Project: Free Protocol (`free-protocol`)
- Website: [https://free.tech/](https://free.tech/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum, manta-pacific, merlin, polygon
- Contract surface: 149 unique implementations (149 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $247,756,160.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Free Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 149 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 140
- Unique implementations: 149
- Raw deployments: 149
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AtomicLockContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-141084 | `0x03650533d2a35847c007f25bc630f468905f6241` | ⚠️ Unaudited |
| AtomicMintContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-141087 | `0x09d334c6197f52308efc53e3d6726151c6bd0533` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | unit-141081 | `0x19727db22cba70b1fee40337aba69d83c6741caf` | ⚠️ Unaudited |
| ForwardTokenToFormContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-141080 | `0xdc86b8fc14afa87cc137a1cb07f0890a46d023c1` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-141085 | `0xeea3a032f381ab1e415e82fe08ebeb20f513c42c` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-141086 | `0x0a80028d73faaee6e57484e3335befda0de7f455` | ⚠️ Unaudited |
| ProxyToMeson | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-141083 | `0x25ab3efd52e6470681ce037cd546dc60726948d3` | ⚠️ Unaudited |
| SolvBTCV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-141088 | `0x4aae823a6a0b376de6a78e74ecc5b079d38cbcf7` | ⚠️ Unaudited |
| UpgradableMeson | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-141082 | `0x1522de0005fddfafbfe1843b40bc2be58b3f5aec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (140)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14eda572634627389226153f9fa5366a90a660db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e1709cdc1f253013a1b8b75b75fa00efa7cce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18bc68fc6037bf46c197f4ea44e0c0fb5177e773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3be6cd0ac1de19d3358dc6ef00a99eabf62d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5668ca8edfc8af5dcb9de014b4b08ed5d0615f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c42d3dbb5a6e54d52f194546c464bb5d47925df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fb7ceabb1ef6218c05475ca3a357a0e9e6e0303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3111653db0e7094b111b8e435df9193b62c2c576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328330f2c17a55e7e36c78972947e22f2f43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x331ebdce4d2376be413fca81390b1df4c07c7fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370634e1064b945e9010ddfa6077f321eca431cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389b8bccf541c4f130239ac78fa693642bbb2ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c774719e0126415b870b4abfff89f8f59c5d906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4226e1b911b05388c17cb92d985fcafc17899cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4af60d4478e2e4bf64a57fa4cef050c526980931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d946ad1363f610b8e8d0c1d93bcf041a54f902f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fa09f02d5da21b53c32fa6172c099d5d25ac822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x529c2945c257cc737a15733d43a1fd1cbbe79c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53be31942c2113633bdfe34626bdc60c7f1d12b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59b38e68423f4b566600f632248ec0cf13c79ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dcf7862c2941934cdc37a40d7122ef86252286b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e78709fd3d30b5aa5d3256e103c17343c339ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61787593580a1a6d87ff0583a30dbe865700b50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645c0a2aec74f4aad54783f27d241ac75b8d7c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652e24c7014bb1563aea3e82c03c4ba0afec594d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bb2195a38d8d7ec9d30cb77557eb09a363beacf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c029d62944bb20900a4bc078f5760579d78efe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a92146577bb1e9b76c3cb0ba0ffa2b3a25de34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ab2abb77c70d6a3592795e7240c3a6ae9ce10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781d50ea025751162b909897ac95fa05c30e2c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ab202c0161357ca4c8fd2e09adfcd45f3aafb41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ee5866de93f2de8e435715666a9e8f0a63f2319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ef8f2a8048948d43642e0358a183147e154550a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8800457f79693d843fde04f7ec0a61c1250bced5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a5bc78f6a48b55fb732132c75e48f9820c9b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ee2d274b4f54b4d3014575e9850c21d7cb7fe87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902de7c53c97188f6edc496395026673adc9cc95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a9c0a1545dcc585c94d602ac64ed378f7d0170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95dd0d431037b6ce68a4355217f3cd6f596776bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1824c3599ac7516728caddaa26fac814785f347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa297a74935038600737665cc6b259dbc3094d850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2bf58cbaeffc76f8433b7b8492010ac8a51ef80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3699002ba65f9ea7296a8344a9076dcc78d0cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6e02b4445db933fcd125a449448326d6505b189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8176b0593d5d2b246ed4110091024858e5dd767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84442f3853ce0d57f8a89ec0675044e502b8af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa97fe3e9c1d3be7289030684ed32a6710d2d02ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac937ad539bb9737892ca9ffacff00d40311c0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafcdfdd3364f6b62670d580c4b47184ef74ea86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb146559c427a64c0dcbd92d9e10f444b90be7dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9cf72500da54368bd82eb4d81a2d050792c7ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcabf7861ea9b80776357630c1d9f87fc346194ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbabb5687a96bd5b5dd99243c47fc1b65ac5675a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce901f374f45a4d7e3a04bb4041d76b43837e31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1f5afd741396ec69f018a75bbbe9ce65eec850d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6572c7cd671ecf75d920adcd200b00343959600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2e72333683079226b9139e147ab3924de61c8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38ed202c14da987fddb52060fd5a28ebc1ffe7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7fb36b4a3787cfa32fde7affded0cfb6825f255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeddb37c74e3405a598856e8ae5b6d30d6938beff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeaca9948e38a2bdbb5865646bc0308c9505cbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fed0533cb32fff40c2d53e819a4c6f68d86c91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x188c41b901bf26e9323f217f1d23d17a9c665c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19727db22cba70b1fee40337aba69d83c6741caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a96381ee92f015f28c5202e007b5a556db5c0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bdea7d0ccd01c25754345c1109556e4aca94180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2031fbb04cc3b28aa99dba7ad189689ca8ebc648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21c9e05fa8a2cdec06763a083df6059a8d6ee4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25ab3efd52e6470681ce037cd546dc60726948d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3080921c8aefbf1f97a7b3b0acad9e00305b0345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3111653db0e7094b111b8e435df9193b62c2c576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x331ebdce4d2376be413fca81390b1df4c07c7fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35094a8378278a85edac61f742f1ec4dd6b1c447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3521a461fdddbe6fd8e95cf223dd1f037f81a1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36ee804b7e4f02cd61a66da176a39e8b08c8862a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x496217fe6a500704409d83a9f86d63732b6f1997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d946ad1363f610b8e8d0c1d93bcf041a54f902f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e306700c61d90e7dee260f01572e4ab803d388d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x645c0a2aec74f4aad54783f27d241ac75b8d7c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x652e24c7014bb1563aea3e82c03c4ba0afec594d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x671159047ede45510f364e8d3890c1c7d15d2092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x685ffe830e9d8b510df67d5d7453535456fa3bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ba34232f35c15bd8e858de47303234f60656a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75ab2abb77c70d6a3592795e7240c3a6ae9ce10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7770fc32026ba56ac86efc6ed82eb9c8f7bc8445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ab202c0161357ca4c8fd2e09adfcd45f3aafb41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f4d86919fa5458cc6f8485fe54405352d91c5b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8800457f79693d843fde04f7ec0a61c1250bced5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94a307d0ff4a5fa76a888647311263d994147567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x960e22db79c0fb639931ec5358865613b807ed3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x962b242e02bbcfe5475ab2272b1c77e5f1e9683f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98b35a04356a354a089e5e741b4b9b02a7b0b822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c00675d51368d90dcb95325115726e3e256cf3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d59177c29ae3e6eb3e1d9c4a0e563f42bbb57ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f40e1650bd580d0139728ac0f0ecd5591537184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1824c3599ac7516728caddaa26fac814785f347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa18cd3120190993cdd72285d2e6d94c07a04e046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1937f60d3833e3e0305227f1afde4a34a4d48e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5509757863f56f57ce4566e2ccbaca37d308bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5de263201d1b7a978bade7a4408d3f76de8252e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6b3746d1b2270824e6560adafe3bc5e7545d33b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6e02b4445db933fcd125a449448326d6505b189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8176b0593d5d2b246ed4110091024858e5dd767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb00b19ec5a8b1a80b2501fefc7266009fec914c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb11b809d80a992a2faa83e33e84ed1bae4a48517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb146559c427a64c0dcbd92d9e10f444b90be7dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4e1a2f4622ae30e7b70b7bbc00467cde289b71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba43f3c8733b0515b5c23dff46f47af6eb46f85c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb4a26a053b217bb28766a4ed4b062c3b4de58ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6d1283fdc3a8fcb12f6a9ee2b8b8c2ac60117bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcabf7861ea9b80776357630c1d9f87fc346194ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1f5afd741396ec69f018a75bbbe9ce65eec850d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd955a8279a7a96cf6c7d11a3a6fb25f415c5139c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd3d867db5ca13e5f055dd4484648fdddf3248eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5f5261ee71915d53fd9e81454404a569c61d1c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9cdb9c251a58d4f86ae49d03005c02a108cc314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea23c75519cdbae0e92a4c5b928cddf235923411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8aed4da2598d3df878488f40d982d6ecc8b13ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf96fead13d0ddef5243d5c24f690872612ae9a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb7691b0d214b6c5f4e686bdf46211bbab7d0484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdf61884b084f1e35da395a83d11a7f622da322e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x25ab3efd52e6470681ce037cd546dc60726948d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2c42d3dbb5a6e54d52f194546c464bb5d47925df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x395c38f055522c7eebd85e77dc59508a0e4115aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x4af60d4478e2e4bf64a57fa4cef050c526980931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x4d946ad1363f610b8e8d0c1d93bcf041a54f902f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x529c2945c257cc737a15733d43a1fd1cbbe79c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x5b36fb69aedcfbceb7d0da83876c1da83a8bf1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x603800cb3f854a4847b2d235a40e6c62efe35ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7ef8f2a8048948d43642e0358a183147e154550a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7f4d86919fa5458cc6f8485fe54405352d91c5b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9c00675d51368d90dcb95325115726e3e256cf3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa5de263201d1b7a978bade7a4408d3f76de8252e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa84442f3853ce0d57f8a89ec0675044e502b8af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xe7fb36b4a3787cfa32fde7affded0cfb6825f255` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 140
- Live contracts: 0
- Unknown liveness contracts: 140
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=140

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x0fed0533cb32fff40c2d53e819a4c6f68d86c91b` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x188c41b901bf26e9323f217f1d23d17a9c665c75` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x19727db22cba70b1fee40337aba69d83c6741caf` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1a96381ee92f015f28c5202e007b5a556db5c0c3` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1bdea7d0ccd01c25754345c1109556e4aca94180` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2031fbb04cc3b28aa99dba7ad189689ca8ebc648` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x21c9e05fa8a2cdec06763a083df6059a8d6ee4b4` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x25ab3efd52e6470681ce037cd546dc60726948d3` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3080921c8aefbf1f97a7b3b0acad9e00305b0345` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3111653db0e7094b111b8e435df9193b62c2c576` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x331ebdce4d2376be413fca81390b1df4c07c7fea` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x35094a8378278a85edac61f742f1ec4dd6b1c447` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3521a461fdddbe6fd8e95cf223dd1f037f81a1b5` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x36ee804b7e4f02cd61a66da176a39e8b08c8862a` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x496217fe6a500704409d83a9f86d63732b6f1997` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d946ad1363f610b8e8d0c1d93bcf041a54f902f` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5e306700c61d90e7dee260f01572e4ab803d388d` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x645c0a2aec74f4aad54783f27d241ac75b8d7c72` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x652e24c7014bb1563aea3e82c03c4ba0afec594d` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x671159047ede45510f364e8d3890c1c7d15d2092` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x685ffe830e9d8b510df67d5d7453535456fa3bcc` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6ba34232f35c15bd8e858de47303234f60656a83` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x75ab2abb77c70d6a3592795e7240c3a6ae9ce10e` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7770fc32026ba56ac86efc6ed82eb9c8f7bc8445` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7ab202c0161357ca4c8fd2e09adfcd45f3aafb41` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f4d86919fa5458cc6f8485fe54405352d91c5b3` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8800457f79693d843fde04f7ec0a61c1250bced5` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x94a307d0ff4a5fa76a888647311263d994147567` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x960e22db79c0fb639931ec5358865613b807ed3d` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x962b242e02bbcfe5475ab2272b1c77e5f1e9683f` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98b35a04356a354a089e5e741b4b9b02a7b0b822` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9c00675d51368d90dcb95325115726e3e256cf3c` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9d59177c29ae3e6eb3e1d9c4a0e563f42bbb57ff` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9f40e1650bd580d0139728ac0f0ecd5591537184` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1824c3599ac7516728caddaa26fac814785f347` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa18cd3120190993cdd72285d2e6d94c07a04e046` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1937f60d3833e3e0305227f1afde4a34a4d48e1` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa5509757863f56f57ce4566e2ccbaca37d308bc8` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa5de263201d1b7a978bade7a4408d3f76de8252e` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6b3746d1b2270824e6560adafe3bc5e7545d33b` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6e02b4445db933fcd125a449448326d6505b189` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa8176b0593d5d2b246ed4110091024858e5dd767` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb00b19ec5a8b1a80b2501fefc7266009fec914c5` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb11b809d80a992a2faa83e33e84ed1bae4a48517` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb146559c427a64c0dcbd92d9e10f444b90be7dfa` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb4e1a2f4622ae30e7b70b7bbc00467cde289b71b` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xba43f3c8733b0515b5c23dff46f47af6eb46f85c` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbb4a26a053b217bb28766a4ed4b062c3b4de58ce` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc6d1283fdc3a8fcb12f6a9ee2b8b8c2ac60117bf` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcabf7861ea9b80776357630c1d9f87fc346194ba` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd1f5afd741396ec69f018a75bbbe9ce65eec850d` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd955a8279a7a96cf6c7d11a3a6fb25f415c5139c` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdd3d867db5ca13e5f055dd4484648fdddf3248eb` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe5f5261ee71915d53fd9e81454404a569c61d1c0` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe9cdb9c251a58d4f86ae49d03005c02a108cc314` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xea23c75519cdbae0e92a4c5b928cddf235923411` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf8aed4da2598d3df878488f40d982d6ecc8b13ad` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf96fead13d0ddef5243d5c24f690872612ae9a0b` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfb7691b0d214b6c5f4e686bdf46211bbab7d0484` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfdf61884b084f1e35da395a83d11a7f622da322e` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14eda572634627389226153f9fa5366a90a660db` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17e1709cdc1f253013a1b8b75b75fa00efa7cce2` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18bc68fc6037bf46c197f4ea44e0c0fb5177e773` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a3be6cd0ac1de19d3358dc6ef00a99eabf62d4a` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b5668ca8edfc8af5dcb9de014b4b08ed5d0615f` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c42d3dbb5a6e54d52f194546c464bb5d47925df` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fb7ceabb1ef6218c05475ca3a357a0e9e6e0303` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3111653db0e7094b111b8e435df9193b62c2c576` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x328330f2c17a55e7e36c78972947e22f2f43cbb5` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x331ebdce4d2376be413fca81390b1df4c07c7fea` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x370634e1064b945e9010ddfa6077f321eca431cf` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x389b8bccf541c4f130239ac78fa693642bbb2ad1` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c774719e0126415b870b4abfff89f8f59c5d906` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4226e1b911b05388c17cb92d985fcafc17899cd6` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4af60d4478e2e4bf64a57fa4cef050c526980931` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d946ad1363f610b8e8d0c1d93bcf041a54f902f` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fa09f02d5da21b53c32fa6172c099d5d25ac822` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x529c2945c257cc737a15733d43a1fd1cbbe79c67` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53be31942c2113633bdfe34626bdc60c7f1d12b7` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59b38e68423f4b566600f632248ec0cf13c79ade` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5dcf7862c2941934cdc37a40d7122ef86252286b` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e78709fd3d30b5aa5d3256e103c17343c339ed2` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61787593580a1a6d87ff0583a30dbe865700b50c` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x645c0a2aec74f4aad54783f27d241ac75b8d7c72` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x652e24c7014bb1563aea3e82c03c4ba0afec594d` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bb2195a38d8d7ec9d30cb77557eb09a363beacf` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c029d62944bb20900a4bc078f5760579d78efe9` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75a92146577bb1e9b76c3cb0ba0ffa2b3a25de34` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75ab2abb77c70d6a3592795e7240c3a6ae9ce10e` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x781d50ea025751162b909897ac95fa05c30e2c7c` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ab202c0161357ca4c8fd2e09adfcd45f3aafb41` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ee5866de93f2de8e435715666a9e8f0a63f2319` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ef8f2a8048948d43642e0358a183147e154550a` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8800457f79693d843fde04f7ec0a61c1250bced5` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a5bc78f6a48b55fb732132c75e48f9820c9b9a8` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ee2d274b4f54b4d3014575e9850c21d7cb7fe87` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x902de7c53c97188f6edc496395026673adc9cc95` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90a9c0a1545dcc585c94d602ac64ed378f7d0170` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95dd0d431037b6ce68a4355217f3cd6f596776bc` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1824c3599ac7516728caddaa26fac814785f347` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa297a74935038600737665cc6b259dbc3094d850` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2bf58cbaeffc76f8433b7b8492010ac8a51ef80` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3699002ba65f9ea7296a8344a9076dcc78d0cf8` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6e02b4445db933fcd125a449448326d6505b189` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8176b0593d5d2b246ed4110091024858e5dd767` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa84442f3853ce0d57f8a89ec0675044e502b8af7` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa97fe3e9c1d3be7289030684ed32a6710d2d02ba` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac937ad539bb9737892ca9ffacff00d40311c0ca` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafcdfdd3364f6b62670d580c4b47184ef74ea86b` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb146559c427a64c0dcbd92d9e10f444b90be7dfa` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9cf72500da54368bd82eb4d81a2d050792c7ed7` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcabf7861ea9b80776357630c1d9f87fc346194ba` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbabb5687a96bd5b5dd99243c47fc1b65ac5675a` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce901f374f45a4d7e3a04bb4041d76b43837e31d` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1f5afd741396ec69f018a75bbbe9ce65eec850d` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6572c7cd671ecf75d920adcd200b00343959600` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2e72333683079226b9139e147ab3924de61c8ab` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe38ed202c14da987fddb52060fd5a28ebc1ffe7b` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe7fb36b4a3787cfa32fde7affded0cfb6825f255` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeddb37c74e3405a598856e8ae5b6d30d6938beff` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeeaca9948e38a2bdbb5865646bc0308c9505cbfa` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x25ab3efd52e6470681ce037cd546dc60726948d3` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x2c42d3dbb5a6e54d52f194546c464bb5d47925df` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x395c38f055522c7eebd85e77dc59508a0e4115aa` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x4af60d4478e2e4bf64a57fa4cef050c526980931` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x4d946ad1363f610b8e8d0c1d93bcf041a54f902f` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x529c2945c257cc737a15733d43a1fd1cbbe79c67` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x5b36fb69aedcfbceb7d0da83876c1da83a8bf1c8` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x603800cb3f854a4847b2d235a40e6c62efe35ba4` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x7ef8f2a8048948d43642e0358a183147e154550a` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x7f4d86919fa5458cc6f8485fe54405352d91c5b3` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x9c00675d51368d90dcb95325115726e3e256cf3c` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xa5de263201d1b7a978bade7a4408d3f76de8252e` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xa84442f3853ce0d57f8a89ec0675044e502b8af7` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xe7fb36b4a3787cfa32fde7affded0cfb6825f255` | non_address_book | unknown | unknown | unverified | n/a | `0x000039ddcf1f63cf3555e62a8d32a11bd1e7e1e1` |

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
| native | 6 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 140 |

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
