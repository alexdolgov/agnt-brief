# Agentic Audit Brief: B.Protocol

⚠️ Lifecycle status: DEAD - TVL dropped 1.3% over 90 days

## Project Overview

- Project: B.Protocol (`b.protocol`)
- Website: [https://app.bprotocol.org/](https://app.bprotocol.org/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T14:53:05.129Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 99 unique implementations (137 raw deployments)
- DeFi Llama TVL: $1,754,312.88
- On-chain TVL (included contracts): $46,212,387.39
- TVL by chain: Ethereum $46,142,552.66 | Polygon $69,834.73

## Project Description

Liquidations. Structurally: 125 project-authored contract(s) across 3 chain(s); 14 ERC20 tokens, 3 Chainlink feeds; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 35 common project-authored base contract(s) (cropjoinadapter, cropjoin, priceformula). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 321; live-surface contracts included: 137 (63 live, 74 unknown).
- Excluded by liveness: 184 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/20 (35.0%)
- Deployed-live implementations: 33 of 99 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/33
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 1
- Unverified implementations: 66
- Unique implementations: 99
- Raw deployments: 137
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $46,212,387.39
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 20.0% (Code4rena)
- Note: This protocol is classified as [dead]. ASD of $46,212,387.39 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 6 | 18.2% | 2021-02 |
| Code4rena | Tier 1 | 4 | 12.1% | 2021-02 |
| Fixed Point Solutions | Tier 2 | 1 | 3.0% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BAMM | unknown | ethereum | n/a | 8 deployments: ethereum [`0x00ff66ab8699aafa050ee5ef5041d1503aa0849a`](./contracts/ethereum-1/0x00ff66ab8699aafa050ee5ef5041d1503aa0849a/); ethereum `0x0d3abaa7e088c2c82f54b2f47613da438ea8c598`; arbitrum `0x04208f296039f482810b550ae0d68c3e1a5eb719`; arbitrum `0x0a30963a461aa4eb4252b5a06525603e49034c41`; arbitrum `0x12c60b3170fb43e6a8f8ba2d843621c19324329e`; arbitrum `0x24099000ae45558ce4d049ad46ddaaf71429b168`; arbitrum `0xa00cdcede860cd5853daf52f0c8d70bfd1db2a79`; arbitrum `0xebf8252756268091e523e57d293c0522b8afe66b` | ✅ Audited |
| BCdpManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x22d3fbe3afd0ffe8db1306eb857a2a8b21f051ae`](./contracts/ethereum-1/0x22d3fbe3afd0ffe8db1306eb857a2a8b21f051ae/); ethereum `0x3320f0a2f18a5177dd53a46c59ad8145d9f7e147`; ethereum `0x3f30c2381cd8b917dd96eb2f1a4f96d91324bbed` | ✅ Audited |
| BProxyActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x351626387b5bb5408f97f8fd6b2ec415efc9e6a1`](./contracts/ethereum-1/0x351626387b5bb5408f97f8fd6b2ec415efc9e6a1/); ethereum `0x4bcad4920be1ca53f27656db49d31b23f9725ab0` | ✅ Audited |
| LiquidatorBalanceInfo | operational_periphery | ethereum | n/a | [`0xf0c02c4edc6b27fbec7ec57e2eac4e3445655ebe`](./contracts/ethereum-1/0xf0c02c4edc6b27fbec7ec57e2eac4e3445655ebe/) | ✅ Audited |
| LiquidatorInfo | operational_periphery | ethereum | n/a | [`0x5fd74c9eb05a11c148297d83febd8b4862a1064d`](./contracts/ethereum-1/0x5fd74c9eb05a11c148297d83febd8b4862a1064d/) | ✅ Audited |
| Pool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x3add75647681d3ba7a4ecfabf75d393936186a2c`](./contracts/ethereum-1/0x3add75647681d3ba7a4ecfabf75d393936186a2c/); ethereum `0x84ff9784aca79629db8a80527ecbc53af34faf23`; ethereum `0x912d1953d0da41bd82de5c5b68a5ac1b94362d4c`; ethereum `0xba791e7313a3a0ba6fe3a0335f5102b2f60aa47f` | ✅ Audited |
| Registry | registry | ethereum | n/a | [`0xbf698df5591caf546a7e087f5806e216afed666a`](./contracts/ethereum-1/0xbf698df5591caf546a7e087f5806e216afed666a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LUSDToken | token | ethereum | n/a | [`0x5f98805a4e8be255a32880fdec7f6728c6568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| CErc20Delegate | token | polygon | n/a | 4 deployments: polygon [`0x103f2ca2148b863942397dbc50a425cc4f4e9a27`](./contracts/polygon-137/0x103f2ca2148b863942397dbc50a425cc4f4e9a27/); polygon `0x607312a5c671d0c511998171e634de32156e69d0`; polygon `0xbb93c7f378b9b531216f9ad7b5748be189a55807`; polygon `0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | n/a | [`0x66017d22b0f8556afdd19fc67041899eb65a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x24179cd81c9e782a4096035f7ec97fb8b783e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| CErc20Delegator | token | polygon | n/a | [`0x2c7a9d9919f042c4c120199c69e126124d09be7c`](./contracts/polygon-137/0x2c7a9d9919f042c4c120199c69e126124d09be7c/) | ⚠️ Unaudited |
| ActivePool | core_logic | ethereum | n/a | [`0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| CollSurplusPool | core_logic | ethereum | n/a | [`0x3d32e8b97ed5881324241cf03b2da5e2ebce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| BKeeper | operational_periphery | ethereum | n/a | [`0xeae019ef845a4ffdb8829210de5d30ac6fbb5371`](./contracts/ethereum-1/0xeae019ef845a4ffdb8829210de5d30ac6fbb5371/) | ⚠️ Unaudited |
| BPRO | unknown | ethereum | n/a | [`0xbbbbbbb5aa847a2003fbc6b5c16df0bd1e725f61`](./contracts/ethereum-1/0xbbbbbbb5aa847a2003fbc6b5c16df0bd1e725f61/) | ⚠️ Unaudited |
| BTVL | unknown | ethereum | n/a | [`0x60312e01a2acd1dac68838c949c1d20c609b20cf`](./contracts/ethereum-1/0x60312e01a2acd1dac68838c949c1d20c609b20cf/) | ⚠️ Unaudited |
| CEther | unknown | polygon | n/a | [`0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31`](./contracts/polygon-137/0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b`](./contracts/ethereum-1/0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b/) | ⚠️ Unaudited |
| Comptroller | unknown | polygon | n/a | 2 deployments: polygon [`0x28707252fdea41b72cf321d153a6c01fa9f6fb79`](./contracts/polygon-137/0x28707252fdea41b72cf321d153a6c01fa9f6fb79/); polygon `0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | ⚠️ Unaudited |
| Comptroller | unknown | polygon | n/a | 2 deployments: polygon [`0x376020c5b0ba3fd603d7722381faa06da8078d8a`](./contracts/polygon-137/0x376020c5b0ba3fd603d7722381faa06da8078d8a/); polygon `0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | ⚠️ Unaudited |
| Comptroller | unknown | polygon | n/a | 2 deployments: polygon [`0xb426c1b7fabea9ea6a273e8427040568a8c7df13`](./contracts/polygon-137/0xb426c1b7fabea9ea6a273e8427040568a8c7df13/); polygon `0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | ⚠️ Unaudited |
| FuseBAMM | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2227a0bd08a73e44ea1c992d6b7734a8f026c70c`](./contracts/arbitrum-42161/0x2227a0bd08a73e44ea1c992d6b7734a8f026c70c/); arbitrum `0x94fd843e77fe67a18d52e0ad0c9713c5a9399ef4` | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| Maximillion | unknown | polygon | n/a | [`0x89db3b59381bc06fe9bf74532afd777e5f78ef02`](./contracts/polygon-137/0x89db3b59381bc06fe9bf74532afd777e5f78ef02/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | ethereum | n/a | [`0x4dbbbfb0e68be9d8f5a377a4654604a62e851e80`](./contracts/ethereum-1/0x4dbbbfb0e68be9d8f5a377a4654604a62e851e80/) | ⚠️ Unaudited |
| Pay | unknown | ethereum | n/a | [`0x0ab366dbbb03c84f581963a4cc0756eb66176bde`](./contracts/ethereum-1/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/) | ⚠️ Unaudited |
| PBAMM | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2c6af48e01be6f96fb8ea19c76cb936bb554ea02`](./contracts/ethereum-1/0x2c6af48e01be6f96fb8ea19c76cb936bb554ea02/); ethereum `0x5123bfe8fb81e9301f3b502d4a088f804431c70f`; ethereum `0x54bc9113f1f55cdbdf221daf798dc73614f6d972`; ethereum `0xe4c3d5237ac9b4b45098de9e7009c1b75443e6f3` | ⚠️ Unaudited |
| TroveManager | governance | ethereum | n/a | [`0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0xc507a27860c225aad8cb4a5a32a44d8892288880`](./contracts/ethereum-1/0xc507a27860c225aad8cb4a5a32a44d8892288880/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HundredBAMM | unknown | polygon | n/a | 15 deployments: polygon [`0x0f0dd66d2d6c1f3b140037018958164c6ab80d56`](./contracts/polygon-137/0x0f0dd66d2d6c1f3b140037018958164c6ab80d56/); polygon `0x1346e106b4e2558daacd2e8207505ce7e31e05ca`; polygon `0x1ecf1b0de9b4c2d01554062ea2fab84b1917b41d`; polygon `0x240b3e909ac9440db33eae500b19c462f4810247`; polygon `0x2da13538056aff0bfc81d3a4c6364b0a7e0f9feb`; polygon `0x2ee9000587547ec2e1889c22db7bb4b6054d64c7`; polygon `0x753c750807373e52dbed6622ccf3779132d0feac`; polygon `0x998bf304ce9cb215f484aa39d1177b8210078f49`; polygon `0xa5e14874b4929782135cc9f76a4461914e85e0e4`; polygon `0xa8d60f5cc2c01bd1514348753140faa28e449e3d`; polygon `0xbdac312c7141f5d596aed0182da6ab07ca5c7247`; polygon `0xcebdf18ac062cfa15fb3416dd453342e72b17e25`; polygon `0xda57c07594b632d9b93693ee22d2e3d9f8c00bdb`; polygon `0xedce1c21ad6cb55d647671682b35766ea4a440f1`; arbitrum `0x51fbf83818e4fa195fd5d395a63fcfb5c45d9565` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x04068da6c83afcfa0e13ba15a6696662335d5b75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04208f296039f482810b550ae0d68c3e1a5eb719` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ad1af0c5d0bebb17fe7039c8feb949bba62fbf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183994267258e85cb9335a31c0ef46469c12e28a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f97df8d9df85e7b5469f385dfe2c940bfc793dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29e7d0c82f885b0412cdc8d431e805e26c80c3c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55e8bef09624d60793181a125e07f040b4bcacbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ad29d0c2a9b4e7ab4eb2869ef36b997e9c98865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d444c2ab904296a1da82ef29307e56d0ada8322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d62d6af9b82cdfa3a7d16601ddbcf8970634d22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9247d4c95c9783fc1934c5f3c141cdda53c79c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa42c5c5f7cca55a7911a00dd378274f14bb3bb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc970e21a06f67e362e1d355146726b872730570a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe574ccc2c33eb57f54cb350afff6919a5de06545` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedc7905a491ff335685e2f2f1552541705138a3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf06c81c38a2f1128dc801f057f63f168129d2e79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc089830cc794731e9e35cfb123ffc2a18a49200` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x02824539cf87c184d4b9f4f1c4f89873966f44b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0aed20b39e2f13d746fb2528a5367750f12bb039` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ba89d15d7543c15012bd8fd44a06ce2057ae2b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x138f5b1e746e34d5a0382acb19e48459e36aeee1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17625a02aff8be8b1c7195a74a90ff1af315a086` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a1d74849373f665e597914f936da377b1361c6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cbdf5d28da18be6b289c752f52f9d3add27094e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x207a0b6b61815c870b9e85b3da7e26778dd5dff7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26217502ba9f417b8707c44560a46bd2f01ac0bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x285e2e2280a8d2da2840d8300b81e84ef2592d90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x288a38a07ef3751a2de412221600e8ff1f0ded55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x28da2d51f80c17410a047204251c6125b51bb532` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4db1d29ea5b51ddadcc5ab26709dda49e7eb1e71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x55fb2acadb3f6b95452bb6b796227cd1ed5c415e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x60d7de603607e5358ff285fed5224962df4e7c42` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f5e884ebb5c8b7a583a2d2e1ffdde86e22d118e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x757ad894ba805fbf541f7cced3bfaa912926bd7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a0187613355902c009acbf1ed74031ad9ff4a96` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9062d1477c3cd000301a471be03c9db85c3fc27a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x94a64b8330b452065ddb18dcf6f5ecdfa1eb2a00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a79a2b1c777bf2bf291cc25249f430499517a12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a9e6eeed5efb3085d37f3003bea10f3959e4374` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9f99f6bf9341af018e484d6e4f125c2af3423d92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2fa2bce89081771b761214209ec00ba3f81d8ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadeba4065f3f3a60b25836b1fdeef2eddee0bb27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae6277c3e741ecaf7a188aab4543b05ccabbfdf9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafbc554d58a0ddde76739801dc41d0d7ecd542e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb04cc661cb4543cc1582958d6cc9248a4c4868ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1ace6cb23c3b1b8c7dc8d7d555be182053e21a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb54f98976b40cdaccfc4958fc9c0f6955d52521e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe76cd24f74634d50bba6fd86a4c1579bacba11c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb6e2f66df0493b4dd23ac7727d1677d1208b697` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc2e620552c531d84764f8a82b0efaca59fe937e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdbb8aa916dc5d6cb4d043b2d0044e6eeca723d36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe539b93620570a92ef90ef7e60c79d9faee91186` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf2febab20b24c185aaa38157df5c91aec3ab0252` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf426ebc38bb724985f30ea9acaac9fb60afeb8f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9c45c39fdc3c58ed85a159f2e26fd99d8511f45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfacd20bc2596ec1f3bd71aee73dee4207175738c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff6a0d383ac1128f4edb81ce9d5d92c1def238f1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x24099000ae45558ce4d049ad46ddaaf71429b168` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 2 deployments: fantom `0x6d62d6af9b82cdfa3a7d16601ddbcf8970634d22`; fantom `0xedc7905a491ff335685e2f2f1552541705138a3d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbbbbbbb5aa847a2003fbc6b5c16df0bd1e725f61` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit Report - Backstop Protocol [02.10.2020].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Backstop%20Protocol%20%5B02.10.2020%5D.pdf) | Solidified | Audit | 2020-10 | stale | Direct | contract_name | 11 | high |
| [FPS_B.AMM_Liquity_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Liquity_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-07 | stale | Direct | contract_name | 1 | n/a |
| [FPS_B.AMM_Rari_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Rari_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Solidified | Audit | 2021-02 | stale | Direct | contract_name | 7 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/60778395ae2f78fc1caec0085bfa96c6f70c4573/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Code4rena | Contest | 2021-02 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x24179cd81c9e782a4096035f7ec97fb8b783e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | BorrowerOperations | core_logic | $4,002.72 | Verified native implementation with $4,002.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ActivePool | core_logic | $0.02 | Verified native implementation with $0.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d32e8b97ed5881324241cf03b2da5e2ebce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | CollSurplusPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeae019ef845a4ffdb8829210de5d30ac6fbb5371`](./contracts/ethereum-1/0xeae019ef845a4ffdb8829210de5d30ac6fbb5371/) | BKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbbbbbb5aa847a2003fbc6b5c16df0bd1e725f61`](./contracts/ethereum-1/0xbbbbbbb5aa847a2003fbc6b5c16df0bd1e725f61/) | BPRO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60312e01a2acd1dac68838c949c1d20c609b20cf`](./contracts/ethereum-1/0x60312e01a2acd1dac68838c949c1d20c609b20cf/) | BTVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2227a0bd08a73e44ea1c992d6b7734a8f026c70c`](./contracts/arbitrum-42161/0x2227a0bd08a73e44ea1c992d6b7734a8f026c70c/) | FuseBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f0dd66d2d6c1f3b140037018958164c6ab80d56`](./contracts/polygon-137/0x0f0dd66d2d6c1f3b140037018958164c6ab80d56/) | HundredBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab366dbbb03c84f581963a4cc0756eb66176bde`](./contracts/ethereum-1/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/) | Pay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c6af48e01be6f96fb8ea19c76cb936bb554ea02`](./contracts/ethereum-1/0x2c6af48e01be6f96fb8ea19c76cb936bb554ea02/) | PBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc507a27860c225aad8cb4a5a32a44d8892288880`](./contracts/ethereum-1/0xc507a27860c225aad8cb4a5a32a44d8892288880/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 13 |
| standard_library | 1 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=2, extraction_exact=25

Fork inheritance lineage and inherited audits are included when available.
